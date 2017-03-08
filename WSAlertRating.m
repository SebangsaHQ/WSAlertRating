//
//  WSAlertRating.m
//  alertViewRating
//
//  Created by Wisnu Sanjaya on 3/2/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

#import "WSAlertRating.h"

@interface WSAlertRating ()

#define spacing         @"\n \n \n \n \n"
#define StarsViewNib    @"StarsView"
#define imgStarReset    @"icon_yellow_line_star_big"
#define imgStared       @"icon_yellow_star_big"

@end

#pragma mark - Custom Alert View

@implementation WSAlertRating

@synthesize starsView;
@synthesize arrayButton;
@synthesize ratingScore;

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (instancetype)initAlertControllerWithTitle:(NSString *)title message:(NSString *)message{
    
    NSString *WSAlertTitle = [NSString stringWithFormat:@"%@%@", title, spacing];
    
    self = [[self class] alertControllerWithTitle:WSAlertTitle message:message preferredStyle:UIAlertControllerStyleAlert];
    if (!self) return nil;
    
    [self addViewToAlert];
    
    return self;
}

- (void)addViewToAlert{
    
    NSLog(@"i go to here");
    
    UIView *viewRating       = [[UIView alloc] initWithFrame:CGRectMake(10, 50, self.view.frame.size.width - 70, 80)];
    starsView                = [[[NSBundle mainBundle] loadNibNamed:StarsViewNib owner:self options:nil] firstObject];
    starsView.frame          = viewRating.bounds;
    
    [viewRating addSubview:starsView];
    [self.view addSubview:viewRating];
    
    arrayButton = @[starsView.btnRateOne, starsView.btnRateTwo, starsView.btnRateThree, starsView.btnRateFour, starsView.btnRateFive];
    [self addActionToButton];


}

- (void)addActionToButton{
    
    for (UIButton *btn in arrayButton) {
        [btn addTarget:self action:@selector(rateAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    
}

- (void)resetImageButton{

    UIImage *imgReset = [UIImage imageNamed:imgStarReset];
    
    for (UIButton *btn in arrayButton) {
        [btn setImage:imgReset forState:UIControlStateNormal];
    }
}

- (void)setImageRating:(int)score{
    
    UIImage *imgStar = [UIImage imageNamed:imgStared];
    
    int i = 0;

    while (i <= score) {
        [arrayButton[i] setImage:imgStar forState:UIControlStateNormal];
        i++;
    }

    ratingScore = [NSString stringWithFormat:@"%i.0",(score + 1)];
    starsView.lblRatingScore.text = ratingScore;
    
}

- (void)rateAction:(UIButton *)sender{
    [self resetImageButton];
    [self setImageRating:(int)sender.tag];
}


@end
