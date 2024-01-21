//
//  main.swift
//  DelegationDemo
//
//  Created by Raphat Aektantidamrong on 22/1/2567 BE.
//

import Foundation

struct FruiBasket: ConsoleTableProtocol {
    
    var items = ["Apple","Banana","Orange"]
    var table = ConsoleTable()
    
    init () {
        table.delegate = self
    }
    
    func numberOfRow() -> Int {
        return items.count
    }
    
    func textOf(row: Int) -> String {
        return items[row]
    }
    
    func showTable() {
        table.printTable()
    }
}

let basket = FruiBasket()
basket.showTable()
