//
//  HashFind.m
//  text
//
//  Created by zzy on 2022/4/13.
//  Copyright © 2022 Yeoman. All rights reserved.
//

#import "HashFind.h"

@implementation HashFind

char findFirstChar(char* cha){
    
    char result = '\0';
    
    //定义一个数组，用来存储各个字母出现的次数
    int array[256];
    
    //对数组进行初始化操作
    for(int i = 0; i < 256 ; i++){
        array[i] = 0;
    }
    //定义一个指针 指向当前字符串头部
    char*p = cha;
    
    // 遍历每个字符
    while (*p != '\0'){
        // 在字母对应存储位置，进行出现次数+1操作
        // array['a'] = array['a'] + 1
        array[*p]++;
        p++;
    }
    
    // 将p指针重新指向字符串头部
    p = cha;
    
    // 遍历每个字母出现的次数
    while(*p != '\0'){
        // 遇到第一个出现次数为1的字符 打印结果
        if (array[*p] == 1){
            result = *p;
            break;
        }
        
        // 反之继续向后遍历
        p++;
    }
    
    
    return  result;
}

@end
