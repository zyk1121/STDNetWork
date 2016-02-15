//
//  STDNetWorkManager.h
//  Pods
//
//  Created by zhangyuanke on 16/2/15.
//
//

#import <Foundation/Foundation.h>

/**
 *  callback typedef
 *
 *  @param data    data parsed from json, may be NSArray or NSDictionary
 *  @param error   error if anything is wrong
 *
 */
typedef void (^STDRequestCallback)(id data, NSError *error);

@interface STDNetWorkManager : NSObject

+ (void)getFromURLPath:(NSString *)path
             parameter:(NSDictionary *)parameter
              finished:(STDRequestCallback)finishied;

+ (void)postToURLPath:(NSString *)path
            parameter:(NSDictionary *)parameter
             finished:(STDRequestCallback)finishied;

@end
