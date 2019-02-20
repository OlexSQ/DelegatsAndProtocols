//
//  VCFinal.swift
//  DelegatsAndProtocols
//
//  Created by mac on 20.02.2019.
//  Copyright © 2019 Oleg_Psiarovsky. All rights reserved.
//

import UIKit

protocol VCFinalDelegate {
    func finishPassing(string: String)
}

class VCFinal: UIViewController {

    var delegate: VCFinalDelegate?
    
    @IBAction func btnPassDataPressed(_ sender: Any) {
        delegate?.finishPassing(string: "Sent from VCFinal")

    }
    
    
}
