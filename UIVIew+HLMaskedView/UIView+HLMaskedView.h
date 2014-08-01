//
//  UIView+HLMaskedView.h
//  ShapeAsMask
//
//  Created by Hervé Droit on 01/08/2014.
//  Copyright (c) 2014 Hervé Heurtault de Lammerville. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Describes how the bezier path must be resized
 */
typedef NS_ENUM(NSUInteger, HLMaskResizing) {
    /**
     *  No resizing applied
     */
    HLMaskResizingNone,
    /**
     *  Fit the initial view area, the mask ratio is not preserved
     */
    HLMaskResizingScaleToFill,
    /**
     *  Fit as much as possible the initial view area, preserving mask ratio
     */
    HLMaskResizingAspectFit
};

@interface UIView (HLMaskedView)

/**
 *  Use a specific bezier path as mask. Only the region covered by the mask will get displayed.
 *
 *  @param bezierPath   Mask bezier path
 *  @param resizingMode How the bezier path must be resized
 */
- (void)maskWithBezierPath:(UIBezierPath *)bezierPath
              resizingMode:(HLMaskResizing)resizingMode;

@end
