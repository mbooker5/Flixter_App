//
//  DetailsViewController.m
//  Flixter
//
//  Created by Maize Booker on 6/17/22.
//

#import "DetailsViewController.h"
#import "MovieViewController.h"
#import "UIImageView+AFNetworking.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // loading each poster image
    NSString *baseURL = @"https://image.tmdb.org/t/p/w500";
    NSString *urlString = _detailDict[@"poster_path"];
    NSString *fullURL = [baseURL stringByAppendingString:urlString];
    NSURL *url = [[NSURL alloc] initWithString:fullURL];
    
    [_detailsImage setImageWithURL:url];
    
    _detailsTitle.text = _detailDict[@"title"]; // labels the cell with text
    _detailsDescription.text = _detailDict[@"overview"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
