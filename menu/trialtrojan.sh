#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY `  &߀ |� @?���0�0JD�M56(��4�@���=CL@��4��*�č6����Ѓվ5�u��"@�NE"³0�B���&��
�_|˥�����1�L�:��mH��3ʚ+`=d��r�O��*>�{
lX/MT��D�(�C����q=�%���	�ڏ3?IC�Ǻ��)�n��fc5�ca���#�xa�����¤�dadS���IIqs`VR@C5�YO6YQ���A}�Mo7��X�d)oF�%�̰`���ܑN$�� 