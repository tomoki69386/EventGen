import Foundation
import Core
import SwiftShell

let env = ProcessInfo().environment
let args = Array(ProcessInfo().arguments.dropFirst())

print(args)

if let debugPath = env["WorkingDirectory"] {
    main.currentdirectory = debugPath
}

let path = run(bash: "ls | grep /events").stdout
let url = URL(fileURLWithPath: path)
let fileUrl = url.appendingPathComponent(args.last!.replacingOccurrences(of: "--path=", with: ""))
let generator = Generator(url: fileUrl)

do {
    try generator.execute(name: "ObjectParameterUser", params: ["userId": .String, "userName": .String])
} catch {
    print(error)
    exit(1)
}
exit(0)
