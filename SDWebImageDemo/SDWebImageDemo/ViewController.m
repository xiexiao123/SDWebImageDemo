//
//  ViewController.m
//  SDWebImageDemo
//
//  Created by Courser on 2018/5/16.
//  Copyright © 2018 Courser. All rights reserved.
//

#import "ViewController.h"
#import <UIImageView+WebCache.h>

@interface ViewController ()

@property (nonatomic, strong)UIImageView *firstImageView;
@property (nonatomic, strong)UIImageView *secondImageView;
@property (nonatomic, strong)UIImageView *thirdImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.firstImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height * 1 / 3)];
    self.firstImageView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.firstImageView];
    
    self.secondImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height * 1 / 3, self.view.bounds.size.width, self.view.bounds.size.height * 1 / 3)];
    self.secondImageView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.secondImageView];
    
    self.thirdImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height * 2 / 3, self.view.bounds.size.width, self.view.bounds.size.height * 1 / 3)];
    self.thirdImageView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.thirdImageView];
}

- (void)urlCanceled {
    
    [self.firstImageView sd_setImageWithURL:[NSURL URLWithString:@"http://p0.meituan.net/ugcpic/3bc6780bd1b3dffa71463150f3b16bac"] placeholderImage:[UIImage imageNamed:@"IMG_2120.JPG"] options:SDWebImageCacheMemoryOnly];
    
    
    [self.secondImageView sd_setImageWithURL:[NSURL URLWithString:@"http://p0.meituan.net/ugcpic/3bc6780bd1b3dffa71463150f3b16bac"] placeholderImage:[UIImage imageNamed:@"IMG_2120.JPG"] options:SDWebImageCacheMemoryOnly];
    
    
    [self.thirdImageView sd_setImageWithURL:[NSURL URLWithString:@"http://p0.meituan.net/ugcpic/3bc6780bd1b3dffa71463150f3b16bac"] placeholderImage:[UIImage imageNamed:@"IMG_2120.JPG"] options:SDWebImageCacheMemoryOnly];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.firstImageView sd_setImageWithURL:[NSURL URLWithString:@"http://p0.meituan.net/ugcpic/c8807f9c5b1ff5abf8fe1b611de21356"] placeholderImage:[UIImage imageNamed:@"IMG_2120.JPG"] options:SDWebImageCacheMemoryOnly];
    });
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self urlCanceled];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
