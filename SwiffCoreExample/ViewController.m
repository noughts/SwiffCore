//
//  ViewController.m
//  SwiffCoreExample
//
//  Created by noughts on 2014/03/22.
//  Copyright (c) 2014年 noughts. All rights reserved.
//

#import "ViewController.h"
#import "SwiffMovie.h"
#import "SwiffView.h"
#import "SwiffPlayhead.h"


@implementation ViewController{
	SwiffView* _swf_view;
}



- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	NSString *resourcePath = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"swf"];
	NSData* swfData = [NSData dataWithContentsOfFile:resourcePath];
	SwiffMovie* swfMovie = [[SwiffMovie alloc] initWithData:swfData];
	_swf_view = [[SwiffView alloc] initWithFrame:swfMovie.stageRect movie:swfMovie];
	[_swf_view playhead].loopsMovie = YES;// ループするように
	
	[self.view addSubview:_swf_view];

}

-(IBAction)onPlayButtonTap:(id)sender{
	[[_swf_view playhead] play];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
