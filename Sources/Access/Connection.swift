
import SQLite3

public final class Connection {

	private var handle: OpaquePointer!

	public init(location: Location = .inMemory, readonly: Bool = false) {
		let flags = readonly ? SQLITE_OPEN_READONLY : SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE
		let error = sqlite3_open_v2(location.path, &handle, flags, nil)
		precondition(error == SQLITE_OK, "Failed to open connection")
	}

	deinit {
		let error = sqlite3_close_v2(handle)
		precondition(error == SQLITE_OK)
	}
}

// MARK: -

public extension Connection {

	func prepare(_ query: String) -> Statement {
		return .init(connection: handle, query: query)
	}
}
