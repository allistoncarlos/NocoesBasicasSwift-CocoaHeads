//: Playground - noun: a place where people can play

import UIKit

var resultMillisecond: Int?

func setTimer(withMilliseconds milliseconds: Int) {
    resultMillisecond = milliseconds;
}

setTimer(withMilliseconds: 0);

func setMilliseconds(_ milliseconds: Int) {
    resultMillisecond = milliseconds;
}

setMilliseconds(1);

resultMillisecond