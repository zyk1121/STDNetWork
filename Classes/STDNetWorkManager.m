//
//  STDNetWorkManager.m
//  Pods
//
//  Created by zhangyuanke on 16/2/15.
//
//

#import "STDNetWorkManager.h"
#import "AFNetworking.h"

@implementation STDNetWorkManager

+ (void)getFromURLPath:(NSString *)path
             parameter:(NSDictionary *)parameter
              finished:(STDRequestCallback)finishied
{
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];  
    [sessionManager GET:path parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        // nothing
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        finishied(responseObject, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        finishied(nil, error);
    }];
}

+ (void)postToURLPath:(NSString *)path
            parameter:(NSDictionary *)parameter
             finished:(STDRequestCallback)finishied
{

}

@end
