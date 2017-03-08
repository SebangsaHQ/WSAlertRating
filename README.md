# WSAlertRating

A library to help you show rating alert. This library actually an Alertview but i made subclass from it to be rating alert.

![alt text](https://i.imgur.com/O3u56H1.gif "WSAlertRating")

# Usage

don't forget to import WSAlertRating.h file to your controller
```
#import WSAlertRating.h
```
then call AlertRating using this below code :

```Objective-c
    WSAlertRating *alertRating = [[WSAlertRating alloc] initAlertControllerWithTitle:@"Title Alert Rate" message:@"this is message, you can write anything here."];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *send = [UIAlertAction actionWithTitle:@"Send" style:UIAlertActionStyleDefault handler:^(UIAlertAction *alert){
        
        // you can do anything you want here when send button touched
        
        if (alertRating.ratingScore) //
            NSLog(@"catch rating score with alertRating.ratingScore %@", alertRating.ratingScore);
        
    }];
    [alertRating addAction:send];
    [alertRating addAction:cancel];
    [self presentViewController:alertRating animated:YES completion:nil];
```
