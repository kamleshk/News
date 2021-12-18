//
//  Extension_UiImageView.swift
//  News
//
//  Created by kamlesh kumar on 18/12/21.
//

import UIKit
import Foundation

/// declaring global variable for caching images which is downloaded
let imageCache = NSCache<NSString, AnyObject>()

/// UIImageview extension
/// Description - method for adding image download
extension UIImageView {
	
	/// To downlad image with image url
	///  - Parameter urlString: Pass Image URL as string which you image you want to down load
	func loadImageUsingCache(withUrl urlString: String) {
		self.image = nil//Image(systemName:)
		self.image = UIImage(systemName: "cloud.sun.rain.fill")//UIImage(named: "noimg")
		
		/// checking for image already available in cache
		if let cachedImage = imageCache.object(forKey: urlString as NSString) as? UIImage {
			self.image = cachedImage
			return
		}
		guard let url = URL(string: urlString) else { return }
		URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
			if error != nil {
				print(error!)
				return
			}
			//  populating Imageview with image data which we had from service or api to Cache on mainthread
			DispatchQueue.main.async {
				if let image = UIImage(data: data!) {
					imageCache.setObject(image, forKey: urlString as NSString)
					self.image = image
				}
			}
		}).resume()
	}
}
