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
        cluesLabel.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        return cluesLabel
    }()
    
    private lazy var answersLabel: UILabel = {
        let answersLabel = UILabel()
        answersLabel.translatesAutoresizingMaskIntoConstraints = false
        answersLabel.font = UIFont.systemFont(ofSize: 24)
        answersLabel.textColor = .black
        answersLabel.text = "ANSWERS"
        answersLabel.textAlignment = .right
        answersLabel.numberOfLines = 0
        answersLabel.setContentHuggingPriority(UILayoutPriority(1), for: .vertical  )
        return answersLabel
    }()
    
    private lazy var currentAnswer: UITextField = {
        let currentAnswer = UITextField()
        currentAnswer.translatesAutoresizingMaskIntoConstraints = false
        currentAnswer.placeholder = "Tap letters to guess"
        currentAnswer.textAlignment = .center
        currentAnswer.font = UIFont.systemFont(ofSize: 44)
        currentAnswer.isUserInteractionEnabled = false
        return currentAnswer
    }()
    
    private lazy var submit: UIButton = {
        let submit = UIButton(type: .system)
        submit.translatesAutoresizingMaskIntoConstraints = false
        submit.setTitle("SUBMIT", for: .normal)
        return submit
    }()
    
    private lazy var clear: UIButton = {
        let clear = UIButton(type: .system)
        clear.translatesAutoresizingMaskIntoConstraints = false
        clear.setTitle("CLEAR", for: .normal)
        return clear
    }()
    
    private lazy var buttonsView: UIView = {
       let buttonsView = UIView()
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        return buttonsView
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
        view.addSubview(currentAnswer)
        view.addSubview(submit)
        view.addSubview(clear)
        view.addSubview(buttonsView)
        
        drawnLetterButtons()
        
        NSLayoutConstraint.activate([
            scoreLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            scoreLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            cluesLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
            cluesLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 100),
            cluesLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.6, constant: -100),
            
            answersLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
            answersLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -100),
            answersLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.4, constant: -100),
            answersLabel.heightAnchor.constraint(equalTo: cluesLabel.heightAnchor),
            
            currentAnswer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            currentAnswer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            currentAnswer.topAnchor.constraint(equalTo: cluesLabel.bottomAnchor, constant: 20),
            
            submit.topAnchor.constraint(equalTo: currentAnswer.bottomAnchor),
            submit.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100),
            submit.heightAnchor.constraint(equalToConstant: 44),
            
            clear.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100),
            clear.centerYAnchor.constraint(equalTo: submit.centerYAnchor),
            clear.heightAnchor.constraint(equalToConstant: 44),
            
            buttonsView.widthAnchor.constraint(equalToConstant: 750),
            buttonsView.heightAnchor.constraint(equalToConstant: 320),
            buttonsView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonsView.topAnchor.constraint(equalTo: submit.bottomAnchor, constant: 20),
            buttonsView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -20)
        ])
    }

    func drawnLetterButtons() {
        let width = 150
        let height = 80
        
        for row in 0..<4 {
            for column in 0..<5 {
                let letterButon = UIButton(type: .system)
                letterButon.titleLabel?.font = UIFont.systemFont(ofSize: 36)
                letterButon.setTitle("WWW", for: .normal)
                
                let frame = CGRect(x: column * width, y: row * height, width: width, height: height)
                letterButon.frame = frame
                
                buttonsView.addSubview(letterButon)
                letterButtons.append(letterButon)
            }
        }
    }
}
