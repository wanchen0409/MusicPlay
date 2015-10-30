//
//  ViewController.m
//  广告测试
//
//  Created by 万晨 on 15/10/30.
//  Copyright © 2015年 apple. All rights reserved.
//

#import "ViewController.h"
#import <iAd/iAd.h>
@interface ViewController () <ADBannerViewDelegate>
@property (weak, nonatomic) IBOutlet ADBannerView *iadView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.iadView.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}
// MARK:代理方法
- (void)bannerViewWillLoadAd:(ADBannerView *)banner  {

    NSLog(@"将要加载");


}



- (void)bannerViewDidLoadAd:(ADBannerView *)banner{

    NSLog(@"已经加载");

}


- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{

    NSLog(@"%@",error);

}

//- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave{
//
//    return YES;
//}

- (void)bannerViewActionDidFinish:(ADBannerView *)banner{
    
    NSLog(@"将要完成");



}

@end
