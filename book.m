#import <Foundation/Foundation.h>
#import "book.h"

@implementation Book
-(id) setTitle :(NSString*)t
{
  title = t;
  return self;
}
-(id) setAuthor :(NSString*)a
{
  author = a;
  return self;
}
-(NSString*) getTitle {
  return title;
}
-(NSString*) getAuthor {
  return author;
}
@end
