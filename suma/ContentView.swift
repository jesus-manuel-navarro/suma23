//
//  ContentView.swift
//  suma
//
//  Created by Jesus on 22/3/24.
//

import SwiftUI

struct ContentView: View {
    
   @State var numero1 = ""
   @State var numero2 = ""
    @State var resultado = 0
    var body: some View {
        VStack {
            TextField("numero 1", text: $numero1)
        }
        VStack {
            TextField("numero 1", text: $numero2)
        }
        Button("suma"){
            sumanumeros() }
        Text("@resultdo: \(resultado)")
        
    }
    func sumanumeros() {
guard let num1 = Int(numero1), let num2 = Int(numero2) else (return)
            resultado = num1 + num2
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
