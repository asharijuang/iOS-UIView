//
//  ViewController.m
//  UIView
//
//  Created by Ashari Juang on 8/6/15.
//  Copyright (c) 2015 KodeJS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Membuat sebuah view dengan bentuk kontak, menggunakan rectmake
    UIView *box1 = [[UIView alloc] initWithFrame:CGRectMake(10.0f, 50.0f, 150.0f, 150.0f)];
    // memberikan warna background
    box1.backgroundColor = [UIColor redColor];
    // uiview dapat di panggil dengan tag
    box1.tag = 10;
    
    UIView *box2 = [[UIView alloc] initWithFrame:CGRectMake(20.0f, 60.0f, 150.0f, 150.0f)];
    box2.backgroundColor = [UIColor yellowColor];
    box2.tag = 20;
    
    UIView *box3 = [[UIView alloc] initWithFrame:CGRectMake(30.0f, 70.0f, 150.0f, 150.0f)];
    box3.backgroundColor = [UIColor greenColor];
    box3.tag = 30;
    
    // uiview akan ditampilkan sesuai dengan urutan kode dibawah ini
    [self.view addSubview:box1];
    [self.view addSubview:box2];
    [self.view addSubview:box3];
    
    
    for (UIView *view in [self.view subviews]) {
        NSLog(@"Current View: %i", view.tag);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeColor:(id)sender {
    // memanggil view berdasarkan tag id
    UIView *topView = [self.view viewWithTag:30];
    // kemudian mengubah warna backround
    topView.backgroundColor = [UIColor brownColor];
}

- (IBAction)setToFront:(id)sender {
    // mengubah view menjadi paling depan
    [self.view bringSubviewToFront:[self.view viewWithTag:20]];
}

- (IBAction)reOrderSubView:(id)sender {
    NSLog(@"click reorder");
    [self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:2];
}

- (IBAction)removeFromSubView:(id)sender {
    [[self.view viewWithTag:30] removeFromSuperview];
}
@end
