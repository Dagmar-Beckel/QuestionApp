//
//  PageTwo.swift
//  QuestionApp
//
//  Created by GoldenCalfCompanyMacPro2 on 7/14/23.
//

import SwiftUI

struct PageTwo: View {
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
                Text("What is my favorite color?")
                    .font(.headline)
                    .fontWeight(.bold)

                //Blue color
                Button("Blue") {
                    emoji = "✅"
                }
                .padding(7)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
                
                //Pink
                Button("Pink") {
                    emoji = "❌"
                }
                .padding(7)
                .foregroundColor(.white)
                .background(Color("pinkColor"))
                .cornerRadius(10)
                 
                //Green
                Button("Green") {
                    emoji = "❌"
                }
                .padding(7)
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(10)
                
                //emoji result
                Text(emoji)
                    .padding(10)
                    .font(.title)
                
                NavigationLink(destination: PageThree()){
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

struct PageTwo_Previews: PreviewProvider {
    static var previews: some View {
        PageTwo()
    }
}
