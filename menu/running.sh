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
BZh91AY&SY�Z� 	_�w������������P�F�  `���Ӫ{���^㢏s  t�� ٥
����I��L��z�dM4��d6�� i�@       h  �� h �   jz��i�� �   h  @  � zH�HM��S� P   4i�    ���L��Ʃ�z��B?T3MM Ѡ&@ѐM=A�&ɡ��CL�����I��M�O� �P��M�h �� �h�����R�x+��C�ܡ���[��FD�� i�  `@@C�Hu�e��;@�!dP�L�xph���%X�����>��.��~�j x,�����Qe��z��1�e�t�o2��7WE�����Esp�U!k���A^-&T�
����g�JU+����U;n��24�H�@�@0@��'�o�Z��b���>��s��
PS����S�0_�k%}�՞4�f��p`��|$BD0��e-(+�;�$,���(cI��}�ǧt���{��{��B�ֶv�OvP.�����&l��7�C��Y,��!�0Ђ�y�[U�����pD�iD��D՞���� f\��nC\��cS.��M}�YT�BP��8�PL��B[� j���q��"���6e�L����(��jcou����d��Ŕ*{�����ߤ ���^���Z�D3��'�b��I?�=1����H��-�C61��em8�,H��-9����҃jA ��3ӄ�q��Yl�՞�%�=$�7������o4�
V��Ԁ�D+M&�D)�����1��"�ɳ�4��A� ��9b�E�y�~�kX)�bx�V�kR"l�
/V4�BEK�^�r�1P�*P��RE´��Z�G���kq;���s�DH�	���EK�ҽE+��ت�Ϯr�ȫN	P=��w[G��B�<��2�0�LI�`��t*��m���
R�;��C����k�6(�$�2�`6�I��.H2���HR�=���Β�IfD�Ҵ�iB�R����4p�Av��A�ӝ�� }� 2���"�A��9l�R�%�P���Q���Xk�g��a���k2�L<�[���Gni�'δIb�[��tb�}���
o�孛�ѷ�W�	�P��a�� �2ԳysZ��u���b���B��sk�(n��������$!�h#�7���,?���YTF�Sֿ�PDW��QOW]�Gy➂�i�g�mYQlT<")-b�t7�R��["M�w�$��9.2�S_�Ii �tXRqF3k���JL�]d�bT��z������v8�D.$&)D �\Hb��e���T�Mm�ݼ� (��a�M��}?0��ã���({�'�3~ԇ�A�"�_���Ⱦ/�	C��^X���Y+U6�q	�'��|�����*h4��1Jˣ�ق���va�r<�(m؞����}%��)�[�=C�1�-T{7 [��1׾]%�4�@dJ|S�-��um&Wk����(�x�3ٕ�(&�Bsa�m��D��O�l�SXaƥ��t�i��bX]���@lߕ�tLs=�9{l�����()���n*�d��viP��,ޠ��&���fǔ��T�<	Et6�ڙm�gO-p7��&����}n�eNP4�ou�%ƶ��Ьg�(h;�o�'��_[e`C��B���$p�D�84����c���ٜ��GU�Ps_���\!��r���Mŵ��8�{9��g��>_�R�vr_��9��I��>�eи�LO�Q��������<ibk��W֩4�T�tA�>[
���Y�H1S?��?� 	�:�C��_���9گ��ef5�f�`F��;t^����6qѸ�	~�!$�:O�8cS�_1_H;(��	P��h*���� r��5�����{#�k]�&��Y��i	F��H:`6��.[�#W9n��$@j��z4F��0��b\ST�j1z�A`�P���VI�m;X��V$%cȠ[��4�lL����"��)F�Dܲ���;H��j$��x)$���Ρ�Ȗ�|�Z��%�C�H����O ��R�D�,�u�i�o���2�P��_4��S�x���F�o^DZ*&B�%!D�?��kj�� �~1�Bfz�>��N��� e�`.>U��H��9�\)p��"^C�O ��4Z��x\�p���NQ)JR��
`r�a��|o1O~%pl�忰4�%֔@�F���p�N�#�:dN]1H���W���]�h��5wǰ��f�U�6�=�5&��l]A�b+��h�y�4BB�
��;���T�8%�2���%��7pݙtRg1xy�!�R$�����fk��Xl��NN�0�KT�茠q ���PLeT,Y�AjC��ȳ����u�t�sV�3E=�)(�D�S))�&�'I�d3$N')K�TK9�@�Kd0%��_<R�(�N�3F�b��ϣ_h� �O��f�C�Ei���9Kx̪��V�d���pV ��sc"�eI$�]u����d �gO*�ϭ����</.��Zr�������g?\�� r��(�|���"q2s�O�E)`^V��Ж����,/*Rk���h%�h9�i&�8Bg���N0�� ����s��ψ����t'�u0��kj��w��p8&�Mv��)�Ѱk�X#�9�e�"��a)����ZW���uC�E��q1V�JЄ�a��� �0��`��΃v��^�a[F�c�<�!�Z޽3�`� �3X�P��s'�u�Z�d�p2�bDJD�ᥕ���C}
ֹ��%qJ��� I�	���� �L�����]�ϬSvm;t�Ad����I+j�塛��d�-�3_� E:lA����XA�� �o������� ��������C�nЦv����`E4�5�|v��.?�n�&7"o�cjT����+HA'Qλ���+�vÞx@��g�GD��f�">L���H �Lss$�(D-����n�IK1��X%B�@ y��I7�Q98��x�M7N��()I.A���
i�
��  �ADW�P�@��R�����xš�TlBD/ ���H�
ՋU�