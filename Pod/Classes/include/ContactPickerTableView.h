//
//  ContactPickerTableView.h
//  AUContactPicker
//
//  Created by Hennadii Oleynik on 11/4/15.
//  Copyright © 2015 Hennadii Oleynik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipient.h"

@interface ContactPickerTableView : UITableView
-(void)showContactViewController;
-(BOOL)addRecipient:(Recipient *)recipient;
-(NSMutableArray *)recipients;
@end
