//
//  NSString+LTJson.m
//  YJBM
//
//  Created by yelon on 15/12/7.
//  Copyright © 2015年 yelon. All rights reserved.
//

#import "NSString+LTJson.h"

@implementation NSData (LTJson)

- (id)lt_jsonObject{
    
    if (!self) {
        
        return nil;
    }
    
    NSError *error = nil;
    id result = [NSJSONSerialization JSONObjectWithData:self
                                                options:NSJSONReadingMutableContainers
                                                  error:&error];
    if (error) {
        
        NSLog(@"error==%@",error);
        return nil;
    }
    return result;
}
@end

@implementation NSString (LTJson)

- (id)lt_jsonObject{

    if (!self) {
        
        return nil;
    }
    
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];

    return [data lt_jsonObject];
}
@end

@implementation NSObject (LTJson)

- (NSData *)lt_jsonData{
    
    if (!self||![NSJSONSerialization isValidJSONObject:self]) {
        
        return nil;
    }
    
    NSError *error = nil;
    NSData *result = [NSJSONSerialization dataWithJSONObject:self
                                                     options:kNilOptions error:&error];
    
    if (error) {
        
        NSLog(@"error==%@",error);
        return nil;
    }
}
@end

@implementation NSDictionary (LTJson)

- (NSString *)lt_jsonString{

    NSData *result = [self lt_jsonData];

    if (!result) {
        
        return nil;
    }
    
    NSString *resultString = [[NSString alloc]initWithData:result
                                                  encoding:NSUTF8StringEncoding];
    
    return resultString;
}
@end

@implementation NSArray (LTJson)

- (NSString *)lt_jsonString{
    
    NSData *result = [self lt_jsonData];
    
    if (!result) {
        
        return nil;
    }
    
    NSString *resultString = [[NSString alloc]initWithData:result
                                                  encoding:NSUTF8StringEncoding];
    
    return resultString;
}
@end
