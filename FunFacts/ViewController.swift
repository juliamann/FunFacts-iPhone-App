//
//  ViewController.swift
//  FunFacts
//
//  Created by Julia Mann on 8/11/16.
//  Copyright © 2016 Julia Mann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet weak var funFactButton: UIButton!
    
   let factModel = FactModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factModel.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        // generate random color variable
        var randomColor = ColorModel().getRandomColor()
        
        // check for same background color
        while randomColor == view.backgroundColor {
            randomColor = ColorModel().getRandomColor()
        }
        
        // assign background color to new view
        view.backgroundColor = randomColor
        
        // assign button text color the same as background color
        funFactButton.tintColor = randomColor
        
        
        // generate random fact
        var randomFact = factModel.getRandomFact()

        // check for same fact
        while randomFact == funFactLabel.text {
            randomFact = factModel.getRandomFact()
        }
        
        // assign new fact to view label
        funFactLabel.text = randomFact
        
    }

}

