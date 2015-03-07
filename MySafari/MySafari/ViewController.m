//
//  ViewController.m
//  MySafari
//
//  Created by 4nn4bel on 7/3/15.
//  Copyright (c) 2015 4nn4bel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate,UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UITextField *urlTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //create nsstring

    NSString *urlString = @"http://www.ikompass.edu.sg";
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:urlRequest];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)urlTextField
{
    
    NSString *urlString = urlTextField.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:urlRequest];
    return YES;
}

-(void)webViewDidStartLoad:(UIWebView *)webView  //webviewdidstartload part of the uiwebdelegate protocol
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    //above statement is a spinner
    
}

-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    
}

- (IBAction)onBackButtonPressed:(id)sender {
}

@end
