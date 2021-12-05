//
//  ViewController.swift
//  IOSQuiz
//
//  Created by Hajar Alomari on 29/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
    //declaration of UI Element
    
    @IBOutlet weak var QuerstionLabel: UILabel!
    
    @IBOutlet weak var AnswerLabel: UILabel!
    
    //declare and init variables
    
    let quizBank = [
        (  "What is the first step of iOS development?", "Create the user interface. As we create the UI, we will get a better understanding of our application. Then we breath life into our application."),
         ("Why do we use Autolayout?", "We use Autolayout to set constraints on our View objects so that it can adapt to different screen sizes and to different orientations (portrait or landscape)"),
         ("What is the difference between IBAction and IBOutlet?", "Both IBAction and IBOutlets are connections from View elements on our storyboard. IBOutlet connects a proprety in our code to an object in a storyboard while an IBAction connects an event generated by an object in a storyboard to a method in our code."),
         ("What is the Model in MVC responsible for?", "Model objects are responsible for the data of our application. It is important to note that Model objects know nothing about the user interface. An example of a Model could be a list of questions and answers."),
         ("What is the View in MVC responsible for?", "View objects are objects that can be seen by the user (objects you drag into the storyboard). Some examples are labels and buttons."),
         ("What is the Controller in MVC responsible for?", "Controller objects facilitate the communication between the Model and the View since the Model and the View should never directly talk to each other (remember the Model knows nothing about the user interface).")
     ]
    
     var currentQuestion = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
       currentQuestion = displayQandA(index: currentQuestion)
        
        AnswerLabel.numberOfLines = 0
        QuerstionLabel.numberOfLines = 0
        
    }
    
    
    @IBAction func nextBtn(_ sender: UIButton) {
        let nextQuestion = displayQandA(index: currentQuestion)
        currentQuestion = nextQuestion
        AnswerLabel.isHidden = true
    }
    
    @IBAction func answerBtn(_ sender: UIButton) {
        AnswerLabel.isHidden = false
    }
    
    
    func displayQandA(index: Int) -> Int{
       var number = 0
        AnswerLabel.isHidden = true
        if index < quizBank.count{
                    QuerstionLabel.text = quizBank[index].0
                    AnswerLabel.text = quizBank[index].1
            number += index + 1
            return number
        } else{
            QuerstionLabel.text = quizBank[0].0
            AnswerLabel.text = quizBank[0].1
            return 0
        }
    }

}




