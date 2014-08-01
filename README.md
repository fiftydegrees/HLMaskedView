# HLMaskedView

UIView category to easily use a bezier path as mask.

## Installation

_**If your project doesn't use ARC**: you must add the `-fobjc-arc` compiler flag to `UIView+HLMaskedView.m` in Target Settings > Build Phases > Compile Sources._

* Simply drag the `./HLMaskedView` folder into your project and import `UIView+HLMaskedView.h` where needed.

## Single line of code

```
- (void)maskWithBezierPath:(UIBezierPath *)bezierPath
              resizingMode:(HLMaskResizing)resizingMode;
```

### HLMaskResizing

This parameter defines how your mask must be resized before masking your instance of UIView. They follow Apple official convention:

**HLMaskResizingNone**

Describes how the bezier path must be resized

![HLMaskResizingNone](https://raw.githubusercontent.com/fiftydegrees/HLMaskedView/master/README-Files/hlmaskedview-noresizing.png)

**HLMaskResizingScaleToFill**

Fit the initial view area, the mask ratio is not preserved

![HLMaskResizingScaleToFill](https://raw.githubusercontent.com/fiftydegrees/HLMaskedView/master/README-Files/hlmaskedview-scaletofill.png)

**HLMaskResizingAspectFit**

Fit as much as possible the initial view area, preserving mask ratio

![HLMaskResizingAspectFit](https://raw.githubusercontent.com/fiftydegrees/HLMaskedView/master/README-Files/hlmaskedview-aspectfit.png)

## Credits

HLMaskedView was developed by [Hervé Heurtault de Lammerville](http://www.hervedroit.com). If you have any feature suggestion or bug report, please help out by creating [an issue](https://github.com/fiftydegrees/HLMaskedView/issues/new) on GitHub. If you're using HLMaskedView in your project, please let me know.