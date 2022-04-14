//
//  CharReverse.m
//  text
//
//  Created by zzy on 2022/4/14.
//  Copyright © 2022 Yeoman. All rights reserved.
//

#import "CharReverse.h"

@implementation CharReverse

void char_reverse(char* cha){
    
    //声明一个字符类型的指针 指向第一个字符
    char* begin = cha;
    
    //指向最后一个字符
    char* end = cha + strlen(cha) - 1;
    
    while (begin < end) {
        //定义一个中间变量
        char temp = *begin;
        //将最后一个字符赋值给第一个字符
        *begin = *end;
        //第一个字符的指针向后移动一位
        begin++;
        //将中间变量赋值给最后一个字符
        *end = temp;
        //最后一个字符的指针向前移动一位
        end--;
    }
    
}

@end
