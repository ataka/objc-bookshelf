#import <Foundation/Foundation.h>
#import "book.h"

@implementation Book
@dynamic title;

-(void) setTitle :(NSString*)t
{
  [t retain];
  [title release];
  title = t;
}
-(id) setAuthor :(NSString*)a
{
  author = a;
  return self;
}
-(NSString*) title {
  return title;
}
-(NSString*) getAuthor {
  return author;
}
@end
