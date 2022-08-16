//
//  ViewController.m
//  demo1
//
//  Created by 龙傲天 on 2022/8/12.
//

#import "ViewController.h"

@interface TestView :UIView

@end

@implementation TestView

-(instancetype)init{
    self = [super init];
    if(self){}
    return self;
}
- (void)willMoveToSuperview:(nullable UIView *)newSuperview{
    [super willMoveToSuperview:newSuperview];
}
- (void)didMoveToSuperview{
    [super didMoveToSuperview];
}
- (void)willMoveToWindow:(nullable UIWindow *)newWindow{
    [super willMoveToWindow:newWindow];
}
- (void)didMoveToWindow{
    [super didMoveToWindow];
}

@end

@implementation ViewController
-(instancetype)init{
    self = [super init];
    if(self){}
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:({
        UILabel *label = [[UILabel alloc] init];
        label.text = @"你好啊";
        [label sizeToFit];
        label.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        label;
    })];
    
    
    TestView *view2 = [[TestView alloc] init];
    view2.backgroundColor = [UIColor blueColor];
    view2.frame = CGRectMake(50, 50, 100, 110);
    [self.view addSubview:view2];
    
    UITapGestureRecognizer *tapgesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
    [view2 addGestureRecognizer:tapgesture];
}
- (void)pushController{
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    viewController.navigationItem.title = @"内容";
    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"右侧镖旗" style:UIBarButtonItemStylePlain target:self action:nil];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
};
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
};
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
};
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
};


@end
