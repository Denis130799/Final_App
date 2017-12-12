//
//  NewsDetailViewController.m
//  Final_App
//
//  Created by Denis on 28.11.2017.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "NewsDetailViewController.h"

@interface NewsDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation NewsDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.titleLabel.text = self.newsItem.title;
    self.textView.text = self.newsItem.textDescription;
    
    NSURL *url = [NSURL URLWithString:self.newsItem.imageURL];
    __block NSData *data = [NSData dataWithContentsOfURL:url];
    dispatch_async(dispatch_get_main_queue(), ^{
        self.imageView.image = [UIImage imageWithData:data];
    });
    
}

@end
