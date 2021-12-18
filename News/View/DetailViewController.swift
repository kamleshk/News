//
//  DetailViewController.swift
//  News
//
//  Created by kamlesh kumar on 18/12/21.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

	@IBOutlet weak var webview: WKWebView!
	override func viewDidLoad() {
        super.viewDidLoad()

		guard let url = URL(string: "https://www.google.com/")  else { return }
			 let request = URLRequest(url: url)
		webview.navigationDelegate = self
		webview.load(request)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension DetailViewController : WKNavigationDelegate{
	
}
