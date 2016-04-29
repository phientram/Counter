//
//  ApplicationStore.swift
//  Counter
//
//  Created by Phien Tram on 4/29/16.
//  Copyright © 2016 Phien Tram. All rights reserved.
//

import Foundation
import ReSwift

let applicationStore = Store<AppState>(reducer: CounterReducer(), state: nil)