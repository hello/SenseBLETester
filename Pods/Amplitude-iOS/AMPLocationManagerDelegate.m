//
//  AMPLocationManagerDelegate.m

#import "AMPLocationManagerDelegate.h"
#import "Amplitude.h"

@implementation AMPLocationManagerDelegate


- (void)locationManager:(CLLocationManager*) manager didFailWithError:(NSError*) error
{
}

- (void)locationManager:(CLLocationManager*) manager didUpdateToLocation:(CLLocation*) newLocation fromLocation:(CLLocation*) oldLocation
{
}

- (void)locationManager:(CLLocationManager*) manager didChangeAuthorizationStatus:(CLAuthorizationStatus) status
{
    if (status == kCLAuthorizationStatusAuthorized) {
        SEL updateLocation = NSSelectorFromString(@"updateLocation");
        [Amplitude performSelector:updateLocation];
    }
}

@end
