//
//  MovieCell.m
//  Flixter
//
//  Created by Maize Booker on 6/17/22.
//

#import "MovieCell.h"
#import "UIImageView+AFNetworking.h"

@implementation MovieCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setMovie:(Movie *)movie {
// Since we're replacing the default setter, we have to set the underlying private storage _movie ourselves.
// _movie was an automatically declared variable with the @propery declaration.
// You need to do this any time you create a custom setter.

    _movie = movie;

    self.movieTitle.text = self.movie.title;
    self.movieDescription.text = self.movie.overview;

    self.movieImage.image = nil;
    if (self.movie.posterUrl != nil) {
        [self.movieImage setImageWithURL:self.movie.posterUrl];
        }
    }

@end
