//
//  ViewController.m
//  Visual translator
//
//  Created by Sedrak Dalaloyan on 12/20/14.
//  Copyright (c) 2014 SI Products. All rights reserved.
//

#import "ViewController.h"
#import "FDTakeController.h"

@interface ViewController () <FDTakeDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fromLanguageData = [[NSMutableArray alloc] init];
    [self.fromLanguageData addObject:@{@"value": @"en", @"label" : NSLocalizedString(@"language.english", nil)}];
    
    [self.fromLanguageData addObject:@{@"value": @"ru", @"label" : NSLocalizedString(@"language.russian", nil)}];

    self.takeController = [[FDTakeController alloc] init];
    self.takeController.allowsEditingPhoto = YES;
    self.takeController.delegate = self;
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

- (IBAction)selectImage:(id)sender {
    [self.takeController takePhotoOrChooseFromLibrary];
}

- (void)takeController:(FDTakeController *)controller didCancelAfterAttempting:(BOOL)madeAttempt
{
    UIAlertView *alertView;
    if (madeAttempt)
        alertView = [[UIAlertView alloc] initWithTitle:@"VT" message:@"The take was cancelled after selecting media" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    else
        alertView = [[UIAlertView alloc] initWithTitle:@"VT" message:@"The take was cancelled without selecting media" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
}

- (void)takeController:(FDTakeController *)controller gotPhoto:(UIImage *)photo withInfo:(NSDictionary *)info
{
    [self.imageView setImage:photo];
}

@end
