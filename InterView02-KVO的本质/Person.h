//
//  Person.h
//  InterView02-KVO的本质
//
//  Created by 琦魏 on 2020/12/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Cat : NSObject
@property (nonatomic, assign) int weight;

@end

@interface Person : NSObject
//身高
@property (nonatomic, assign) int height;
@property (nonatomic, strong) Cat *cat;

@end

NS_ASSUME_NONNULL_END
