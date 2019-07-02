//
//  AppDelegate.h
//  CustomCellClock
//
//  Created by 董渊 on 2019/7/1.
//  Copyright © 2019 董渊. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

