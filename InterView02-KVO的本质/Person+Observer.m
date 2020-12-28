//
//  Person+Observer.m
//  InterView02-KVO的本质
//
//  Created by 琦魏 on 2020/12/27.
//

#import "Person+Observer.h"
#import <objc/runtime.h>
#import <objc/message.h>
@interface Person (Observer)

//@property (nonatomic, strong) NSObject *observer;
//

@end

@implementation Person (Observer)
//static char * observer_key = "person_observer_key";
//
//- (void)addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context {
//    self.observer = observer;
//
//    Class NSPerson_KVONotifing = objc_allocateClassPair(self.class, "NSPerson_KVONotifing", 0);
//    NSString *methodName = [NSString stringWithFormat:@"set%@:",[keyPath capitalizedString]];
//    SEL selector = sel_registerName([methodName UTF8String]);
//    objc_registerClassPair(NSPerson_KVONotifing);
//    object_setClass(self, NSPerson_KVONotifing);
//
//    void (^block)(id self,int newValue) = ^(id self,int newValue) {
//
//        Person *p = self;
//        struct objc_super superClass = {self,p.superclass};
//        object_setClass(self, Person.class);
//        id oldVlaue = [p valueForKey:keyPath];
//        [p willChangeValueForKey:keyPath];
//        ((void (*)(void *, SEL, id))objc_msgSendSuper)(&superClass, selector, @(newValue));
//        [p.observer observeValueForKeyPath:keyPath ofObject:self change:@{@"old":oldVlaue,@"new":@(newValue)} context:context];
//        [p didChangeValueForKey:keyPath];
//    };
//
//
//
//    IMP impletion = imp_implementationWithBlock(block);
//
//
//    class_addMethod(NSPerson_KVONotifing, selector, impletion, "v@:i");
//}
//
//
//- (void)setObserver:(NSObject *)observer {
//    objc_setAssociatedObject(self, observer_key, observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//}
//
//- (NSObject *)observer {
//    return objc_getAssociatedObject(self, observer_key);
//}

@end
