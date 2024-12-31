//
//  AuthDataStore.swift
//  Pawnder
//
//  Created by Sai Gangu on 12/28/24.
//

import Foundation


class AuthDataStore: ObservableObject {
    @Published var email = ""
    @Published var password = ""
}
