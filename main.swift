//
//  main.swift
//  Shablon method
//
//  Created by Никита Строков on 21.04.2020.
//  Copyright © 2020 Никита Строков. All rights reserved.
//

class DataReadingAlgorithm {
    func OpenResources(){
        fatalError("This method must be overriden in subclass")
    }
    func ExtractData(){
        print ("Extracting data...")
    }
    func ParseData(){
        print ("Parsing data...")
    }
    func ProcessData(){
        print ("Processing data...")
    }
    func CloseResources(){}
    
    final func readData() {
        OpenResources()
        ExtractData()
        ParseData()
        ProcessData()
        CloseResources()
    }
}

class FileReader: DataReadingAlgorithm {
    override func OpenResources() {
        print ("Open file")
    }
    override func CloseResources() {
        print ("Close file\n")
    }
}

class BufferReader: DataReadingAlgorithm {
    override func OpenResources() {
        print ("Open buffer")
    }
    override func CloseResources() {
        print ("Close buffer\n")
    }

}

class DataBaseReader: DataReadingAlgorithm {
    override func OpenResources() {
        print ("Open data base")
    }
    override func CloseResources() {
        print ("Close data base\n")
    }

}

let fileReader = FileReader()
fileReader.readData()

let bufferReader = BufferReader()
bufferReader.readData()

let dataBaseReader = DataBaseReader()
dataBaseReader.readData()

