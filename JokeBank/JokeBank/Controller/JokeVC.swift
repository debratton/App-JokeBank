//
//  JokeVC.swift
//  JokeBank
//
//  Created by David E Bratton on 10/12/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit

class JokeVC: UIViewController {
    
    var recievedJoke = ""
    
    let chickenJokeQ = "Did you hear about the chicken who could only lay eggs in the winter?"
    let chickenJokeA = "She was no spring chicken."
    let walkIntoBarJokeQ = "A tennis ball walks into a bar."
    let walkIntoBarJokeA = "The barman says, Have you been served?"
    let oliveJokeQ = "What do you call the worlds best diplomate?"
    let oliveJokeA = "Olive Branch."
    let raceJokeQ = "What don't drivers eat before a big race?"
    let raceJokeA = "In case they get indy-gestion."
    
    @IBOutlet weak var jokeLbl: UILabel!
    @IBOutlet weak var jokeQuestionTxt: UITextView!
    @IBOutlet weak var answerLbl: UILabel!
    @IBOutlet weak var jokeAnswerTxt: UITextView!
    @IBOutlet weak var answerBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = recievedJoke
        print(recievedJoke)
        answerLbl.isHidden = true
        jokeAnswerTxt.isHidden = true
        answerBtn.isEnabled = true
        
        if recievedJoke == "Chicken" {
            jokeQuestionTxt.text = chickenJokeQ
        } else if recievedJoke == "Walk into a bar ..." {
            jokeQuestionTxt.text = walkIntoBarJokeQ
        } else if recievedJoke == "Olives" {
            jokeQuestionTxt.text = oliveJokeQ
        } else {
            jokeQuestionTxt.text = raceJokeQ
        }
    }
    
    @IBAction func showAnswerBtnPressed(_ sender: Any) {
        
        answerLbl.isHidden = false
        jokeAnswerTxt.isHidden = false
        answerBtn.isHidden = true
        
        if recievedJoke == "Chicken" {
            jokeAnswerTxt.text = chickenJokeA
        } else if recievedJoke == "Walk into a bar ..." {
            jokeAnswerTxt.text = walkIntoBarJokeA
        } else if recievedJoke == "Olives" {
            jokeAnswerTxt.text = oliveJokeA
        } else {
            jokeAnswerTxt.text = raceJokeA
        }
    }
}
