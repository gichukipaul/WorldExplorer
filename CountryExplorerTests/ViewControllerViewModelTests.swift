//
//  ViewControllerViewModelTests.swift
//  CountryExplorerTests
//
//  Created by user on 10/07/2023.
//

import Foundation
import XCTest
@testable import CountryExplorer

class ViewControllerViewModelTests: XCTestCase {
    
    let vm = ViewControllerViewModel()
    
    func testInitialData() throws {
        XCTAssertEqual(vm.numberOfContinents(), 0)
    }
}
