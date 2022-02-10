//
//  ChangeOptions.swift
//  CommentCardApp
//
//  Created by James, Killian (NA) on 10/02/2022.
//

import Foundation

class ChangeOptions: ObservableObject {
    @Published var selectedSubjectOption = 0
    @Published var selectedTopicOption = 0
    @Published var selectedSpeedOption = 0
    @Published var selectedEwOption = 0
}
