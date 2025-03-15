//
//  Controller.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 14/03/25.
//

import UIKit

class Controller: UIViewController {
    // MARK: - Properties
    var scrollViewHeight: CGFloat?
    
    // MARK: - Functions
    func setupNavigation() {
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(
            title: nil,
            style: .plain,
            target: self,
            action: nil
        )
        
        navigationController?.navigationBar.topItem?.backBarButtonItem?.tintColor = .white
    }
    
    func hideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(dismissMyKeyboard)
        )
        
        view.addGestureRecognizer(tap)
    }
    
    func setupKeyboardNotifications() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillhide),
            name: UIResponder.keyboardWillHideNotification,
            object: nil
        )
    }
    
    @objc
    func dismissMyKeyboard() {
        view.endEditing(true)
    }
    
    @objc
    func keyboardWillShow(_ notification: Notification) {
        let scrollView = view.subviews.first {
            $0 is UIScrollView
        } as? UIScrollView
        
        guard let scrollView else { return }
        
        if scrollViewHeight == nil {
            scrollViewHeight = scrollView.contentSize.height
        }
        
        if scrollView.contentSize.height == scrollViewHeight,
            let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            scrollView.contentSize.height += keyboardFrame.cgRectValue.height
        }
    }
    
    @objc
    func keyboardWillhide() {
        let scrollView = view.subviews.first {
            $0 is UIScrollView
        } as? UIScrollView
        
        guard let scrollView, let scrollViewHeight else { return }
        
        scrollView.contentSize.height = scrollViewHeight
    }
}
