//
//  main.m
//  SecondsAlive
//
//  Created by Kate Owens  on 4/26/17.
//  Copyright © 2017 Me. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [[NSDate alloc] init];
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        
        [comps setYear:1990];
        [comps setMonth:1];
        [comps setDay:18];
    
        NSCalendar *cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        
        NSDate *dateOfBirth = [cal dateFromComponents:comps];
        
        double secondsAlive = [now timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"I have been alive for %f seconds since %@.", secondsAlive, dateOfBirth);
    }
    return 0;
}
