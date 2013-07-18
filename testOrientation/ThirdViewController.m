//
//  ThirdViewController.m
//  testOrientation
//
//  Created by Irina Didkovskaya on 7/18/13.
//  Copyright (c) 2013 test. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Third", @"Third");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
        self.tabBarController.delegate = self;
//        [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
//        [[NSNotificationCenter defaultCenter] addObserver:self
//                               selector:@selector(deviceOrientationDidChange)
//                                   name:UIDeviceOrientationDidChangeNotification object:nil];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"THIRD VIEW";
    
    
    
    
    
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
//    UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"ff" message:@"ff" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//    self.tabBarController.delegate = self;
//    
//    [av show];
//    [UIApplication sharedApplication].statusBarOrientation = UIInterfaceOrientationPortrait;
    
    
//    UIViewController *vc = [[UIViewController alloc] init];
//    [self presentViewController:vc animated:NO completion:^{
//        
//    }];
//    [vc dismissViewControllerAnimated:NO completion:nil];
    
//    self.view.transform = CGAffineTransformIdentity;
//    self.view.transform = CGAffineTransformMakeRotation(90.0*0.0174532925);
//    self.view.bounds = CGRectMake(0.0f, 0.0f, 480.0f, 320.0f);
//    self.view.center = CGPointMake(160.0f, 240.0f);
    
    
//    [[UIApplication sharedApplication] setStatusBarOrientation:UIDeviceOrientationPortrait animated:NO];
//    //present/dismiss viewcontroller in order to activate rotating.
//    UIViewController *mVC = [[UIViewController alloc] init];
//    [self presentViewController:mVC animated:NO completion:nil];
//    [self dismissViewControllerAnimated:NO completion:nil];
    
//    [self switchToPortraitView];
//    UIViewController *mVC = [[UIViewController alloc] init];
//    [self presentViewController:mVC animated:NO completion:nil];
//    [self dismissViewControllerAnimated:NO completion:nil];
}

- (void) switchToPortraitView{
    if(self.tabBarController.selectedIndex!=0){
        return;
    }
    self.navigationController.navigationBarHidden=YES;
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate
{
    if (self.interfaceOrientation==UIInterfaceOrientationPortrait || self.interfaceOrientation==UIInterfaceOrientationPortraitUpsideDown)
    {
        return YES;
        
    } else {
        return YES;
    }
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

//- (void)deviceOrientationDidChange
//{
//    UIViewController *mVC = [[UIViewController alloc] init];
//    [self presentViewController:mVC animated:NO completion:nil];
//    [self dismissViewControllerAnimated:NO completion:nil];
//}

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
