//
//  ViewController.swift
//  homework3
//
//  Created by Томик on 16.10.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Домашнее задание #4
        //универсальные функции сложения, вычитания, умножения и деления
        
        func sum(firstNumber: Int, secondNumber: Int) {
            print(firstNumber + secondNumber)
            print(firstNumber - secondNumber)
            print(firstNumber / secondNumber)
        }

        func sum(firstNumber: Double, secondNumber: Double) {
            print(firstNumber * secondNumber)
        }

        //перегрузка на деле: у нас были две функции с одним именем, но с разными принимаемыми параметрами. В зависимости от того, что мы передаем в параметрах, мы вызываем разные функции
        sum(firstNumber: 10, secondNumber: 5)
        sum(firstNumber: 2.2, secondNumber: 2.3)

        //доп пример для string - просто так:)
        func additional(first: String) -> String {
            let volvo = "Хорошая " + first
            return volvo
        }
        let sentence = additional(first: "машина")
        print(sentence)

        //вычислить сумму цифр четырехзначного числа
        func sumOfInt(Int: Int) {
            let integer = 3456
            let sumInt = String(integer).compactMap{$0.wholeNumberValue}.reduce(0, +)
            print(sumInt)
        }

        //функция сравнения строк - "авб" больше "ввш"
        
        let stringA: String = "абв"
        let stringB: String = "ввш"
        
        func compareStrings(stringOne: String = stringA, stringTwo: String = stringB) -> String {
            let isEqual = (stringA == stringB)
            let result1: String = "строка А больше строки Б"
            let result2: String = "строка Б больше строки А"
            if isEqual == false {
                return result1
        } else {
            return result2
            }
        }
        
        print(compareStrings())
        
        //циклический вызов функций - поломать приложение. Приложение поломается, потому что мы не задали условия прерывания вызова функции.
        func countDown(number1: Int) {
            print(number1)
            countDown(number1: number1 - 1)
        }
        countDown(number1: 4)

        //Функция возведения в степень с дефолтным параметром
        func degree(_ number: Double = 5.0, degree: Double) -> Double {
        let inDegree = pow(number, degree)
        return inDegree
        }

        degree(degree: 3.0)

        //доп пример c closure - как вычислить квадрат числа - просто так:)
        let findSquare = { (num: Int) -> (Int) in
            var square = num * num
            return square
        }
        print(findSquare(7))
        
    }


}

