//
//  ViewController.m
//  MusicPlay
//
//  Created by 万晨 on 15/10/30.
//  Copyright © 2015年 apple. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface ViewController ()
@property (strong,nonatomic)AVAudioRecorder *recorder;
@end

@implementation ViewController
- (AVAudioRecorder *)recorder{
    if (_recorder == nil) {
        //获取沙河路径
        NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)firstObject];
        //拼接文件路径
        NSString *filepath = [path stringByAppendingPathComponent:@"wanchen.caf"];
        
        NSURL *url = [NSURL fileURLWithPath:filepath];
        NSLog(@"%@",url);
        NSMutableDictionary *settings = [NSMutableDictionary dictionary];
        
        settings[AVEncoderAudioQualityKey] = [NSNumber numberWithInt:AVAudioQualityHigh];
        // av对象
        AVAudioRecorder *recorder = [[AVAudioRecorder alloc]initWithURL:url settings:settings error:nil];
        _recorder = recorder;
        
    }
    return _recorder;

}

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    
}
- (IBAction)recoderButton:(id)sender {
    //录制音频
    [self.recorder record];
}
- (IBAction)playButton:(id)sender {
    [self.recorder stop];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
