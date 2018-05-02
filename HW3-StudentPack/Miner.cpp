#include "Miner.h"
#include <iomanip>
#include "Utilizer.h"
/*
YOU MUST WRITE THE IMPLEMENTATIONS OF THE REQUESTED FUNCTIONS
IN THIS FILE. START YOUR IMPLEMENTATIONS BELOW THIS LINE 
*/


int Miner::getNextAvailableBlockchainID() const {
    return miner.size();
}

Miner::Miner(std::string name) {
    this->name = name;
}

void Miner::createNewBlockchain() {
    int id = getNextAvailableBlockchainID();
    Blockchain* newChain = new Blockchain(id);
    this->miner.push_back(newChain);
}

long Miner::getBlockchainCount() const {
    return miner.size();
}

Miner::~Miner() {
        long size = miner.size();
        for(int i = 0; i < size; i++){
            if(  (this->miner.at(i) != nullptr)){
                delete this->miner.at(i);
               // this->miner.at(i) = nullptr;
            }
        }
        this->miner.clear();
}

/**
 * Indexing.
 *
 * Find the blockchain with the given id.
 *
 * @return The blockchain with the given id. nullptr if not exists.
 */
Blockchain* Miner::operator[](int id) const {
    if(id>=this->miner.size()){
        return nullptr;
    }
    return this->miner.at(id);
}

/**
 * Start mining with the given count.
 * For every count, a single Koin will be produced in each blockchain.
 *
 * Operations must be ordered according to the blockchainIDs.
 *
 * @param cycleCount The count which the blockchains will be run for.
 */

void Miner::mineUntil(int cycleCount){
    long size = this->miner.size();
    for(int i = 0; i < cycleCount; i++){
        for(int j = 0; j < size; j++){
            this->miner.at(j)->operator++();
        }
    }
}

/**
 * Start de-mining with the given count.
 * For every count, the last Koin in the blockchain must be destroyed.
 * no-op for Blockchain if it doesn't have any (left).
 *
 * Operations must be ordered according to the blockchainIDs.
 *
 * @param cycleCount The count which the blockchains will be run for.
 */
void Miner::demineUntil(int cycleCount){
    long size = this->miner.size();
    long lengthOfLongestChain = 0;
    for(int i = 0; i < size; i++){
        if(this->miner.at(i)->getChainLength() > lengthOfLongestChain)
        {
            lengthOfLongestChain = this->miner.at(i)->getChainLength();
        }
    }
    for(int i = 0; i < cycleCount ; i++){
            for(int j = 0; j < size; j++){
                if(!isSoft(this->miner.at(j)->getHead(), *this, j)){
                    this->miner.at(j)->operator--();
                }
            }
        if(i == lengthOfLongestChain){
            return;
        }
    }
}

/**
 *  Shallow-copy the blockchain with given ID.
 *
 *  How-To:
 *  1) Fetch the blockchain in the miner with given ID.
 *  2) If not exists, no-op.
 *  3) Fetch the next available ID for the blockchain.
 *  4) Create a new blockchain with the new ID, and with the head as the original of the last Koin of the blockchain.
 *  5) Hence, a modification to the newly created blockchain will also affect the old blockchain, but only ...
 *  6) ... after the head (head included). And vice versa.
 *  7) Save the newly created blockchain in the miner.
 *
 *  @param blockchainID The blockchain ID to be forked.
 *
 *  @return true if the blockchain with given ID exists, otherwise false.
*/
bool Miner::softFork(int blockchainID) {
//    return hardFork(blockchainID);
    long size = this->miner.size();
    if(blockchainID >= size){
        return false;
    }else{
        Blockchain* fetchedTemp = this->miner.at(blockchainID);
        int newID = this->getNextAvailableBlockchainID();
        Koin *head = fetchedTemp->getTail();
        head->yesSoftFork();
        Blockchain *temp = new Blockchain(newID, head);
        temp->yesSoftFork();
        this->miner.push_back(temp);
        return true;
    }
}

/**
 *  Deep-copy the blockchain with given ID.
 *
 *  How-To:
 *  1) Fetch the blockchain in the miner with given ID.
 *  2) If not exists, no-op.
 *  3) Else, fetch the next available ID for the blockchain.
 *  4) Create a new blockchain with the new ID, and with the head as a copy of the last Koin of the blockchain.
 *  5) Any changes made in the new blockchain will NOT affect the old blockchain. And vice versa.
 *  6) Save the newly created blockchain in the miner.
 *
 *  @param blockchainID The blockchain ID to be forked.
 *
 *  @return true if the blockchain with given ID exists, otherwise false.
*/
bool Miner::hardFork(int blockchainID){
    long size = this->miner.size();
    if(blockchainID >= size){
        return false;
    }else{
        Blockchain* fetchedTemp = this->miner.at(blockchainID);
        int newID = this->getNextAvailableBlockchainID();
        Koin *head = fetchedTemp->getTail();
        Koin *newHead = new Koin(head->getValue());
        Blockchain *temp = new Blockchain(newID, newHead);
        this->miner.push_back(temp);
        return true;
    }
}

/**
 * Stream overload.
 *
 * What to stream:
 *
 * -- BEGIN MINER --
 * Miner name: -minerName-
 * Blockchain count: -getBlockchainCount()-
 * Total value: -getTotalValue()-
 *
 * Block -blockchainID-: headKoin (see Blockchain for stream example)
 * .
 * .
 * .
 * Block -lastBlockchainID-: headKoin (see Blockchain for stream example)
 *
 * -- END MINER --
 *
 * Example:
 *
 * -- BEGIN MINER --
 * Miner name: BTCMiner
 * Blockchain count: 5
 * Total value: 2.519
 *
 * Block 0: 0.491--0.103--0.529--|(1.123)
 * Block 1: Empty.
 * Block 2: Empty.
 * Block 3: Empty.
 * Block 4: 0.400--0.924--0.072--|(1.396)
 *
 * -- END MINER --
 *
 * @param os Stream to be used.
 * @param miner Miner to be streamed.
 * @return The current stream.
 */
std::ostream& operator<<(std::ostream& os, const Miner& miner){
    long size = miner.miner.size();
    int precision = Utilizer::koinPrintPrecision();

    os << "-- BEGIN MINER --\n";
    os << "Miner name: " << miner.name << "\n";
    os << "Blockchain count: " << miner.getBlockchainCount() << "\n";
    os << "Total value: " << std::fixed << std::setprecision(precision) << miner.getTotalValue() << "\n";
    os << "\n";
    for(int i = 0; i < size ; i++){
        Blockchain* temp = miner.miner.at(i);
        if(temp->getHead() == nullptr){
            os << "Block " << temp->getID() << ": Empty.\n";
        }
        else{
            os << "Block " << temp->getID() << ": " ;
            Koin *ptr = temp->getHead();
            while(ptr){
                os << std::fixed << std::setprecision(precision) << ptr->getValue() << "--";
                ptr = ptr->getNext();
            }
            os << "|(" << temp->getTotalValue() << ")\n" ;
        }
//        os << *temp << "\n";
    }
    os << "\n";
    os << "-- END MINER --\n";
    return os;


}


/**
 * Calculate the value of the miner, which is the sum of the blockchains' value.
 *
 * Soft-forks DO NOT constitute for the total value of the miner.
 *
 * @return Total value of the miner.
 */
double Miner::getTotalValue() const {
    double acc = 0;
    long size = this->miner.size();
    for(int i = 0; i < size; i++) {
        if(isSoft(this->miner[i]->getHead(), *this, i)){
           continue;
        }
        acc += this->miner[i]->getTotalValue();
    }
}

bool Miner::isSoft(Koin *head, const Miner &miner, int ID) const {
    if(ID==0){
        return false;
    }
    Koin* walker = nullptr;
    for(int i = 0; i < ID; i++){
        walker = miner.miner.at(i)->getHead();
        while(walker != nullptr){
            if(walker == head){
                return true;
            }
            walker = walker -> getNext();
        }
    }
    return false;
}

