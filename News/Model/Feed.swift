//
//  Feed.swift
//  News
//
//  Created by kamlesh kumar on 18/12/21.
//

import Foundation

struct Feed:Codable {
	let uri:String
	let url:String
	let id:Int
	let source:String
	let published_date:String
	let byline:String
	let section:String
	let adx_keywords:String
	let type:String
	let title:String
	let abstract:String
}
