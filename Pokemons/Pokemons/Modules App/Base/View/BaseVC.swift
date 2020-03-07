//
//  BaseVC.swift
//  Pokemons
//
//  Created by Patricia Zambrano on 6/03/20.
//  Copyright © 2020 Patricia Zambrano. All rights reserved.
//

import UIKit

class BaseVC: UIViewController {
    
    let deviceSize = UIScreen.main.bounds.size
    fileprivate var progressView: ProgressView?
    
    private lazy var presenter = BaseModel(view: self)

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = ColorNamesApp.lightGreen.value
        navigationController?.navigationBar.tintColor = UIColor.black
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
    }
    
    func showProgress() {
        if self.progressView == nil {
            self.progressView = ProgressView(delegate: self)
            self.progressView?.show()
        }
    }
    
    func hideProgress() {
        if self.progressView != nil {
            self.progressView?.close()
            self.progressView = nil
        }
    }
    
    func backToPreviousState() {}
}

extension BaseVC: ProgressViewDelegate {
    
    func add(view: UIView) {
//        if isProgressView {
//            if let window: UIWindow = UIApplication.shared.keyWindow {
//                window.addSubview(view)
//                window.bringSubviewToFront(view)
//                return
//            }
//        }
        view.alpha = 0
        self.view.addSubview(view)
        self.view.bringSubviewToFront(view)
        UIView.animate(withDuration: 0.4,
                       delay: 0,
                       options: .curveEaseOut,
                       animations: {
                        view.alpha = 1
        })
    }
    
    func center(view: UIView) {
        view.frame.origin.x = self.view.frame.origin.x
        view.frame.origin.y = self.view.frame.origin.y
    }
    
    func bottom(view: UIView) {
        UIView.animate(withDuration: 0.4, delay: 0, options: .curveEaseOut, animations: {
            view.frame.origin = CGPoint(x: 0,
                                        y: self.deviceSize.height - view.frame.height)
        }, completion: nil )
    }
}

extension BaseVC: BaseViewProtocol {
    
    func alertErrorsWithRepeat(title: String, message: String) {
        hideProgress()
        var alert: UIAlertController
        alert = createAlertView(title: title, message: message, hasCancelButton: false,  handlerAccept: { _ in
            self.backToPreviousState()
        })
        self.present(alert, animated: true, completion: nil)
    }
}
