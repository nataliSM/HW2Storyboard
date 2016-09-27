//
//  ShowViewController.m
//  HWStoryboard
//
//  Created by Наталья on 26.09.16.
//  Copyright © 2016 com.ildar.itis. All rights reserved.
//

#import "ShowViewController.h"

@interface ShowViewController ()
@property (weak, nonatomic) IBOutlet UIButton *showButton;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton
;


@end

@implementation ShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cancelButton.hidden = YES;
    
    if (![self isEqual:self.navigationController.viewControllers.firstObject])
    {
        self.showButton.hidden = YES;
        self.cancelButton.hidden = NO;
        
        
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)cancelButtonDidClicked:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
