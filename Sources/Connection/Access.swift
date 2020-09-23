
import SQLite3

public struct Access: Hashable, OptionSet {
	public var rawValue: Int32

	public init(rawValue: Int32) {
		self.rawValue = rawValue
	}
}

public extension Access {
	static let create = Access(rawValue: SQLITE_OPEN_CREATE)

	static let readwrite = Access(rawValue: SQLITE_OPEN_READWRITE)
	static let readonly = Access(rawValue: SQLITE_OPEN_READONLY)

	static let multiThread = Access(rawValue: SQLITE_OPEN_NOMUTEX)
	static let serialized = Access(rawValue: SQLITE_OPEN_FULLMUTEX)

	static let `default`: Access = [readwrite, create]
}
