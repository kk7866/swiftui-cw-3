//
//  ContentView.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw
import SwiftUI

struct Exercise1: View {
    @State var name = ""
    @State var water = 1
    
    var body: some View {
        ZStack {
            Image("charter")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("عهدة الماء 🚰")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
//                ADD THE CODE HERE
                HStack{
                    Spacer()
                    TextField("Type your name", text: $name).padding()
                    Spacer()
                }
                HStack{
                    Spacer()
                    Stepper("Cups of water:", value: $water, in: 1...100)
                    Spacer()
                }
                Spacer()
                VStack{
                    Text("أتعهد أنا")
                    Text(name)
                    Text("أن أشرب")
                    Text("\(water)")
                    Text("من أكواب الماء يومياً")
                    Text("والله على ما أقول شهيد")
                }
                Spacer()
            }.padding()
        }
    }
}

struct Exercise1_Previews: PreviewProvider {
    static var previews: some View {
        Exercise1()
    }
}
