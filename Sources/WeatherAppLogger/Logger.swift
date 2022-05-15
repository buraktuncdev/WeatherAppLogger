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
        let exactFileNameArray = fileName.components(separatedBy: "/")
        guard let exactFileName = exactFileNameArray.last else { return }

        switch logType {
        case .error:
            print("[\(String(describing: exactFileName)) line:\(lineNumber)]: 🔴 Error: \(message)")
        case .warning:
            print("[\(String(describing: exactFileName)) line:\(lineNumber)]: 🟡 Warning: \(message)")
        case .success:
            print("[\(String(describing: exactFileName)) line:\(lineNumber)]: 🟢 Success: \(message)")
        case .info:
            print("[\(String(describing: exactFileName)) line:\(lineNumber)]: 🔵 Info: \(message)")
        }
    }

    public func sendLogToRemoteServer(message: String) {
        print("Remote logging functionality not implemented yet")
    }
}
