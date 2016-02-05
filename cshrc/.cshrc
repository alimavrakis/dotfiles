#ident	"@(#).cshrc	0.9	2001/07/08 FDS"
#
# This file is controlled by root. For user changes,
# please edit ~/.cshrc-user.
#
if ( -f /etc/.cshrc ) then
	source /etc/.cshrc
endif

if ( -f ~/.cshrc-user ) then
	source ~/.cshrc-user
endif
