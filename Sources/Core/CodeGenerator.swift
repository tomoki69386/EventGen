import Foundation
import EventSpec

public struct CodeGenerator {
    public static func run(name: String, params: [String: Type]) -> String {
        let columns = params.map { "let \($0.key): \($0.value.rawValue)" }.joined(separator: "\n    ")
        return """
        import Foundation

        struct \(name) {
            \(columns)
        }
        """
    }
}
