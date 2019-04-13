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
        //Le nombre entier naturel dont on veut la racine carée est convertit en Double
        let nombre_entier_naturel_sous_forme_de_Double = Double(nombre_entier_natuel)
        
        //On extrait le nombre x0, qui est le nombre assez proche de la racine carée de nombre_entier_naturel_sous_forme_de_Double que possible
        var x = Double(nombre_entier_naturel_sous_forme_de_Double / 2.0)
        
        //On entre dans une boucle qui s'éxécute de 1 à 1000
        for _ in 1..<1001{
            
            //Ici, le quotient du nombre_entier_naturel sous_forme_de_Double par rapport à la _éme itération de x est calculé, on fait la somme entre la _éme itération de x et le résultat de ce quotient, puis on divise le tous par 2.0
            x = (x + (nombre_entier_naturel_sous_forme_de_Double / x)) / 2.0
            
        }
        
        //Le résultat final de la fonction est retournée
        return x
    }
}

//Cette fonction permet de calculer la racine carée d'un nombre entier naturel passé en paramétre, avec une précision précisée par le nombre d'occurences passé en paramétre, en utilisant la méthode de Heron
func methode_d_extraction_de_racine_caree_par_Heron_en_precisant_le_nombre_d_occurences(nombre_entier_natuel: Int, nombre_d_occurences: Int) -> Double
{
    //Si le nombre passé en paramétre est inférieur ou égal à 0, alors...
    if(nombre_entier_natuel <= 0 && nombre_d_occurences <= 0)
    {
        //On retourne 0
        return 0.0
    }
        //Sinon...
    else
    {
        //Le nombre entier naturel dont on veut la racine carée est convertit en Double
        let nombre_entier_naturel_sous_forme_de_Double = Double(nombre_entier_natuel)
        
        //On extrait le nombre x0, qui est le nombre assez proche de la racine carée de nombre_entier_naturel_sous_forme_de_Double que possible
        var x = Double(nombre_entier_naturel_sous_forme_de_Double / 2.0)
        
        //On entre dans une boucle qui s'éxécute de 1 à 1000
        for _ in 1..<(nombre_d_occurences + 1){
            
            //Ici, le quotient du nombre_entier_naturel sous_forme_de_Double par rapport à la _éme itération de x est calculé, on fait la somme entre la _éme itération de x et le résultat de ce quotient, puis on divise le tous par 2.0
            x = (x + (nombre_entier_naturel_sous_forme_de_Double / x)) / 2.0
            
        }
        
        //Le résultat final de la fonction est retourné
        return x
    }
}
