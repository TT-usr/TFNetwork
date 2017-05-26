//
//  TFNetworkCenter.swift
//  network
//
//  Created by 姚天成 on 2017/5/24.
//  Copyright © 2017年 姚天成. All rights reserved.
//  顶楼网络中心组件

import UIKit
import Alamofire

enum MethodType
{
    case get
    case post
}

class TFNetworkCenter
{
    class func requestData(_ type : MethodType, URLString : String, parameters : [String : Any]? = nil, finishedCallback :  @escaping (_ result : Any) -> () , failCallBack:@escaping (_ error : Error) -> ())
    {
        // 1.获取类型
        let method = type == .get ? HTTPMethod.get : HTTPMethod.post
        
        // 2.发送网络请求
        Alamofire.request(URLString, method: method, parameters: parameters).responseJSON { (response) in
            
            // 3.获取结果
            guard let result = response.result.value else {
                print(response.result.error!)
                failCallBack(response.result.error!)
                return
            }
            
            // 4.将结果回调出去
            finishedCallback(result)
        }
    }
}
