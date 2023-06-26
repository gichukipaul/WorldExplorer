//
//  ViewController.swift
//  CountryExplorer
//
//  Created by user on 18/06/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var continentsTable: UITableView!
    private let vm = ViewControllerViewModel()
    private var selectedContinent: GetContinentsQuery.Data.Continent?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        continentsTable.dataSource = self
        continentsTable.delegate = self
            // Fetch continents
        vm.dataDidChange = { [weak self] in
            DispatchQueue.main.async {
                UIView.transition(with: (self?.continentsTable)!, duration: 1, options: .transitionCurlUp, animations: {
                    self?.continentsTable.reloadData()
                }, completion: nil)
            }
        }
        
            // Fetch the continents
        vm.fetchContinents()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showCountries" {
            if let destVC = segue.destination as? CountriesViewController {
                destVC.continent = selectedContinent
            }
        }
    }
}

extension ViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        vm.numberOfContinents()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "continentCell", for: indexPath)
        let continent = vm.getContinent(at: indexPath.row)
        cell.textLabel?.text = continent.name
        cell.detailTextLabel?.text =  continent.code
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Continent selected: \(vm.getContinent(at: indexPath.row).name)")
        selectedContinent = vm.getContinent(at: indexPath.row)
            // Navigate to the countries page
        performSegue(withIdentifier: "showCountries", sender: self)
    }
    
}
