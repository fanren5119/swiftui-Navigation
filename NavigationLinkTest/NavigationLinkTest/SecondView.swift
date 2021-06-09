//
//  SecondView.swift
//  NavigationLinkTest
//
//  Created by freshera on 2021/6/8.
//

import SwiftUI

struct SecondView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Text("返回")
        })
        .navigationBarTitle("第二个", displayMode: .inline)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
