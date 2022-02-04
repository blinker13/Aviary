
import SQLite3

public final class Statement {

	private var handle: OpaquePointer!

	internal init(connection: OpaquePointer, query: String) {
		let error = sqlite3_prepare_v2(connection, query, -1, &handle, nil)
		precondition(error == SQLITE_OK, "Failed to prepare statement")
	}

	deinit {
		let error = sqlite3_finalize(handle)
		precondition(error == SQLITE_OK)
	}
}

// MARK: -

public extension Statement {

//	func bind(_ text: String, )

	func reset() {
		let error = sqlite3_reset(handle)
		precondition(error == SQLITE_OK)
	}
}
