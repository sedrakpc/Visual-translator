//
//  ViewController.h
//  Visual translator
//
//  Created by Sedrak Dalaloyan on 12/20/14.
//  Copyright (c) 2014 SI Products. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FDTakeController.h"

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
    @property FDTakeController *takeController;
    @property (nonatomic, strong) NSMutableArray *fromLanguageData;
    @property (weak, nonatomic) IBOutlet UIPickerView *fromLanguage;
    @property (weak, nonatomic) IBOutlet UIImageView *imageView;
    - (IBAction)selectImage:(id)sender;
@end

