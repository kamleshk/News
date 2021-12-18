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
	
	
	
	
	
	
	/// function provide mostpopular news from NYT database based on days selction
	/// - Parameter feedays: `DaysFeed` type to passed based on option available `ie 1,7,30`
	func fetchMostPopularFeed(feedays:DaysFeed) {
		service.fetchMostPopular(days: .sevenday) { [weak self] (result) in
			switch result {
			case .success(let response): print(response)
				self?.feedList = response.results
				
			case .failure(let error): print(error.localizedDescription)
				self?.checkForError(_error: error)
			}
		}
	}
	
	
	
	
	
	/// Common place to handale all exception arrosen for diffrent funcanality
	/// - Parameter _error: Custom erro type which is of associative type
	func checkForError(_error:CustomError)  {
		switch _error {
		case .apiFailedError(let error):
			print(error)
		case .parserError(let error):
			print(error)
		case .urlError(let error):
			print(error)
		case .customError(let error):
			print(error)
		}
  }
	
	
	
	
	
	
}
