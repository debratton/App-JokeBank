//
//  MainTableVC.swift
//  JokeBank
//
//  Created by David E Bratton on 10/12/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit

var jokes = ["Chicken", "Walk into a bar ...", "Olives", "Racer"]

class MainTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return jokes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()

        
        cell.textLabel?.text = jokes[indexPath.row]
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
            if let passedJoke = sender as? String {
                jokeVC.recievedJoke = passedJoke
            }
        }
    }
}
