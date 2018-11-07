# Automatic saving of mail attachments

This exercise consists of three parts:

1. rules within Apple Mail
2. an AppleScript run by the mail rules
3. a shell script run by `launchd`

There are a lot of hard coded filepaths and dependencies, so this solution is very fragile.
Apple limits a lot of functionality now, so there is not much that can be done about this.

## Setup

An intermediate file directory is required. This has to be in Downloads, currently it is Downloads/mail.
It must exist, so create it with

    mkdir -p ~/Downloads/mail

The shell script must be in the Library folder that Mail accesses for Applescripts, so copy it there
(it can't be a symlink)

    cp -f mail-save-attachment-v2.scpt ~/Library/Application\ Scripts/com.apple.mail/mail-save-attachment-v2.scpt

## mail-save-attachment AppleScript

The script name is `mail-save-attachment-v2.scpt`

The script is called by a rule in mail, and saves the attachments into `~/Downloads/mail`.
The script changes the filenames by prefixing them with the Mail rule name and a datestamp.
The script has hardcoded folders and files in it.
The download folder location is hardcoded with the user's name, so much be updated for a new user.

## Mail rules

Create as many rules as necessary, noting that the name of the rule is prefixed to the filename.
The rule name can also be used as a sub-directory name by the shell script.
To set a rule:

* Mail > Preferences... > Rules > Add Rule
* Choose an approriate name/description (noting its uses)
* Choose appropriate If clauses
* In _Perform the following actions:_
  * Set first action to _Move Message_ to mailbox _Saved-Attachments_
  * Set next action to _Mark as Flagged_ with any colour
  * Set final action to _Run AppleScript_ with _mail-save-attachment-v2_

(The above actions are helpful for debugging, and are recommended as the
Applescript solution is so fragile.)

## Shell script

The script name is `mail-move-attachments.sh`

The shell script moves the files out of `~/Downloads/mail` based on the prefix which is the Mail rule name.
It also has hardcoded file and directories (there's not much point making these flexible if the AppleScript can't be).

Most of the updates that will be needed to this file are in the `case` statement which handles creating different directory
paths based on the prefix.
Each case statement must set `destDir` to the destination dierctory.
There are no other actions that it needs to take.

All actions are logged to a logfile, again at a hardcoded location.

## Running the shell script (launchd)

A user agent `com.fusiforms.mailmove.plist` is run on behalf of
the current user, and is installed in
`~/Library/LaunchAgents`.

The shell script should be called whenever a file is added to the temporary folder
`~/Downloads/mail`.
This is achieved by using launchd's `WatchPaths` key.

The shell script is called by using `ProgramArguments` of
`/bin/sh` and `/Users/<username>/develop/mail-move/mail-move-attachments.sh`
so that settting permissions on the shellscript is not required.
