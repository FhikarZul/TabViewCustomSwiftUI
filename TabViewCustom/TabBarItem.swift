//
//  TabBarItem.swift
//  TabViewCustom
//
//  Created by Lucy on 13/09/22.
//

import SwiftUI

struct TabBarItem: View {
    @StateObject var viewModel: ViewModel
    let isEnabled: Bool
    let assignedPage: Page
    let width: CGFloat
    let height: CGFloat
    let systemIcon: String
    let label: String
    let colorState: Color
    
    
    var body: some View {
        VStack(spacing: 0){
            Image(systemName: systemIcon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(isEnabled ? Color.white : Color.black)
                .frame(width: width/5, height: height/28)
            
            Text(label)
                .foregroundColor(isEnabled ? Color.white : Color.black)
        }
        .padding()
        .frame(width: 80, height: 80)
        .background(isEnabled ? colorState : Color.white)
        .cornerRadius(20)
        .shadow(radius: 10)
        .onTapGesture {
            viewModel.currentPage = assignedPage
        }
    }
}
