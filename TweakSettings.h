#ifndef TWEAK_SETTINGS_H_
#define TWEAK_SETTINGS_H_

#import <Foundation/Foundation.h>

BOOL TweakEnabled();
BOOL VoteSubmissionEnabled();
BOOL ExactLikeNumber();
BOOL ExactDislikeNumber();
BOOL UseRawData();

void enableVoteSubmission(BOOL enabled);

#define EnabledKey @"RYD-ENABLED"
#define EnableVoteSubmissionKey @"RYD-VOTE-SUBMISSION"
#define ExactLikeKey @"RYD-EXACT-LIKE-NUMBER"
#define ExactDislikeKey @"RYD-EXACT-NUMBER"
#define UseRawDataKey @"RYD-USE-RAW-DATA"

#endif
