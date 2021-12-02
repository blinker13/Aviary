
import SQLite3

public final class Connection {

	private var handle: OpaquePointer? = nil

	public init(location: Location = .inMemory, readonly: Bool = false) {
		let flags = readonly ? SQLITE_OPEN_READONLY : SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE
		let error = sqlite3_open_v2(location.path, &handle, access.rawValue, nil)
		precondition(error == SQLITE_OK, "Failed to open connection")
		self.location = location
		self.access = access
	}

	deinit {
		sqlite3_close_v2(handle)
	}
}

// MARK: -

public extension Connection {

	
}
