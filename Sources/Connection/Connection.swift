
import SQLite3

internal final class Connection {

	internal let access: Access
	internal let location: Location

	private var handle: OpaquePointer? = nil

	internal init(location: Location, access: Access) {
		let error = sqlite3_open_v2(location.rawValue, &handle, access.rawValue, nil)
		precondition(error == SQLITE_OK, "Failed to open connection")
		self.location = location
		self.access = access
	}

	deinit {
		sqlite3_close_v2(handle)
	}
}
