import Foundation
import Files

public final class CommandLineTool {
    private let arguments: [String]

    public init(arguments: [String] = CommandLine.arguments) {
        self.arguments = arguments
    }

    public func run() throws {
        guard arguments.count > 1 else {
            throw Error.missingFileName
        }

        // The first argument is the execution path
        let fileName = arguments[1]

        do {
            try Folder.current.createFile(at: fileName)
        } catch {
            throw Error.failedToCreateFile
        }
    }
}

public extension CommandLineTool {
    enum Error: Swift.Error {
        case missingFileName
        case failedToCreateFile
    }
}
