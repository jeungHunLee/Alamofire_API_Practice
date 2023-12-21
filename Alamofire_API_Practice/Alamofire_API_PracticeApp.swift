//
//  Alamofire_API_PracticeApp.swift
//  Alamofire_API_Practice
//
//  Created by 이정훈 on 12/21/23.
//

import SwiftUI

@main
struct Alamofire_API_PracticeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentListView(userViewModel: UserViewModel())
        }
    }
}
