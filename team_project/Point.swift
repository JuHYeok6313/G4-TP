//
//  Point.swift
//  team_project
//
//  Created by snlcom on 2023/06/04.
//

import Foundation

var point = 0


func increasePoint() {
    if true{
        point += 1
    }
}

func updatePoint() {
    increasePoint()
    print("현재 point: \(point)")
}

let timer = Timer(fire: Date(), interval: 24*60*60, repeats: true) { _ in
    updatePoint()
}

