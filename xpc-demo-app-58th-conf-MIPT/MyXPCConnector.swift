//
//  MyXPCConnector.swift
//  xpc-demo-app-58th-conf-MIPT
//
//  Created by Руслан on 25.11.15.
//  Copyright © 2015 MIPT. All rights reserved.
//

import Foundation

class MyXPCConnector: NSObject {
    
    private class func connectionToService() -> NSXPCConnection {
        let result = NSXPCConnection(serviceName: "com.mipt.ImageLoadHelper")
        result.remoteObjectInterface = NSXPCInterface(withProtocol: ImageLoadHelperProtocol.self)
        return result
    }
    
    var objectProxy: ImageLoadHelperProtocol {
        return self.connection.remoteObjectProxy as! ImageLoadHelperProtocol
    }
    
    
    struct Singleton {
        static let instance = MyXPCConnector()
    }
    class var sharedInstance: MyXPCConnector { return Singleton.instance }
    
    private let connection = MyXPCConnector.connectionToService()
    override init() {
        super.init()
        self.connection.resume()
    }
    deinit {
        self.connection.invalidate()
    }
}