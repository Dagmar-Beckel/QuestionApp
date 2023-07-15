//
//  ContentView.swift
//  QuestionApp
//
//  Created by GoldenCalfCompanyMacPro2 on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Dagmar Quiz")
                NavigationLink(destination: PageTwo()){
                        Text(">")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
