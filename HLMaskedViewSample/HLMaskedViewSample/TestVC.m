//
//  TestVC.m
//  HLMaskedViewSample
//
//  Created by Hervé Droit on 01/08/2014.
//  Copyright (c) 2014 Hervé Heurtault de Lammerville. All rights reserved.
//

#import "TestVC.h"

@interface TestVC ()

@property (weak, nonatomic) IBOutlet UIImageView *sampleImageView;

@end

@implementation TestVC

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [_sampleImageView maskWithBezierPath:_bezierPath resizingMode:_resizingMode];
}

@end
