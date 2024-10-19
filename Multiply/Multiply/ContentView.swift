//
//  ContentView.swift
//  Multiply
//
//  Created by Samantha Hiles on 9/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var firstNumberTextField = ""
    @State private var secondNumberTextField = ""
    @State private var calculation = 0
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("Multiply")
                .font(.title).bold()
            TextField("Enter a number", text:$firstNumberTextField)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30)
                .font(.body)
                .padding()
            Text("X")
            TextField("Enter a number", text :$secondNumberTextField)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30)
                .font(.body)
                .padding()
            Button("Calculate"){
                if let firstNumber = Int(firstNumberTextField){
                    if let secondNumber = Int(secondNumberTextField){
                        calculation = firstNumber * secondNumber
                        if calculation == 64 {
                            imageName = "Dog brown"
                            }
                        else if calculation % 2 == 0 {
                            imageName = "Dog White"
                        }
                        else {
                            imageName = "Dog Black"
                        }
                    }
                }
            }
            Text("\(calculation)")
                .frame(width: 200, height: 30)
                .font(.body)
                .padding()
            Image(imageName)
                .resizable()
                .frame(width: 150, height: 150)
                .aspectRatio(contentMode: .fit)
        }
        .padding()
        Spacer()
    }
}
#Preview {
    ContentView()
}
