//
//  ViewControllerVerInformacion.swift
//  ProyectoFinal
//
//  Created by David Souza on 10/20/17.
//  Copyright © 2017 David Souza & Jimena Lomelí. All rights reserved.
//

import UIKit

class ViewControllerVerInformacion: UIViewController {
    
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbFechaNac: UILabel!
    @IBOutlet weak var lbComentarios: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if lbNombre.text == "" {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vistaEditar = storyboard.instantiateViewController(withIdentifier: "editarInformacion") as! ViewControllerEditarInformacion
            
            self.navigationController?.pushViewController(vistaEditar, animated: true)
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
