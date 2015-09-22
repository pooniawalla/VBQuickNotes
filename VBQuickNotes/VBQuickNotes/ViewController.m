//
//  ViewController.m
//  VBQuickNotes
//
//  Created by Poonia on 23/09/15.
//  Copyright © 2015 Babulal Poonia. All rights reserved.
//

#import "ViewController.h"

#define APP_COLOR [UIColor colorWithWhite:(247.0/255) alpha:1.0]

@interface ViewController ()<UITabBarDelegate, UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITabBar *tabBar;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (UITabBarItem  *tab in self.tabBar.items) {
        tab.image = [tab.image imageWithRenderingMode: UIImageRenderingModeAlwaysOriginal];
        tab.selectedImage = [tab.image imageWithRenderingMode: UIImageRenderingModeAlwaysOriginal];
    }
    [self.tabBar setSelectedItem:self.tabBar.items.firstObject];
    [self.tabBar setTintColor:[UIColor blackColor]];
    self.tabBar.delegate = self;
    
    self.tableView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITabbar Delegate

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    NSLog(@"Clicked!");
}

#pragma mark - UITableView DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

@end
