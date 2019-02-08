import CoreGraphics
import SpriteKit

class Collision {
    
    public static func check(object1: GameObject, object2: GameObject) {
        let distance = CGPoint.Distance(P1: object1.position, P2: object2.position)
        
        
        if(distance < (object1.halfHeight! + object2.halfHeight!)) {
            if(!object2.isColliding!) {
                print ("Collision with \(object2.name!)")
                object2.isColliding = true
            }
        }
    }
}
