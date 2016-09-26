//
//  ViewController.m
//  HWStoryboard
//
//  Created by Ildar Zalyalov on 24.09.16.
//  Copyright © 2016 com.ildar.itis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSArray* wordsArr;
@property (strong, nonatomic) NSArray* colorsArr;
@property (strong, nonatomic) UILabel *firstLabel;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;


@property (weak, nonatomic) IBOutlet UIButton *changeButton;

@end

@implementation ViewController

#pragma mark - View Cycle 

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([self isEqual: self.navigationController.viewControllers.firstObject])
    {
        self.firstLabel = [UILabel new];
        self.firstLabel.text = @"This is first view controller";
        [self.firstLabel sizeToFit];
        self.firstLabel.center = self.view.center;
        [self.view  addSubview:_firstLabel];
    }
    
    self.wordsArr = @[@"hellYeah", @"bad", @"Goood", @"This is nice", @"Hi"];
    self.colorsArr = @[[UIColor grayColor],[UIColor cyanColor],[UIColor yellowColor],[UIColor magentaColor],[UIColor blueColor]];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    NSInteger randomValue = arc4random_uniform(self.colorsArr.count);
    self.view.backgroundColor = self.colorsArr[randomValue];
    NSInteger buttonRandomColour = arc4random_uniform(self.colorsArr.count);
    self.changeButton.backgroundColor = self.colorsArr[buttonRandomColour];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
  NSInteger randomValue = arc4random_uniform(self.wordsArr.count);
    [self.changeButton setTitle:self.wordsArr[randomValue] forState:UIControlStateNormal];
    [_changeButton sizeToFit];
}

#pragma mark - Actions
- (IBAction)cancelButton:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
