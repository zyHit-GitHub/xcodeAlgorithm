//
//  MergeSortedList.h
//  text
//
//  Created by zzy on 2022/4/14.
//  Copyright © 2022 Yeoman. All rights reserved.
//  合并有序数组

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MergeSortedList : NSObject

// 将有序数组a和b的值合并到一个数组result中，且仍然保持有序
void mergeList(int a[], int aLen, int b[], int bLen, int result[]);


@end

NS_ASSUME_NONNULL_END
