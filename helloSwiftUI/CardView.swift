//
//  CardView.swift
//  helloIosUi
//
//  Created on 2023. 2. 18..
//

import SwiftUI

struct CardView: View{
    let scrum: DailyScrum
    var body: some View{
        VStack (alignment: .leading){
            Text("Hello world!")
                .font(.headline)
            
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .padding(.trailing, 20)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider{
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        
        
        
        
        CardView(scrum:scrum)
            .background(scrum.theme.mainColor) // 왜 적용안됨?
            .background(Color.blue.colorInvert()) // 어?
            .previewLayout(.fixed(width: 400, height: 60))
        
        
    }
    
}


