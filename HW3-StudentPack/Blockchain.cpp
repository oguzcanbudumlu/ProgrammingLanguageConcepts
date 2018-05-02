#include "Blockchain.h"
#include "Utilizer.h"
#include <iomanip>

/*
YOU MUST WRITE THE IMPLEMENTATIONS OF THE REQUESTED FUNCTIONS
IN THIS FILE. START YOUR IMPLEMENTATIONS BELOW THIS LINE 
*/


Blockchain::Blockchain(int id) : id{id}, head{nullptr}{
}

Blockchain::Blockchain(int id, Koin *head) : id{id} {

    this->head = head;
//    Koin* follower = this->head;
//    Koin* temp = head->getNext();
//    Koin* newKoin = nullptr;
//    while(temp){
//        newKoin = new Koin(temp->getValue());
//        follower->setNext(newKoin);
//        follower = follower->getNext();
//        temp = temp->getNext();
//    }
//
////    Koin* manager;
////    Koin* newKoin;
////    newKoin = new Koin(head->getValue());
////    manager = newKoin;
////    this->head = manager;
////    head = head ->getNext();
////    while(head)
////    {
////        newKoin = new Koin(head->getValue());
////        manager->setNext(newKoin);
////        manager = manager->getNext();
////    }
////    delete head;

}

Blockchain::~Blockchain() {
    if(!this->isSoftFork){
        Koin* current = this->head;
        Koin* next;
        while(current != nullptr)
        {
            next = current->getNext();
            delete current;
            current = next;
        }
    }




//    Koin* current = this->head;
//    while( current != nullptr ) {
//        Koin* next = current->getNext();
//        delete current;
//        current = next;
//    }
//    this->head = nullptr;
}

Koin* Blockchain::getHead() const {
    return this->head;
}

int Blockchain::getID() const {
    return this->id;

}

Blockchain::Blockchain(const Blockchain &rhs) :id{rhs.id}{
    Koin *head = rhs.head;
    Koin* manager;
    Koin* newKoin;
    newKoin = new Koin(head->getValue());
    manager = newKoin;
    this->head = manager;
    head = head ->getNext();
    while(head) {
        newKoin = new Koin(head->getValue());
        manager->setNext(newKoin);
        manager = manager->getNext();
    }
}


Blockchain& Blockchain::operator=(Blockchain &&rhs) noexcept {
//    delete this->head->getNext();
/*    Koin* breaker = this->head;
    while(breaker!=nullptr)
    {
        Koin *next = breaker->getNext();
        delete breaker;
        breaker = next;
    }

    Koin *head = rhs.head;
    Koin* manager;
    Koin* newKoin;
    newKoin = new Koin(head->getValue());
    manager = newKoin;
    this->head = manager;
    head = head ->getNext();
    while(head) {
        newKoin = new Koin(head->getValue());
        manager->setNext(newKoin);
        manager = manager->getNext();
    }*/

    Koin* breaker = this->head;
    while(breaker!=nullptr)
    {
        Koin *next = breaker->getNext();
        delete breaker;
        breaker = next;
    }
    this->head = rhs.head;
    rhs.head = nullptr;

//    this->head->setNext(rhs.head->getNext());
//    rhs.head->setNext(nullptr);
}

double Blockchain::getTotalValue() const {
    double acc = 0;
    Koin* p = this->getHead();
    while(p)
    {
        acc += p->getValue();
        p = p->getNext();
    }
    return acc;
}

long Blockchain::getChainLength() const {
    long counter = 0;
    Koin* p = this->getHead();
    while(p){
        counter++;
        p = p->getNext();
    }
    return counter;
}

//Blockchain& Blockchain::operator=(const Blockchain &rhs)  {
//
//}

void Blockchain::operator++() {
    Koin* minedKoin = new Koin(Utilizer::fetchRandomValue());
    Koin *p = this->head;
    if(p != nullptr)
    {
        while(p->getNext() != nullptr)
        {
            p = p->getNext();
        }
        p->setNext(minedKoin);
    }
    else
    {
        this->head = minedKoin;
    }
}

/*
 * If a blockchain is created by a soft fork, its head cannot be deleted.
 * TODO
 * */

void Blockchain::operator--() {
//    if(this->isSoftFork){
//        Koin *p = this->head;
//        while(p->getNext() != nullptr){
//            p = p->getNext();
//        }
//        if(p == this->head){
//            return;
//        }
//        else{
//            delete p;
//        }
//    }
//    else{
        Koin *p = this->head;
        Koin *before = nullptr;
        if(p==nullptr){
            return;
        }
        else if(p->getNext() != nullptr) {
            while(p->getNext() != nullptr){
                p = p->getNext();
            }
            before = this->head;
            while(before -> getNext() != p )
            {
                before = before ->getNext();
            }
            if(p->querySoftFork()){
                return;
            }
            else{
                delete p;
                before->setNext(nullptr);
            }
        } else {
            if(this->head->querySoftFork()){
                return;
            }
            else{
                delete this->head;
                this->head = nullptr;
            }
        }
//    }


}

Blockchain& Blockchain::operator*=(int multiplier){
    Koin* p = this->head;
    while(p){
        *p = p->operator*=(multiplier);
        p = p->getNext();
    }
    return *this;
}

Blockchain& Blockchain::operator/=(int divisor){
    Koin* p = this->head;
    while(p){
        *p = p->operator/=(divisor);
        p = p->getNext();
    }
    return *this;
}


std::ostream& operator<<(std::ostream& os, const Blockchain& blockchain)
{
    if(blockchain.head == nullptr){
        os << "Block " << blockchain.id << ": Empty.";
    }
    else{
        int precision = Utilizer::koinPrintPrecision();
        os << "Block " << blockchain.id << ": " ;
        Koin *ptr = blockchain.head;
        while(ptr){
            os << std::fixed << std::setprecision(precision) << ptr->getValue() << "--";
            ptr = ptr->getNext();
        }
        os << "|(" << blockchain.getTotalValue() << ")" ;
    }
    return os;
}



Koin* Blockchain::getTail(){
    Koin* temp = this->head;
    while(temp->getNext() != nullptr){
        temp = temp -> getNext();
    }
    return temp;

}

void Blockchain::yesSoftFork(){
    this->isSoftFork = true;
}
