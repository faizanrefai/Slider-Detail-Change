//
//  LoginViewController.m
//  CommonClassSample
//
//  Created by MacBook on 1/22/13.
//  Copyright (c) 2013 iPatientCare MacBook. All rights reserved.
//

#import "LoginViewController.h"
#import "JSONParser.h"

@interface LoginViewController ()
{
    dispatch_queue_t  jasonCallQueue ;
    NSArray *arry;
}

@property (nonatomic) int heightForRow;
@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    UIAlertView *aler = [[UIAlertView alloc]initWithTitle:@"Invalid Input" message:@"Please Enter Password" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
//    [aler show];
    
    self.heightForRow = 80;
    self.heightForRow = 80;
    static NSString *str = @"Cell";
    static NSString *str1 = @"cellHeader";
    arry = [NSArray arrayWithObjects:str1,str,str1,str,str1,str,str1,str,str1,str,str1,str,str1,str,str1,str,str,str1,str,str1,str,str1,str,str1,str,str,str1,str,str1,str,str1,str,str1,str,str,str1,str,str1,str,str1,str,str1,str,str,str1,str,str1,str,str1,str,str1,str, nil];
    [_sliderColor setThumbImage:[UIImage imageNamed:@"Attach.png"] forState:UIControlStateNormal];
    
    
    UIAlertView *a = [[UIAlertView alloc]initWithTitle:@"New Appointment" message:@"Dr. James, You have new Appintment at 5:30 PM. with Stacy at ABC Medical Center" delegate:nil cancelButtonTitle:@"Show" otherButtonTitles:@"Cancel", nil];
    [a show];

	// Do any additional setup after loading the view.
    
    [self btnWebserviceCallGCD:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - IBAction Devision

-(void)setSliderVal:(NSInteger)sliderVal
{
    _sliderVal = sliderVal;
    [self rearrangeMyView];
}



-(void)rearrangeMyView
{
    switch (self.sliderVal) {
        case 0:{
            static NSString *str = @"Cell";
            static NSString *str1 = @"cellHeader";
            arry = [NSArray arrayWithObjects:str1,str,str1,str,str1,str,str1,str,str1,str,str1,str,str1,str,str1,str,str,str1,str,str1,str,str1,str,str1,str,str,str1,str,str1,str,str1,str,str1,str,str,str1,str,str1,str,str1,str,str1,str,str,str1,str,str1,str,str1,str,str1,str, nil];
            self.heightForRow = 80;

            break;
        }
        case 1:{
            static NSString *str = @"More";
            arry = [NSArray arrayWithObjects:str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str, nil];
            self.heightForRow = 110;
            break;
        }
        case 2:{
            static NSString *str = @"Enough";
            arry = [NSArray arrayWithObjects:str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str, nil];
            self.heightForRow = 130;

            break;
        }
        case 3:{
            static NSString *str = @"Much";
            arry = [NSArray arrayWithObjects:str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str,str, nil];
            self.heightForRow = 150;

            break;
        }
        default:{
            
            break;
        }
    }
    
    [_myTable reloadData];

}

- (IBAction)outTouch:(id)sender {
    
        //  NSLog(@"outTouch");
    
}

- (IBAction)valurChanged:(UISlider*)sender {
        // NSLog(@"valurChanged  %f",sender.value);
    
    
}

- (IBAction)jayaz:(UISlider*)sender {
    
        //  NSLog(@"inside Touch  %f",roundf(sender.value));
    [sender setValue:roundf(sender.value) animated:YES];
    self.sliderVal =  roundf(sender.value)  ;
    
}



- (IBAction)sliderChanged:(id)sender {
    
        //  NSLog(@"sliderChanged");

}

- (IBAction)sliderChaneFinish:(id)sender{
        //  NSLog(@"sliderChaneFinish");

}


- (IBAction)akeleaakele:(UISlider*)sender{

        //   NSLog(@"akeleaakele %f",sender.value);
    self.sliderVal =  roundf(sender.value)  ;

}


- (NSInteger)tableView:(UITableView *)aTableView numberOfRowsInSection:(NSInteger)section {
        // Return the number of rows in the section.
    return 5;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 5;
    
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{

    return [arry objectAtIndex:section];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
        //static NSString *CellIdentifier = (NSString*) [arry objectAtIndex:indexPath.section];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[arry objectAtIndex:indexPath.section]];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:(NSString*) [arry objectAtIndex:indexPath.section]];
//        
//        NSLog(@"Hello");
//
//    }
    
    
    return cell;

}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return self.heightForRow;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 50;
    
}


-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
           UIView * _myHeader = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 345, 50)];
            UILabel *_myLabel = [[UILabel alloc]initWithFrame:CGRectMake(144, 14, 345, 30)];
            _myLabel.font = [UIFont boldSystemFontOfSize:25];
            _myLabel.backgroundColor = [UIColor clearColor];
            _myLabel.textAlignment = NSTextAlignmentCenter;
            
            switch (section) {
                case 0:
                    _myLabel.text = @"Labs";
                    _myHeader.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cellBk1.PNG"]];
                    
                    
                    break;
                    
                case 1:
                    _myLabel.text = @"Rx";
                    _myHeader.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cellBk2.PNG"]];
                    
                    break;
                    
                case 2:
                    _myLabel.text = @"Diagnostic Test";
                    _myHeader.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cellBk4.PNG"]];
                    
                    break;
                    
                case 3:
                    _myLabel.text = @"Office Procedure";
                    _myHeader.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cellBk1.PNG"]];
                    
                    break;
                    
                case 4:
                    _myLabel.text = @"Patient Education";
                    _myHeader.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cellBk3.PNG"]];
                    
                    break;
                    
                case 5:
                    _myLabel.text = @"Refer to";
                    _myHeader.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cellBk6.PNG"]];
                    
                    break;
                    
                default:
                    _myLabel.text = @"Refer to";
                    _myHeader.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"cellBk6.PNG"]];
                    
                    break;
            }
            
            [_myHeader addSubview:_myLabel];
            return _myHeader;
                    
}





    /// Json parsing with GCD concept

- (IBAction)btnWebserviceCallGCD:(id)sender {
    
    NSString *strAddress = @"New York";
        // NSString *strUrl =[[NSString stringWithFormat:@"http://maps.googleapis.com/maps/api/geocode/json?address=%@&sensor=true",strAddress] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *strUrl =[[NSString stringWithFormat:@"http://maps.googleapis.com/maps/api/geocode/json?address=382424&sensor=true"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURL *urlJson = [NSURL URLWithString:strUrl];
   
  // Start Parsing 
    
    jasonCallQueue = dispatch_queue_create("JsonFatche", nil);
    dispatch_async(jasonCallQueue, ^{
        NSError *error = nil;
        NSString *jsonSerializedString = [NSString stringWithContentsOfURL:urlJson encoding:NSUTF8StringEncoding error:&error];
		        dispatch_async(dispatch_get_main_queue(), ^{
                    NSLog(@"%@",[jsonSerializedString JSONValue]);
                    NSLog(@"%@",[[[jsonSerializedString JSONValue] valueForKey:@"results"] valueForKey:@"address_components"]);
                    NSLog(@"%d",[[[[[jsonSerializedString JSONValue] valueForKey:@"results"] objectAtIndex:0] allKeys] count]);
		});

	});
}


///  Json Parsing with JsonParsorClass

- (IBAction)btnWebserviceCallJsonParsor:(id)sender {
    
    NSString *strAddress = @"New York"; // This is input parameter
    
    NSString *strUrl =[[NSString stringWithFormat:@"http://maps.googleapis.com/maps/api/geocode/json?address=%@&sensor=true",strAddress] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURL *urlParse = [NSURL URLWithString:strUrl];
    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:urlParse];
    JSONParser *parser = [[JSONParser alloc]initWithRequestForThread:urlRequest sel:@selector(jsonDeserializesResponseRecieved:) andHandler:self];
    NSLog(@"%@",parser);
}



-(void)jsonDeserializesResponseRecieved:(NSDictionary*)dictionary{

    NSLog(@"%@",dictionary);
    
}


@end
