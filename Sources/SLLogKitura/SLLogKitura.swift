import Foundation
import SLLog
import LoggerAPI

public class SLLogKitura: LogProvider {}

extension SLLogKitura: LoggerAPI.Logger {
    public func log(_ type: LoggerMessageType, msg: String, functionName: String, lineNum: Int, fileName: String) {
        switch type {
        case .verbose:
            send(level: SLLog.LogType.verbose, spot: Occurrence(file: fileName, line: UInt(lineNum)), message:msg)
        case .entry, .exit, .debug:
            send(level: SLLog.LogType.debug, spot: Occurrence(file: fileName, line: UInt(lineNum)), message:msg)
        case .info:
            send(level: SLLog.LogType.info, spot: Occurrence(file: fileName, line: UInt(lineNum)), message:msg)
        case .warning:
            send(level: SLLog.LogType.warning, spot: Occurrence(file: fileName, line: UInt(lineNum)), message:msg)
        case .error:
            send(level: SLLog.LogType.error, spot: Occurrence(file: fileName, line: UInt(lineNum)), message:msg)
        }
    }
    
    public func isLogging(_ level: LoggerMessageType) -> Bool {
        return true
    }
}
