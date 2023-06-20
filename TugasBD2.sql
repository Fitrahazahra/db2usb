PGDMP         *    
            {            retail_final    14.6    14.6     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16446    retail_final    DATABASE     p   CREATE DATABASE retail_final WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE retail_final;
                postgres    false            “            1259    16452    barang    TABLE     §   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(50),
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ‘            1259    16462 
   pembayaran    TABLE     y   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tanggal_bayar date,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ”            1259    16457    pembeli    TABLE     †   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(50),
    jk character(1),
    alamat character varying(30)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            —            1259    16447    supplier    TABLE     ß   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(50),
    no_hp character(15),
    alamat character varying(60)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            ’            1259    24717 	   transaksi    TABLE     Ñ   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_pembeli integer,
    keterangan character varying(100)
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false                      0    16452    barang 
   TABLE DATA           R   COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    210   ◊                 0    16462 
   pembayaran 
   TABLE DATA           P   COPY public.pembayaran (id_pembayaran, tanggal_bayar, id_transaksi) FROM stdin;
    public          postgres    false    212                    0    16457    pembeli 
   TABLE DATA           G   COPY public.pembeli (id_pembeli, nama_pembeli, jk, alamat) FROM stdin;
    public          postgres    false    211   Ô                 0    16447    supplier 
   TABLE DATA           M   COPY public.supplier (id_supplier, nama_supplier, no_hp, alamat) FROM stdin;
    public          postgres    false    209   C                 0    24717 	   transaksi 
   TABLE DATA           I   COPY public.transaksi (id_transaksi, id_pembeli, keterangan) FROM stdin;
    public          postgres    false    213   &       n           2606    16456    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    210            r           2606    16466    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    212            p           2606    16461    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    211            l           2606    16451    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    209            t           2606    24721    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    213            u           2606    24702    supplier fk_barang_supplier    FK CONSTRAINT     ú   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT fk_barang_supplier FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.supplier DROP CONSTRAINT fk_barang_supplier;
       public          postgres    false    209    209    3180            v           2606    16467    barang fk_supplier_barang    FK CONSTRAINT     ö   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    210    3180    209                  xúeí›n€0ÖØôß‡l∞DˇƒóN∑vA,òÉ"v£4Z£⁄ñ;ÓÊ∑%;AÄçŒE~á$<õã™Mèe´∫™÷¯U'îDQ“ˇB,HH(˙°«gÛÓéŒUxà≈∂@†(| ÇQ≤ë†x—}k:çtgIºÖÿ√÷h,ıI©6» §◊b÷X€ìkåûÑ©ÅÑÖVÍb*‹ËŒÙ˛=/áí)´î∫—˜Œ™^aaı
idﬁì±g	ÎˆÏ¨FAÿvƒ≠≥‘[ñl…aÁ^˛âÒi˘,«	´˘Ç∏«’P∏.cUá_k‘‹™oFFÏ∞Íñª)≠˚€(;Î˛…,•ÑÔ™i‹ùMm⁄~"AfÇ2ÉüZ’ç∆á;è'Ê9%1:á[±ºì$Sï1<;ÙîÁ[‹π◊ò™L¿á#«(”ªƒ$ìïK¯—∂F,Ûª˜ºñOÒEqØqQä‡`8)∆	î_ã≤∆ÕêÄR5˝`_ÒI’ÍﬂàEDW‡ìã'%	•≥#ZŒî)¶qBeï1¡ÊqFŒ-≈∞Sˆ4(ã+]´7N`7û/ú*dSiê8lJ†®?má£G√k°ø<~o.∆I)<ÎP0 ô‹¶#?]∆§k7ÔP8ıs-°™^˜hzÉr~î<I.«õVnÃõ‚©◊÷∫w≈´sç…œLºDôÄoŒûµ∫¯}π©!®Ùc}ê°˙Ôœã≈‚?Ç:◊         ÿ   xúU—¡√0D—≥’ã2Ä,∞zIˇu‰£xLr}£,Îç≠uòòuô]‚—6Dæ§“M!ÉÙ~µ∫.h@vø á–	ç¢	MË,∫ áÊø) øIªÂ/(äÚ‚ÇÆøã*–zàåP⁄Î›^ÙK¥üZ4 ⁄O´¯$⁄œüˆ'D˚YÌK(Ì] ™FºÔ¯±/Ú àw+2àxE\4‚˝,‚¢e¸, x∆q/‚Éåq<ä¯”åq¸*b’¡8Q-„'Ï,IÛá˘™⁄Á–JV‘Ñ{úº∏⁄€G{øZkaõ         D  xúmíMnÉ0Ö◊√)zÇ &	Ñ%Mv%JUU™ÿLÇC&1Q¨àûæc£V-d˚˘˘˝`dí@ÜJ‰pƒ∫≈@
	i›°Åvÿí÷»≈
““xˆﬁò¶∂zh	¶‘»¯≠¢á'Ï,SæËåµw∏(£Ü∞U7óíç)—∂ƒÜ#hÆŒn	πÌªQ‘*GV∞9ìq	9<+sqNºzMémã¶bsû‡D{ÜMÖ%˘É5‰‘˜É◊˚iG}ÈëîÊzy£’›¬ò∑Ëí˛3∑Ñ¸Í_ %§ßÒSl‹çKò/`Göy;··OªÈªÍÁ\¿^iÍ/∏ıπ∆≤ò%ãµOû˙àòq7«˜GS3/∂≥∫EøI(ÿ”◊¥M·jÆ}ü~ﬁGÚ{h:Õ0õ£Ω„ƒ?ó–Á˛ΩQ<A5∂»2         ”  xúuT€r⁄0|6_°h2÷ÕñI¶ôíîñí∂3ºP[ÚHv;ÙÎ{$95–ÜfåwèVª{ gãÓ›õﬂ=ËN÷⁄£Â"œ1&9|ÇÁ[πóÆì⁄Ï¨Q^À	¡$Ôúí^£˚N6Õ•Ÿiß≥\xO(#/Å?–—R’≤ì»4íß[Â–öí¸ΩËΩÏ À"v·¬œ^"YÀyı$G*¡e¢Œ„Ωt¿‚ë5¡è÷Ó–ı¶EÀ~Ôïï˚¶w¿ÂÑVÅ[,rõ˛•fë]…NÔ† I√˚†ÎW∏w/U£ZY#Ωå£*>"èdàl⁄∂µ!î π≥p√·¶ ´‚–ÔZ⁄F£k€4Ω—[Paç®¥ Í+]I"y$ØÓfÛË•¯Bfû ó¢^ÜGâ¥È4Z9ΩÈM∏ H®ÉÁhå 8)Â≈≥ÆuÎ√x„	y%NÅ)—PÉgmè=˘À¿·g£SÆSﬂ9â>X≥ã`¬ˇNq>Ëüˆ‘†@@8ENΩg…óÈ;t»¿Nß!%îMÂÙ¶”dˇ  ïÏfÑs,äjmn¥êä∑Kåƒ¢$q˙Ìt–NÀlf≠kB´Bjf◊õßpá≤J∞tÃE6≠/æXøëœkìÖé3h*|%‡KZïÉı0cÖhrË£mu’? m◊;˝zÏé°ŸJŸQj8)xâ1eÑ}≥∆6}}∞ LÒ~Ræ”*Ã√PfñW%œkyÄ¥◊∞⁄§8]ºôÈîÉäÅ=ï®*¡Û·∫Éà¿aâÛî7Íº˛@Ñx1ÿx&û•n[ËÑ>_ô–g
aú÷î±7zŒÅ"a6ÁÏ:,Áøªâ¢∫"gúù7ñëa€°¢˜µ⁄vŒ3úDJAJÃÒËl¸[e8[Zs@sª—ıΩ(Ç•HÃï›Ï;Ù¢⁄–œıÂd2˘≤µõ\         ï   xúU–;1Ñ·ﬂ%É¨Ôív´HIì˚+„f«[˛§√¬›>ﬂ«˚¸ïÙ`BYô°lÃ™ÏÃ¶ÃÆLÊPÃTNÊq%ú9ïTA*P©@§Uê
TA*√v“PÖUÿí*»TAÊX*ôc©déjò[6CjoÙ€ü„Æä•⁄ˆÜ±O¶Ü´3ØÛ_œR ,#m(     