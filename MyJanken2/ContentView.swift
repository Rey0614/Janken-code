//
//  ContentView.swift
//  MyJanken
//
//  Created by Rei Hashimoto on 2021/11/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber = 0
    
    var body: some View {
        VStack{
            if answerNumber == 0 {
                Text("これからじゃんけんをします")
                    .padding(.bottom)
            } else if answerNumber == 1 {
                Image("gu")
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                 Text("グー")
                Spacer()
                    .padding(.bottom)
            } else if answerNumber == 2 {
                Image("choki")
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                 Text("チョキ")
                Spacer()
                padding(.bottom)
            } else {
                Image("pa")
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                 Text("パー")
                Spacer()
                padding(.bottom)
            }
       
        VStack {
             
            Spacer()
            
            Button(action: {
               var newAnswerNumber = 0
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNumber
                answerNumber = newAnswerNumber
            }) {
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
// telumoが作業しました。
