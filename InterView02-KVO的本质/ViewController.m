//
//  ViewController.m
//  InterView02-KVO的本质
//
//  Created by 琦魏 on 2020/12/27.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/runtime.h>
struct wq_objc_class {
    Class isa;

};

@interface ViewController ()
@property (nonatomic, strong) Person *person1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _person1 = [[Person alloc] init];
    Class personClass = [Person class];
    struct wq_objc_class *classObject = (__bridge struct wq_objc_class *)personClass;
    //获取元类对象
    Class personMetaClass = object_getClass([Person class]);
    
    
    
    _person1.height = 10;

    [_person1 addObserver:self forKeyPath:@"height" options:NSKeyValueObservingOptionNew context:NULL];
    
    
    
    
    // Do any additional setup after loading the view.
}

- (void)touchesBeganWithEvent:(NSEvent *)event {
    self.person1.height = 30;
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"keypath:%@ object:%@,change:%@,context:%@",keyPath,object,change,context);
}


@end
