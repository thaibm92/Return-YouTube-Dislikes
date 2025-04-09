#import <Foundation/NSUserDefaults.h>
#import <Foundation/NSValue.h>
#import "TweakSettings.h"

BOOL TweakEnabled() {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSNumber *value = [defaults objectForKey:EnabledKey];
    return value ? [value boolValue] : YES;
}

BOOL VoteSubmissionEnabled() {
    return [[NSUserDefaults standardUserDefaults] boolForKey:EnableVoteSubmissionKey];
}

BOOL ExactLikeNumber() {
    if (![[NSUserDefaults standardUserDefaults] objectForKey:ExactLikeKey]) {
        // Nếu không có giá trị, đặt giá trị mặc định là YES
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:ExactLikeKey];
    }
    return [[NSUserDefaults standardUserDefaults] boolForKey:ExactLikeKey];
}

BOOL ExactDislikeNumber() {
    if (![[NSUserDefaults standardUserDefaults] objectForKey:ExactDislikeKey]) {
        // Nếu không có giá trị, đặt giá trị mặc định là YES
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:ExactDislikeKey];
    }
    return [[NSUserDefaults standardUserDefaults] boolForKey:ExactDislikeKey];
}

BOOL UseRawData() {
    return [[NSUserDefaults standardUserDefaults] boolForKey:UseRawDataKey];
}

BOOL UseRYDLikeData() {
    return [[NSUserDefaults standardUserDefaults] boolForKey:UseRYDLikeDataKey];
}

void enableVoteSubmission(BOOL enabled) {
    [[NSUserDefaults standardUserDefaults] setBool:enabled forKey:EnableVoteSubmissionKey];
}
