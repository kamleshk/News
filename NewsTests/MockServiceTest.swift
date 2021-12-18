//
//  MockServiceTest.swift
//  NewsTests
//
//  Created by kamlesh kumar on 18/12/21.
//

import XCTest
@testable import News

class MocMostPopularService: MostPopularServiceProtocol {
	
	func fetchMostPopular(days: DaysFeed, completion: @escaping (Result<FeedResponse, CustomError>) -> Void) {
		guard let data = response.data(using: .utf8) else { return  }
		
			let response = try! self.parsedata(data)
		 // print(response)
		completion(.success(response))
	}
	
	
	func parsedata(_ data:Data?) throws -> FeedResponse {
		guard let data = data else {
			 throw CustomError.customError("data nil in response")
		}
		return try JSONDecoder().decode(FeedResponse.self, from: data )
	}
	
}
