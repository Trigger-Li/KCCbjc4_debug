//
//  MyClass.h
//  KCObjcBuild
//
//  Created by Trigger on 2022/8/31.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN


@protocol BaseProtocol <NSObject>

@required
- (void)baseMetod;

@end


@protocol RuntimeProtocol <NSObject>

@required
@property(nonatomic, assign) NSInteger num;
- (void)runtimeMethod;

@end

@interface MyClass : NSObject
//{
//    NSInteger _num;
//}
//@property(nonatomic, strong) NSNumber *number;
//@property(nonatomic, assign) NSInteger integer;
//@property(atomic, assign) NSInteger atomic;
//@property(nonatomic, copy) NSString *Str;
//@property(nonatomic, weak) NSObject *weak;
//@property(nonatomic, strong, readonly) NSObject *readonly;

//- (int)instanceMethod:(int)a;

@property(nonatomic, assign) NSInteger num2;

- (int)myMethod0;
- (int)myMethod1;
- (int)myMethod2;
- (int)myMethod3;
- (int)myMethod4;
- (int)myMethod5;


@end

NS_ASSUME_NONNULL_END
