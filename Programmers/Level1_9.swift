//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/12.
 //



import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var p_num = 0
    var y_num = 0
    for i in s{
        if(i.lowercased()=="p"){
        p_num+=1
        } else if(i.lowercased()=="y"){
        y_num+=1
    }
    }
    
    if(p_num==y_num){
       ans = true
    }
    else{
        ans = false
    }
    return ans
}
