#import <Foundation/Foundation.h>
#import "book.h"

@implementation Book
@synthesize title;
-(id) setAuthor :(NSString*)a
{
  author = a;
  return self;
}
-(NSString*) getAuthor {
  return author;
}
@end
