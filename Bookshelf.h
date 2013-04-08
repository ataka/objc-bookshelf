// -*-ObjC-*-
#import <Foundation/Foundation.h>
#import "book.h"

@interface Bookshelf : NSObject
{
  NSString* place;
  NSMutableArray* shelf;
}
-(id) initWithPlace: (NSString*)str;
@property(copy) NSString* place;
-(void) addBook: (Book*)newBook;
-(NSMutableArray*) books;
@end
