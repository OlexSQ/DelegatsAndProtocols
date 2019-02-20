//
//  ViewController.swift
//  DelegatsAndProtocols
//
//  Created by mac on 20.02.2019.
//  Copyright © 2019 Oleg_Psiarovsky. All rights reserved.
//

import UIKit

class VCInitial: UIViewController, VCFinalDelegate {

    @IBAction func btnPerformSequePress(_ sender: Any) {
        performSegue(withIdentifier: "VCInitialToVCFinal", sender: nil)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VCFinal {
            destination.delegate = self
        }
    }
    
    func finishPassing(string: String) {
        print("Notified")
        print(string)
    }
    
}

