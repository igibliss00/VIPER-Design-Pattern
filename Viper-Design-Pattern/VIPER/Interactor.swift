//
//  Interactor.swift
//  Viper-Design-Pattern
//
//  Created by J on 2022-04-30.
//

import Foundation

protocol AnyInteractor: AnyObject {
    var presenter: AnyPresenter? { get set }
    func getUsers()
}

class UserInteractor: AnyInteractor {
    weak var presenter: AnyPresenter?
    
    func getUsers() {
        
    }
}
