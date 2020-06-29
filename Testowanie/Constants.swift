//
//  Constants.swift
//  Testowanie
//
//  Created by Paweł Gramcow on 29/06/2020.
//  Copyright © 2020 Paweł Gramcow. All rights reserved.
//

import Foundation

struct Constants{

    static var API_KEY = "AIzaSyAKjOkyPKeJZdoCPs2GERFOWKuEZLFJuss"
    static var PLAYLIST_ID = "UU9-8m_Lqr368VIdpZObkeNQ"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
