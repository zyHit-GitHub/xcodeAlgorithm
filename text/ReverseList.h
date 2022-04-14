//
//  ReverseList.h
//  text
//
//  Created by zzy on 2022/4/14.
//  Copyright © 2022 Yeoman. All rights reserved.
//  链表反转

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 定义一个链表
struct Node{
    int data;
    struct Node *next;
};


@interface ReverseList : NSObject

//链表反转
struct Node* reverseList(struct Node *head);

//构造一个链表
struct Node* constructList(void);

//打印链表中的数据
void printList(struct Node *head);


@end

NS_ASSUME_NONNULL_END
