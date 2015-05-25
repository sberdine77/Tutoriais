//
//  ViewController.m
//  saveInParse
//
//  Created by Sávio Xavier on 5/20/15.
//  Copyright (c) 2015 Sávio Xavier. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *personName;
@property (weak, nonatomic) IBOutlet UIButton *Enter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)enterPress:(id)sender {
    PFObject *name = [PFObject objectWithClassName:@"Person"];
    name[@"Name"] = _personName.text;
    [name saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (succeeded) {
            NSLog(@"succeeded");
        }
        else{
            NSLog(@"problem");
        }
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
