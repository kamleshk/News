//
//  NewsTableViewCell.swift
//  News
//
//  Created by kamlesh kumar on 18/12/21.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

	@IBOutlet weak var profileImage: UIImageView!
	@IBOutlet weak var titleHeading: UILabel!
	@IBOutlet weak var subTitle: UILabel!
	@IBOutlet weak var dataLbl: UILabel!
	@IBOutlet weak var sourceLbl: UILabel!
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

	
	/// Variable to set the value to cell and its outlet
	var news:Feed? {
		didSet {
			self.titleHeading.text = news?.title ?? ""
			self.subTitle.text = news?.byline ?? ""
			self.dataLbl.text = news?.published_date ?? ""
			self.sourceLbl.text = news?.source ?? ""
			guard let url = news?.media.first?.mediametadata?.first?.url else { return}
			self.profileImage.loadImageUsingCache(withUrl: url)
		}
	}
	
	
	let titleColor = UIColor(red: 95/255, green: 96/255, blue: 96/255, alpha: 1)
	// UIFont(name: "HelveticaNeue-UltraLight", size: 30)
	
	/*
	func subtitleAttributed(feed:Feed) -> NSAttributedString {
		let attributedStr = NSMutableAttributedString()
		
		let stringAttributes = [
			NSAttributedString.Key.font : UIFont(name: "HelveticaNeue-Light", size: 12.0)!,
			NSAttributedString.Key.foregroundColor :titleColor ]
		//let atrributedString = NSAttributedString(string: "BY", attributes: stringAttributes)
		attributedStr.append(NSAttributedString(string: "BY", attributes: stringAttributes))
		
		let strAttri = [
			NSAttributedString.Key.font : UIFont(name: "HelveticaNeue-Light", size: 14.0)!,
			NSAttributedString.Key.foregroundColor :titleColor ]
		attributedStr.append(NSAttributedString(string: feed., attributes: stringAttributes))
		attri
		
	//	sampleLabel.attributedText = atrributedString
		
		
	}
	*/
}
