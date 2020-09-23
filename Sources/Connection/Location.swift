
public enum Location: Hashable {
	case path(String)
	case temporary
	case inMemory
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
