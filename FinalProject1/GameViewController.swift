//
//  GameViewController.swift
//  FinalProject1
//
//  Created by Syrup on 3/22/22.
//

import UIKit

class GameViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //collection of question and answers
    var gameModels = [Question]()
    
    var currentQuestion: Question?
    
    @IBOutlet var label: UILabel!
    @IBOutlet var table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupQuestion()
        configureUI(question: gameModels.first)

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        configureUI()
    }
    
    private func configureUI(question: Question) {
        label.text = question.text
        currentQuestion = question
        table.delegate = self
        table.delegate = self
    }
    
    private func checkAnswer(answwer: Answer, question: Question) -> Bool {
        return question.answers.contains(where: { $0.text == answwer.text }) && answwer.correct
    }
    
    private func setupQuestion() {
        gameModels.append(Question(text: "What is the current region of this game guide", answers: [
            Answer(text: "Johto", correct: false),
            Answer(text: "Galar", correct: true),
            Answer(text: "Indigo", correct: false),
            Answer(text: "Psd", correct: false)
        ]))
        gameModels.append(Question(text: "What is the current region of this game guide", answers: [
            Answer(text: "Johto", correct: false),
            Answer(text: "Galar", correct: true),
            Answer(text: "Indigo", correct: false),
            Answer(text: "Psd", correct: false)
        ]))
    }
    
    // tanle view function
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentQuestion?.answers.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = currentQuestion?.answers[indexPath.row].text
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let question = currentQuestion else {
            return
        }
        
        let answer = question.answers[indexPath.row]{
            //correct
            if let index = gameModels.firstIndex(where: { $0.text == question.text})
                if ind
        }
        
        if checkAnswer(answwer: answer, question: question) {
            //
        } else {
            let alert = UIAlertController(title: "Wrong", message: "Choice other answer", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dissmiss", style: .cancel, handler: nil))
            present(alert, animated: true)
        }
    }

}

struct Question {
    let text: String
    let answers: [Answer]
}

struct Answer {
    let text: String
    let correct: Bool //true //false
}
