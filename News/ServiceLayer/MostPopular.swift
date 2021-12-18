//
//  MostPopular.swift
//  News
//
//  Created by kamlesh kumar on 18/12/21.
//

import Foundation

 protocol MostPopularServiceProtocol {
	func fetchMostPopular(days:String, completion:@escaping (Result<FeedResponse,CustomError>)-> Void)
}


/// Class for calling mostpoupar feeds

struct MostPopularService : MostPopularServiceProtocol {
	
	/// Function for getiing all most popular feed from new york times data base
	/// - Parameters:
	///   - days: number of days lenght feed required(old feed with number of days)
	///   - completion: return `Result` which have success and failure data with `FeedResponse` response model
	
	func fetchMostPopular(days: String, completion: @escaping (Result<FeedResponse, CustomError>) -> Void) {
		let path = "mostpopular/v2/mostviewed/all-sections/7.json?"
		
		WebserviceManager().requestGetApi(urlString: path) { (data, error) in
			if error != nil{
				completion(.failure(.apiFailedError(error?.localizedDescription ?? "api failed \(path)")))
			}else{
				do{
					let response = try self.parsedata(data)
				print(response)
					completion(.success(response))
				} catch let error {
					completion(.failure(.parserError(error.localizedDescription)))
				}
			}
		}
	}
	
	
	
	
	
	/// Method to parse the parse the data of most poular api
	/// - Parameter data: response data which we got from api `Mostpoular`
	/// - Throws: Throws any exception raised based on missing key or variable datatype
	/// - Returns: `FeedResponse` model
	
	func parsedata(_ data:Data?) throws -> FeedResponse {
		guard let data = data else {
			 throw CustomError.customError("data nil in response")
		}
		return try JSONDecoder().decode(FeedResponse.self, from: data )
	}
	 
}
