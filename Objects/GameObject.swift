import SpriteKit
import GameplayKit

class GameObject : SKSpriteNode {
    
    init(imageString: String, initialScale: CGFloat) {
        // initialize the GameObject with an image
        let texture = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        super.init(texture: texture, color: color, size: texture.size())
        setScale(initialScale)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
