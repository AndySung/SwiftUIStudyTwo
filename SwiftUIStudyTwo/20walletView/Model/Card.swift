//
//  Card.swift
//  SwiftUIWallet
//  第20 章节学习
//  這個檔案包含了 Card 的結構。 Card 表⽰信⽤卡的資料， 包含卡號、類型、 有效⽇ 期、 圖⽚與客⼾姓名， 除此之外， 你可以在檔案中找到⼀個測試信⽤卡的陣列
//  Created by Simon Ng on 31/8/2022.
//

import Foundation

enum CardType: String {
    case visa
    case master
    case ae
    case chase
    case discover
}

struct Card: Identifiable {
    var id = UUID()
    var name: String
    var type: CardType
    var number: String
    var expiryDate: String
    var image: String {
        return type.rawValue
    }
}

let testCards = [ Card(name: "James Hayward", type: .visa, number: "4242 4242 4242 4242", expiryDate: "3/23"),
              Card(name: "Cassie Emily", type: .master, number: "5353 5353 5353 5353", expiryDate: "10/21"),
              Card(name: "Adam Green", type: .ae, number: "3737 3737 3737 3737", expiryDate: "8/22"),
              Card(name: "Donald Wayne", type: .chase, number: "6363 6263 6362 6111", expiryDate: "11/23"),
              Card(name: "Gloria Jane", type: .discover, number: "6011 0009 9013 9424", expiryDate: "5/24")
    ]
