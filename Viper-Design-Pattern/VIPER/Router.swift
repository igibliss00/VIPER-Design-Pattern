//
//  Router.swift
//  Viper-Design-Pattern
//
//  Created by J on 2022-04-30.
//

import UIKit

typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter {
    var entry: EntryPoint? { get }
    static func start() ->  AnyRouter
}

class UserRouter: AnyRouter {
    var entry: EntryPoint?
    
    static func start() -> AnyRouter {
        let router = UserRouter()
        
        // Assign VIP
        var view: AnyView = UserViewController()
        var presenter: AnyPresenter = UserPresenter()
        var interactor: AnyInteractor = UserInteractor()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        print("interactor.presenter", interactor.presenter)
        
        presenter.router = router
        presenter.view = view
        presenter.interator = interactor
        
        router.entry = view as? EntryPoint
        
        return router
    }
}
