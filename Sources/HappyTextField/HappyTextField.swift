import UIKit
import HappyColors


@IBDesignable
open class TextField: UITextField {
    
    @IBInspectable public var insetX: CGFloat = 14 {
       didSet {
         layoutIfNeeded()
       }
    }
    @IBInspectable public  var insetY: CGFloat = -4 {
       didSet {
         layoutIfNeeded()
       }
    }
    public var darkStyle: Bool = false {
        didSet {
            if darkStyle == true {
                textColor = .flatWhite
            } else {
                textColor = .flatBlack
            }
        }
    }
    
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupStyle()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupStyle()
    }
    
    private func setupStyle() {
        layer.borderWidth = 2
        textColor = .flatBlack
        font = UIFont.systemFont(ofSize: 19, weight: .medium)
        layer.borderColor = UIColor.flatWhiteDark.cgColor
        layer.cornerRadius = 6
    }
    
    
    // placeholder position
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX , dy: insetY)
    }

    // text position
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX , dy: insetY)
    }
}

