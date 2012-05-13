//
//  PuzzleCompletedController.m
//  Puzzle
//
//  Created by Andrea Barbon on 13/05/12.
//  Copyright (c) 2012 Università degli studi di Padova. All rights reserved.
//

#import "PuzzleCompletedController.h"
#import "PuzzleController.h"

@interface PuzzleCompletedController ()

@end

@implementation PuzzleCompletedController

@synthesize delegate;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)updateValues {
    
    pieces.text = [NSString stringWithFormat:@"%d pieces", delegate.NumberSquare];
    time.text = [NSString stringWithFormat:@"Game time: %@", delegate.elapsedTimeLabel.text];

    score.text = [NSString stringWithFormat:@"%d", 0];
    moves.text = [NSString stringWithFormat:@"Moves: %d", delegate.moves];
    rotations.text = [NSString stringWithFormat:@"Rotations: %d", delegate.rotations];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    
    
    if (UIInterfaceOrientationIsPortrait(toInterfaceOrientation)) {
        two.center = CGPointMake(one.center.x+320, 80);
    } else {
        two.center = CGPointMake(160, 240);
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return NO;
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end