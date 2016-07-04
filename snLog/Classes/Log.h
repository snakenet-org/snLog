//
//  Log.h
//  Pods
//
//  Created by Marc Fiedler on 04/07/16.
//
//

#import <Foundation/Foundation.h>

@interface Log : NSObject

+ (void)initialize;

+ (void)printLog:(NSString *)symbol Tag:(NSString *)tag Text:(NSString *)string;

+ (void)e: (NSString *)tag Text:(NSString *)string;
+ (void)i: (NSString *)tag Text:(NSString *)string;
+ (void)w: (NSString *)tag Text:(NSString *)string;

+ (void)enableModule: (NSString *)module;
+ (void)disableModule: (NSString *)module;

@end
