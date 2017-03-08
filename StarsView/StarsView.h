//
//  StarsView.h
//  alertViewRating
//
//  Created by Wisnu Sanjaya on 3/2/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StarsView : UIView

@property (weak, nonatomic) IBOutlet UIButton *btnRateOne;
@property (weak, nonatomic) IBOutlet UIButton *btnRateTwo;
@property (weak, nonatomic) IBOutlet UIButton *btnRateThree;
@property (weak, nonatomic) IBOutlet UIButton *btnRateFour;
@property (weak, nonatomic) IBOutlet UIButton *btnRateFive;

@property (weak, nonatomic) IBOutlet UILabel *lblRatingScore;

@end
