//
//  PotatsoManager.m
//  Potatso
//
//  Created by LEI on 4/4/16.
//  Copyright © 2016 TouchingApp. All rights reserved.
//

#import "Potatso.h"

@implementation Potatso

+ (NSString *) sharedGroupIdentifier {
    // this will return the main application's bundle identifier, not the target that this source file lives under
//    if ([[NSString stringWithFormat:@"group.%@", [[NSBundle mainBundle] bundleIdentifier]] isEqualToString: [NSString stringWithFormat:@"group.com.jefby.potatso"]]) {
//        NSLog(@"sharedGroupIdentifier is equal");
//    }else{
//        NSLog(@"sharedGroupIdentifier is different");
//        NSLog(@"sharedGroupIdentifier is %@",[NSString stringWithFormat:@"group.%@", [[NSBundle mainBundle] bundleIdentifier]]);
//
//    }
//    return [NSString stringWithFormat:@"group.%@", [[NSBundle mainBundle] bundleIdentifier]];

    return [NSString stringWithFormat:@"group.com.jefby.potatso"];

}

+ (NSURL *)sharedUrl {
    return [[NSFileManager defaultManager] containerURLForSecurityApplicationGroupIdentifier:[self sharedGroupIdentifier]];
}

+ (NSURL *)sharedDatabaseUrl {
    return [[self sharedUrl] URLByAppendingPathComponent:@"potatso.realm"];
}

+ (NSUserDefaults *)sharedUserDefaults {
    return [[NSUserDefaults alloc] initWithSuiteName:[self sharedGroupIdentifier]];
}

+ (NSURL * _Nonnull)sharedGeneralConfUrl {
    return [[Potatso sharedUrl] URLByAppendingPathComponent:@"general.xxx"];
}

+ (NSURL *)sharedSocksConfUrl {
    return [[Potatso sharedUrl] URLByAppendingPathComponent:@"socks.xxx"];
}

+ (NSURL *)sharedProxyConfUrl {
    return [[Potatso sharedUrl] URLByAppendingPathComponent:@"proxy.xxx"];
}

+ (NSURL *)sharedHttpProxyConfUrl {
    return [[Potatso sharedUrl] URLByAppendingPathComponent:@"http.xxx"];
}

+ (NSURL * _Nonnull)sharedLogUrl {
    return [[Potatso sharedUrl] URLByAppendingPathComponent:@"tunnel.log"];
}

@end
