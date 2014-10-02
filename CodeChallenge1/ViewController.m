//
//  ViewController.m
//  CodeChallenge1
//
//  Created by GLBMXM0002 on 10/2/14.
//  Copyright (c) 2014 GLBMXM0002. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtField1;
@property (weak, nonatomic) IBOutlet UITextField *txtField2;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButton;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.barButton.enabled = false;
    self.navigationController.title = @"No results";
}

- (IBAction)onPressed:(id)sender {
    NSLog(@"Text field 1: %@", self.txtField1.text);
    NSLog(@"Text field 2: %@", self.txtField2.text);
    double d1 = [self.txtField1.text doubleValue];
    double d2 = [self.txtField2.text doubleValue];
    double result = d1 * d2;
    NSLog(@"Result: %f", result);
    
    if (fmod(result,5) == 0) {
        NSLog(@"Result is multiple of 5 %f", result);
        self.barButton.enabled = true;
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end