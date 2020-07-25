import UIKit

var str = "Hello, playground"

func closureTest(param:String,completeHandler:@escaping () -> (),failureHandler:@escaping () -> ()) {
    if param == "test" {
        completeHandler()
    }
    else {
        failureHandler()
    }
}

closureTest(param: "test", completeHandler: {
    print("성공")
}, failureHandler: {
    print("실패")
})


