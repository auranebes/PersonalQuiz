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
        var amountOfAnimals: [AnimalType : Int] = [:]
        let typesOfAnswers = answers.map({$0.type})
        
        for animal in typesOfAnswers {
            if let anumalTypeOfCount = amountOfAnimals[animal] {
                amountOfAnimals.updateValue(anumalTypeOfCount + 1, forKey: animal)
            } else {
                amountOfAnimals[animal] = 1
            }
        }
        
//        for animal in animals {
//            frequencyOfAnimals[animal] = (frequencyOfAnimals[animal] ?? 0) + 1
//        }
        
        let sortedAmountOfAnimals = amountOfAnimals.sorted { $0.value > $1.value }
        guard let firstAnimal = sortedAmountOfAnimals.first?.key else { return }
        
           // Решение в одну строку:

//        let mostFrequencyAnimal = Dictionary(grouping: answers) { $0.type }
//            .sorted { $0.value.count > $1.value.count }
//            .first?.key
        
        updateUI(with: firstAnimal)
    }
    
    private func updateUI(with animal: AnimalType?) {
        mainLabel.text = "Вы - \(animal?.rawValue ?? "🐶" )!"
        textLabel.text = animal?.definition ?? ""
    }
    
}

