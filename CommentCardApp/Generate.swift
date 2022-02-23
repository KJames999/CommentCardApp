//
//  Generate.swift
//  CommentCardApp
//
//  Created by James, Killian (NA) on 10/02/2022.
//

import SwiftUI

struct Generate: View {
    @State private var options = Options()
    @ObservedObject var changeOptions: ChangeOptions
    
    var body: some View {
        
        VStack {
            Text("I am finding this subject as a whole \(options.feelings[changeOptions.selectedSubjectOption]). I am finding the speed of divs \(options.topic[changeOptions.selectedTopicOption]). I am finding the speed of divs \(options.speed[changeOptions.selectedSpeedOption]). I am finding the EW's \(options.ew[changeOptions.selectedEwOption]).")
            
        }
        
        
    }
}

struct Generate_Previews: PreviewProvider {
    static var previews: some View {
        Generate(changeOptions: ChangeOptions())
    }
}
