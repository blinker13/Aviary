
public enum Location: Hashable {
	case path(String)
	case temporary
	case inMemory
}

public extension Location {

	static func == (left: Location, right: Location) -> Bool {
		return left.hashValue == right.hashValue
	}

	func hash(into hasher: inout Hasher) {
		hasher.combine(uri)
	}
}

internal extension Location {

	var uri: String {
		switch self {
			case .path(let path): return path
			case .inMemory: return ":memory:"
			case .temporary: return ""
		}
	}
}
