//
//  main.swift
//  DelegationDemo
//
//  Created by Raphat Aektantidamrong on 21/1/2567 BE.
//

import Foundation

protocol ConsoleTableProtocol {
    func numberOfRow() -> Int
    func textOf(row:Int) -> String
}

struct ConsoleTable {
    var delegate: ConsoleTableProtocol?
    
    func printTable() {
        if let delegate = delegate {
            let row = delegate.numberOfRow()
            var result = "******************************\n"
            for i in 0 ..< row {
                let item = delegate.textOf(row: i)
                result += (item + "\n")
                result += "----------------------------\n"
            }
            result += "******************************"
            print(result)
        }
    }
}
