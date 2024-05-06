#import <Foundation/Foundation.h>

%hook NSURLSession

- (NSURLSessionDataTask *)dataTaskWithRequest:(NSMutableURLRequest *)request {
    NSString *url = request.URL.absoluteString;
    if (![url isEqualToString:@"https://api.blocket.se/client-apps/ios/bootstrap-info"]) {
        return %orig;
    }

    // Spoof user agent heaader.
    [request setValue:@"Blocket/24.03.18 (com.blocket.blocket; build:4; iOS 15.4.0) Alamofire/5.6.4" forHTTPHeaderField:@"User-Agent"];
    return %orig;
}

%end
