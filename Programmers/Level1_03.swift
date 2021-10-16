//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/10/05.
//

import Foundation


func solution(_ numbers:[Int], _ hand:String) -> String {
    
    var x_left = 3
    var y_left = 0
    var x_right = 3
    var y_right = 2
    var result : String = ""
    
    func abs(_ x_hand : Int, _ x_key : Int , _ y_hand : Int , _ y_key : Int) -> Int{
        var temp = 0
        if(x_hand - x_key < 0){
            temp += -(x_hand - x_key)
        } else{
            temp += x_hand - x_key
        }
        if(y_hand - y_key < 0){
            temp += -(y_hand - y_key)
        } else{
            temp += (y_hand - y_key)
        }
        return temp
    }
    
    for i in numbers {
        if(i==1){
            result+="L"
            x_left = 0
            y_left = 0
        } else if(i==4){
            result+="L"
            x_left = 1
            y_left = 0
        } else if(i==7){
            result+="L"
            x_left = 2
            y_left = 0
        } else if(i==3){
            result+="R"
            x_right = 0
            y_right = 2
        } else if(i==6){
            result+="R"
            x_right = 1
            y_right = 2
        } else if(i==9){
            result+="R"
            x_right = 2
            y_right = 2
        } else if(i==2){
            if(abs(x_left, 0, y_left, 1)<abs(x_right, 0, y_right, 1)){
                result+="L"
                x_left = 0
                y_left = 1
            }else if(abs(x_left, 0, y_left, 1)>abs(x_right, 0, y_right, 1)){
                result+="R"
                x_right = 0
                y_right = 1
            } else if(abs(x_left, 0, y_left, 1)==abs(x_right, 0, y_right, 1)){
                if(hand=="left"){
                    result+="L"
                    x_left = 0
                    y_left = 1
                } else{
                    result+="R"
                    x_right = 0
                    y_right = 1
                }
            }
        } else if(i==5){
            if(abs(x_left, 1, y_left, 1)<abs(x_right, 1, y_right, 1)){
                result+="L"
                x_left = 1
                y_left = 1
            }else if(abs(x_left, 1, y_left, 1)>abs(x_right, 1, y_right, 1)){
                result+="R"
                x_right = 1
                y_right = 1
            } else if(abs(x_left, 1, y_left, 1)==abs(x_right, 1, y_right, 1)){
                if(hand=="left"){
                    result+="L"
                    x_left = 1
                    y_left = 1
                } else{
                    result+="R"
                    x_right = 1
                    y_right = 1
                }
            }
        } else if(i==8){
            if(abs(x_left, 2, y_left, 1)<abs(x_right, 2, y_right, 1)){
                result+="L"
                x_left = 2
                y_left = 1
            }else if(abs(x_left, 2, y_left, 1)>abs(x_right, 2, y_right, 1)){
                result+="R"
                x_right = 2
                y_right = 1
            } else if(abs(x_left, 2, y_left, 1)==abs(x_right, 2, y_right, 1)){
                if(hand=="left"){
                    result+="L"
                    x_left = 2
                    y_left = 1
                } else{
                    result+="R"
                    x_right = 2
                    y_right = 1
                }
            }
        }else if(i==0){
            if(abs(x_left, 3, y_left, 1)<abs(x_right, 3, y_right, 1)){
                result+="L"
                x_left = 3
                y_left = 1
            }else if(abs(x_left, 3, y_left, 1)>abs(x_right, 3, y_right, 1)){
                result+="R"
                x_right = 3
                y_right = 1
            } else if(abs(x_left, 3, y_left, 1)==abs(x_right, 3, y_right, 1)){
                if(hand=="left"){
                    result+="L"
                    x_left = 3
                    y_left = 1
                } else{
                    result+="R"
                    x_right = 3
                    y_right = 1
                }
            }
        }
    }
    
    
    return result
}

