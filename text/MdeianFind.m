//
//  MdeianFind.m
//  text
//
//  Created by zzy on 2022/4/13.
//  Copyright © 2022 Yeoman. All rights reserved.
//

#import "MdeianFind.h"

@implementation MdeianFind

// 快速排序
int PartSort(int a[], int start, int end){
    int low = start;
    int high = end;
    
    // 选取结尾位置作为关键字
    int key = a[end];
    
    while (low < high) {
        
        // 左边找比key大的值
        while (low < high && a[low] <= key) {
            ++low;
        }
        
        //右边找比key小的值
        while (low < high && a[high] >= key) {
            --high;
        }
        
        
        if (low < high) {
            // 找到之后交换左右的值
            int temp = a[low];
            a[low] = a[high];
            a[high] = temp;
        }
        
    }
    
    // high指针所指元素和结尾元素进行交换
    int temp = a[high];
    a[high] = a[end];
    a[end] = temp;
    
    
    // 返回关键字的位置
    return low;
    
    
}



int findMedian(int a[], int aLen){
    
    int low = 0;
    int high = aLen - 1;
    
    
    int mid = (aLen - 1)/2;
    
    // 已关键字为中心 将数组分为两个部分
    int div = PartSort(a, low, high);
    
    while (div != mid) {
        
        if (mid < div) {
            //在左半区间进行查找 
            div = PartSort(a, low, div - 1);
        }else{
            //在右半区间进行查找
            div = PartSort(a, div + 1, high);
        }
    }
    
    return  a[mid];
}






@end
