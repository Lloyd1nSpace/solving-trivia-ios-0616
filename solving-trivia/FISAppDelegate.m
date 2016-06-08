//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [self solveTrivia];
    
    return YES;
}

- (NSString *)solveTrivia; {
    
    NSDictionary *stateCapitals =          @{ @"Alabama"       :	@"Montgomery"    ,
                                              @"Montana"       :	@"Helena"        ,
                                              @"Alaska"        :	@"Juneau"        ,
                                              @"Nebraska"      :	@"Lincoln"       ,
                                              @"Arizona"       :	@"Phoenix"       ,
                                              @"Nevada"        :	@"Carson City"   ,
                                              @"Arkansas"      :	@"Little Rock"   ,
                                              @"New Hampshire" :	@"Concord"       ,
                                              @"California"    :	@"Sacramento"    ,
                                              @"New Jersey"    :	@"Trenton"       ,
                                              @"Colorado"      :	@"Denver"        ,
                                              @"New Mexico"    :	@"Santa Fe"      ,
                                              @"Connecticut"   :	@"Hartford"      ,
                                              @"New York"      :	@"Albany"        ,
                                              @"Delaware"      :	@"Dover"         ,
                                              @"North Carolina":	@"Raleigh"       ,
                                              @"Florida"       : 	@"Tallahassee"   ,
                                              @"North Dakota"  :	@"Bismarck"      ,
                                              @"Georgia"       :	@"Atlanta"       ,
                                              @"Ohio"          :	@"Columbus"      ,
                                              @"Hawaii"        :	@"Honolulu"      ,
                                              @"Oklahoma"      :	@"Oklahoma City" ,
                                              @"Idaho"         :	@"Boise"         ,
                                              @"Oregon"        :	@"Salem"         ,
                                              @"Illinois"      :    @"Springfield"   ,
                                              @"Pennsylvania"  :	@"Harrisburg"    ,
                                              @"Indiana"       :	@"Indianapolis"  ,
                                              @"Rhode Island"  :	@"Providence"    ,
                                              @"Iowa"          :	@"Des Moines"    ,
                                              @"South Carolina":	@"Columbia"      ,
                                              @"Kansas"        :    @"Topeka"        ,
                                              @"South Dakota"  :	@"Pierre"        ,
                                              @"Kentucky"      :	@"Frankfort"     ,
                                              @"Tennessee"     :	@"Nashville"     ,
                                              @"Louisiana"     :	@"Baton Rouge"   ,
                                              @"Texas"         :	@"Austin"        ,
                                              @"Maine"         :	@"Augusta"       ,
                                              @"Utah"          :	@"Salt Lake City",
                                              @"Maryland"      :	@"Annapolis"     ,
                                              @"Vermont"       :	@"Montpelier"    ,
                                              @"Massachusetts" : 	@"Boston"        ,
                                              @"Virginia"      :	@"Richmond"      ,
                                              @"Michigan"      :	@"Lansing"       ,
                                              @"Washington"    :	@"Olympia"       ,
                                              @"Minnesota"     :	@"St. Paul"      ,
                                              @"West Virginia" :    @"Charleston"    ,
                                              @"Mississippi"   :	@"Jackson"       ,
                                              @"Wisconsin"     :	@"Madison"       ,
                                              @"Missouri"      :	@"Jefferson City",
                                              @"Wyoming"       :	@"Cheyenne"     };
    // Created a dictionary of all the States as Keys & all of their corresponding Capital Cities as Values.
    
    for (NSString *state in stateCapitals) {
        
        NSMutableArray *stateLettersArray = [[NSMutableArray alloc] init];
        
        NSString *city = stateCapitals[state];
        // Utilizing this for-in loop was an easy way to identify each individiual city & state as NSStrings. Also created a NSMutableArray stateLettersArray that we'll be adding the individual state letters into
        
        for (NSUInteger i = 0; i < [state length]; i++) {
            
            unichar stateLetters = [state characterAtIndex:i];
            NSString *statesCharacters = [NSString stringWithFormat:@"%c", stateLetters];
            [stateLettersArray addObject:statesCharacters];
            // Put this for loop inside the for-in loop to be able to access the letters of each state & added those objects to the stateLettersArray.
            
        }
        
        BOOL correctState = 1;
        // Defining the BOOL I'll be utilizing to find the correctState for the trivia question. We're still inside the initial for-in loop.
        
        for (NSString *stateLetter in stateLettersArray) {
            
            NSMutableArray *cityLettersArray = [[NSMutableArray alloc] init];
            
            for (NSUInteger i = 0; i < [city length]; i++) {
                
                unichar cityLetters = [city characterAtIndex:i];
                NSString *cityCharacters = [NSString stringWithFormat:@"%c", cityLetters];
                [cityLettersArray addObject:cityCharacters];
                // Replicating what I did to pull out the letters in each state to do the same with cities.
                
            }
            
            for (NSString *cityLetter in cityLettersArray) {
                
                NSString *lowercaseCity = [cityLetter lowercaseString];
                NSString *lowercaseState = [stateLetter lowercaseString];
                
                if ([lowercaseCity isEqualToString:lowercaseState]) {
                    
                    correctState = 0;
                    
                }
                // Utilized a for-in loop with my mutable array cityLettersArray & lowercased the string to ensure capitalization doesn't matter. The if statement is comparing the contents of the strings & essentially proving the BOOL to be False if they share any common characters.
                
            }
            
        }
        
        if (correctState) {
            
            return state;
            NSLog(@"\n\n\n\n\n%@\n\n\n\n\n", state);
            // This if statement is still within the larger for-in loop (the first we implemented) however it's outside of the other loops. Scope is super important in this lab.
            
        }
        
    }
    
    // separate states into their own array
    // lowercase and remove spaces
    // loop through the states
    // get the value for the state key -> this is the capital
    // loop through the characters of the capital
    // check if the state string contains any of those characters
    // if ([stateString containsString:capital[)
    
    return @"";
    // Since the method is returning NSString, I just returned an empty string. If our BOOL correctState proves true, it will return said state.
    
}

@end
