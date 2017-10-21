//
//  ViewControllerVerInformacion.swift
//  ProyectoFinal
//
//  Created by David Souza on 10/20/17.
//  Copyright © 2017 Dream team. All rights reserved.
//

import UIKit

class ViewControllerVerInformacion: UIViewController, ProtocoloeditarInformacion {
    
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbFechaNac: UILabel!
    @IBOutlet weak var lbComentarios: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet var vista: UIView!
    
    var ynombre : String!
    var ynacimiento : String!
    var ycomentarios : String!

    override func viewDidLoad() {
        super.viewDidLoad()
        print(ynombre)
        lbNombre.text = ynombre
        lbFechaNac.text = ynacimiento
        lbComentarios.text = ycomentarios
        
//        if lbNombre.text == "" {
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let vistaEditar = storyboard.instantiateViewController(withIdentifier: "editarInformacion") as! ViewControllerEditarInformacion
//            self.navigationController?.pushViewController(vistaEditar, animated: true)
//        }

    }
    
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaEditar = segue.destination as! ViewControllerEditarInformacion
        vistaEditar.delegado = self
        vistaEditar.prueba = 1 
    }
    
    // MARK: - Metodo protocolo
    func editarInfo(nombre: String, nacimiento: String, comentarios: String) {
        ynombre = nombre
        ynacimiento = nacimiento
        ycomentarios = comentarios
        lbNombre.text = ynombre
        lbFechaNac.text = ynacimiento
        lbComentarios.text = ycomentarios
        
        viewWillAppear(true)
    }
    

}
