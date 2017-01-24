//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

// Para operações assíncronas, o playground necessita de execução por tempo indeterminado
PlaygroundPage.current.needsIndefiniteExecution = true;

class Error {
    var message: String?
}

class ServiceClient {
    static func getData(success: @escaping (_ dataLoaded: [Any]) -> Void, failure: @escaping (_ error: Error) -> Void) {
        print("Iniciando carregamento dos dados");
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let date = NSDate();
            let calendar = NSCalendar.current;
            let seconds = calendar.component(.second, from: date as Date);
            
            // Número par
            if (seconds % 2 == 0) {
                success([1, 2, 3, 4]);
            }
            else {
                let error = Error();
                error.message = "A operação não pode ser executada agora, tente novamente mais tarde";
                failure(error);
            }
        }
    }
}

func operationSuccess(dataLoaded: [Any]) {
    print(dataLoaded);
}

func operationFailure(error: Error) {
    print(error.message!);
}

ServiceClient.getData(success: operationSuccess, failure: operationFailure);