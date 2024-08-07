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
BZh91AY&SY��pd 2�{������������p�F��  ` �}��k
��#�[��% t����J���Xv�hf�
�m��IB���H��TJ��Km�@�I�ڦ�3Q���M�dO(��yM hz����z  L�  	"
zj25=&�S��	Pi��z��'��4h���m   0               0               $�!0��!�1z��~��&4��4��)�2mOMM0�!�@�Bh�@OSS����3
?T�zjOD��2dz�h�����"��ma��S�����^ �`n�B����M��M#�㚳D��d`���^bb�to%c-μ�8h��~�N�'���D�2��_>q�f\E�j[~a�>ԭ�Eq�w�n�~ЦYe�J��P�'�yfS�����c�(*�z����n���C�]Fe"ߚ� @0���X�7�
�:l�ln�R4Ie
!�+���.l���Oĵ�/^+����͎AFyT�ن�vjŉv�Ϫ��(g��^��~�;T��(��6��snǑw-�A�i�6iw9|X^��ssU,��S�[��ipc�+�K�ڗ%�tx��ك�>��9��y2h+[�1�ȑ*+��0K��irTv������5�Q���%��6W��&���@Q�;��		��n���>�#�}���ɠ?�v��]^�Oe��gy���gz���XRc�YQ3��b���ZL�K��r�$ё�t���6qo0�N���	��qE���|���@�};x/��m�Eܯ�`��$SuX�B���U�BѓU��П�H OA2E�i�R���Z�S{���R��� ����[nR�*��������F����eپmΏT�v8��7i�b�����iK#�Y����ȁB�]�,�$	��1� H�X��;��5n��j͛�ڹ���͋�|kaOdS�9��&���IE�3��-Q�,M6��!����v����ˆ_傗y��@��Ky�1p�R�_����+��y�<�&��{�/�}���iGU����P��*�{�Pj��Ƙ�5Q����7��ߟ����U��וkckZ��yE��L��ѓ(��;���u���|0��徲/ڂۺ��X��g�����������m�k��D���r��x�=�s/T��X��t��)��?E2
B��^=����i8w(lb�p����{���Հ�I�{�7ۚ�!�� ��&0*UPA�{#KiGq�H�i�/!�!WQ��16bN�D~���9�eHR�����E:)Ґj�����k5G��PUgF���#�oȶ�I���	w/�<�ZdY�+J�RG4wE��x㐛���i�G(��Q8`��!��j���Z
��%�ʞ�/!IC?4�:Ù������-��p�Nc3�:����'��q}F�O�@�+�� �j,i����@�� jԲn�!p6d�Y��1��Q�2���N�7ѳZ���;8[��� ��R]�gQ�|�ϝ��H����k^NFG�u+R��~�ϛO3��^5���u�$��z��˘j] {�T1�x�O&y�NRVO ���M�rԠ��lgX$����%�2�t$4q8U1-�U�ط�sos��u@M*o�X�s��b�tn]�F7\��7�����tZ �K%�=�P�idΒIWi굸؁�*j�J��������t��n(~�t�Yk���䧱6}}w�s{£����R�aT�uI2&)D;V�������v��ǧ8�A�!$J�s	�
��}U&��˼\G����hj����T��,�mf��ң�����
ֹ��T�:����!��͋�~B�Z�ے�^[�d	�=�NA8	P���!�%�T��S��xo�/��ǘ8p��L�װMk�#b
�QO�If��*$�;���.����/޻>
�t��%JJ�8��Һ$#�A������iO��H�!�2\?��R0�pZ��\��q/C%(R���Y�J!I�!l�V����Т���CY!pŠ~�4P�p%0@��A��u�����?V���T��I�b@�L��.N�z�j��T�_׆�z���-�!�C��\�)%� Y5j����$0�Q�����v5A{k���8i�M��^�X��`��_��3�I#ͮ0�B=0�r��?p�pK�@*D�b E:9���@D�� ��jN��B[Aa�;�Z��08*{a���@����%�� q�x^'6�P7n�J����� ���~��`	��i��.-��`'b��>������RA�j ����Y�v�<���ٳ	WMC/�+���L^tJH�H��.�'� jV����b����o�Mt�߇
aIR���b�a�i�UN�c��z�����r�'����:zv��~]a�� ��CN���Vȿx����}< C�=P �TH���b�H�n 5{�ª#B�2�����=���[]Naf�����J�Qq��}���ѩK㔳I+� �m<� X��S�OlL�zu	Aa.<��&^(drh�O�O��3< 	��t_M��(F�\�O|���fLYH��7��"D�;�5(޸^��] g�����`��w��FPB�a��)��8��2f��p� �l�c7;��2>"�ё��R�Hakt"V���P�hxtx�eU%+U�	Uf�I)��4�O�o�ߪТ��>~X`�FƉ�R6�Y��$A�3��d�5<�5�b)Á���@��'��1�5������@�Ͱ�������w�\DM�L�cٵXk����� g�8�!��+e�����ׁ�a��)Q�O6n����qp��S
u4�ZJ�=0[�Gk��R�y�G[j��/�m�o����;��"���Ʌ����c��7��M��~�K�~������U�V��eD�R��y@:F��.?I������T)8���J��J���-<�|YP��� �C�JW������x� '�!�@"�H�<D$��upޏ� �B��j����iC�tM����6��I�ԋ> ap�`����#�R���z�6"nt쾶�{-��<�Gww@Y��$EO\$ �����kc��>
h�����w���8�J�$ xI �P�#�`X���� T��E��%� �=�[�,K�r�߭�gaL�A�_��b�u;������/GE�O�v6�M��"�M���m�H&����?8b}�s���)>�����-¥�S �Uhm�ǁ�٭A^@�ך��k5�ȱm�@Zu����y�"�Z����D3-~��vt�k٬�L3MYȆP
�T���j��V��������������0Koʸ1R��z.к.p�6p��μM�* ^r���������`���F5 ��!�ݩ������q������%u=���r�OK�:0��<d|t��fg(��B��7k�ڕ/ )�mv�P�p**��D�F&�\H@�*B��Y�dX30�dB�h�5ւ`�kR�
=a�`&|E�o�ISE�	�Z�B�������p\˙�Kרn|��wk��� �w#Р�Ƈ1���t[��Y��$�y�h�v���8^BHB��Jy��rk�=��lq�`r)�S�i�hj��e��[�#�
��S��#,��T��HRZ�Vw�K�󁧗u6fn�i��l�F����@�H��0��B@�M��Y9���۞�#�c��Jjor`E!�q�Y-����֡@�9C݂�v.`�y�k�S���;��b�˵;q��F�h(qx� ���-����1��!`��,髉QJ�*ā9�����rK���X0	u}a"-�nq�-E+l\���`07�5�~ 3� D��B1`@`������P��2�@��0+�� � �����G֤S�,R���{��e�V��PH}ς�]۴Y�n�}����;o(����ү� �~|�$Qqa�i�z��`���]�B*^��W��?�ȡ��Ȫ}�����>#WB��o�e��𻤈Gn��m��l�į�� ��L�j=ݣ�r9��kT�S��}�V��ϼ��~  	 N4(iYmHR��g!*���jy)��9m1Ѽ3<��a�r���p ��"	��!��֠a�@�����l� l3�eZ�R�Z'&�4�E
����� D�I�]��U����lU�� 1ݴSh<�P��47�(���]�/�P�@��_D�"T�\kL 7	P��V���ׯ\�tC��ɏD�r
�v<�יK�7x��S�/s����/�	�܆TRB�Xj0+�[X���حEE9T��	��*��^����.������r� �q����� 9YA���t
�D���ѩM
d��
�)T� xԹު�K�(�`)w��L���R碇~�@�2Ć�a���qHY=$�2�h���)}@��u���c�,z��åC�.�5��`(i�7h$B@�� �dJ$C��V�is�qTq[3�L�5���mO`��b��^���	����d�+���%"�ا͚�IY�R(�yL\U[(ҴK���ʮ�%šMŒ	P �X �R�dL�Yj�#��O$ψ�x�BFA���9gN��/�9v o�}�GCJo-�M����� �������O����1�e�UyA9	�ZyNuRn��/�� �\A6� l X��b(��A�@��'�M�	y:�#� pbD	�D"�m=�:�ЗUUA������4	Ϲ��r}�A��Ӈ6�Z:@d�
g��Co UM<���!U@N<�<�P�'����֫{{��� �/��"��PӀQ~ɜ/%t�J"��t w����q��+*��e�d�)�����0���Q��C -D'&
^�XSd.�,��/Q��N^Zd�p�[F�y�Mݜ	�Aʎ�(�ĥ��и�e��3+�G G���r�#�4�.��\{����}�p��c�>9��45�08��r�WC�{Pަ Q�iS$�rh�2nX!T��dT�8��R��G͢�@ℋpp��&�5 )[D�aшY�b�!s������Y0���|�V�/*�o"2�� �����lE,�f�ĩc a���H!"n&a��� =�
"�_�6+(��S��JM/��=;�D���P��f�@��`Z(��I�B
��4𼈟e| �Qڱ�t��΁��Q �@�@@��xWE0�e� ��P�)
��ux�_Tx���	a�F�����)|�^��H��������"�"���V��	��pE��J�
��I�I ��U�T1H�`s�wX:������l��N�uy���J;M!�ا����xC'��.s���d�`1)0JUb�dH<��`����b"K��Ap,#���䠗� �3sU.�[��E4��J�RX3���]�l�ȃ��ds��`�����)�12U�#"��3h� �+���*C@�%f�� =��-1H��N$+h%�*��n��tD���\X#"D {�!��g��\r�:L¡��,���Z��3�pډ�jw�ꇜ_������W�	(2"Mw�22��Î�p�`� ���V���Ҝ��"��|�) � YR�H���ew	���Ȳ���9r֣-T�s�Rʒ�J(���D�<p[$΢�Z�t�"�}j�:��v�@]�Ȱ/�x����U6��H�kE_y�=�@sw�O?-:�Z&`i`�b���@�d �D�S���ӣ`n�!��@;�؛�h�{�h�_B�؍��h"4��@X�a��D�GY��d<��@�,X��Xaڛ�^��p&p��>����3�u�J<q</���x����Pz�B��t����0,Sj��w�T�W��w
�g,���E�]�؀�t���m�80P,�(�<�b�b��<��� +������;�s��JaZ7]{�q�!���:���^yE޹�ڐ�t����iS�u��B�����������,��r.%�*�xC
�P�4!C�'dJ8~�0@����'�@*����g�a�C��ϼ���=g�HH��<�@�e��`�~u����,�,=�/Yƥ�8Mp��b��#��w��?/�Z�b�GSZq�M��Ʈ���J�0+C95do�9���fi�1"��|�F��Q,-���N��l���� ��'���@((�(��� ?��@������T�� *�
�����*���!A�D�����ߪ���,`� ?��恠*��TD��Ԃ1]
�=";)�)��K� 