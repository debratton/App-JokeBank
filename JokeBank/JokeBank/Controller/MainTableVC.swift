//
//  MainTableVC.swift
//  JokeBank
//
//  Created by David E Bratton on 10/12/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit

// Used to be an array ["Chicken", "Walk into a bar..."]
// Created a class and assigned them
var jokes: [Joke] = []

class MainTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let joke1 = Joke()
        joke1.title = "Chicken"
        joke1.question = "Did you hear about the chicken who could only lay eggs in the winter?"
        joke1.answer = "She was no spring chicken."
        
        let joke2 = Joke()
        joke2.title = "Walk into a bar ..."
        joke2.question = "A tennis ball walks into a bar."
        joke2.answer = "The barman says, Have you been served?"
        
        let joke3 = Joke()
        joke3.title = "Olives"
        joke3.question = "What do you call the worlds best diplomate?"
        joke3.answer = "Olive Branch."
        
        let joke4 = Joke()
        joke4.title = "Racer"
        joke4.question = "What don't drivers eat before a big race?"
        joke4.answer = "In case they get indy-gestion."
        
        jokes = [joke1, joke2, joke3, joke4]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return jokes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()

        //Used to be this until we changed to object
        //cell.textLabel?.text = jokes[indexPath.row]
        cell.textLabel?.text = jokes[indexPath.row].title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("Tapped")
        print("Index Path: \(indexPath.row)")
        
        let selectedJoke = jokes[indexPath.row]
        performSegue(withIdentifier: "moveToJokeDefinition", sender: selectedJoke)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jokeVC = segue.destination as? JokeVC {
            
            // Have to change String to the Joke Object
            //if let passedJoke = sender as? String {
            if let passedJoke = sender as? Joke {
                jokeVC.recievedJoke = passedJoke
            }
        }
    }
}
