import Leaf
import Vapor

// Called before your application initializes.
public func configure(_ app: Application) throws {
    // Serves files from `Public/` directory
    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    app.views.use(.leaf)
    if !app.environment.isRelease {
        (app.leaf.cache as? DefaultLeafCache)?.isEnabled = false
    }
    try routes(app)
}
