import Foundation

public struct Event {
    public var screenName: [ScreenName]
    public var objectParameter: [String: [ObjectParameter]]
    
    public init(
        screenName: [ScreenName],
        objectParameter: [String: [ObjectParameter]]
    ) {
        self.screenName = screenName
        self.objectParameter = objectParameter
    }
}
