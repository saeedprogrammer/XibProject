//
//  EndPoint.swift
//  XibProject
//
//  Created by Saeed on 3/25/21.
//

import Foundation
import Alamofire


enum EndPoint
{
   
    case getData(ID:String)
    case postData(ID:String)
    
    private var baseURL:String
    {
        "https://httpbin.org/"
    }
    
    var httpMethod:HTTPMethod
    {
        switch self {
        
        case .getData(_):
            return .get
        case .postData(_):
            return .post
        }
    }
    
    var urlRequest:URL
    {
       
       
        switch self {
        case .getData(let ID):
           return URL(string: baseURL + #"\get"# + ID)!
        case .postData(let ID):
          return URL(string: baseURL + #"\post"# )!
        }
    }
}


