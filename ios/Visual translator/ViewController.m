//
//  ViewController.m
//  Visual translator
//
//  Created by Sedrak Dalaloyan on 12/20/14.
//  Copyright (c) 2014 SI Products. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fromLanguageData = [[NSMutableArray alloc] init];
    [self.fromLanguageData addObject:@{@"value": @"en", @"label" : NSLocalizedString(@"language.english", nil)}];
    
    [self.fromLanguageData addObject:@{@"value": @"ru", @"label" : NSLocalizedString(@"language.russian", nil)}];
    // Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.fromLanguageData.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return self.fromLanguageData[row][@"label"];
}

@end
