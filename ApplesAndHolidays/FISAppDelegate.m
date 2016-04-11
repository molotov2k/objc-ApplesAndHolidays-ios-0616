//  FISAppDelegate.m


#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSMutableDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}


/* suppliesBySeasonAndHoliday =
@{ @"Winter" : [@{ @"Christmas Day"    : [@[ @"plastic tree"   ,
                                             @"tinsel"         ,
                                             @"lights"         ,
                                             @"presents"       ,
                                             @"wreath"         ,
                                             @"mistletoe"      ,
                                             @"Christmas music"
                                             ] mutableCopy],
                   @"New Year's Day"   : [@[ @"party hats"     ,
                                             @"kazoos"         ,
                                             @"champagne"
                                             ] mutableCopy]
                   } mutableCopy],
   @"Spring" : [@{ @"Memorial Day"     : [@[ @"American flag"  ,
                                             @"memoirs"
                                             ] mutableCopy]
                   } mutableCopy],
   @"Summer" : [@{ @"Independence Day" : [@[ @"fireworks"      ,
                                             @"barbeque"       ,
                                             @"picnic blanket" ,
                                             @"sunscreen"
                                             ] mutableCopy],
                   @"Labor Day"        : [@[ @"white jeans"    ,
                                             @"shopping bag"
                                             ] mutableCopy]
                   } mutableCopy],
   @"Fall"   : [@{ @"Veteran's Day"    : [@[ @"barbeque"       ,
                                             @"American flag"
                                             ] mutableCopy],
                   @"Thanksgiving Day" : [@[ @"turkey"         ,
                                             @"gravy"          ,
                                             @"mashed potatoes",
                                             @"acorn squash"   ,
                                             @"cranberry sauce",
                                             @"napkins"
                                             ] mutableCopy]
                   } mutableCopy]
   }; */



- (NSArray *)pickApplesFromFruits:(NSArray *)fruits {
    NSPredicate *isApple = [NSPredicate predicateWithFormat:@"self MATCHES 'apple'"];
    return [fruits filteredArrayUsingPredicate:isApple];
}


- (NSArray *)holidaysInSeason:(NSString *)season inDatabase:(NSDictionary *)suppliesBySeasonAndHoliday {
    return [suppliesBySeasonAndHoliday[season] allKeys];
}


- (NSArray *)suppliesInHoliday:(NSString *)holiday inSeason:(NSString *)season inDatabase:(NSDictionary *)suppliesBySeasonAndHoliday {
    return suppliesBySeasonAndHoliday[season][holiday];
}


- (BOOL)holiday:(NSString *)holidayName isInSeason:(NSString *)season inDatabase:(NSDictionary *)suppliesBySeasonAndHoliday {
    return [[suppliesBySeasonAndHoliday[season] allKeys] containsObject:holidayName];
}

- (BOOL)supply:(NSString *)supplyName isInHoliday:(NSString *)holiday inSeason:(NSString *)season inDatabase:(NSDictionary *)suppliesBySeasonAndHoliday {
    return [suppliesBySeasonAndHoliday[season][holiday] containsObject:supplyName];
}


- (NSDictionary *) addHoliday:(NSString *)holiday toSeason:(NSString *)season inDatabase:(NSDictionary *)suppliesBySeasonAndHoliday {
    suppliesBySeasonAndHoliday[season][holiday] = @"";
    return suppliesBySeasonAndHoliday;
}


- (NSDictionary *) addSupply:(NSString *)supply toHoliday:(NSString *)holiday inSeason:(NSString *)season inDatabase:(NSDictionary *)suppliesBySeasonAndHoliday {
    [suppliesBySeasonAndHoliday[season][holiday] addObject:supply];
    return suppliesBySeasonAndHoliday;
}


@end