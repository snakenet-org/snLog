//
//  Log.m
//  Pods
//
//  Created by Marc Fiedler on 04/07/16.
//
//

#import "Log.h"

@implementation Log

static NSMutableDictionary *modules;
static bool initialized;

+ (void)initialize {
    modules = [NSMutableDictionary dictionary];
    
    initialized = true;
}

+ (void)printLog:(NSString *)symbol Tag:(NSString *)tag Text:(NSString *)string {
    if( !initialized ){
        [self initialize];
    }
    // only print out if we are building for debug
    #ifdef DEBUG
    
    NSDate *currTime = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY/MM/dd-hh:mm.SSSS"];
    
    if( modules[tag] != nil && modules[tag] ){
        printf("(%s)[%s][%s]: %s\n", [[formatter stringFromDate:currTime] cStringUsingEncoding:[NSString defaultCStringEncoding]], [symbol cStringUsingEncoding:[NSString defaultCStringEncoding]], [tag cStringUsingEncoding:[NSString defaultCStringEncoding]], [string cStringUsingEncoding:[NSString defaultCStringEncoding]]);
    }
    
    #endif
}

+ (void)e: (NSString *)tag Text:(NSString *)string {
    [self printLog:@"EE" Tag:tag Text:string];
}

+ (void)i: (NSString *)tag Text:(NSString *)string {
    [self printLog:@"II" Tag:tag Text:string];
}

+ (void)w: (NSString *)tag Text:(NSString *)string {
    [self printLog:@"WW" Tag:tag Text:string];
}

+ (void)enableModule: (NSString *)module{
    modules[module] = @true;
}

+ (void)disableModule: (NSString *)module{
    modules[module] = @false;
}

@end
