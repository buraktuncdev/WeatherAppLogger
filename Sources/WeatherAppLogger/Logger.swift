//
//  Logger.swift
//
//
//  Created by Burak Tunc on 14.05.22.
//

import Foundation

public class Logger {

    public static let shared: Logger = Logger()

    public func log(_ logType: LogType, _ message: String,
                    fileName: String = #file,
                    lineNumber: Int = #line){
        switch logType {
        case .error:
            print("[\(fileName) line:\(lineNumber)]: 🔴 Error: \(message)")
        case .warning:
            print("[\(fileName) line:\(lineNumber)]: 🟡 Warning: \(message)")
        case .success:
            print("[\(fileName) line:\(lineNumber)]: 🟢 Success: \(message)")
        case .info:
            print("[\(fileName) line:\(lineNumber)]: 🔵 Info: \(message)")
        }
    }

    public func sendLogToRemoteServer(message: String) {
        print("Remote logging functionality not implemented yet")
    }
}
