//
//  ViewController.m
//  StoryBoard_Demo
//
//  Created by Valli Prasanna on 6/5/13.
//  Copyright (c) 2013 Valli Prasanna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    NSMutableDictionary* dic=[[NSMutableDictionary alloc]init];

    NSString *str=@"var ePayLoad; var orgName; var keyVersion;ePayLoad=\"vyLRY/jcfL48kkMiX84Uk00qIySnAmlwBafU1IaGiLnUG7uL5ZhYW1CdiUJ2iuzYWq8YP5YbykBP58ItcOfFQxNHNvPFTZ/oWOH58GPlLnyuNwnGihDyM0D9+1YVYuGguugI3+QyVf28w9rFEN6thUlOKdfEAHQIKYbT10MwKi3qnUU/+URiMA/eNpNzBy2W\";orgName=\"NON ASSP\";keyVersion=\"1\";xfa.form.form1.sendForm.UserName.rawValue = 'NEWJK1';xfa.form.form1.sendForm.EmailID.rawValue = 'gopja02@ca.com'";
    NSArray *arr=[[NSArray alloc]init];
    arr =[str componentsSeparatedByString:@";"];
    for(int i=0;i<[arr count];i++)
    {
        
        if([[arr objectAtIndex:i ] rangeOfString:@"="].location == NSNotFound){
        
        }
        else{

            // mysapce new
            
            //    NSInteger  indexOfTheObject = [arr indexOfObject: @"var ePayLoad"];
//        NSLog(@"string is %d",indexOfTheObject);
        NSArray *sub=[[arr objectAtIndex:i] componentsSeparatedByString:@"="];
        NSLog(@"sub arry is %@, index %d",sub,i);
        if([sub count]>1){
        [dic setValue:[sub objectAtIndex:1] forKey:[sub objectAtIndex:0]];
            NSLog(@"dic is %@",dic);
        }
        }
    }
    NSLog(@"arry is %@",arr);
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"\u25BC" style:UIBarButtonItemStylePlain target:self action:@selector(nextAndPreviousPressed:)];
    self.navigationItem.rightBarButtonItem=rightButton;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
