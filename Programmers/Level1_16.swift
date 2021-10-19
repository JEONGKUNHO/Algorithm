//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/19.
 //

func solution(_ s:String) -> String {
    
    if(s.count%2==1){
        return String(s[s.index(s.startIndex, offsetBy: s.count/2)])
    }
    else if(s.count%2==0){
        return String(s[s.index(s.startIndex, offsetBy: s.count/2-1)]) + String(s[s.index(s.startIndex, offsetBy: s.count/2)])
    }
    return " "
}
