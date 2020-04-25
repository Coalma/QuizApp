//
//  QuestionStruct.swift
//  MilionaireBeta
//
//  Created by Alexandru Coltan on 25.04.20.
//  Copyright © 2020 Alexandru Coltan. All rights reserved.
//

import Foundation

struct QuestionStruct
{
    let text:String
    let answers:Array<Any>
    let corect:String
    init(q:String,a:Array<Any>,correctAnswer:String) {
        self.text=q
        self.answers=a
        self.corect=correctAnswer
    }
    
}
