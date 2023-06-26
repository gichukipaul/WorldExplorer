//
//  CountryDetailsViewController.swift
//  CountryExplorer
//
//  Created by user on 24/06/2023.
//

import UIKit

class CountryDetailsViewController: UIViewController {
    
    @IBOutlet weak var currencyLbl: UILabel!
    @IBOutlet weak var phoneLbl: UILabel!
    @IBOutlet weak var nativeLbl: UILabel!
    @IBOutlet weak var emojiLbl: UILabel!
    @IBOutlet weak var capitalCityLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var codeLbl: UILabel!
    @IBOutlet weak var flagLbl: UILabel!
    
    var country: GetCountryQuery.Data.Country?
    var passedCountry: GetContriesInContinentQuery.Data.Continent.Country?
    
    private var vm = CountryDetailsViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clearTextViews()
        self.title = passedCountry?.name ?? ""
        
        vm.didFetchCountryDetails = { [weak self] in
            DispatchQueue.main.async {
                self?.country = self!.vm.country
                self?.populateViews()
            }
        }
        
        vm.getCountryDetails(for: passedCountry!)
    }
    
    fileprivate func clearTextViews() {
        codeLbl.text = ""
        nameLbl.text = ""
        capitalCityLbl.text = ""
        emojiLbl.text = ""
        nativeLbl.text = ""
        phoneLbl.text = ""
        currencyLbl.text = ""
        flagLbl.text = ""
    }
    
    private func populateViews() {
        guard let country = country else {
            return
        }
        
        codeLbl.text = country.code
        nameLbl.text = country.name
        capitalCityLbl.text = country.capital
        emojiLbl.text = country.emoji
        nativeLbl.text = country.native
        phoneLbl.text = country.phone
        currencyLbl.text = country.currency
        flagLbl.text = country.emoji
        
        print(country.emojiU)
    }
    
}
