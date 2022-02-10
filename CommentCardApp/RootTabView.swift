//
//  RootTabView.swift
//  CommentCardApp
//
//  Created by James, Killian (NA) on 10/02/2022.
//

import SwiftUI

struct RootTabView: View {
    let changeOptions = ChangeOptions()
    
    var body: some View {
        TabView() {
            ContentView(changeOptions: changeOptions)
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Construct")
                }
            Generate(changeOptions: changeOptions)
                .tabItem {
                    Image(systemName: "flag.and.flag.filled.crossed")
                    Text("Generate")
                }
            
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}

