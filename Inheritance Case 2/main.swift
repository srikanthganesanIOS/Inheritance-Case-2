

class Child {
    
    var childsName : String
    
    init() {
        self.childsName = "Joseph Mary Ganesan"
        print("Child init()")
    }
}

class Mother : Child {
    
    var mothersName : String
    
    init(mothersName : String){
        
        self.mothersName = mothersName
        print("In new init()")
        
    }
    
    override init() {
        print("In override init()")
        self.mothersName = "Mama Mary"
    }
    
}

var mother1 : Mother = Mother()
var mother2 : Mother = Mother(mothersName: "Mother Mary")
print(mother1.mothersName)
print(mother2.mothersName)


/* Result
 ---------
 In override init()
 Child init()
 In new init()
 Child init()
 Mama Mary
 Mother Mary
 Program ended with exit code: 0

 */
