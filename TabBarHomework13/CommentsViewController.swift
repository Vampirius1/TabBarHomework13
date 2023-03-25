//
//  CommentsViewController.swift
//  TabBarHomework13
//
//  Created by Владислав on 25.03.2023.
//

import UIKit

class CommentsViewController: UIViewController {

    //    MARK: - Buttons
    let nextButton = UIButton()
    
//    MARK: - Life Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Comments"
        view.tintColor = .systemCyan
        
        setupViews()
        setupConstraints()
    }
    
//    MARK: - Views
    
    private func setupViews() {
        title = "Comments"
        view.backgroundColor = .white
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Comments", style: .plain, target: nil, action: nil)
        
        nextButton.setImage(UIImage(systemName: "play"), for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.addAction(UIAction(handler: {[weak self] _ in
            self?.navigationController?.pushViewController(CommentsViewController(), animated: true)
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

class FirstCommentsViewController : UIViewController {
    
//    MARK: - Buttons
    let nextButton = UIButton()
    
//    MARK: - Life Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Comments 1"
        view.tintColor = .systemCyan
        
        setupViews()
        setupConstraints()
    }
    
//    MARK: - Views
    private func setupViews() {
        title = "Comments 1"
        view.backgroundColor = .white
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Comments 1", style: .plain, target: nil, action: nil)
        
        nextButton.setImage(UIImage(systemName: "play"), for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.addAction(UIAction(handler: {[weak self] _ in
            self?.navigationController?.pushViewController(FirstCommentsViewController(), animated: true)
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

class SecondCommentsViewController : UIViewController {
    
//    MARK: - Buttons
    let alertButton = UIButton()
    
//    MARK: - Life Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Comments 2"
        view.backgroundColor = .white
        view.tintColor = .systemCyan
        
        setupViews()
        setupConstraints()
    }
    
//    MARK: - Views
    private func setupViews() {
        title = "Comments 2"
        view.backgroundColor = .white
        
        alertButton.setImage(UIImage(systemName: "play"), for: .normal)
        alertButton.setTitleColor(.black, for: .normal)
        alertButton.addAction(UIAction(handler: {[weak self] _ in
            self?.navigationController?.pushViewController(AlertViewController(), animated: true)
        }), for: .touchUpInside)
        view.addSubview(alertButton)
    }
    
//    MARK: - Constraints
    private func setupConstraints() {
        view.translatesAutoresizingMaskIntoConstraints = false
        view.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

