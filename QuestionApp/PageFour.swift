//
//  PageFour.swift
//  QuestionApp
//
//  Created by Dagmar Beckel on 7/15/23.
//

import SwiftUI

struct PageFour: View {
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
                Text("What is my favorite hobby?")
                    .font(.headline)
                    .fontWeight(.bold)
                
                //Traveling
                Button("Traveling✈️") {
                    emoji = "❌"
                }
                    .padding(7)
                    .foregroundColor(.white)
                    .background(Color.gray)
                     .cornerRadius(10)
                 
                //Coding
                Button("Reading📚") {
                    emoji = "✅"
                }
                    .padding(7)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                
                //Reading
                Button("Coding💻") {
                    emoji = "❌"
                }
                    .padding(7)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                
                //emoji result
                Text(emoji)
                    .padding(10)
                    .font(.title)
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}

struct PageFour_Previews: PreviewProvider {
    static var previews: some View {
        PageFour()
    }
}
