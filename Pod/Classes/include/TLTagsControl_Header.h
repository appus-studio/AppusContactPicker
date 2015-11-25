//
//  TLTagsControl_Header.h
//  AUContactPicker
//
//  Created by Hennadii Oleynik on 11/25/15.
//  Copyright © 2015 Hennadii Oleynik. All rights reserved.
//

#ifndef TLTagsControl_Header_h
#define TLTagsControl_Header_h


#endif /* TLTagsControl_Header_h */

@class TLTagsControl;

@protocol TLTagsControlDelegate <NSObject>
@optional
- (void)tagsControl:(TLTagsControl *)tagsControl tappedAtIndex:(NSInteger)index;
@required
- (void)tagsControl:(TLTagsControl *)tagsControl deletedTagAtIndex:(NSInteger)index;
-(BOOL)tagsControl:(TLTagsControl *)tagsControl didAddTag:(Recipient *)tag;

@end

typedef NS_ENUM(NSUInteger, TLTagsControlMode) {
    TLTagsControlModeEdit,
    TLTagsControlModeList,
};
