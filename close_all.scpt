tell application "System Events"
 tell process "Notification Center"
  set theseWindows to every window whose subrole is "AXNotificationCenterAlert" or subrole is "AXNotificationCenterBanner"
  repeat with thisWindow in theseWindows
    click button "Close" of thisWindow
  end repeat
 end tell
end tell
