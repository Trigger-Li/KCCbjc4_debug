//
//  MyClass.m
//  KCObjcBuild
//
//  Created by Trigger on 2022/8/31.
//

#import "MyClass.h"
#import <objc/runtime.h>


struct empty{
    static const uint32_t smallMethodListFlag = 0x80000000;
    bool isSmall() const {
        return ((uintptr_t)this & 1) == 1;
    }
    
    struct big {
        SEL name;
        const char *types;
        Class imp;
    };

    struct small {
        SEL name;
        const char *types;
        Class imp;
    };
    
    static const auto bigSize = sizeof(struct big);
    static const auto smallSize = sizeof(struct small);

    
};


void newFunc(){
    NSLog(@"新添加的method6");
}

@implementation MyClass

//+ (void)load{
//    NSLog(@"MyClass +load");
//}

//- (instancetype)init{
//    if(self = [super init]){
//        _readonly = NSObject.new;
//    }
//    return self;
//}

- (int)instanceMethod:(int)a{
    NSLog(@"instanceMethod = %d", a);
    return a;
}

- (int)myMethod0{
    return 0;
}

- (int)myMethod1{
    return 1;
}

- (int)myMethod2{
    return 2;
}

- (int)myMethod3{
    return 3;
}

- (int)myMethod4{
    return 4;
}

- (int)myMethod5{
    return 5;
}

+ (BOOL)resolveInstanceMethod:(SEL)sel{
    NSLog(@"未知的方法 %@",NSStringFromSelector(sel));
    if([NSStringFromSelector(sel) isEqualToString:@"myMethod6"]){
        class_addMethod(self, sel, (IMP)newFunc, "");
        return true;
    }
    return [super resolveInstanceMethod:sel];
}


- (void)baseMetod {
    
}

- (void)runtimeMethod {
    
}

@end
