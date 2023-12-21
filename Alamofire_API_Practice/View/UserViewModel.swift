//
//  UserViewModel.swift
//  Alamofire_API_Practice
//
//  Created by 이정훈 on 12/21/23.
//

import Combine
import Alamofire

final class UserViewModel: ObservableObject {
    @Published var users: [User] = []
    
    private var subscriptions = Set<AnyCancellable>()
    private let targetURL: String = "https://jsonplaceholder.typicode.com/users"
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        AF.request(targetURL)
            .publishDecodable(type: [User].self)
            .compactMap { $0.value }
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    print("successfully fetched Users data")
                case .failure(let error):
                    print("Error - fetchUsers(): ", error)
                }
            }, receiveValue: { [weak self] receivedValue in
                self?.users = receivedValue
            })
            .store(in: &subscriptions)
    }
}
