//
//  UIView+HLMaskedView.m
//  ShapeAsMask
//
//  Created by Hervé Droit on 01/08/2014.
//  Copyright (c) 2014 Hervé Heurtault de Lammerville. All rights reserved.
//

#import "UIView+HLMaskedView.h"

@implementation UIView (HLMaskedView)

- (void)maskWithBezierPath:(UIBezierPath *)bezierPath
              resizingMode:(HLMaskResizing)resizingMode;
{
    switch (resizingMode) {
        case HLMaskResizingScaleToFill:
        {
            [bezierPath applyTransform:CGAffineTransformMakeScale(self.bounds.size.width / bezierPath.bounds.size.width,
                                                                  self.bounds.size.height / bezierPath.bounds.size.height)];
        }
            break;
        case HLMaskResizingAspectFit:
        {
            CGFloat widthScaleRatio = self.bounds.size.width / bezierPath.bounds.size.width;
            CGFloat heightScaleRatio = self.bounds.size.height / bezierPath.bounds.size.height;
            [bezierPath applyTransform:CGAffineTransformMakeScale(fminf(widthScaleRatio, heightScaleRatio), fminf(widthScaleRatio,heightScaleRatio))];
        }
            break;
        default:
            break;
    }
    
    CAShapeLayer* maskLayer = [CAShapeLayer layer];
    maskLayer.path = bezierPath.CGPath;
    
    self.layer.mask = maskLayer;
}

@end
