//
//  ViewController.swift
//  Peliculas
//
//  Created by Alumno on 9/18/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var peliculas : [Pelicula] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        peliculas.append(Pelicula(titulo : "It 2", director: "Leonador Dicrapio", año : 2019))
        peliculas.append(Pelicula(titulo : "After", director: "Anna Todd", año : 2019))
        peliculas.append(Pelicula(titulo : "Robots", director: "Director 3", año : 2003))
        
    }
    //Numero de secciones
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //Que tantas filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as? CeldaPeliculaController
        
        celda?.lblPelicula.text = peliculas[indexPath.row].titulo
        celda?.lblDirector.text = peliculas[indexPath.row].director
        celda?.lblAño.text = "\(peliculas[indexPath.row].año)"
        
        return celda!
    }
}

