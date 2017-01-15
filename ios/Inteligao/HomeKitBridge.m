//
//  HomeKitBridge.m
//  Inteligao
//
//  Created by Zaphod Beeblebrox on 1/15/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(HomeKit, NSObject)

RCT_EXTERN_METHOD(addEvent:(NSString *)name location:(NSString *)location)

@end
