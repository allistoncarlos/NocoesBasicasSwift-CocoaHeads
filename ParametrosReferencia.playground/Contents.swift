//: Playground - noun: a place where people can play

import UIKit

func tryParse(_ text: String, toInt: inout Int?) -> Bool {
    toInt = Int(text)!;
    
    return true;
}

var parsed: Int?
var result = tryParse("1", toInt: &parsed);

if result {
    debugPrint(parsed!);
}