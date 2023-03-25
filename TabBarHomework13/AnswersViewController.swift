//
//  AnswersViewController.swift
//  TabBarHomework13
//
//  Created by Владислав on 25.03.2023.
//

import UIKit

class AnswersViewController: UIViewController {

    //    MARK: Life Cicle
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            title = "Answers"
            view.tintColor = .systemCyan
            
            setupViews()
            setupConstraints()
        }
        
    //    MARK: - Buttons
        let nextButton = UIButton()
        
    //    MARK: - Views
        
        private func setupViews() {
            title = "Answers"
            view.backgroundColor = .white
            navigationItem.backBarButtonItem = UIBarButtonItem(
                title: "Answers", style: .plain, target: nil, action: nil)
            
            nextButton.setImage(UIImage(systemName: "play"), for: .normal)
            nextButton.setTitleColor(.black, for: .normal)
            nextButton.addAction(UIAction(handler: {[weak self] _ in
                self?.navigationController?.pushViewController(FirstAnswersViewController(), animated: true)
            }), for: .touchUpInside)
            view.addSubview(nextButton)
        }
        
    //    MARK: - Constraints
        private func setupConstraints() {
            view.translatesAutoresizingMaskIntoConstraints = false
            view.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            view.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        }
    }

    class FirstAnswersViewController : UIViewController {
        
    //    MARK: - Buttons
        let nextButton = UIButton()
        
    //    MARK: Life Cicle
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            title = "Answers 1"
            view.tintColor = .systemCyan
            
            setupViews()
            setupConstraints()
        }
        
    //    MARK: - Views
        private func setupViews() {
            title = "Answers"
            view.backgroundColor = .white
            navigationItem.backBarButtonItem = UIBarButtonItem(
                title: "Answers", style: .plain, target: nil, action: nil)
            
            nextButton.setImage(UIImage(systemName: "play"), for: .normal)
            nextButton.setTitleColor(.black, for: .normal)
            nextButton.addAction(UIAction(handler: {[weak self] _ in
                self?.navigationController?.pushViewController(AlertViewController(), animated: true)
            }), for: .touchUpInside)
            view.addSubview(nextButton)
        }
        
    //    MARK: - Constraints
            private func setupConstraints() {
                view.translatesAutoresizingMaskIntoConstraints = false
                view.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
                view.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            }
    }
