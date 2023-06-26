//
//  CountiresViewController.swift
//  CountryExplorer
//
//  Created by user on 24/06/2023.
//

import UIKit

class CountriesViewController: UIViewController {
    
    static let identifier: String = "countryCell"
    
    @IBOutlet weak var countriesTable: UITableView!
    private var vm = CountriesViewModel()
    
    var continent: GetContinentsQuery.Data.Continent?
    var selectedCountry: GetContriesInContinentQuery.Data.Continent.Country?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = continent?.name
        
            // Do any additional setup after loading the view.
        countriesTable.dataSource =  self
        countriesTable.delegate = self
        
        vm.didFetchCountries =  { [weak self] in
            DispatchQueue.main.async {
                self?.countriesTable.reloadData()
            }
        }
        
        if let continent = self.continent {
            vm.fetchCountries(for: continent)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showCountryDetails" {
            if let detailsVC = segue.destination as? CountryDetailsViewController {
                detailsVC.passedCountry = self.selectedCountry
            }
        }
    }
    
}

extension CountriesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        vm.numberOfCountries()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)
        let country = vm.getCountry(at: indexPath.row)
        cell.textLabel?.text = country.name
        cell.detailTextLabel?.text = country.capital
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedCountry = vm.countries[indexPath.row]
        performSegue(withIdentifier: "showCountryDetails", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
