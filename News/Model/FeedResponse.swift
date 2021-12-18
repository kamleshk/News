//
//  FeedResponse.swift
//  News
//
//  Created by kamlesh kumar on 18/12/21.
//

import Foundation

struct FeedResponse:Decodable {
	//let status:Int
	let copyright:String
	let results:[Feed]
	
}



/*

{
	 "status":"OK",
	 "copyright":"Copyright (c) 2021 The New York Times Company.  All Rights Reserved.",
	 "num_results":20,
	 "results":[
			{
				 "uri":"nyt://article/7ef1d2b3-1c1e-507d-b143-a0187be87377",
				 "url":"https://www.nytimes.com/2021/12/14/well/live/chin-hairs-women.html",
				 "id":100000008102256,
				 "asset_id":100000008102256,
				 "source":"New York Times",
				 "published_date":"2021-12-14",
				 "updated":"2021-12-15 01:12:27",
				 "section":"Well",
				 "subsection":"Live",
				 "nytdsection":"well",
				 "adx_keywords":"Hair;Content Type: Service;Skin;Beauty Salons;Women and Girls;Polycystic Ovary Syndrome",
				 "column":null,
				 "byline":"By Melinda Wenner Moyer",
				 "type":"Article",
				 "title":"Why Do Women Sprout Chin Hairs as They Age?",
				 "abstract":"And what’s the best way to remove them?",
				 "des_facet":[
						"Hair",
						"Content Type: Service",
						"Skin",
						"Beauty Salons",
						"Women and Girls",
						"Polycystic Ovary Syndrome"
				 ],
				 "org_facet":[
						
				 ],
				 "per_facet":[
						
				 ],
				 "geo_facet":[
						
				 ],
				 "media":[
						{
							 "type":"image",
							 "subtype":"photo",
							 "caption":"",
							 "copyright":"Aileen Son for The New York Times",
							 "approved_for_syndication":1,
							 "media-metadata":[
									{
										 "url":"https://static01.nyt.com/images/2021/12/14/well/14askwell-chin-hairs1/14askwell-chin-hairs1-thumbStandard.jpg",
										 "format":"Standard Thumbnail",
										 "height":75,
										 "width":75
									},
									{
										 "url":"https://static01.nyt.com/images/2021/12/14/well/14askwell-chin-hairs1/14askwell-chin-hairs1-mediumThreeByTwo210.jpg",
										 "format":"mediumThreeByTwo210",
										 "height":140,
										 "width":210
									},
									{
										 "url":"https://static01.nyt.com/images/2021/12/14/well/14askwell-chin-hairs1/14askwell-chin-hairs1-mediumThreeByTwo440.jpg",
										 "format":"mediumThreeByTwo440",
										 "height":293,
										 "width":440
									}
							 ]
						}
				 ],
				 "eta_id":0
			}
     ]
}
*/
