//
//  HomeView.swift
//  TabViewCustom
//
//  Created by Lucy on 13/09/22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        VStack{
            Text("\(viewModel.homeState)")
            Button(action: {
                viewModel.homeState += 1
            }){
                Image(systemName: "plus")
            }
            .foregroundColor(Color.white)
            .padding()
            .background(Color.orange)
            .cornerRadius(10)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: ViewModel())
    }
}
