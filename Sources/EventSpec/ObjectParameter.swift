import Foundation

public struct ObjectParameter: Hashable {
    public var name: String
    public var type: Type
    
    public init(
        name: String,
        type: Type
    ) {
        self.name = name
        self.type = type
    }
}
