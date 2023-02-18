//참고: https://developer.apple.com/tutorials/app-dev-training/using-stacks-to-arrange-views

import SwiftUI


struct MeetingView: View {
    
    var body: some View {
        
        VStack {
            ProgressView(value: 10, total: 15)
            HStack{
                VStack(alignment: .leading) {
                    Text("hello world!!").font(.caption)
                    Label("320", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment:.trailing) {
                    Text("hello world!!").font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            Circle().strokeBorder(lineWidth: 21)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action:{}){
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }.padding()
    }
}


struct MeetingView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        MeetingView()
        
    }
    
}
