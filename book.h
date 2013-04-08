@interface Book : NSObject
{
  NSString* title;
  NSString* author;
}
@property(copy) NSString* title;
-(id) setAuthor :(NSString*)a;
-(NSString*) getAuthor;
@end
