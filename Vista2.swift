//
//  Vista2.swift
//  iPizza
//
//  Created by Juan Andres Garcia C on 7/07/16.
//  Copyright © 2016 Juan Andres Garcia C. All rights reserved.
//

import UIKit

class Vista2: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tamaño: UITextField!

    @IBOutlet weak var masa: UITextField!
    
    @IBOutlet weak var queso: UITextField!
    
    @IBOutlet weak var ingrediente: UITextField!
    
    @IBAction func textFieldDidEndEditing(sender: UITextField) {
        sender.resignFirstResponder()
    }
    @IBAction func backgroudTap(sender:UIControl){
        tamaño.resignFirstResponder()
        masa.resignFirstResponder()
        queso.resignFirstResponder()
        ingrediente.resignFirstResponder()
        
    }
    var resul:String
    init(resul:String)
    {

        self.resul=resul
    
    }//No pude resolver este error
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func resu() -> String{
        resul="Tu pedido es una pizza con las siguientes esoecificaciones: > \(tamaño)/n >\(masa)/n >\(queso)/n > \(ingrediente) "
        return resul
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tamaño.delegate=self
        masa.delegate=self
        queso.delegate=self
        ingrediente.delegate=self
        // Do any additional setup after loading the view.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado = resu()
        let sigVista = segue.destinationViewController as! VistaFinal
        sigVista.resultados.text = resultado
    }

    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
