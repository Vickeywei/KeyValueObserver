//
//  ViewController.m
//  InterView02-kvo
//
//  Created by 琦魏 on 2020/12/27.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()
@property (nonatomic, strong) Person *person2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _person2 = [[Person alloc] init];
    _person2.height = 10;
    NSLog(@"%@",_person2.class);
    
    [_person2 addObserver:self forKeyPath:@"height" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:NULL];
    NSLog(@"%@",_person2.class);
}

- (void)dealloc {
    [_person2 removeObserver:self forKeyPath:@"height"];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.person2.height = 30;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"keypath:%@ object:%@,change:%@,context:%@",keyPath,object,change,context);
}

@end
