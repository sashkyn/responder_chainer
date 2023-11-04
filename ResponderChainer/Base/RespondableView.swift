//
//  RespondableView.swift
//  ResponderChainer
//
//  Created by Aleksandr Martseniuk on 04.11.2023.
//

import UIKit

class RespondableView: UIView {
    
    private let id: String
    
    init(id: String) {
        self.id = id
        super.init(frame: .zero)
        log("\(self) inited")
        
        log("nextResponder is \(String(describing: next))")
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        //print("hitTest: point - \(point), event: \(String(describing: event))")
        log("hitTest: point - \(point)")
        let view = super.hitTest(point, with: event)
        log("result - \(String(describing: view))")
        return view
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        log("point: inside point - \(point)")
        let isPointInside = super.point(inside: point, with: event)
        log("result - \(isPointInside)")
        return isPointInside
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        log("touchesBegan")
        super.touchesBegan(touches, with: event)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        log("touchesEnded")
        super.touchesEnded(touches, with: event)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        log("touchesMoved")
        super.touchesMoved(touches, with: event)
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        log("touchesCancelled")
        super.touchesCancelled(touches, with: event)
    }
    
    private func log(_ message: String) {
        print("\(id) - \(message)")
    }
}
