//
//  ViewControllerPersonas.swift
//  ProyectoFinal
//
//  Created by David Souza on 10/20/17.
//  Copyright © 2017 David Souza & Jimena Lomelí. All rights reserved.
//

import UIKit

class ViewControllerPersonas: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vistaDestino = segue.destination as! ViewControllerFotosPersonas
        
        if segue.identifier == "familiares" {
            vistaDestino.familiares = true
        } else {
            vistaDestino.familiares = false
        }
        
    }
        
    

}
