
import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var plane: Plane?
    var degToRad = 0.01745329252
    
    override func didMove(to view: SKView) {
        
        plane = Plane()
        plane?.position = CGPoint(x: 0.0, y: -500.0)
        
        addChild(plane!)
       
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        plane?.position = CGPoint(x: pos.x, y: -500.0)
    }
    
    func touchMoved(toPoint pos : CGPoint) {
       plane?.position = CGPoint(x: pos.x, y: -500.0)
    }
    
    func touchUp(atPoint pos : CGPoint) {
       plane?.position = CGPoint(x: pos.x, y: -500.0)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        //var newRotation = CGFloat(5.0 * degToRad)
        //plane?.zRotation += newRotation
    }

}
