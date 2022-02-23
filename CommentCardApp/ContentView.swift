//
//  ContentView.swift
//  CommentCardApp
//
//  Created by James, Killian (NA) on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var options = Options()
    @ObservedObject var changeOptions: ChangeOptions
    @State private var happiness = 1.0
    @State private var isEditing = false
    @State var subjects = "Choose subject"
    
    var body: some View {
        VStack {
            
            Menu(subjects) {
                Button("maths", action: {subjects = "maths"})
                Button("computer science", action: {subjects = "computer science"})
                Button("economics", action: {subjects = "economics"})
                Button("physics", action: {subjects = "physics"})
            }

            
            Text("Subject: \(options.feelings[changeOptions.selectedSubjectOption])")
                    .padding()
                Button("Next option", action: {
                    if changeOptions.selectedSubjectOption == 4 {
                        changeOptions.selectedSubjectOption = 0
                    } else {
                        changeOptions.selectedSubjectOption += 1
                    }
                })
            Text("Topic: \(options.topic[changeOptions.selectedTopicOption])")
                    .padding()
                Button("Next option", action: {
                    if changeOptions.selectedTopicOption == 4 {
                        changeOptions.selectedTopicOption = 0
                    } else {
                        changeOptions.selectedTopicOption += 1
                    }
                })
            Text("Div Pace: \(options.speed[changeOptions.selectedSpeedOption])")
                    .padding()
                Button("Next option", action: {
                    if changeOptions.selectedSpeedOption == 4 {
                        changeOptions.selectedSpeedOption = 0
                    } else {
                        changeOptions.selectedSpeedOption += 1
                    }
                })
            Text("EW's: \(options.ew[changeOptions.selectedEwOption])")
                    .padding()
                Button("Next option", action: {
                    if changeOptions.selectedEwOption == 4 {
                        changeOptions.selectedEwOption = 0
                    } else {
                        changeOptions.selectedEwOption += 1
                    }
                })
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(changeOptions: ChangeOptions())
    }
}
