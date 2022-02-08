//
//  ContentView.swift
//  CommentCardApp
//
//  Created by James, Killian (NA) on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var options = Options()
    @State private var selectedOption = 0
    
    var body: some View {
        Form {
            Spacer()
            VStack {
                Text("I am finding this subject \(options.feelings[selectedOption])")
                    .padding()
                Button("Next option", action: {
                    if selectedOption == 4 {
                        selectedOption = 0
                    } else {
                        selectedOption += 1
                    }
                })
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
