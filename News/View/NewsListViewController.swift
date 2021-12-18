//
//  ViewController.swift
//  News
//
//  Created by kamlesh kumar on 18/12/21.
//

import UIKit

class NewsListViewController: UIViewController {
	
	@IBOutlet var listTableview:UITableView!
	var viewmodel = NewsListViewModel(_service: MostPopularService())
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(true)
		self.addObservers()
		self.setup()
	}
	
	/// Method for adding observer on response and etc
	func addObservers()  {
		viewmodel.feedList.bind { [weak self] _ in
			DispatchQueue.main.async {
				self?.listTableview.reloadData()
			}
		}
		
		viewmodel.errorMessage.bind {  (message) in
			print(message)
		}
	}
	
	func setup() {
		viewmodel.fetchMostPopularFeed(feedays: .thirtyday)
	}
	
	

}

// MARK:- Delegate and datasorce secion

extension NewsListViewController : UITableViewDelegate , UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return viewmodel.feedList.value.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		guard  let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell") as? NewsTableViewCell else {
			fatalError("please check NewsTableViewCell registaration")
		}
		cell.news = viewmodel.feedList.value[indexPath.row]
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		
	}
	
	
}

