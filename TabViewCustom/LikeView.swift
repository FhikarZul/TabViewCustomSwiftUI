//
//  LikeView.swift
//  TabViewCustom
//
//  Created by Lucy on 13/09/22.
//

import SwiftUI

struct LikeView: View {
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        VStack{
            Text("\(viewModel.likeState)")
            Button(action: {
                viewModel.likeState += 1
            }){
                Image(systemName: "plus")
            }
            .foregroundColor(Color.white)
            .padding()
            .background(Color.purple)
            .cornerRadius(10)
        }
    }
}

struct LikeView_Previews: PreviewProvider {
    static var previews: some View {
        LikeView(viewModel: ViewModel())
    }
}
