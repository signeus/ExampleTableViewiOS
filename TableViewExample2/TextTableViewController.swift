//
//  TextTableViewController.swift
//  TableViewExample2
//
//  Created by Kevin on 10/10/16.
//  Copyright © 2016 Kevin. All rights reserved.
//

import UIKit

class TextTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var attrib = ""
    
    let datos: [String] = [
    "Uno",
    "Dos",
    "Tres",
    "Cuatro",
    "Lorem fistrum se calle ustée diodenoo caballo blanco caballo negroorl ese que llega. Me cago en tus muelas condemor ahorarr quietooor. A gramenawer ahorarr benemeritaar diodenoo por la gloria de mi madre diodeno condemor benemeritaar te va a hasé pupitaa al ataquerl.",
    "Cinco",
    "Seis",
    "De la pradera a wan benemeritaar caballo blanco caballo negroorl. Ese hombree pecador a wan apetecan hasta luego Lucas tiene musho peligro. Caballo blanco caballo negroorl me cago en tus muelas amatomaa a wan jarl caballo blanco caballo negroorl jarl apetecan papaar papaar. Se calle ustée de la pradera te voy a borrar el cerito te va a hasé pupitaa caballo blanco caballo negroorl ese pedazo de mamaar condemor al ataquerl por la gloria de mi madre.",
    "Siete",
    "Lorem fistrum llevame al sircoo a wan está la cosa muy malar pecador pupita tiene musho peligro diodeno a wan a wan. A gramenawer no te digo trigo por no llamarte Rodrigor al ataquerl la caidita pecador. Tiene musho peligro por la gloria de mi madre de la pradera no puedor apetecan ahorarr diodenoo a wan me cago en tus muelas torpedo. Ese hombree jarl amatomaa amatomaa va usté muy cargadoo benemeritaar me cago en tus muelas a peich papaar papaar mamaar. Al ataquerl condemor diodeno a peich. Me cago en tus muelas papaar papaar pecador sexuarl se calle ustée hasta luego Lucas tiene musho peligro llevame al sircoo sexuarl mamaar ese hombree. Hasta luego Lucas tiene musho peligro sexuarl a peich tiene musho peligro. Te va a hasé pupitaa caballo blanco caballo negroorl qué dise usteer va usté muy cargadoo te voy a borrar el cerito.",
    "Ocho",
    "Mamaar mamaar condemor papaar papaar la caidita a wan pupita ese pedazo de fistro mamaar. Mamaar a gramenawer pecador va usté muy cargadoo pupita va usté muy cargadoo papaar papaar no te digo trigo por no llamarte Rodrigor no te digo trigo por no llamarte Rodrigor quietooor quietooor. De la pradera diodeno amatomaa te va a hasé pupitaa te voy a borrar ",
    "Lorem fistrum caballo blanco caballo negroorl no puedor a gramenawer hasta luego Lucas se calle ustée al ataquerl. Hasta luego Lucas papaar papaar quietooor apetecan apetecan sexuarl va usté muy cargadoo me cago en tus muelas de la pradera pecador. Me cago en tus muelas te voy a borrar el cerito sexuarl caballo blanco caballo negroorl la caidita diodenoo va usté muy cargadoo te va a hasé pupitaa amatomaa condemor. Condemor pecador quietooor se calle ustée pecador ese que llega ese pedazo de está la cosa muy malar llevame al sircoo tiene musho peligro. Benemeritaar llevame al sircoo torpedo a wan no te digo trigo por no llamarte Rodrigor caballo blanco caballo negroorl. Te voy a borrar el cerito ese que llega pecador ese pedazo de sexuarl al ataquerl llevame al sircoo por la gloria de mi madre papaar papaar. Diodenoo no te digo trigo por no llamarte Rodrigor ese pedazo de tiene musho peligro a gramenawer quietooor llevame al sircoo te voy a borrar el cerito te voy a borrar el cerito me cago en tus muelas a wan A peich diodeno pupita se calle ustée te va a hasé pupitaa diodenoo va usté muy cargadoo. Papaar papaar de la pradera me cago en tus muelas no puedor la caidita pupita tiene musho peligro Va usté muy cargadoo diodeno te va a hasé pupitaa va Ex dolor ad está la cosa muy malar dolor nisi. No puedor sit amet de la pradera qué dise usteer pecador ese que llega me cago en tus muelas exercitation enim aliqua ad. Occaecat va usté muy cargadoo ad jarl ese que llega velit ese pedazo de quietooor a gramenawer te voy a borrar el cerito te voy a borrar el cerito. Aute aliqua occaecat eiusmod adipisicing adipisicing occaecat. Consequat condemor ullamco eiusmod ahorarr. Consequat la caidita papaar papaar ese pedazo de aliqua está la cosa muy malar. Torpedo pecador ahorarr a gramenawer adipisicing commodo al ataquerl a wan. Hasta luego Lucas a ",
    "Nueve",
    "Diez"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 150
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.delegate = self
        tableView.dataSource = self
    }

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datos.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "TableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TextTableViewCell

        let row = indexPath.row
        cell.labelText?.sizeToFit()
        cell.labelText?.text = datos[row]
        
        return cell
    }
    
    // MARK:  UITableViewDelegate Methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        
        attrib = datos[indexPath.row]
        performSegue(withIdentifier: "toSecondScreen", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondScreen"{
            let segundoControlador = segue.destination as! SecondScreenViewController
            segundoControlador.texto = attrib
        }
    }
}
