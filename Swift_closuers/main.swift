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

var mAr:[String]=["v","d","a","r"]

let desc1=mAr.sorted { (a1, a2) -> Bool in
    return a1<a2
}

print(desc1)

var myArray:[Int]=[5,6,3,4,8]

let sum=myArray.map { (x) -> Int in
    return x+1
}
print(sum)

let add={
    (m1:Int,m2:Int)->Bool in
    return m1<m2
}

var desc=myArray.sorted { (n1, n2) -> Bool in
    return n1>n2
}

print(desc)

desc=myArray.sorted(by: add)
print(desc)

desc=myArray.sorted { (n1, n2) in
    return n1>n2
}

print(desc)

desc=myArray.sorted (by:>)

print(desc)


// Escaping

func call(completion:@escaping (_:Bool)->Void)
{
    sleep(3)
    completion(false)
}

print("Start")
call{
    (flag) in
    print("inside block", flag)
}
print("End")

//func moreSum(a:Int,b:Int,sumFunc:@escaping (_:Int)->Void)
//{
//    sumFunc(a+b)
//}

func moreSum(sumFunc:@escaping (_:Int)->Void)
{
    for x in 1...10
    {
    sumFunc(x)
        sleep(2)
    }
}
moreSum{(y) in
    print(y)
}
