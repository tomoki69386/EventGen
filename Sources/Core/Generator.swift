import Foundation
import EventSpec

public struct Generator {
    
    let url: URL
    
    public init(
        url: URL
    ) {
        self.url = url
    }
    
    public func execute(name: String, params: [String: Type]) throws {
        let code = CodeGenerator.run(name: name, params: params)
        
        let path = url.appendingPathComponent("/\(name).swift")
        
        try code.write(to: path, atomically: true, encoding: String.Encoding.utf8)
    }
}
