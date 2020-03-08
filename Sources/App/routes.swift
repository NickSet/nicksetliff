import Leaf
import Vapor
/// Register your application's routes here.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#routesswift)
func routes(_ app: Application) throws {
    
    app.get { req -> EventLoopFuture<View> in
        let context = [String: String]()
        return req.view.render("home", context)
    }

    app.get("contact") { req -> EventLoopFuture<View> in
        let context = [String: String]()
        return req.view.render("contact", context)
    }
    
    app.get("projects") { req -> EventLoopFuture<View> in
        let context = [String: String]()
        return req.view.render("projects", context)
    }

    app.get("construction") { req -> EventLoopFuture<View> in
        let context = [String: String]()
        return req.view.render("construction", context)
    }

}
