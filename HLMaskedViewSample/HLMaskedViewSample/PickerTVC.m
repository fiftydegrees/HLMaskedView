//
//  PickerTVC.m
//  HLMaskedViewSample
//
//  Created by Hervé Droit on 01/08/2014.
//  Copyright (c) 2014 Hervé Heurtault de Lammerville. All rights reserved.
//

#import "PickerTVC.h"

#import "TestVC.h"
#import "UIView+HLMaskedView.h"

@interface PickerTVC ()

@property (nonatomic, strong) UIBezierPath *heartBezierPath;

@end

@implementation PickerTVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(79.95, 6.75)];
    [bezierPath addCurveToPoint: CGPointMake(49.68, 6.75) controlPoint1: CGPointMake(71.59, -0.92) controlPoint2: CGPointMake(58.04, -0.92)];
    [bezierPath addLineToPoint: CGPointMake(44, 11.96)];
    [bezierPath addLineToPoint: CGPointMake(38.32, 6.75)];
    [bezierPath addCurveToPoint: CGPointMake(8.05, 6.75) controlPoint1: CGPointMake(29.97, -0.92) controlPoint2: CGPointMake(16.41, -0.92)];
    [bezierPath addCurveToPoint: CGPointMake(8.05, 38.01) controlPoint1: CGPointMake(-1.35, 15.38) controlPoint2: CGPointMake(-1.35, 29.38)];
    [bezierPath addLineToPoint: CGPointMake(44, 71)];
    [bezierPath addLineToPoint: CGPointMake(79.95, 38.01)];
    [bezierPath addCurveToPoint: CGPointMake(79.95, 6.75) controlPoint1: CGPointMake(89.35, 29.38) controlPoint2: CGPointMake(89.35, 15.39)];
    [bezierPath closePath];
    bezierPath.miterLimit = 4;
    _heartBezierPath = bezierPath;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            [self performSegueWithIdentifier:@"noresizing" sender:nil];
            break;
        case 1:
            [self performSegueWithIdentifier:@"scaletofill" sender:nil];
            break;
        case 2:
            [self performSegueWithIdentifier:@"aspectfit" sender:nil];
            break;
        default:
            break;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[TestVC class]])
    {
        TestVC *nextVC = segue.destinationViewController;
        
        nextVC.bezierPath = [_heartBezierPath copy];
        
        if ([segue.identifier isEqualToString:@"noresizing"])
            nextVC.resizingMode = HLMaskResizingNone;
        else if ([segue.identifier isEqualToString:@"scaletofill"])
            nextVC.resizingMode = HLMaskResizingScaleToFill;
        else if ([segue.identifier isEqualToString:@"aspectfit"])
            nextVC.resizingMode = HLMaskResizingAspectFit;
    }
}

@end
