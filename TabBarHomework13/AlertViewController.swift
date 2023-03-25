//
//  AlertViewController.swift
//  TabBarHomework13
//
//  Created by Владислав on 25.03.2023.
//

import UIKit

class AlertViewController: UIViewController {

    //    MARK: - Buttons
    let alertButton = UIButton()
        
    //    MARK: - Life Cicle
        override func viewDidLoad() {
            super.viewDidLoad()
            setupViews()
            setupConstraints()
        }

    //    MARK: - Views
        private func setupViews() {
            title = "LastScreen!"
            view.backgroundColor = .white
            
            alertButton.setImage(UIImage(systemName: "play"), for: .normal)
            alertButton.setTitleColor(.black, for: .normal)
            alertButton.addAction(UIAction(handler: {[weak self] _ in
                let alert = self?.createAllert() ?? UIAlertController()
                self?.present(alert, animated: true)
            }), for: .touchUpInside)
            view.addSubview(alertButton)
        }
        
    //    MARK: - Constraints
        private func setupConstraints() {
            view.translatesAutoresizingMaskIntoConstraints = false
            view.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            view.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        }
        
    //    MARK: - Create Alerts
        private func createAllert() -> UIAlertController {
             let alert = UIAlertController(title: "Warning", message: "This is the last screen", preferredStyle: .alert)
             alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            return alert
         }
    }
