//
//  Recipient.h
//  AUContactPicker
//
//  Created by Hennadii Oleynik on 11/3/15.
//  Copyright © 2015 Hennadii Oleynik. All rights reserved.
//

#import <Foundation/Foundation.h>
@import Contacts;
@interface Recipient : NSObject
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString  *phoneNumber;

-(instancetype)initWithCNContactProperty:(CNContactProperty *)contact;

@end
