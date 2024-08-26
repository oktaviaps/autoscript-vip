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
BZh91AY&SY����  &߀ |� @?���0��	HQ�Q�����@2@�HЙ4�!�C@��Dz�Bi�zLi�B�cC��e��#�oVM#0�
Q�d�|s�R�Ɠ�'��c_3x<^(-3lp��B��ǝ�1�=
�˚jP2,Z�U$1�H����d<�&Eӕ�L�#�p��Ky���X}�9����,�hO�M�R�#��������BB�:���C�Ѐ�A��R$_�ֈ�i��b�L`FE�R���冹!^CD�D�.�p�!o�i4