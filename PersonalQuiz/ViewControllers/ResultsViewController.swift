//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by brubru on 20.12.2021.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    var answers: [Answer]!
    var types: AnimalType!
    var array: [AnimalType]!
    
    // 1. Передать сюда массив с ответами
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результат в соответсвии с этим живтным
    // 4. Избавится от кнопки возврата назад на экран результатов

    override func viewDidLoad() {
        super.viewDidLoad()
        print(answers!)
        getResult()
        
    }


}

extension ResultsViewController {
    private func getResult() {
        //let dictCats: Dictionary<AnimalType, Int>
        let typesOfAnswers = answers.map({$0.type})
    }
    
}

