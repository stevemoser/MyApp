//
//  ViewController.swift
//  MyApp
//
//  Created by Steve Moser on 6/19/18.
//  Copyright © 2018 Steve Moser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private lazy var duckDuckGo = DuckDuckGo()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        duckDuckGo.performSearch(for: "steve jobs") { definition in
            if let definition = definition {
                print(definition)
            } else {
                print("error")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

