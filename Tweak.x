//https://developer.limneos.net/?ios=13.1.3&framework=UIKitCore.framework&header=_UIStatusBarStringView.h
/*
%hook _UIStatusBarStringView
-(void)setText:(id)arg1  { %log; %orig; }
-(NSString *)originalText { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)initWithFrame:(CGRect)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(UIEdgeInsets)alignmentRectInsets { %log; UIEdgeInsets r = %orig; HBLogDebug(@" = 0x%x", (unsigned int)r); return r; }
-(void)didMoveToWindow { %log; %orig; }
-(void)applyStyleAttributes:(id)arg1  { %log; %orig; }
-(BOOL)wantsCrossfade { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(BOOL)prefersBaselineAlignment { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(UIAccessibilityHUDItem *)accessibilityHUDRepresentation { %log; UIAccessibilityHUDItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)setAlignmentRectInsets:(UIEdgeInsets)arg1  { %log; %orig; }
-(void)setFontStyle:(long long)arg1  { %log; %orig; }
-(void)setAlternateText:(NSString *)arg1  { %log; %orig; }
-(long long)fontStyle { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
-(void)setOriginalText:(NSString *)arg1  { %log; %orig; }
-(void)_updateAlternateTextTimer { %log; %orig; }
-(BOOL)showsAlternateText { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(void)setShowsAlternateText:(BOOL)arg1  { %log; %orig; }
-(NSString *)alternateText { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(NSTimer *)alternateTextTimer { %log; NSTimer * r = %orig; HBLogDebug(@" = %@", r); return r; }
%end





%hook _UIStatusBarStringView
//it changed all of the entires
- (void)setText:(id)text {
   
    text = @"Stefan";
    
    %orig;
}

%end
*/

/*
%hook _UIStatusBarStringView
//it changed all of the entires
- (void)setText:(id)text {
   
    text = @"Stefan";
    
    %orig;
}

%end
*/
%hook _UIStatusBarDataCellularEntry

- (void)setString:(id)string {
    string = @"Stefan is cool";
    
    %orig(string);
}

%end