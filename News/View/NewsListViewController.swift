//
//  ViewController.swift
//  News
//
//  Created by kamlesh kumar on 18/12/21.
//

import UIKit

class NewsListViewController: UIViewController {
	
	@IBOutlet var listTableview:UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}


}

// MARK:- Delegate and datasorce secion

extension NewsListViewController : UITableViewDelegate , UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		guard  let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell") as? NewsTableViewCell else {
			fatalError("please check NewsTableViewCell registaration")
		}
		
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		
	}
	
	
}

