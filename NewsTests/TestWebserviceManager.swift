//
//  TestWebserviceManager.swift
//  NewsTests
//
//  Created by kamlesh kumar on 18/12/21.
//

import XCTest
@testable import News


class TestWebserviceManager: XCTestCase {
  
	let urlstr = "mostpopular/v2/mostviewed/all-sections/7.json?"
	
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
	
	// testing api working or
	func testWebservicecall()  {
		
		let expectation = XCTestExpectation(description: "waiting for response")
	  WebserviceManager().requestGetApi(urlString: urlstr) { (data, error) in
		  XCTAssertNil(error)
			XCTAssertNotNil(data)
			expectation.fulfill()
		}
		wait(for: [expectation], timeout: 30)
	}

}
