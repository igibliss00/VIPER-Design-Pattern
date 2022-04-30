//
//  Presenter.swift
//  Viper-Design-Pattern
//
//  Created by J on 2022-04-30.
//

import Foundation

protocol AnyPresenter: AnyObject {
    var router: AnyRouter? { get set }
    var interator: AnyInteractor? { get set }
    var view: AnyView? { get set }
    
    func interactorDidFetchUsers(with result: Result<[User], Error>)
}

class UserPresenter: AnyPresenter {
    weak var router: AnyRouter?
    
    weak var interator: AnyInteractor?
    
    weak var view: AnyView?
    
    func interactorDidFetchUsers(with result: Result<[User], Error>) {
        
    }

}
