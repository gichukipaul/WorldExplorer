//
//  ApolloClient.swift
//  CountryExplorer
//
//  Created by Gichuki on 19/06/2023.
//

import Apollo
import Foundation

class ApolloSession {
    
    static let shared = ApolloSession()
    
    let client = ApolloClient(url: URL(string: Constants.BASE_URL)!)
}
