//
//  DetailsViewController.h
//  Flixter
//
//  Created by Maize Booker on 6/17/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *detailsView;
@property (strong, nonatomic) IBOutlet UIImageView *detailsImage;
@property (strong, nonatomic) IBOutlet UILabel *detailsTitle;
@property (strong, nonatomic) IBOutlet UILabel *detailsDescription;
@property (strong, nonatomic) NSDictionary *detailDict;

@end

NS_ASSUME_NONNULL_END
