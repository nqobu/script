# #####################################################################	#
#
#   DESCRIPTION
#	Commands for acceptance testing
#
#   AUTHOR
#	Zhoujin WU (Z)	< zhoujin.wu AT gmail DOT com >
#
#   FILE FORMAT:
#
#	^\s*HEADER\s*:\s*COMMAND\s*$
#
#   But, ...
#	/^\s*$/
#	/^\s*#/
#	/^\s*:\s*#/
#	/^\s*:\s*$/
#		comment
#
#	/^\s*:\s*COMMAND\s*#/
#		COMMAND without HEADER
#
# #####################################################################	#

#: echo comment
    #: echo comment
	#: echo comment
:# comment
:   # comment
:	# comment
	:# comment
	:   # comment
	:	# comment
:
    :
	:
:
:
:

Hello : echo World!
: echo World, twice!
    : echo World, third!
	: echo World, finally!

(2) Nice to meet you.	: echo Nice to see you. \(Hello\)
(3) Nice meeting you.	: echo Nice seeing you. \(See you\)

"Is this alien a he, she, or an it?" Be careful what you say. You don't want to offend he/she/it. : echo 4. \"Is this alien a he, she, or an it?\" Be careful what you say. You don\'t want to offend he/she/it.

Inline function test	: vrule
	   		: echo `tput lines` lines

Have a nice day ;-)	: date
			: TZ=GMT date -d @1234567890

Who am I?		: whoami
			: echo I am "$(whoami | tr '[:lower:]' '[:upper:]')"
			: tr '[a-z]' '[A-Z]' <script.cmd >/dev/null

What's different?	: [ -s script.txt ] || cp -p script.log script.txt
			: [ -s script.txt ] && diff script.log script.txt
