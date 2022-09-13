//
//  AddView.swift
//  TabViewCustom
//
//  Created by Lucy on 13/09/22.
//

import SwiftUI

struct AddView: View {
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        VStack{
            Text("\(viewModel.addState)")
            Button(action: {
                viewModel.addState += 1
            }){
                Image(systemName: "plus")
            }
            .foregroundColor(Color.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(viewModel: ViewModel())
    }
}
