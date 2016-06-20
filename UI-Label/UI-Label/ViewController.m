//
//  ViewController.m
//  UI-Label
//
//  Created by qingyun on 16/4/26.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(strong,nonatomic)NSTimer *timer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(180, 150, 180, 60)];
    [self.view addSubview:label];
    label.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:0.6];
    label.text = @"想要来几发吗???";
    label.textColor = [UIColor blueColor];
    label.shadowColor = [UIColor blackColor];
    label.shadowOffset = CGSizeMake(-2, -8);
    label.textAlignment = NSTextAlignmentCenter;
    label.highlightedTextColor = [UIColor yellowColor];
    label.adjustsFontSizeToFitWidth = YES;
    _timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(changedHigh:) userInfo:label repeats:YES];
    
    
    [UIView animateWithDuration:1 delay:0 usingSpringWithDamping:0.1 initialSpringVelocity:30 options:UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
        label.frame = CGRectMake(90, 200, 180, 60);
    } completion:nil];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)changedHigh:(NSTimer *)timer
{
    [_timer invalidate];
    _timer=nil;
//    UILabel *label = timer.userInfo;
//    label.highlighted = !label.highlighted;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
