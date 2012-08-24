//
//  UIImage+imageColor.m
//  MA Mobile
//
//  Created by Brandon Butler on 6/28/12.
//  Copyright (c) 2012 POS Management. All rights reserved.
//

#import "UIImage+imageColor.h"

@implementation UIImage (imageColor)

+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
