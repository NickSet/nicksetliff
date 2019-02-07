import Routing
import Vapor
import Leaf

/// Register your application's routes here.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#routesswift)
public func routes(_ router: Router) throws {
    
    router.get { req -> Future<View> in
        let context = [String: String]()
        return try req.view().render("home", context)
    }
    
    router.get("projects") { req -> Future<View> in
        let context = [String: String]()
        return try req.view().render("projects", context)
    }

    router.get("construction") { req -> Future<View> in
        let context = [String: String]()
        return try req.view().render("construction", context)
    }

}
