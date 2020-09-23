
import SQLite3

public enum Access: Hashable {
	case readwrite
	case readonly
}

internal extension Access {
	var rawValue: Int32 {
		switch self {
			case .readwrite: return SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE
			case .readonly: return SQLITE_OPEN_READONLY
		}
	}
}
