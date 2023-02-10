//
//  MonthExpanseDetailViewModel.swift
//  MyExpanses
//
//  Created by Pedro Mota on 10/02/23.
//

import Foundation

class MonthExpanseDetailViewModel {
    
    var expanses: [Expanse]
    
    init(expanses: [Expanse] = [Expanse(title: "iFood", date: "14/06/2022", value: 50.00)]) {
        self.expanses = expanses
    }
    
}
