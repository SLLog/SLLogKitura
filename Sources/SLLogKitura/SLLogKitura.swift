import Foundation
import SLLog
import LoggerAPI

public class SLLogKitura: LogHandler {
    open func handle(log: String, level: SLLog.LogType, spot: Occurrence, message: Any) {}
}

extension SLLogKitura: LoggerAPI.Logger {
    public func log(_ type: LoggerMessageType, msg: String, functionName: String, lineNum: Int, fileName: String) {
        switch type {
        case .verbose:
            SLLog.v(msg, fileName, UInt(lineNum))
        case .entry, .exit, .debug:
            SLLog.d(msg, fileName, UInt(lineNum))
        case .info:
            SLLog.i(msg, fileName, UInt(lineNum))
        case .warning:
            SLLog.w(msg, fileName, UInt(lineNum))
        case .error:
            SLLog.e(msg, fileName, UInt(lineNum))
        }
    }
    
    public func isLogging(_ level: LoggerMessageType) -> Bool {
        return true
    }
}
