//
//  NewsListViewModel.swift
//  News
//
//  Created by kamlesh kumar on 18/12/21.
//

import Foundation

class NewsListViewModel {
	
	private let service:MostPopularServiceProtocol
	private var feedList:[Feed]
	
	
	/// Default constructer method for initilization
	/// - Parameter _service: mostpopularservice class to get feed
	
	init(_service:MostPopularServiceProtocol) {
		self.service = _service
		self.feedList = [Feed]()
	}
	
	
}
