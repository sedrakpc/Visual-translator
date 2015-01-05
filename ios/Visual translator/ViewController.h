//
//  ViewController.h
//  Visual translator
//
//  Created by Sedrak Dalaloyan on 12/20/14.
//  Copyright (c) 2014 SI Products. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
    @property (nonatomic, strong) NSMutableArray *fromLanguageData;
    @property (weak, nonatomic) IBOutlet UIPickerView *fromLanguage;
@end

