#
# p4 path: //depot/unix/etc/skel/local.profile
# git path for cfengine: common/redhat-profiles/skel/local.profile 
#
# This file is controlled by root. For user changes,
# please edit ~/.profile-user.
#
if [ -f /etc/.profile ] ; then
        . /etc/.profile
fi

if [ -f ~/.profile-user ] ; then
        . ~/.profile-user
fi
