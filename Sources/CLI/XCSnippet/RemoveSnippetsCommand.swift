
import Foundation
import ArgumentParser
import XCResource

struct RemoveSnippetsCommand: ParsableCommand {

    @Option(
        name: .shortAndLong,
        help: "The snippet namespace to delete."
    )
    var namespace: String = "FABERNOVEL"

    public static let configuration = CommandConfiguration(
        commandName: "remove",
        abstract: "Remove Xcode snippet."
    )

    // MARK: - ParsableCommand

    func run() throws {
        try XCSnippetCLI().removeSnippets(for: XCSnippetNamespace(namespace))
    }
}
