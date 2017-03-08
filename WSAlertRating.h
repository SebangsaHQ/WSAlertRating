//
//  WSAlertRating.h
//  alertViewRating
//
//  Created by Wisnu Sanjaya on 3/2/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StarsView.h"

@interface WSAlertRating : UIAlertController

@property (nonatomic, retain) StarsView *starsView;
@property (nonatomic, retain) NSArray   *arrayButton;
@property (nonatomic, retain) NSString  *ratingScore;


- (instancetype)initAlertControllerWithTitle:(NSString *)title message:(NSString *)message;

@end
