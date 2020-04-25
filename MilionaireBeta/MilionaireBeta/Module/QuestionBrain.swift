//
//  QuestionBrain.swift
//  MilionaireBeta
//
//  Created by Alexandru Coltan on 25.04.20.
//  Copyright © 2020 Alexandru Coltan. All rights reserved.
//

import Foundation
struct QuestionBrain
{
    
    let quiz=[
    QuestionStruct(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine","Brain"], correctAnswer: "Skin"),
    QuestionStruct(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100","75"], correctAnswer: "100"),
    QuestionStruct(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time","None"], correctAnswer: "Greenwich Mean Time"),
    QuestionStruct(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet","Je"], correctAnswer: "Chapeau"),
    QuestionStruct(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch","Tie"], correctAnswer: "Watch"),
    QuestionStruct(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir","Bye"], correctAnswer: "Adiós"),
    QuestionStruct(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue","Yellow"], correctAnswer: "Orange"),
    QuestionStruct(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin","Bear"], correctAnswer: "Rum"),
    QuestionStruct(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile","Dog"], correctAnswer: "Gorilla"),
    QuestionStruct(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland","UK"], correctAnswer: "Australia")]

    var numberQuestion=0
    var score=0
    
    mutating func goNext()
    {
        if numberQuestion+1<quiz.count
        {
            numberQuestion+=1
            
        }
       /* else
        {
            numberQuestion=0
            score=0
            
        }*/
        
    }
    mutating func checkAnswer(answer:String)->Bool
    {
        if(answer==quiz[numberQuestion].corect)
        {
            score+=1
            return true
        }
        else{
            return false
        }
    }
    
    func printQuestion()->String
    {
        return quiz[numberQuestion].text
    }
    func printButton1()->String
    {
        return quiz[numberQuestion].answers[0] as! String
    }
    func printButton2()->String
    {
        return quiz[numberQuestion].answers[1] as! String
    }
    func printButton3()->String
    {
        return quiz[numberQuestion].answers[2] as! String
    }
    func printButton4()->String
    {
        return quiz[numberQuestion].answers[3] as! String
    }
}
