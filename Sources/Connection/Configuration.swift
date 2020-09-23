
public struct Configuration: Hashable {
	public var access: Access
	public var location: Location
}

public extension Configuration {

	static let inMemory = Configuration()
	static let temporary = Configuration(location: .temporary)

	init(location: Location = .inMemory, access: Access = .default) {
		self.location = location
		self.access = access
	}

	init(path: String, access: Access = .default) {
		self.location = .path(path)
		self.access = access
	}
}
