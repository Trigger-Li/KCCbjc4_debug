//
//  main.m
//  KCObjcBuild
//
//  Created by cooci on 2022/6/22.
//

/**
 KC 重磅提示 调试工程很重要 源码直观就是爽
 ⚠️编译调试不能过: 请你检查以下几小点⚠️
 ①: 编译 targets 选择: KCObjcBuild
 ②: enable hardened runtime -> NO
 ③: build phase -> denpendenice -> objc
 ④: team 选择 None
 ⑤: 进入不到源码 微信联系
 iOS进阶内容重磅分享 微信认准: KC_Cooci 麻烦来一个 👍
 */

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "MyClass.h"
#import "MySubClass.h"
#import <objc/message.h>


int aMethod(int a){
    printf("aMethod = %d\n", a);
    return  a;
}

void myMsgSend(id a, ...){
    va_list ap;
    va_start(ap, a);
    int c =  va_arg(ap, int);
    printf("第二个参数:%d\n",c);
    va_end(ap);
    printf("myMsgSend\n");
}

int a[10];

int *getInt(void){
    return a;
}


extern void instrumentObjcMessageSends(BOOL flag);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSLog(@"Hello, Runtime!");
        
//        Class Run = objc_allocateClassPair(NSObject.class, "Run", 0);
//        objc_registerClassPair(Run);
//        class_addMethod(Run, @selector(aMethod), (IMP)aMethod, "v@:");
//        id run = [[Run alloc] init];
//        [run performSelector:@selector(aMethod)];
//
//        NSObject *objc = [NSObject alloc];
//
//        class_addMethod(MyClass.class, @selector(aMethod:), (IMP)aMethod, @encode(int(*)(int)));
//
        
        
//        id myObj = [MyClass alloc];
//        MyClass *my = (MyClass *)[myObj init];
//        [my myMethod0];
//        [my myMethod1];
//        [my myMethod2];
//        instrumentObjcMessageSends(true);
//        [my performSelector:NSSelectorFromString(@"myMethod6")];
//        [my myMethod3];
//        [my myMethod4];
//        [my myMethod5];
//        [my instanceMethod:9];
//        ((int (*)(id, SEL, int))objc_msgSend)(my, sel_registerName("instanceMethod:"), 9);
//        [my performSelector:@selector(aMethod:) withObject:@9];
////
//        MySubClass *sub = [[MySubClass alloc]init];
//        struct objc_super s;
//        s.receiver = sub;
//        s.super_class = [MyClass class];
//        ((int (*)(struct objc_super*, SEL, int))objc_msgSendSuper)(&s, sel_registerName("instanceMethod:"), 9);
        
//        [my performSelector:@selector(instanceMethod:) withObject:@9];
//        my.number = @(arc4random_uniform(10));
//        my.integer = (NSInteger)arc4random_uniform(10);
//        my.Str = [NSString stringWithFormat:@"aaaaaa"];
//        my.atomic = (NSInteger)arc4random_uniform(10);
//        my.weak = NSObject.new;
//        [my instanceMethod];
        
//        int (*methodPointer)(int) = aMethod;
//        methodPointer(1);
        
//        typedef id (*MY_SEL)(int);
//        MY_SEL a = nextMethod;
//        MY_SEL a_sel = aMethod;
//        a_sel(1);
//
//        IMP a = aMethod;
        
//        IMP a;
//        a = (void (*)(void))aMethod;
//        int (*b)(int) = (int (*)(int))a;
        
//        ((int (*)(int))(myMsgSend))(1);
//        myMsgSend(my, 'a', 19);
//        sel_registerName
//        IMP b = (IMP)(void *)a;
        
        
        
//        Protocol *p = objc_allocateProtocol("newProtocol");
//        protocol_addProtocol(p, objc_getProtocol("BaseProtocol"));
//        objc_registerProtocol(p);
//        class_addProtocol(MyClass.class, p);
        NSLog(@"Hello, World!");
        
//        MyClass *my = [[MyClass alloc]init];
//        int num = 9;
//        SEL sel = sel_registerName("instanceMethod:");
//        NSMethodSignature *signature = [my methodSignatureForSelector:sel];
//        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
//        [invocation setArgument:&num atIndex:2];
//        invocation.selector = sel;
//        invocation.target = my;
//        [invocation invoke];
//
//        int result;
//        [invocation getReturnValue:&result];
//        NSLog(@"result = %d", result);
        
//        int *b = getInt();
//        b[11] = 2;
//        printf("%d\n",b[0]);
    }
    return 0;
}

