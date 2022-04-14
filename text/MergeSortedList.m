//
//  MergeSortedList.m
//  text
//
//  Created by zzy on 2022/4/14.
//  Copyright © 2022 Yeoman. All rights reserved.
//

#import "MergeSortedList.h"

@implementation MergeSortedList

void mergeList(int a[], int aLen, int b[], int bLen, int result[]){
    
    int p = 0; // 遍历数组a的指针
    int q = 0; // 遍历数组b的指针
    int i = 0; // 记录当前存储的位置
    
    while (p < aLen && q < bLen) {
        //
        if (a[p] <= b[q]) {
            //存储a数组的值
            result[i] = a[p];
            //移动指针
            p++;
        }else{
            //存储b数组的值
            result[i] = b[q];
            //移动指针
            q++;
        }
        // 指向合并结果的下一个存储位置
        i++;
        
    }
    
    // 如果a数组有剩余
    while (p < aLen) {
        // 将a数组剩余的部分拼接合并到结果后面
        result[i] = a[p];
        p++;
        i++;
    }
    // 如果b数组有剩余
    while (q < bLen) {
        // 将b数组剩余的部分拼接合并到结果后面
        result[i] = b[q];
        q++;
        i++;
    }
    
    
}

@end
