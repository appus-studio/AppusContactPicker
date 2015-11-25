//
//  AppusExampleTableViewController.m
//  AppusContactPicker
//
//  Created by Hennadii Oleynik on 11/25/15.
//  Copyright © 2015 Hennadij. All rights reserved.
//

#import "AppusExampleTableViewController.h"
#import "ContactPickerTableView.h"
#import "Recipient.h"

@interface AppusExampleTableViewController ()

@property (weak, nonatomic) IBOutlet ContactPickerTableView *contactPickerTableView;

@end

@implementation AppusExampleTableViewController

-(void)viewDidLoad {
    Recipient *recipient = [[Recipient alloc] init];
    recipient.phoneNumber = @"555-55-55";
    recipient.firstName = @"I don't know you";
    [self.contactPickerTableView addRecipient:recipient];
}

- (IBAction)showContactPicker:(UIButton *)sender {
    
    [self.contactPickerTableView showContactViewController];
}

- (IBAction)printDatasource:(UIButton *)sender {
    
    NSLog(@"%@", self.contactPickerTableView.recipients);
}


@end
