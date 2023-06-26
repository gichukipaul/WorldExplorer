//
//  ViewControllerViewModel.swift
//  CountryExplorer
//
//  Created by user on 21/06/2023.
//

import Foundation

class ViewControllerViewModel {
    private let session = ApolloSession.shared.client
    
    var continents:[GetContinentsQuery.Data.Continent] = [] {
        didSet {
            dataDidChange?()
        }
    }
    var dataDidChange: (() -> Void)?
    
    func fetchContinents() {
        session.fetch(query: GetContinentsQuery()) { [weak self] result in
            guard let self = self else {
                return
            }
            
            switch result {
                case .success(let graphQLResult):
                    self.continents = graphQLResult.data?.continents ?? []
                case .failure(let error):
                    print(error.localizedDescription)
            }
        }
    }
    
    func numberOfContinents() -> Int {
        return continents.count
    }
    
    func getContinent(at index: Int) -> GetContinentsQuery.Data.Continent {
        return continents[index]
    }
}
