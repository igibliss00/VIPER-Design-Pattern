//
//  Presenter.swift
//  Viper-Design-Pattern
//
//  Created by J on 2022-04-30.
//

import Foundation

enum FetchError: Error {
    case failed
}

protocol AnyPresenter {
    var router: AnyRouter? { get set }
    var interator: AnyInteractor? { get set }
    var view: AnyView? { get set }
    
    func interactorDidFetchUsers(with result: Result<[User], Error>)
}

class UserPresenter: AnyPresenter {
    var router: AnyRouter?
    var interator: AnyInteractor? {
        didSet {
            interator?.getUsers()
        }
    }
    var view: AnyView?
    
    func interactorDidFetchUsers(with result: Result<[User], Error>) {
        print("result", result)
        switch result {
        case .success(let users):
            print("users", users)
            view?.update(with: users)
        case .failure:
            view?.update(with: "Something went wrong")
        }
    }

}
