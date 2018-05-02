cmake_minimum_required(VERSION 3.8)
project(HW3_StudentPack)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        Blockchain.cpp
        Blockchain.h
        Koin.cpp
        Koin.h
        main.cpp
        mersenne.cpp
        Miner.cpp
        Miner.h
        randomc.h
        Testable.h
        TestableAllStream.cpp
        TestableAllStream.h
        TestableBlockchain.cpp
        TestableBlockchain.h
        TestableKoin.cpp
        TestableKoin.h
        TestableMiner.cpp
        TestableMiner.h
        Utilizer.h
        )

add_executable(HW3_StudentPack ${SOURCE_FILES})