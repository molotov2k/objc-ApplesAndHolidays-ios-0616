//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (NSArray *) pickApplesFromFruits:(NSArray *)fruits;

- (NSArray *) holidaysInSeason:(NSString *)season inDatabase:(NSDictionary *)suppliesBySeasonAndHoliday;

- (NSArray *) suppliesInHoliday:(NSString *)supplies inSeason:(NSString *)season inDatabase:(NSDictionary *)suppliesBySeasonAndHoliday;

- (BOOL) holiday:(NSString *)holidayName isInSeason:(NSString *)season inDatabase:(NSDictionary *)suppliesBySeasonAndHoliday;

- (BOOL) supply:(NSString *)supplyName isInHoliday:(NSString *)holiday inSeason:(NSString *)season inDatabase:(NSDictionary *)suppliesBySeasonAndHoliday;

- (NSDictionary *) addHoliday:(NSString *)holiday toSeason:(NSString *)season inDatabase:(NSDictionary *)suppliesBySeasonAndHoliday;

- (NSDictionary *) addSupply:(NSString *)supply toHoliday:(NSString *)holiday inSeason:(NSString *)season inDatabase:(NSDictionary *)suppliesBySeasonAndHoliday;

@end
