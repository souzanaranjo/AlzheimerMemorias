//
//  ViewControllerEventos.swift
//  ProyectoFinal
//
//  Created by David Souza on 10/20/17.
//  Copyright © 2017 David Souza & Jimena Lomelí. All rights reserved.
//

import UIKit

class ViewControllerEventos: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vistaDestino = segue.destination as! ViewControllerAlbumEventos
        
        if segue.identifier == "personales" {
            vistaDestino.personales = true
        } else {
            vistaDestino.personales = false
        }
        
    }

}
