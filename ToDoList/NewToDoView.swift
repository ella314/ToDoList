//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack {
            Text("Task Title:")
                .font(.title2)
                .fontWeight(.semibold)
            TextField("Enter the task description...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .font(.title3)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
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
    NewToDoView()
}
