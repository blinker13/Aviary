
public struct Location: Hashable {
	@usableFromInline internal let path: String
}

// MARK: -

public extension Location {

	@inlinable static var inMemory: Self { .init(uri: ":memory:") }
	@inlinable static var temporary: Self { .init(uri: "") }

	@inlinable init(uri: String) { path = uri }
}
