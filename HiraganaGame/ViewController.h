//
//  ViewController.h
//  ButtonTest
//
//  Created by Brittany Weinert on 1/7/14.
//  Copyright (c) 2014 Brittany Weinert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *currentCharacter;
@property (strong, nonatomic) IBOutlet UILabel *statusText;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;

- (IBAction)buttonPressed:(UIButton *)sender;

@end

