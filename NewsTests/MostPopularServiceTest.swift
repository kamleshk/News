//
//  MostPopularServiceTest.swift
//  NewsTests
//
//  Created by kamlesh kumar on 18/12/21.
//

import XCTest
@testable import News
class MostPopularServiceTest: XCTestCase {

	var service:MostPopularService? = MostPopularService()
	
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
			service = nil
    }

	func testMostPopularService() {
		let expection  = XCTestExpectation()
		
		service?.fetchMostPopular(days: "7") { (result) in
			switch result{
			case .success(let response) : print(response)
				XCTAssertNotNil(response)
			case.failure(let error) : print(error)
				XCTAssertNotNil(error)
			}
			expection.fulfill()
		}
		wait(for: [expection], timeout: 30)
	}

}
