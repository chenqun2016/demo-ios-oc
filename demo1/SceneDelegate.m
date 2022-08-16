//
//  SceneDelegate.m
//  demo1
//
//  Created by 龙傲天 on 2022/8/12.
//

#import "SceneDelegate.h"
#import "ViewController.h"
#import "ViewController2.h"
#import "GTVideoViewController.h"

@interface SceneDelegate ()<UITabBarControllerDelegate>

@end

@implementation SceneDelegate

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    NSLog(@"didSelectViewController");
}


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    UIWindowScene *windowScene = (UIWindowScene *)scene;
       self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
       self.window.frame = windowScene.coordinateSpace.bounds;
       
       UITabBarController *tabbarController = [[UITabBarController alloc] init];
    tabbarController.delegate = self;
    tabbarController.view.backgroundColor = [UIColor whiteColor];
    
    ViewController *viewController = [[ViewController alloc] init];
    viewController.view.backgroundColor = [UIColor redColor];
    viewController.tabBarItem.title = @"新闻";
    viewController.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/page@2x.png"];
    viewController.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/page_selected@2x.png"];

       ViewController2 *controller2 = [[ViewController2 alloc] init];
       controller2.view.backgroundColor = [UIColor yellowColor];
       controller2.tabBarItem.title = @"视频";
    controller2.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/video@2x.png"];
    controller2.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/video_selected@2x.png"];
    
    GTVideoViewController *controller3 = [[GTVideoViewController alloc] init];
            
       
       UIViewController *controller4 = [[UIViewController alloc] init];
       controller4.view.backgroundColor = [UIColor greenColor];
       controller4.tabBarItem.title = @"我的";
    controller4.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/home@2x.png"];
    controller4.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/home_selected@2x.png"];
       
       // 将四个页面的 UIViewController 加入到 UITabBarController 之中
       [tabbarController setViewControllers: @[viewController, controller2, controller3, controller4]];
       
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:tabbarController];
    
       self.window.rootViewController = navigationController;
       [self.window makeKeyAndVisible];
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
