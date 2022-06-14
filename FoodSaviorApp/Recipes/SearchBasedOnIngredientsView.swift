//
//  SearchBasedOnIngredientsView.swift
//  FoodSaviorApp
//
//  Created by Manthan Vasani on 12/06/22.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    let name: String
    var isCompleted: Bool
}

struct SearchBasedOnIngredientsView: View {
    
    @State private var tasks = [Task(name: "Potatoes", isCompleted: false), Task(name: "Onions", isCompleted: false), Task(name: "Tomatoes", isCompleted: false), Task(name: "Eggs", isCompleted: false), Task(name: "Milk", isCompleted: false), Task(name: "Corn", isCompleted: false), Task(name: "Spinach", isCompleted: false), Task(name: "Peas", isCompleted: false), Task(name: "Onions", isCompleted: false), Task(name: "Rice", isCompleted: false), Task(name: "Bread", isCompleted: false)  ]
    
    var body: some View {
        VStack {
                    List($tasks) { $task in
                        TaskCellView(task: $task)
                    }
                    
                    Text("Selected number if ingredients: \(tasks.filter { $0.isCompleted }.count)")
                }
            }
        }

        struct SearchBasedOnIngredientsView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }

        struct TaskCellView: View {
            
            @Binding var task: Task
            
            var body: some View {
                
                HStack {
                    Image(systemName: task.isCompleted ? "checkmark.square": "square")
                        .onTapGesture {
                            task.isCompleted.toggle()
                            
                        }
                    Text(task.name)
                }
            }
        }
