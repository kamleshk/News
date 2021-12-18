//
//  WebserviceManager.swift
//  News
//
//  Created by kamlesh kumar on 18/12/21.
//

import Foundation

struct WebserviceManager {
	//static let shared = WebserviceManager()
	
	private let key = "api-key=ZEvwoBqEpEhNA3qABBFfqK0tjEpaxn8y"
	private let baseUrl = "https://api.nytimes.com/svc/"
	
	func requestGetApi(urlString:String, completion: @escaping(Data?,Error?) -> Void )  {
		
		guard  let url = URL(string: baseUrl + urlString + key ) else {
			completion(nil,CustomError.urlError("Please check url "))
			return
		}
		
    URLSession.shared.dataTask(with: url) { (data, response, error) in
    		completion(data , error)
    	}.resume()
	}
	
}



enum CustomError:Error {
	case urlError(String)
	case customError(String)
}
