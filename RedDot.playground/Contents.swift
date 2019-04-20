//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class NotificationDot: UIView {
    
    var unreadLabel: UILabel!
    
    init(numberOfUnread: Int, frame: CGRect){
        let updatedFrameWidth = NotificationDot.calculateNeededWidth(notificationCount: numberOfUnread, currentWidth: frame.width)
        let newFrame = CGRect(x: 0, y: 0, width: updatedFrameWidth, height: frame.height)
        super.init(frame: newFrame)
        setupView()
        unreadLabel = initializeLabel(unreadInt: numberOfUnread, frame: newFrame)
        self.addSubview(unreadLabel)
    }
    
    //initWithCode to init view from xib or storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("Incorrectly tried to initialize from xib,nib or storyboard")
    }
    
    //common func to init our view
    private func setupView() {
        backgroundColor = .red
        layer.cornerRadius = frame.size.height/2
        clipsToBounds = true
    }
    
    private func initializeLabel(unreadInt: Int, frame: CGRect) -> UILabel{
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: frame.width * 0.8, height: frame.height * 0.8))
        label.font = label.font.withSize(60)
        label.textColor = UIColor.white
        label.minimumScaleFactor = 0.1
        label.adjustsFontSizeToFitWidth = true
        label.numberOfLines = 0 // or 1
        label.center = CGPoint(x: frame.width/2, y: frame.height/2)
        label.textAlignment = .center
        label.text = String(unreadInt)
        return label
    }
    
    private static func calculateNeededWidth(notificationCount: Int, currentWidth: CGFloat) -> CGFloat{
        let findPower = notificationCount/10
        var newWidth: CGFloat!
        
        switch findPower {
        case let x where x < 1:
            newWidth = currentWidth
        case let x where x < 10:
            newWidth = currentWidth * 1.25
        case let x where x < 100:
            newWidth = currentWidth * 1.5
        case let x where x < 1000:
            newWidth = currentWidth * 1.75
        case let x where x < 10000:
            newWidth = currentWidth * 2
        default:
            print("Notification count does not fit any cases.")
        }
        return newWidth
    }
}

//in playground we should have a red circle
let view = NotificationDot(numberOfUnread: 1, frame: CGRect(x: 0, y: 0, width: 20, height: 20))

