//
//  WebServiceCAlled.swift
//  XibProject
//
//  Created by Saeed on 3/25/21.
//

import Foundation
import Alamofire
import Combine

class WebServiceCaller
{
    static var webServiceCaller:WebServiceCaller? = nil
    
    private init() {
       
    }
    
    func getInstance() -> WebServiceCaller
    {
        if let webServiceCaller = WebServiceCaller.webServiceCaller
        {
           return webServiceCaller
        }
        return WebServiceCaller()
       
    }
    /*func getData() -> AnyPublisher<Any, <#Failure: Error#>>
    {
        let endPoint = EndPoint.getData(ID: "1")
        Alamofire.request(endPoint.urlRequest, method: endPoint.httpMethod, parameters: nil)
                    .validate()
                    .responseJSON
            {
                    response in
                    guard response.result.isSuccess else
                    {
                        print("Error while fetching remote rooms: \(String(describing: response.result.error))")
                        return
                    }
            }
                 
                 
    }*/
}
