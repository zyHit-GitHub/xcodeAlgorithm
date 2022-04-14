//
//  ViewController.m
//  text
//
//  Created by zzy on 2017/3/25.
//  Copyright © 2017年 Yeoman. All rights reserved.
//

#import "ViewController.h"

#import "HashFind.h"
#import "MdeianFind.h"
#import "CharReverse.h"
#import "ReverseList.h"
#import "MergeSortedList.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
#pragma mark - 字符反转
    // 定义一个字符串数组
//    char ch[] = "hello,world";
//    char_reverse(ch);
//    printf("reverse result is %s \n",ch);
    
#pragma mark - 链表反转
    // 初始化一个链表
    struct Node* head = constructList();
    // 输出链表
    printList(head);
    printf("-------\n");
    // 链表反转
    struct Node *newHead = reverseList(head);
    // 输出链表
    printList(newHead);
    
#pragma mark - 有序数组合并
//    int a[5] = {1,3,5,6,7};
//    int b[7] = {2,3,4,5,6,7,8};
//    int result[12];
//
//    mergeList(a, 5, b, 7, result);
//
//    printf("result is ");
//    for (int i = 0; i < 12; i ++ ) {
//        printf("%d",result[i]);
//    }
//

#pragma mark - 通过快排找无序数组的中位数
//    int list[9] = {12,2,3,4,10,9,5,6,11};
//    int median = findMedian(list, 9);
//    printf("median is %d \n", median);
    
    
#pragma mark - 使用hash算法找到字符串中第一个只出现一次的字符
//    char cha[] = "aabbccdegt";
//    char fc = findFirstChar(cha);
//    printf("this char is %c \n",fc);
    
    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
