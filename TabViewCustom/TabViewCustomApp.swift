//
//  TabViewCustomApp.swift
//  TabViewCustom
//
//  Created by Lucy on 13/09/22.
//

import SwiftUI

@main
struct TabViewCustomApp: App {
    @StateObject var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
        }
    }
}
