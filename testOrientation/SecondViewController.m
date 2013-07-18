//
//  SecondViewController.m
//  testOrientation
//
//  Created by Irina Didkovskaya on 7/18/13.
//  Copyright (c) 2013 test. All rights reserved.
//

#import "SecondViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
        
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
//    [[UIDevice currentDevice] performSelector:NSSelectorFromString(@"setOrientation:") withObject:(__bridge id)((void*)UIInterfaceOrientationLandscapeLeft)];
    
//    UIViewController *mVC = [[UIViewController alloc] init];
//    [self presentViewController:mVC animated:NO completion:nil];
//    [self dismissViewControllerAnimated:NO completion:nil];
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tabBarController.delegate = self;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate
{
    if (self.interfaceOrientation==UIInterfaceOrientationLandscapeLeft || self.interfaceOrientation==UIInterfaceOrientationLandscapeRight)
    {
        return NO;
        
    } else {
        return YES;
    }
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

- (void)tabBarController:(UITabBarController *)theTabBarController didSelectViewController:(UIViewController *)viewController {
    NSUInteger indexOfTab = [theTabBarController.viewControllers indexOfObject:viewController];
    NSLog(@"Tab index = %u ", indexOfTab);
    
    UIViewController *mVC = [[UIViewController alloc] init];
    mVC.view.backgroundColor = [UIColor redColor];
    mVC.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentViewController:mVC animated:NO completion:nil];
    [self dismissViewControllerAnimated:NO completion:nil];
    
    
}



@end
