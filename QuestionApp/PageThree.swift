//
//  PageThree.swift
//  QuestionApp
//
//  Created by Dagmar Beckel on 7/15/23.
//

import SwiftUI


struct PageThree: View {
    @State private var emoji = ""
    @Environment(\.rootPresentation) var rootPresentation: Binding<Bool>
    
    var body: some View {
        ZStack{
            //Back Button
            Button("< Back") {
                rootPresentation.wrappedValue = false
            }
            .padding(.init(top: 0, leading: 0, bottom: 750, trailing: 300))
            
            VStack(spacing:25){
                //Question
                Text("What is my favorite food?")
                    .font(.headline)
                    .fontWeight(.bold)
                
                //Spaghetti
                Button("Spaghetti🍝") {
                    emoji = "❌"
                }
                    .padding(7)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                
                //Fries
                Button("Fries🍟") {
                    emoji = "❌"
                }
                    .padding(7)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                
                //Pizza
                Button("Pizza🍕") {
                    emoji = "✅"
                }
                    .padding(7)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                
                //emoji result
                Text(emoji)
                    .padding(10)
                    .font(.title)
                
                NavigationLink(destination: PageFour()){
                    Text(">")
                        .font(.title)
                        .padding(7)
                        .foregroundColor(.blue)
                }
                .navigationBarBackButtonHidden(true)
            }
        }
        
    }
}

struct PageThree_Previews: PreviewProvider {
    static var previews: some View {
        PageThree()
    }
}
