import Cocoa

class About {
  private var credits: NSMutableAttributedString {
    let credits = NSMutableAttributedString(string: "Based on Maccy (MIT License)\nCopyright (c) 2025 Alex Rodionov",
                                            attributes: [NSAttributedString.Key.foregroundColor: NSColor.labelColor])
    credits.addAttribute(.link, value: "https://github.com/p0deje/Maccy", range: NSRange(location: 9, length: 5))
    credits.setAlignment(.center, range: NSRange(location: 0, length: credits.length))
    return credits
  }

  @objc
  func openAbout(_ sender: NSMenuItem?) {
    NSApp.activate(ignoringOtherApps: true)
    NSApp.orderFrontStandardAboutPanel(options: [NSApplication.AboutPanelOptionKey.credits: credits])
  }
}
