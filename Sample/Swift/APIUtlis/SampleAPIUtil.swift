//
//  SampleAPIUtil.swift
//  Sample
//
//  Created by Littlefox iOS Developer on 2022/12/08.
//

import Foundation
import MHTools
import Alamofire

class SampleAPIUtil: MH_API{
    var session: Alamofire.Session = Session.default
    
    var trustManager: Alamofire.ServerTrustManager?{
        get{
            return nil
        }
        set{}
    }
    
    var sessionConfig: URLSessionConfiguration?{
        get{
            return nil
        }
        set{}
    }
}
