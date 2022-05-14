//
//  Logger.swift
//
//
//  Created by Burak Tunc on 14.05.22.
//

import Foundation

public class Logger {

    public static let shared: Logger = Logger()

    func log(_ logType: LogType, _ message: String){
        switch logType {
        case .error:
            print("[\(#file) line:\(#line)]: 🔴 Error: \(message)")
        case .warning:
            print("[\(#file) line:\(#line)]: 🟡 Warning: \(message)")
        case .success:
            print("[\(#file) line:\(#line)]: 🟢 Success: \(message)")
        case .info:
            print("[\(#file) line:\(#line)]: 🔵 Info: \(message)")
        }
    }

    func sendLogToRemoteServer(message: String) {
        print("Remote logging functionality not implemented yet")
    }
}
