// -*-ObjC-*-
#import <Foundation/Foundation.h>

@interface Bookshelf : NSObject
{
  NSString* place;
  NSMutableArray* shelf;
}
-(id) initWithPlace: (NSString*)str;
@property(copy) NSString* place;
-(void) addBook: (NSDictionary*)newBook;
-(NSMutableArray*) books;
@end
