//
//  AppusExampleTagsViewController.m
//  AppusContactPicker
//
//  Created by Hennadii Oleynik on 11/25/15.
//  Copyright © 2015 Hennadij. All rights reserved.
//

#import "AppusExampleTagsViewController.h"
#import "ContactPickerTagsView.h"
#import "Recipient.h"
#import "TagViewStyle.h"


@interface AppusExampleTagsViewController ()

@property (weak, nonatomic) IBOutlet ContactPickerTagsView *contactPickerTagsView;

@end

@implementation AppusExampleTagsViewController

-(void)viewDidLoad {
    
    TagViewStyle *style = [[TagViewStyle alloc] init];
    style.borderColor = [UIColor grayColor];
    style.backgroundColor = [UIColor clearColor];
    style.textColor = [UIColor blackColor];
    style.deleteColor = [UIColor redColor];
    self.contactPickerTagsView.tagViewStyle = style;
    
    Recipient *recipient = [[Recipient alloc] init];
    recipient.phoneNumber = @"555-44-550";
    
    [self.contactPickerTagsView addRecipient:recipient];
}

- (IBAction)showContactPicker:(UIButton *)sender {
    
    [self.contactPickerTagsView showContactViewController];
}

- (IBAction)printDatasource:(UIButton *)sender {
    
    NSLog(@"%@", self.contactPickerTagsView.recipients);
}

@end
