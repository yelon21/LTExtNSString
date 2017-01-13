//
//  NSString+LTCommon.h
//  Pods
//
//  Created by yelon on 17/1/13.
//
//

#import <Foundation/Foundation.h>

@interface NSString (LTCommon)

NSString *LT_FilterString(id obj);
BOOL LT_IsEmptyString(NSObject *obj);

+ (NSString *)LT_StringJoindByComponents:(NSString *)components, ... NS_REQUIRES_NIL_TERMINATION;
@end
