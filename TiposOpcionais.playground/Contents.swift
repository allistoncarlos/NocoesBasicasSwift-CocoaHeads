//: Playground - noun: a place where people can play

import UIKit

class MeuObjeto {
    var variavel: String?;
}

var objeto: MeuObjeto? = nil;

// Erro de compilação
//print(objeto.variavel);

// Erro em tempo de execução
//print(objeto!.variavel)

print(objeto?.variavel)

if (objeto != nil) {
    print (objeto?.variavel);
}
else {
    print("nil");
}

objeto = MeuObjeto()
objeto?.variavel = "Teste";

if let objetoComValor = objeto {
    print(objetoComValor);
    print(objetoComValor.variavel!);
}