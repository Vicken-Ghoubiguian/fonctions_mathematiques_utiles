//
//  fonctions_mathematiques_utiles.swift
//  
//
//  Created by Eric Ghoubiguian on 13/04/2019.
//

import Foundation

//Cette fonction permet de calculer la racine carée d'un nombre entier naturel passé en paramétre en utilisant la méthode de Heron
func methode_d_extraction_de_racine_caree_par_Heron(nombre_entier_natuel: Int) -> Double
{
    //Si le nombre passé en paramétre est inférieur ou égal à 0, alors...
    if(nombre_entier_natuel <= 0)
    {
        //On retourne 0
        return 0.0
    }
        //Sinon...
    else
    {
        //
        let nombre_entier_naturel_sous_forme_de_Double = Double(nombre_entier_natuel)
        
        //
        var x = Double(nombre_entier_naturel_sous_forme_de_Double / 2.0)
        
        //
        for _ in 1..<1001{
            
            //
            x = (x + (nombre_entier_naturel_sous_forme_de_Double / x)) / 2.0
            
        }
        
        //
        return x
    }
}
