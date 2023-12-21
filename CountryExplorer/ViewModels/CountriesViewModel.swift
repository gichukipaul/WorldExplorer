//
//  CountriesViewModel.swift
//  CountryExplorer
//
//  Created by user on 24/06/2023.
//

import Foundation
import Apollo

final class CountriesViewModel {
    
    private var session = ApolloSession.shared.client
    
    var countries: [GetContriesInContinentQuery.Data.Continent.Country] = [] {
        didSet {
            didFetchCountries?()
        }
    }
    
    var didFetchCountries: (() -> Void)?
    
    func fetchCountries(for continent: GetContinentsQuery.Data.Continent) {
        session.fetch(query: GetContriesInContinentQuery(code: continent.code)) { [weak self] result in
            guard let self = self else {return}
            
            switch result {
                case .success(let graphqlResult):
                    self.countries = graphqlResult.data?.continent?.countries ?? []
                case .failure(let error):
                    print(error.localizedDescription)
            }
        }
    }
    
    func numberOfCountries() -> Int {
        return countries.count
    }
    
    func getCountry(at index: Int) -> GetContriesInContinentQuery.Data.Continent.Country {
        countries[index]
    }
}
