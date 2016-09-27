//
//  AfterShowViewController.m
//  HWStoryboard
//
//  Created by Наталья on 26.09.16.
//  Copyright © 2016 com.ildar.itis. All rights reserved.
//

#import "AfterShowViewController.h"

@interface AfterShowViewController ()

@property (weak, nonatomic) IBOutlet UIButton *cancelButton;

@end

@implementation AfterShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelButton:(id)sender{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
