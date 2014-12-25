//
//  ViewController.swift
//  FunFacts
//
//  Created by Kelly Shuster on 12/23/14.
//  Copyright (c) 2014 KioDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        var thisRandomColor = colorWheel.randomColor()

        view.backgroundColor = thisRandomColor
        funFactButton.tintColor = thisRandomColor
        
        funFactLabel.text = factBook.randomFact()
    }
    
}

