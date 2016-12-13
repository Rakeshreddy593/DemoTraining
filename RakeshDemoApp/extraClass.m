//
//  extraClass.m
//  RakeshDemoApp
//
//  Created by Satish Garlapati on 12/8/16.
//  Copyright © 2016 Satish Garlapati. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface extraClass ()

@end

@implementation extraClass


-(void)checkMethod{
    
    
    ViewController * vc = [[ViewController alloc]init];
    [vc callMeMethod];
    
    NSDictionary * someDict = [[NSDictionary alloc]init];
}


@end
