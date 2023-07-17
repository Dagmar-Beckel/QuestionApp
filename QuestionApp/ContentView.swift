 //
//  ContentView.swift
//  QuestionApp
//
//  Created by GoldenCalfCompanyMacPro2 on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var rootPresenting: Bool = false
    
    var body: some View {
        NavigationView{
            VStack(alignment: .center){
                Text("Dagmar Quiz")
                    .font(.title)
                    .fontWeight(.bold)
                
                NavigationLink(destination: PageTwo(), isActive: $rootPresenting){
                    Text("Start")
                    .font(.title3)
                    .padding(7)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10) 
                    
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .environment(\.rootPresentation,$rootPresenting)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
