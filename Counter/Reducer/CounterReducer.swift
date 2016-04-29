//
//  CounterReducer.swift
//  Counter
//
//  Created by Phien Tram on 4/29/16.
//  Copyright © 2016 Phien Tram. All rights reserved.
//

import Foundation
import ReSwift

struct CounterReducer: Reducer {
    func handleAction(action: Action, state: AppState?) -> AppState {
        return AppState(counter: counterReducer(action, counter: state?.counter))
    }
}

func counterReducer(action: Action, counter: Int?) -> Int {
    var counter = counter ?? 0
    
    switch action {
    case _ as CounterActionIncrease:
        counter += 1
    case _ as CounterActionDecrease:
        counter -= 1
    default:
        break
    }
    
    return counter
}