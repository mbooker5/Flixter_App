//
//  Movie.m
//  Flixter
//
//  Created by Maize Booker on 6/22/22.
//

#import "Movie.h"
#import "UIImageView+AFNetworking.h"
#import "DetailsViewController.h"
#import "MovieViewController.h"

@implementation Movie

// Movie.m

- (id)initWithDictionary:(NSDictionary *)dictionary {
 self = [super init];

 self.title = dictionary[@"title"];

 // Set the other properties from the dictionary
 self.overview = dictionary[@"overview"];
 
 // Making *posterURL from *posterURLString
 self.posterURLString = dictionary[@"poster_path"];
 if (self.posterURLString != nil) {
    NSString *baseURLString = @"https://image.tmdb.org/t/p/w500";
    NSString *fullPosterURLString = [baseURLString stringByAppendingString:self.posterURLString];
    NSURL *posterURL = [NSURL URLWithString:fullPosterURLString];
    self.posterUrl = posterURL;
 }
    
 return self;
}

+ (NSArray *)moviesWithDictionaries:(NSArray *)dictionaries {
   // Implement this function
    NSMutableArray *movies = [NSMutableArray array];
    for (NSDictionary *dictionary in dictionaries) {
       Movie *movie = // Call the Movie initializer here
        [[Movie alloc] initWithDictionary:dictionary];
        [movies addObject:movie];
    }
    return movies;
}

@end
