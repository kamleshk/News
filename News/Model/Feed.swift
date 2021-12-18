//
//  Feed.swift
//  News
//
//  Created by kamlesh kumar on 18/12/21.
//

import Foundation

struct Feed:Decodable {
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
	let media: [Media]
	
}


struct Media : Decodable{
	let mediametadata:[Mediametadata]?
	enum Keys : String, CodingKey {
		case mediametadata = "media-metadata"
	}
	init(from decoder: Decoder) throws {
		let cont = try decoder.container(keyedBy: Keys.self)
		mediametadata = try cont.decode([Mediametadata].self, forKey: .mediametadata)
	}
}
struct Mediametadata: Decodable {
	let url:String
}
