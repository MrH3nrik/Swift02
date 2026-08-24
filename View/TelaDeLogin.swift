//
//  TelaDeLogin.swift
//  Swift02
//
//  Created by HENRIQUE NASCIMENTO LOPES on 24/08/26.
//

import SwiftUI

struct TelaDeLogin: View {
    
    @State
    private var nomeUsuario: String = ""
    
    var body: some View {
        Text("Bem-vindo, \(nomeUsuario)").font(.title)
        
        TextField("Digite seu nome", text: $nomeUsuario)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .font(.custom("Calibri", size: 22))
            .frame(width: 100, height: 100)
            .foregroundColor(Color.red)
        
        Button("Limpar"){
            nomeUsuario = ""
        }
        .frame(width: 100, height: 40)
        .background(Color.black)
        .cornerRadius(10)
        .bold()
        .font(.custom("Arial", size: 16))
        .foregroundColor(Color.white)
    }
}

#Preview {
    TelaDeLogin()
}
