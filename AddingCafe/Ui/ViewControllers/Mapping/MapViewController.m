//
//  MapViewController.m
//  AddingCafe
//
//  Created by Mac on 25.01.2024.
//

#import "MapViewController.h"
#import "Places.h"
#import "AddingViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNotification:) name:@"YourNotificationName" object:nil];

}

- (void)viewWillAppear:(BOOL)animated {
   

}

- (void)dealloc {
    // NotificationCenter dinleyicisini kaldır
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)handleNotification:(NSNotification *)notification {
    // Bildirimi aldığınızda yapılacak işlem
    NSDictionary *userInfo = notification.userInfo;
    // Veriyi al
    id yourData = userInfo[@"yourKey"];
    // Veriyi kullan
    NSLog(@"Places Array: %@", yourData);
}



@end
