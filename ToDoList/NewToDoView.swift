//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack {
            Text("Task Title:")
                .font(.title2)
                .fontWeight(.semibold)
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
                .font(.title3)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
                    .font(.title3)
            }
            Button {
                
            } label: {
                Text("Save")
                    .padding(10)
                    .background(Color(.green))
                    .cornerRadius(15)
                    .foregroundStyle(Color.white)
            }
        }
        .padding()
    }
}

#Preview {
    NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false))
}
