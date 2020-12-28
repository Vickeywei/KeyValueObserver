//
//  Person.m
//  InterView02-KVO的本质
//
//  Created by 琦魏 on 2020/12/27.
//

#import "Person.h"

@implementation Person
- (void)setHeight:(int)height {
    _height = height;
}


- (void)willChangeValueForKey:(NSString *)key {
    [super willChangeValueForKey:key];
}

- (void)didChangeValueForKey:(NSString *)key {
    [super didChangeValueForKey:key];
}

+ (BOOL)automaticallyNotifiesObserversOfHeight {
    return  NO;
}
@end
