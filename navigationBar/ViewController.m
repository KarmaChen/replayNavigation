//
//  ViewController.m
//  navigationBar
//
//  Created by Karma on 16/7/10.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import "ViewController.h"
#import "pushViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //顶端导航栏
    //self.view.backgroundColor=[UIColor redColor];
    self.title=@"导航栏";
    //self.navigationController.navigationBar.barTintColor=[UIColor yellowColor];
    self.navigationController.navigationBar.barStyle=UIBarStyleBlackOpaque;
    /*
     UIBarStyleDefault          = 0,     //白底，字体是黑色
     UIBarStyleBlack            = 1,      //黑底，字白；
     
     UIBarStyleBlackOpaque      = 1, UIBarStyleBlack
     UIBarStyleBlackTranslucent = 2
     */
    //是否透明,不透明坐标会往下下移64个像素
    self.navigationController.navigationBar.translucent=YES;
    //测试坐标
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(160, 64, 100, 30)];
    label.backgroundColor=[UIColor whiteColor];
    label.alpha=0.5;
    label.text=@"东软学院";
    label.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    //BarItem 4种方式初始化
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"入栈" style:UIBarButtonItemStylePlain  target:self action:@selector(push)];
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(changeColor)];
    
    
    //自定义导航条
    UIView *cutomNavBar=[[UIView alloc]initWithFrame:CGRectMake(0, 90, self.view.frame.size.width, 44)];
    cutomNavBar.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:cutomNavBar];
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(160, 10, 100, 24);
    [button setTitle:@"自定义导航栏" forState:UIControlStateNormal];
    [cutomNavBar addSubview:button];
    
    
    
    
    
    
    //toolBar
    //设置按钮
    self.navigationController.toolbarHidden=NO;
    UIBarButtonItem *item1=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(push)];
    UIBarButtonItem *item2=[[UIBarButtonItem alloc]initWithTitle:@"按钮2" style: UIBarButtonItemStylePlain target:self action:nil];
    UIBarButtonItem *space=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    space.width=50;
    //用sapce来进行分隔；
    NSArray *itemArray =@[item1,space,item2];
    //将所有按钮一次性设置给toolbar
    self.toolbarItems=itemArray;
    
    
    //自定义toolbar
//    NSMutableArray *button1=[[NSMutableArray alloc]init];
//    UIBarButtonItem *item=[[UIBarButtonItem alloc]initWithTitle:@"底部" style:UIBarButtonItemStylePlain target:self action:@selector(photo)];
//    [button1 addObject:item];
//    CGRect appRect = [[UIScreen mainScreen] applicationFrame];
//    UIToolbar *toolbar=[[UIToolbar alloc]initWithFrame:CGRectMake(0, appRect.size.height - 20,appRect.size.width, 100)];
//    toolbar.barStyle=UIBarStyleDefault;
//    toolbar.backgroundColor=[UIColor whiteColor];
//    
//    [toolbar setItems:button1 animated:YES];
//    [toolbar sizeToFit];
//    [self.view addSubview:toolbar];
//    
}
-(void)photo
{
    
    NSLog(@"take photo!");
}
-(void)push
{
    pushViewController * push=[[pushViewController alloc]init];
    [self.navigationController pushViewController:push animated:YES];
}
-(void)changeColor
{
    self.view.backgroundColor=[UIColor  colorWithRed:arc4random()%256/255.0 green:arc4random()%256/250.0 blue:arc4random()%256/250.0 alpha:1.0];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
