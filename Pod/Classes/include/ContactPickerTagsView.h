//
//  ContactPickerTagsView.h
//  AUContactPicker
//
//  Created by Hennadii Oleynik on 11/5/15.
//  Copyright © 2015 Hennadii Oleynik. All rights reserved.
//

#import "TLTagsControl.h"
#import "Recipient.h"

@interface ContactPickerTagsView : TLTagsControl

-(void)showContactViewController;
-(NSMutableArray *)recipients;
-(void)addRecipient:(Recipient *)recipient;
-(id)initWithFrame:(CGRect)frame andTags:(NSArray *)tags withTagsControlMode:(TLTagsControlMode)mode;

@end
