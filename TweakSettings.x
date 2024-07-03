#import "TweakSettings.h"

BOOL TweakEnabled() {
     if (![[NSUserDefaults standardUserDefaults] objectForKey:EnabledKey]) {
        // Nếu không có giá trị, đặt giá trị mặc định là YES
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:EnabledKey];
    }
    return [[NSUserDefaults standardUserDefaults] boolForKey:EnabledKey];
}

BOOL VoteSubmissionEnabled() {
    return [[NSUserDefaults standardUserDefaults] boolForKey:EnableVoteSubmissionKey];
}

BOOL ExactLikeNumber() {
     if (![[NSUserDefaults standardUserDefaults] objectForKey:EnabledKey]) {
        // Nếu không có giá trị, đặt giá trị mặc định là YES
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:EnabledKey];
    }
    return [[NSUserDefaults standardUserDefaults] boolForKey:ExactLikeKey];
}

BOOL ExactDislikeNumber() {
     if (![[NSUserDefaults standardUserDefaults] objectForKey:EnabledKey]) {
        // Nếu không có giá trị, đặt giá trị mặc định là YES
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:EnabledKey];
    }
    return [[NSUserDefaults standardUserDefaults] boolForKey:ExactDislikeKey];
}
/*
void enableVoteSubmission(BOOL enabled) {
    [[NSUserDefaults standardUserDefaults] setBool:enabled forKey:EnableVoteSubmissionKey];
}
*/
