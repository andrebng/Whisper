import UIKit

public func show(whisper message: Message, to: UINavigationController, action: WhisperAction = .show) {
    whisperFactory.craft(message, navigationController: to, action: action)
}

public func show(shout announcement: Announcement, to: UIViewController, completion: (() -> Void)? = nil) {
    shoutView.craft(announcement, to: to, completion: completion)
}

public func show(whisper message: Message, withColor backgroundColor: UIColor, andTextColor textColor: UIColor, to: UINavigationController, action: WhisperAction = .show) {
    
    whisperFactory.craft(message, navigationController: to, action: action)
    
    if let _ = whisperFactory.whisperView {
        whisperFactory.whisperView.backgroundColor = backgroundColor
        whisperFactory.whisperView.titleLabel.textColor = textColor
    }
}

public func show(shout announcement: Announcement, withColor backgroundColor: UIColor, andTextColor textColor: UIColor, to: UIViewController, completion: (() -> Void)? = nil) {
    shoutView.backgroundView.backgroundColor = backgroundColor
    shoutView.titleLabel.textColor = textColor
    shoutView.subtitleLabel.textColor = textColor
    shoutView.craft(announcement, to: to, completion: completion)
}

public func show(whistle murmur: Murmur, action: WhistleAction = .show(1.5)) {
    whistleFactory.whistler(murmur, action: action)
}

public func hide(whisperFrom from: UINavigationController, after: TimeInterval = 0) {
    whisperFactory.silentWhisper(from, after: after)
}

public func hide(whistleAfter after: TimeInterval = 0) {
    whistleFactory.calm(after: after)
}
