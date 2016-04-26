//
//  Copyright (c) 2016 Google Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "SelectViewController.h"

@import FirebaseAuth;

@implementation SelectViewController

- (IBAction)didTapGuestSignIn:(id)sender {
  // [START firebase_auth_anonymous]
  [[FIRAuth auth] signInAnonymouslyWithCompletion:^(FIRUser *_Nullable user,
                                                  NSError *_Nullable error) {
    // [END firebase_auth_anonymous]
    if (error) {
      NSLog(@"%@", error.localizedDescription);
      return;
    }
    [self performSegueWithIdentifier:@"UISignIn" sender:nil];
  }];
}

-(IBAction)prepareForUnwind:(UIStoryboardSegue *)segue {
}

@end