//
//  CounterViewController.swift
//  Counter
//
//  Created by Phien Tram on 4/29/16.
//  Copyright © 2016 Phien Tram. All rights reserved.
//

import UIKit
import ReSwift

class CounterViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        applicationStore.subscribe(self)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        applicationStore.unsubscribe(self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func increaseButtonOnPressed(sender: AnyObject) {
        applicationStore.dispatch(CounterActionIncrease())
    }
    
    
    @IBAction func decreaseButtonOnPressed(sender: AnyObject) {
        applicationStore.dispatch(CounterActionDecrease())
    }
}

extension CounterViewController: StoreSubscriber {
    func newState(state: AppState) {
        counterLabel.text = "Counter: \(state.counter)"
    }
}