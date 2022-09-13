//
//  ViewModel.swift
//  TabViewCustom
//
//  Created by Lucy on 13/09/22.
//

import Foundation

class ViewModel: ObservableObject{
    @Published var currentPage: Page = .home
    @Published var homeState: Int = 0
    @Published var addState: Int = 0
    @Published var likeState: Int = 0
}

enum Page{
    case home
    case add
    case like
}
