//
//  ItemModel.swift
//  ToDo
//
//  Created by Назар Горевой on 21.06.2023.
//

import Foundation
//immutable struct
struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isComplited: Bool
    
    init(id: String = UUID().uuidString, title: String, isComplited: Bool) {
        self.id = id
        self.title = title
        self.isComplited = isComplited
    }
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isComplited: !isComplited)
    }
}


