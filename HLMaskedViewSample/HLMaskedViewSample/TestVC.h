//
//  TestVC.h
//  HLMaskedViewSample
//
//  Created by Hervé Droit on 01/08/2014.
//  Copyright (c) 2014 Hervé Heurtault de Lammerville. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UIView+HLMaskedView.h"

@interface TestVC : UIViewController

@property (nonatomic, strong) UIBezierPath *bezierPath;
@property (nonatomic, assign) HLMaskResizing resizingMode;

@end
