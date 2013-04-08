@interface Book : NSObject
{
  NSString* title;
  NSString* author;
}
@property(retain) NSString* title;
-(id) setAuthor :(NSString*)a;
-(NSString*) getAuthor;
@end
