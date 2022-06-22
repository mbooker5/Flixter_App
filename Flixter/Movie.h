//
//  Movie.h
//  Flixter
//
//  Created by Maize Booker on 6/22/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Movie : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *overview;
@property (nonatomic, strong) NSString *posterURLString;
@property (nonatomic, strong) NSURL *posterUrl;

- (id)initWithDictionary:(NSDictionary *)dictionary;

+ (NSArray *)moviesWithDictionaries: (NSArray *)dictionaries;

@end

NS_ASSUME_NONNULL_END
