#import "Bookshelf.h"
@implementation Bookshelf
-(id) initWithPlace: (NSString*)str
{
  if ((self = [super init]) != nil){
    place = str;
    shelf = [[NSMutableArray alloc] init];
  }
  return self;
}
@synthesize place;

-(void) addBook: (Book*) newBook
{
  [shelf addObject: newBook];
}
-(NSMutableArray*) books
{
  return shelf;
}
@end
