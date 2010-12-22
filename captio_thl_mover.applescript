(*
 Title: captio_thl_mover
  
 File: captio_thl_mover.scpt
  Provides applescript application to move todo messages from Mail to The Hit List
  
 Version:
  2010.12.22
  
 Copyright:
  2010 Mike Joseph
  
 Author:
  Mike Joseph <mike@mode3.net>
  
 License:
  GNU GPL 2.0 - http://opensource.org/licenses/gpl-2.0.php
*)
on idle
	addTasksFromUnread()
	-- the timeout in seconds, currently 900 or 15 minutes.
	return 900
end idle

on addTasksFromUnread()
	tell application "System Events" to set isRunning to the count of (processes whose name is "Mail")
	if isRunning is 0 then
		return
	end if
	tell application "Mail"
		-- check for unread messages that have 'Todo' in the subject and are from 'captio' or my wife ;)
		set unreadMessages to (messages of inbox whose read status is false and subject contains "Todo" and (sender contains "captio" or sender contains "shannon"))
		set archiveBox to "[Gmail]/All Mail"
		repeat with unreadMessage in unreadMessages
			set messageText to (content of unreadMessage)
			set messageSubject to (subject of unreadMessage)
			tell application "The Hit List"
				tell inbox to make new task with properties {title:messageSubject, notes:messageText, start date:current date}
			end tell
			
			-- archives the message
			move unreadMessage to mailbox archiveBox of account "Gmail"
		end repeat
	end tell
end addTasksFromUnread