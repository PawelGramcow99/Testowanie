//
//  Video.swift
//  Testowanie
//
//  Created by Paweł Gramcow on 29/06/2020.
//  Copyright © 2020 Paweł Gramcow. All rights reserved.
//

import Foundation

struct Video : Decodable{
    
    var videoId = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date()
    
    
    enum CodingKeys: String, CodingKey{
        
        case snippet
        case thumbnails
        case high
        case resourdeId
        
        
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoId
        
    }
    
        
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        //Parse tittle
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        //Parse description
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        //Parse the publish date
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        //Parse thumbnail
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        
        let highContainer = try thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        //Prse video ID
        
        let resourceidContainer = try snippetContainer.decode(String.self, forKey: .videoId)
        
        
    }
    
}
