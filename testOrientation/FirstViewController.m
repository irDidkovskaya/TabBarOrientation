//
//  FirstViewController.m
//  testOrientation
//
//  Created by Irina Didkovskaya on 7/18/13.
//  Copyright (c) 2013 test. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
        self.tabBarController.delegate = self;
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tabBarController.delegate = self;
//    if (UIDeviceOrientationIsLandscape([UIDevice currentDevice].orientation))
//    {
//        // code for landscape orientation
//        // OR
//        [[UIDevice currentDevice] setOrientation:UIInterfaceOrientationLandscapeRight];
//        //  OR
//        [[UIDevice currentDevice] setOrientation:UIInterfaceOrientationLandscapeLeft];
//        
//    }
//    else if (UIDeviceOrientationIsPortrait([UIDevice currentDevice].orientation))
//    {
//        // code for Portrait orientation
//        //  OR
//        [[UIDevice currentDevice] setOrientation:UIInterfaceOrientationPortraitUpsideDown];
//        //  OR
//        [[UIDevice currentDevice] setOrientation:UIInterfaceOrientationPortrait];
//    }
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)willRotateToOrientation:(UIInterfaceOrientation)newOrientation {
    if (UIDeviceOrientationIsLandscape([UIDevice currentDevice].orientation))
    {
        if (newOrientation == UIInterfaceOrientationLandscapeLeft || newOrientation == UIInterfaceOrientationLandscapeRight) {
            
            //set your landscap View Frame
            [self supportedInterfaceOrientations];
            
        }
        
        
        
    }
    else if (UIDeviceOrientationIsPortrait([UIDevice currentDevice].orientation))
    {
        if(newOrientation == UIInterfaceOrientationPortrait || newOrientation == UIInterfaceOrientationPortraitUpsideDown){
            //set your Potrait View Frame
            [self supportedInterfaceOrientations];
            
        }
    }
    // Handle rotation
}


-(void)viewWillAppear:(BOOL)animated
{
//    [self willRotateToOrientation:[[UIDevice currentDevice] orientation]];
    [super viewWillAppear:YES];
    
    if (self.interfaceOrientation != UIInterfaceOrientationPortrait) {
//        [[UIDevice currentDevice] performToSelector:NSSelectorFromString(@"setOrientation:") withObject:(id)UIInterfaceOrientationPortrait];
//        
//
//       [[UIDevice currentDevice] performSelector:NSSelectorFromString(@"setOrientation:") withObject:(__bridge id)((void*)UIInterfaceOrientationLandscapeLeft)];
//        UIViewController *mVC = [[UIViewController alloc] init];
//        [self presentViewController:mVC animated:NO completion:nil];
//        [self dismissViewControllerAnimated:NO completion:nil];
    }
    
    
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
