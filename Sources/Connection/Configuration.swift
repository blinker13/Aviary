
public struct Configuration: Hashable {
	public let access: Access
	public let location: Location
}

public extension Configuration {

	static let inMemory = Configuration()
	static let temporary = Configuration(location: .temporary)

	init(location: Location = .inMemory, access: Access = .readwrite) {
		self.location = location
		self.access = access
	}

	init(path: String, access: Access = .readwrite) {
		self.location = .path(path)
		self.access = access
	}
}
