//
//  ViewControllerEditarInformacion.swift
//  ProyectoFinal
//
//  Created by David Souza on 10/20/17.
//  Copyright © 2017 Dream team All rights reserved.
//

import UIKit

protocol ProtocoloeditarInformacion {
    func editarInfo(nombre: String, nacimiento: String, comentarios: String) -> Void
}

class ViewControllerEditarInformacion: UIViewController {
    
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var tfComentarios: UITextView!
    var prueba : Int!
    
    var fecha = Date()
    var sFecha : String!
    
    let formateador = DateFormatter()
    
    var delegado : ProtocoloeditarInformacion!
    
    
    @IBAction func btGuardar(_ sender: UIButton) {
       
        fecha = datePicker.date
        formateador.dateFormat = "dd ' de ' MM ' de ' yyyy"
        sFecha = formateador.string(from:fecha)
        print(sFecha)
        let nom = tfNombre.text!
        let com = tfComentarios.text!
        var fec: String!
        fec = sFecha
        
        if nom != " " && com != "" && fec != ""{
            delegado.editarInfo(nombre: nom, nacimiento: fec, comentarios: com)
             navigationController!.popViewController(animated: true)
        }
        
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(prueba)
        
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
