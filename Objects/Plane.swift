import SpriteKit
import GameplayKit

class Plane : GameObject {
    
    init() {
        super.init(imageString: "plane", initialScale: 2.0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
