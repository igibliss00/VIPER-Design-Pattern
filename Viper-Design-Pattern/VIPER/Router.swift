//
//  Router.swift
//  Viper-Design-Pattern
//
//  Created by J on 2022-04-30.
//

import UIKit

typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter: AnyObject {
    var entry: EntryPoint? { get }
    static func start() ->  AnyRouter
}

class UserRouter: AnyRouter {
    weak var entry: EntryPoint?
    
    static func start() -> AnyRouter {
        let router = UserRouter()
        
        // Assign VIP
        let view: AnyView = UserViewController()
        let presenter: AnyPresenter = UserPresenter()
        let interactor: AnyInteractor = UserInteractor()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.router = router
        presenter.view = view
        presenter.interator = interactor
        
        router.entry = view as? EntryPoint
        
        return router
    }
}
