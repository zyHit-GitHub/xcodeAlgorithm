//
//  ReverseList.m
//  text
//
//  Created by zzy on 2022/4/14.
//  Copyright © 2022 Yeoman. All rights reserved.
//

#import "ReverseList.h"

@implementation ReverseList

//链表反转
//返回新的链表头节点
struct Node* reverseList(struct Node *head){
    // 定义遍历指针，初始化为头部节点
    struct Node *p = head;
    
    // 反转后的链表头部
    struct Node *newH = NULL;
    
    if (head == NULL || head -> next == NULL) {
        return head;
    }
    
    // 遍历链表 p为null 说明链表遍历完成
    while (p != NULL) {
        //记录下一个节点,防止原来的链表丢失
        struct Node *temp = p->next;
        
        //当前节点的next指向新链表的头部
        p->next = newH;
        
        //更改新链表头部为当前节点
        newH = p;
        
        //移动p指针
        p = temp;
    }
    // 返回反转后的链表头部节点
    return newH;
}

//构造一个链表
struct Node* constructList(void){
    
    struct Node *head = NULL;
    
    //记录当前尾节点
    struct Node *cur = NULL;
    
    // 创建一个链表
    for (int i = 1; i < 5; i++) {
        // c语言分配链表节点空间
        struct Node *node = malloc(sizeof(struct Node));
        // 数据位指定为i
        node -> data = i;
        // 头结点为空
        if (head == NULL) {
            //新节点为头节点
            head = node;
        }else{
            //当前节点的next为新节点
            cur -> next = node;
        }
        
        // 设置当前节点为新节点
        cur = node;
    }
    return  head;
}


//打印链表中的数据
void printList(struct Node *head){
    struct Node *temp = head;
    while (temp != NULL) {
        printf("node is %d \n",temp->data);
        temp = temp->next;
    }
}




@end
