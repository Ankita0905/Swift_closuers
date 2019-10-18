//
//  main.swift
//  Swift_closuers
//
//  Created by MacStudent on 2019-10-18.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

let divide={
    (val1:Int, val2:Int)->Int in
    return val1/val2
}

let result=divide(10,2)
print(result)


// second expression example

let concats={
    (s1:String,s2:String)-> String in
    let val=String(format: "%@ %@", s1,s2)
    //return "\(s1) \(s2)"
    return val
}
let myFunc:(String,String)->String
myFunc=concats
let finalResult=myFunc("hello", "ankita")
print(finalResult)

//single expression Implisit

var myArray:[Int]=[5,6,3,4,8]

let sum=myArray.map { (x) -> Int in
    return x+1
}
print(sum)

let desc=myArray.sorted { (n1, n2) -> Bool in
    return n1>n2
}

print(desc)

//acsending order of string
var mAr:[String]=["v","d","a","r"]

let desc1=mAr.sorted { (a1, a2) -> Bool in
    return a1<a2
}

print(desc1)
