//
//  Test.hpp
//  KCObjcBuild
//
//  Created by Trigger on 2022/9/9.
//

#ifndef Test_hpp
#define Test_hpp

#include <stdio.h>


struct empty{
    
    bool isSmall() const {
        return ((uintptr_t)this & 1) == 1;
    }

};


//void aaa(int a){
//
//}
//
//int aaa(char a){
//    return 1;
//}

#endif /* Test_hpp */
