//
//  AnimatedImageView.m
//  Vialer
//
//  Created by Karsten Westra on 28/04/15.
//  Copyright (c) 2015 VoIPGRID. All rights reserved.
//

#import "AnimatedImageView.h"

@implementation AnimatedImageView {
    NSMutableArray *animationPath; // Array of CGPoint instances over which this imageView animates.
    
    __weak NSMutableArray *_onStage;
}

- (id)initWithImage:(UIImage *)image {
    self = [super initWithImage:image];
    if (self) {
        animationPath = [NSMutableArray array];
    }
    return self;
}

- (void)addPoint:(CGPoint)point {
    [animationPath addObject:[NSValue valueWithCGPoint:point]];
}

- (void)animateToNextWithDuration:(NSTimeInterval)duration delay:(NSTimeInterval)delay {
    NSValue *v = [animationPath firstObject];
    [animationPath removeObject:v];

    CGPoint p = [v CGPointValue];
    [UIView animateWithDuration:duration
                          delay:delay
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         self.center = p;
                     }
                     completion:^(BOOL finished) {
                         NSLog(@"self.center: %@", NSStringFromCGPoint(self.center));
                         if (self.center.y < 0 || self.center.x < 0) {
                             [self removeFromSuperview];
                         }
                     }];
    
}

- (NSString*)description {
    return [NSString stringWithFormat:@"%s: self.center = %@, hasSuperView = %d", __PRETTY_FUNCTION__, NSStringFromCGPoint(self.center), self.superview != nil];
}

@end
