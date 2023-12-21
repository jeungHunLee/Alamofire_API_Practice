//
//  ContentView.swift
//  Alamofire_API_Practice
//
//  Created by 이정훈 on 12/21/23.
//

import SwiftUI

struct ContentListView: View {
    @ObservedObject var userViewModel: UserViewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(userViewModel.users) {
                    ContentListRowView(user: $0)
                }
            }
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ContentListView(userViewModel: UserViewModel())
}
