//
//  ToDoApp.swift
//  ToDo
//
//  Created by Назар Горевой on 21.06.2023.
//

import SwiftUI

/*
 MVVM
 
 Model - data point
 View - UI
 ViewModel - manages models for View
 
 
 */

@main
struct ToDoApp: App {
    
    
   @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .environmentObject(listViewModel)
            
        }
    }
}
