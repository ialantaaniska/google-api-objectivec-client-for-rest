// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   QPX Express API (qpxExpress/v1)
// Description:
//   Finds the least expensive flights between an origin and a destination.
// Documentation:
//   http://developers.google.com/qpx-express

#import "GTLRQPXExpressQuery.h"

#import "GTLRQPXExpressObjects.h"

@implementation GTLRQPXExpressQuery

@dynamic fields;

@end

@implementation GTLRQPXExpressQuery_TripsSearch

+ (instancetype)queryWithObject:(GTLRQPXExpress_TripsSearchRequest *)object {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSString *pathURITemplate = @"search";
  GTLRQPXExpressQuery_TripsSearch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:nil];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLRQPXExpress_TripsSearchResponse class];
  query.loggingName = @"qpxExpress.trips.search";
  return query;
}

@end
