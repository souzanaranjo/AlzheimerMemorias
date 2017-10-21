//
//  ViewControllerFotosPersonas.swift
//  ProyectoFinal
//
//  Created by David Souza on 10/20/17.
//  Copyright © 2017 David Souza & Jimena Lomelí. All rights reserved.
//

import UIKit

class ViewControllerFotosPersonas: UIViewController {
    var familiares : Bool!
    var color : UIColor!
    
    @IBOutlet var vista: UIView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if familiares {
            vista.backgroundColor = UIColor(red: 241/255, green: 255/255, blue: 167/255, alpha: 1.0)
            self.title = "Familiares"
            
        } else {
            vista.backgroundColor = UIColor(red: 177/255, green: 255/255, blue: 159/255, alpha: 1.0)
            self.title = "Conocidos"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
