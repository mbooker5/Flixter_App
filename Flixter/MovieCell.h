//
//  MovieCell.h
//  Flixter
//
//  Created by Maize Booker on 6/17/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MovieCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *movieImage;
@property (strong, nonatomic) IBOutlet UILabel *movieTitle;
@property (strong, nonatomic) IBOutlet UILabel *movieDescription;
@property (strong, nonatomic) IBOutlet UIView *movieViewCell;


@end

NS_ASSUME_NONNULL_END
