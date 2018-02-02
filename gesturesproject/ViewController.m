//
//  ViewController.m
//  gesturesproject
//
//  Created by Felix-ITS 004 on 31/10/17.
//  Copyright © 2017 sonal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *doubletap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(doubletapped)];
    [self.view addGestureRecognizer:doubletap];
    
    
    UITapGestureRecognizer *singletap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(singletapped)];
    [self.view addGestureRecognizer:singletap];
    
    UISwipeGestureRecognizer *rightswipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(rightswiped)];
    [rightswipe setDirection:UISwipeGestureRecognizerDirectionRight];
    [self.view addGestureRecognizer:rightswipe];
    
    
    UISwipeGestureRecognizer *leftSwipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(leftswiped)];
    [leftSwipe setDirection:UISwipeGestureRecognizerDirectionLeft];
    [self.view addGestureRecognizer:leftSwipe];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)singletapped
{
    self.view.backgroundColor=[UIColor yellowColor];
    NSLog(@"ONE");
}
-(void)doubletapped
{
    self.view.backgroundColor=[UIColor greenColor];
}
-(void)rightswiped
{
    self.view.backgroundColor=[UIColor redColor];
    NSLog(@"TWO");
}
-(void)leftswiped
{
    self.view.backgroundColor=[UIColor orangeColor];
    NSLog(@"THREE");
}




@end
