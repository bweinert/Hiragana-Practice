//
//  ViewController.m
//  ButtonTest
//
//  Created by Brittany Weinert on 1/7/14.
//  Copyright (c) 2014 Brittany Weinert. All rights reserved.
//

#import "ViewController.h"
#include <stdlib.h>

@interface ViewController () {
    NSDictionary *hiraganaTable;
}
@property (strong, nonatomic) NSDictionary *hiraganaTable;
@end

@implementation ViewController
@synthesize hiraganaTable;
@synthesize statusText;
@synthesize currentCharacter;

@synthesize buttoni;
@synthesize buttona;
@synthesize buttonu;
@synthesize buttone;
@synthesize buttono;

@synthesize buttonka;
@synthesize buttonki;
@synthesize buttonku;
@synthesize buttonke;
@synthesize buttonko;

@synthesize buttonta;
@synthesize buttonchi;
@synthesize buttontsu;
@synthesize buttonte;
@synthesize buttonto;

@synthesize buttonsa;
@synthesize buttonshi;
@synthesize buttonsu;
@synthesize buttonse;
@synthesize buttonso;

@synthesize buttonna;
@synthesize buttonni;
@synthesize buttonnu;
@synthesize buttonne;
@synthesize buttonno;

@synthesize buttonha;
@synthesize buttonhi;
@synthesize buttonfu;
@synthesize buttonhe;
@synthesize buttonho;

@synthesize buttonma;
@synthesize buttonmi;
@synthesize buttonmu;
@synthesize buttonme;
@synthesize buttonmo;

@synthesize buttonra;
@synthesize buttonri;
@synthesize buttonru;
@synthesize buttonre;
@synthesize buttonro;

@synthesize buttonwa;
@synthesize buttonwo;

@synthesize buttonya;
@synthesize buttonyu;
@synthesize buttonyo;

@synthesize buttonn;

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Array of romanji (alphabetic readings of hiragana)
    NSArray *alphabet = [NSArray arrayWithObjects: @"a", @"i", @"u", @"e", @"o",
                         @"ka", @"ki", @"ku", @"ke", @"ko",
                         @"ta", @"chi", @"tsu", @"te", @"to",
                         @"sa", @"shi", @"su", @"se", @"so",
                         @"na", @"ni", @"nu", @"ne", @"no",
                         @"ha", @"hi", @"fu", @"he", @"ho",
                         @"ma", @"mi", @"mu", @"me", @"mo",
                         @"ra", @"ri", @"ru", @"re", @"ro",
                         @"ya", @"wa", @"yu", @"wo", @"yo",
                         @"n", nil];
    
    //Array of hiragana characters
    NSArray *hiragana = [NSArray arrayWithObjects: @"あ", @"い", @"う", @"え", @"お",
                         @"か", @"き", @"く", @"け", @"こ",
                         @"た", @"ち", @"つ", @"て", @"と",
                         @"さ", @"し", @"す", @"せ", @"そ",
                         @"な", @"に", @"ぬ", @"ね", @"の",
                         @"は", @"ひ", @"ふ", @"へ", @"ほ",
                         @"ま", @"み", @"む", @"め", @"も",
                         @"ら", @"り", @"る", @"れ", @"ろ",
                         @"や", @"わ", @"ゆ", @"を", @"よ",
                         @"ん", nil];
    
    //NSDictionary that maps each element in hiragana to alphabet
    hiraganaTable = [NSDictionary dictionaryWithObjects: hiragana forKeys: alphabet];
}

//method that picks the next character to guess
- (void)setCharacter {
    
    NSArray *keys = [hiraganaTable allKeys];
    NSUInteger index = arc4random() % [keys count];
    
    currentCharacter.text = [hiraganaTable objectForKey:[keys objectAtIndex:index]];
}

//IBAction method triggered whenever a hiragana character button is pressed
//checks to see if it is correct or not and prints out a message. If it
//is correct, a new character is chosen.
- (IBAction)buttonPressed:(UIButton *)sender {
    NSString *title = [sender titleForState:UIControlStateNormal];

    
    if ([currentCharacter.text isEqualToString: [hiraganaTable objectForKey: title]]) {
        statusText.text = @"correct, new character changed";
        [self setCharacter];
        
    }
    else {
        statusText.text = @"wrong";
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
