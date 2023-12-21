//
//  ContentListRowView.swift
//  Alamofire_API_Practice
//
//  Created by 이정훈 on 12/21/23.
//

import SwiftUI

struct ContentListRowView: View {
    var user: User
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Text("\(user.username)(\(user.name))")
                    .bold()
                    .font(.headline)
                
                Spacer()
            }
            
            Text(user.email)
                .font(.callout)
            
            Text(user.phone)
                .font(.callout)
        }
    }
}

#Preview {
    ContentListRowView(user: User(id: 1, name: "Leanne Graham", username: "Bret", email: "Sincere@april.biz", address: Address(street: "Kulas Light", suite: "Apt. 556", city: "Gwenborough", zipcode: "92998-3874", geo: Geo(lat: "-37.3159", lng: "81.1496")), phone: "1-770-736-8031 x56442", website: "hildegard.org", company: Company(name: "Romaguera-Crona", catchPhrase: "Multi-layered client-server neural-net", bs: "harness real-time e-markets")))
}
