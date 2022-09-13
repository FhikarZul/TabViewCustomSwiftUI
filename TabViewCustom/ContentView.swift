//
//  ContentView.swift
//  TabViewCustom
//
//  Created by Lucy on 13/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        GeometryReader{ geometry in
            VStack{
               Spacer()
                switch viewModel.currentPage{
                    
                case .home:
                    HomeView(viewModel: viewModel)
                case .add:
                    AddView(viewModel: viewModel)
                case .like:
                    LikeView(viewModel: viewModel)
                }
               Spacer()
               HStack{
                   TabBarItem(
                    viewModel: viewModel,
                    isEnabled: viewModel.currentPage == .home,
                    assignedPage: .home,
                    width: geometry.size.width,
                    height: geometry.size.height,
                    systemIcon: "homekit",
                    label: "Home",
                    colorState: Color.orange
                   )
                   
                   TabBarItem(
                    viewModel: viewModel,
                    isEnabled: viewModel.currentPage == .add,
                    assignedPage: .add,
                    width: geometry.size.width,
                    height: geometry.size.height,
                    systemIcon: "plus",
                    label: "Add",
                    colorState: Color.blue
                   )
                   
                   TabBarItem(
                    viewModel: viewModel,
                    isEnabled: viewModel.currentPage == .like,
                    assignedPage: .like,
                    width: geometry.size.width,
                    height: geometry.size.height,
                    systemIcon: "heart",
                    label: "Like",
                    colorState: Color.purple
                   )
               }
               .frame(width: geometry.size.width, height: geometry.size.height/8)
               .background(.gray)
               .edgesIgnoringSafeArea(.bottom)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ViewModel())
    }
}


