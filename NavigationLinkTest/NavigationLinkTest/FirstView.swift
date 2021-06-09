//
//  FirstView.swift
//  NavigationLinkTest
//
//  Created by freshera on 2021/6/8.
//

import SwiftUI

struct FirstView: View {
    
    init() {
        UINavigationBar.appearance().backgroundColor = .white
        UINavigationBar.appearance().tintColor = .black
        UINavigationBar.appearance().barTintColor = .black
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.red]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]
    }
    
    var body: some View {
        NavigationView(content: {
            NavigationLink(
                destination: SecondView(),
                label: {
                    Text("跳转下一页面")
                })
                .navigationBarTitle("第一个", displayMode: .inline)
                .navigationBarItems(leading: Text("左边"), trailing: Text("右边"))
        })
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
