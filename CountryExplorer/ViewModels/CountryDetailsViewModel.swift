//
//  CountryDetailsViewMode.swift
//  CountryExplorer
//
//  Created by user on 24/06/2023.
//

import Foundation

class CountryDetailsViewModel {
    
    private var session = ApolloSession.shared.client
    
    var country: GetCountryQuery.Data.Country? = nil {
        didSet {
            didFetchCountryDetails?()
        }
    }
    
    var didFetchCountryDetails: (() -> Void)?
    
    func getCountryDetails(for country: GetContriesInContinentQuery.Data.Continent.Country) {
        session.fetch(query: GetCountryQuery(code: country.code)) { [weak self] result in
            guard let self = self else {return}
            
            switch result {
                case .success(let graphResult):
                    self.country = graphResult.data?.country
                case .failure(let error):
                    print(error.localizedDescription)
            }
        }
    }
}
