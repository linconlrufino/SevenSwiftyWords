//
//  ViewController.swift
//  SevenSwiftyWords
//
//  Created by Linconl Rufino on 06/08/23.
//

import UIKit

class ViewController: UIViewController {
    var letterButtons = [UIButton]()

    private lazy var scoreLabel: UILabel = {
        let scoreLabel = UILabel()
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreLabel.textAlignment = .right
        scoreLabel.text = "Score: 0"
        scoreLabel.textColor = .black

        return scoreLabel
    }()
    
    private lazy var cluesLabel: UILabel = {
        let cluesLabel = UILabel()
        
        cluesLabel.translatesAutoresizingMaskIntoConstraints = false
        cluesLabel.font = UIFont.systemFont(ofSize: 24)
        cluesLabel.textColor = .black
        cluesLabel.text = "CLUES"
        cluesLabel.numberOfLines = 0
        
        return cluesLabel
    }()
    
    private lazy var answersLabel: UILabel = {
        let answersLabel = UILabel()
        
        answersLabel.translatesAutoresizingMaskIntoConstraints = false
        answersLabel.font = UIFont.systemFont(ofSize: 24)
        answersLabel.textColor = .black
        answersLabel.text = "ANSWERS"
        answersLabel.numberOfLines = 0
        
        return answersLabel
    }()
    
    private lazy var currentAnswer: UITextField = {
        let currentAnswer = UITextField()
        return currentAnswer
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
    
    func setupLayout() {
        view = UIView()
        view.backgroundColor = .white
        
        view.addSubview(scoreLabel)
        view.addSubview(cluesLabel)
        view.addSubview(answersLabel)
        
        NSLayoutConstraint.activate([
            scoreLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            scoreLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            cluesLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
            cluesLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor)
            
        ])
    
    }

}
