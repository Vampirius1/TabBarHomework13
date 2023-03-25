//
//  QuestionsViewController.swift
//  TabBarHomework13
//
//  Created by Владислав on 25.03.2023.
//

import UIKit

class QuestionsViewController: UIViewController {

    //    MARK: - Buttons
        let nextButton = UIButton()
        
    //    MARK: - life cicle
        override func viewDidLoad() {
            super.viewDidLoad()
            
            setupViews()
            setupConstraints()
        }
        
    //    MARK: - Views
        private func setupViews() {
            title = "Questions"
            view.backgroundColor = .cyan
        
            nextButton.backgroundColor = .black
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
