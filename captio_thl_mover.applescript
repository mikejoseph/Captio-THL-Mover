(*
 Title: captio_thl_mover
  
 File: captio_thl_mover.scpt
  Provides applescript application to move todo messages from Mail to The Hit List
  
 Version:
  2010.12.23
  
 Copyright:
  2010 Mike Joseph
  
 Author:
  Mike Joseph <mike@mode3.net>
  
 License:
  GNU GPL 2.0 - http://opensource.org/licenses/gpl-2.0.php
  
 Todo:
  Add special sender - context list
*)

set subjectFlag to "Todo"
set allowSenders to ["captio", "shannon"]

tell application "System Events" to set mailIsRunning to the count of (processes whose name is "Mail")
tell application "System Events" to set thlIsRunning to the count of (processes whose name is "The Hit List")

if mailIsRunning is 0 or thlIsRunning is 0 then
	return
end if

tell application "Mail"
	-- check for unread messages that have 'Todo' in the subject and are from 'captio' or my wife ;)
	set unreadMessages to (messages of inbox whose read status is false and subject contains subjectFlag)
	set archiveBox to "[Gmail]/All Mail"
	repeat with unreadMessage in unreadMessages
		set theContext to false
		repeat with i from 1 to (length of allowSenders)
			set messageSender to sender of unreadMessage
			if messageSender contains item i in allowSenders then
				set theContext to "@" & (item i in allowSenders)
				exit repeat
			end if
		end repeat
		
		if theContext is not false then
			set messageText to (content of unreadMessage)
			set messageSubject to (subject of unreadMessage)
			
			-- create a new task for today with the context of the sender
			tell application "The Hit List"
				tell inbox to make new task with properties {title:messageSubject & " " & theContext, notes:messageText, start date:current date}
			end tell
			
			-- archive the message
			move unreadMessage to mailbox archiveBox of account "Gmail"
		end if
	end repeat
	
end tell
