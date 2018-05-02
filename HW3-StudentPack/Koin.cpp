#include <iostream>
#include "Koin.h"
#include "Utilizer.h"
#include <iomanip>
/*
YOU MUST WRITE THE IMPLEMENTATIONS OF THE REQUESTED FUNCTIONS
IN THIS FILE. START YOUR IMPLEMENTATIONS BELOW THIS LINE 
*/



Koin::Koin(double value) : value{value}, next(nullptr) {

}

Koin::~Koin() {
//    this->next = nullptr;
}

void Koin::Parcala(Koin* ptr) {
}


Koin::Koin(const Koin &rhs) {
//    this->value = rhs.value;
//    this->next = rhs.next;

    *this = rhs;





//    Koin *p = this;
//    p->value = rhs.value;
//    Koin *q = rhs.next;
//    Koin* newKoin;
//    while(q)
//    {
//        newKoin = new Koin(q->value);
//        p->next = newKoin;
//        p = p->next;
//        q = q->next;
//    }
}


Koin& Koin::operator=(const Koin &rhs) {
    if(this != &rhs)
    {
        this->next = rhs.next;
        this->value = rhs.value;
    }
    return *this;
//    if(this != &rhs)
//    {
//        Koin *p = this;
//        p->value = rhs.value;
//        Koin *q = rhs.next;
//        Koin* newKoin;
//        while(q)
//        {
//            if(p->next!= nullptr)
//            {
//                p -> next -> value = q -> value;
//                p = p -> next;
//                q = q -> next;
//                continue;
//            }
//            else
//            {
//                newKoin = new Koin(q->value);
//                p->next = newKoin;
//                p = p->next;
//                q = q->next;
//            }
//        }
//    }
//    return *this;
}

double Koin::getValue() const {
    return this->value;
}

Koin* Koin::getNext() const {
    return this->next;
}

void Koin::setNext(Koin *next) {
    this->next = next;
}

bool compare(double v1, double v2){
    if(abs(v1-v2)>Utilizer::doubleSensitivity()){
        return false;
    }
    else{
        return true;
    }
}


void Koin::setValue(double value){
    this->value = value;
}

bool Koin::operator==(const Koin &rhs) const {
//    Koin* p = const_cast<Koin *>(this);
//    Koin* q = const_cast<Koin *>(&rhs);
//    while(p!= nullptr && q!= nullptr){
//        if(compare(p->value, q->value)){
//            p = p -> next;
//            q = q -> next;
//
//            continue;
//        }
//        else
//        {
//            return false;
//        }
//    }
//    if(p == nullptr && q == nullptr) {
//        return true;
//    }
//    else{
//        return false;
//    }
    Koin *p = nullptr;
    Koin *q = nullptr;
    if(this==&rhs)
    {
        return true;
    }
    else
    {
        if(abs(this->value - rhs . value) > Utilizer::doubleSensitivity())
        {
            return false;
        }
        p = this->next;
        q =  rhs.next;
        while(p != nullptr && q != nullptr){
            if(abs(p->value - q->value) > Utilizer::doubleSensitivity())
            {
                return false;
            }
            p = p->next;
            q = q->next;
        }
        if(p != nullptr || q != nullptr)
        {
            return false;
        }
        return true;
    }

}

bool Koin::operator!=(const Koin &rhs) const {
    Koin *p = nullptr;
    Koin *q = nullptr;
    if(this==&rhs)
    {
        return false;
    }
    else
    {
        if(abs(this->value - rhs . value) > Utilizer::doubleSensitivity())
        {
            return true;
        }
        p = this->next;
        q =  rhs.next;
        while(p != nullptr && q != nullptr){
            if(abs(p->value - q->value) > Utilizer::doubleSensitivity())
            {
                return true;
            }
            p = p->next;
            q = q->next;
        }
        if(p != nullptr || q != nullptr)
        {
            return true;
        }
        return false;
    }

}

Koin& Koin::operator*=(int multiplier){
    (*this).value = (*this).getValue() * multiplier;
    return *this;
}


Koin& Koin::operator/=(int divisor) {
    (*this).value = (*this).getValue() / divisor;
    return *this;
}

std::ostream& operator<<(std::ostream& os, const Koin& koin) {
    int precision = Utilizer::koinPrintPrecision();
    os <<std::fixed << std::setprecision(precision)<< koin.value << "--";
    Koin* p = koin.next;
    while(p)
    {
        os <<std::fixed << std::setprecision(precision) << p->value << "--";
        p = p->next;
    }
    os << "|";
    return os;
}

void Koin::yesSoftFork(){
    this->isSoftFork = true;
}

bool Koin::querySoftFork() {
    return this->isSoftFork;
}
