//
//  NewsFeedTests.swift
//  NewsFeedTests
//
//  Created by Sathish Kumar G on 9/25/20.
//  Copyright © 2020 Sathish Kumar G. All rights reserved.
//

import XCTest
@testable import NewsFeed

class NewsFeedTests: XCTestCase {

    var viewControllerTest = ViewController()
    
    override func setUp() {
        super.setUp()
        self.viewControllerTest.loadView()
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testHasATableView() {
        XCTAssertNotNil(self.viewControllerTest.tableView)
    }
    
    func testTableViewHasDelegate() {
        XCTAssertNotNil(self.viewControllerTest.tableView.delegate)
    }

    func testTableViewHasDataSource() {
        XCTAssertNotNil(viewControllerTest.tableView.dataSource)
    }

    
    func testTableViewConfromsToTableViewDelegateProtocol() {
        XCTAssertTrue(viewControllerTest.conforms(to: UITableViewDelegate.self))
        XCTAssertTrue(viewControllerTest.responds(to: #selector(viewControllerTest.tableView(_:didSelectRowAt:))))
    }
    
    func testNumberofRows() {
        XCTAssertTrue(viewControllerTest.tableView.numberOfRows(inSection: 0) == 0)
    }
}
