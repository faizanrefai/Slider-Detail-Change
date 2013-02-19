//
//  LoginViewController.h
//  CommonClassSample
//
//  Created by MacBook on 1/22/13.
//  Copyright (c) 2013 iPatientCare MacBook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController  <UITableViewDataSource,UITableViewDelegate>
{


}

@property (weak, nonatomic) IBOutlet UISlider *sliderColor;
@property (weak, nonatomic) IBOutlet UITableView *myTable;


@property (nonatomic) NSInteger sliderVal;


// IBAction Division
- (IBAction)sliderChanged:(id)sender;
- (IBAction)sliderChaneFinish:(id)sender;

- (IBAction)btnWebserviceCallGCD:(id)sender;
- (IBAction)btnWebserviceCallJsonParsor:(id)sender;

- (IBAction)akeleaakele:(id)sender;


- (IBAction)outTouch:(id)sender;

- (IBAction)jayaz:(id)sender;


@end
