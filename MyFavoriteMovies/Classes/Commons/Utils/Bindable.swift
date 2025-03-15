//
//  Bindable.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 14/03/25.
//

class Bindable<T> {
    // MARK: - Properties
    var listeners: [(T) -> Void] = []
    var value: T {
        didSet {
            listeners.forEach {
                $0(value)
            }
        }
    }
    
    // MARK: - Initializer
    init(_ value: T) {
        self.value = value
    }
    
    // MARK: - Functions
    func bind(_ listeners: @escaping (T) -> Void) {
        self.listeners.append(listeners)
    }
}
