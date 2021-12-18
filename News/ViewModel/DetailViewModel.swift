//
//  DetailViewModel.swift
//  News
//
//  Created by kamlesh kumar on 18/12/21.
//

import Foundation

class DetailViewModel {
	
	private let feed:Feed
	var loadWebView:Observable<URLRequest>?
	
	
	init(_feed:Feed) {
		self.feed = _feed
		guard let url = URL(string: feed.url)  else { return }
		self.loadWebView = Observable(URLRequest(url: url))
		//self.loadView()
	}
	
	func loadwebView() {
	 	guard let url = URL(string: feed.url)  else { return }
			 let request = URLRequest(url: url)
		self.loadWebView?.value = request
	}
	
}
