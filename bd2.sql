PGDMP     9                     {         
   penjualan2    13.9    13.9     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24668 
   penjualan2    DATABASE     j   CREATE DATABASE penjualan2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE penjualan2;
                postgres    false            ?            1259    24685    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying NOT NULL,
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    24701 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tgl_bayar date,
    total_bayar integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    24677    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying NOT NULL,
    jk character(1),
    no_telp integer,
    alamat character varying
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    24669    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying NOT NULL,
    no_telp integer,
    alamat character varying
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            ?            1259    24693 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    keterangan character varying
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false            ?          0    24685    barang 
   TABLE DATA           R   COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    202   ?       ?          0    24701 
   pembayaran 
   TABLE DATA           Y   COPY public.pembayaran (id_pembayaran, tgl_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    204          ?          0    24677    pembeli 
   TABLE DATA           P   COPY public.pembeli (id_pembeli, nama_pembeli, jk, no_telp, alamat) FROM stdin;
    public          postgres    false    201   "       ?          0    24669    supplier 
   TABLE DATA           O   COPY public.supplier (id_supplier, nama_supplier, no_telp, alamat) FROM stdin;
    public          postgres    false    200   ?       ?          0    24693 	   transaksi 
   TABLE DATA           ]   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    203   R       9           2606    24692    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    202            =           2606    24705    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    204            7           2606    24684    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    201            5           2606    24676    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    200            ;           2606    24700    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    203            >           2606    24706    barang fk_supplier_barang    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    202    200    2869            ?   `  x?E?A?? E??)<??D??lb7?͈???T?~j??/????L~~?X=br??u???D0?-&?3LH?_??G?gjj?H??b?-TK??GwP??$;??.I?H-?n.0??L?????^?|V:???.???Gy??6?j?
?=??q?5A??/
Ҩ5????>33??d?O<m?u??銋?)????%???B??????S??un??d???????7N?-B5?#?S6S=]8H??QRh?lq???)sBC?\???i4F?IP??3???sɠ1%?j????\j?42	?g?g{ɢ??K???Za-??й?|??J????O1H???=~!??N$?G      ?   ?   x?U?Ar? е?K;Xw???Q???U?2? ?*?Wŗü????%*D???@j??ҡF
Q????h?<?!?iS'M?c?? =?????u	5????*???ER??䕤2??p??*aq?=??@???p????m????u?m?????r??o????E?^x?c???lh?uk`Z?$vZ
?Y?f}k????Ȕ-???Dϟ?f??{?5#bJ????????
?#?_???[
駗??绔?]N?	      ?   ]  x?m?ɲ?0E??Ǥ?$?ɦ)c[6?D????犠?Wف?z>jY??l???R??r??}??JJZv???9?8?e4?T?$.?ga??<?4N???}?+?Н???|?M??-Iiie???o??aG?پ?׎???JO3?\??@?Y????q\)A?٥HC?Pu????E҈?jA~BtA?j?-E???~??????g??g?yFm1P??i葯TK7cM2?g?UG??S:o???>*??sr6Gjs??vK???H?e?2?????~???sr:??"kriR??Z???N??:+???p??1_ݒ??'?$??"ur??V??????lє???\X?????FK???QqA????v????}r(Ew%7>?_ ?E?i??v????T?[%P???w1,`????I}?<|Xs??;?&????MFV?^???6??p???tA??
?g???,]??|???	????ȆTi?`???	????q[?h8????P?}?????f??6???x??F!??gs
I?>?W?????4??'3?1?????/-?.c5??u???M
P????,?d????z 7?'??{?n>.????Pu?8??珪????`      ?   ?  x?e?K?? D??:?D???-ߢ??M??%??b&??OQb?;?2??H?}???^Q??8pq?޺??(?S???6y:?rJٹ?s??h??i???]????????]^2????P?nU?^?<e	~?'??vo?[?|?7?/u?]D1֛?C?}?&??^?rܭ???{??m??r/??OtD~fӗ~^%?k??8?}|]?Z	p??*k??Q?sb???7??؎??1?5?/m?n??j???5????a?n>ڜ?Jo?u/\??$?SXT??>?b?NͼsU.?$|4??q??C??ԡ????Y?w??[kAВ??w??????3`5??
?	bf?C5???1K?R?S????H?0Z??????!?,?U)?^??%^/p0W^?????C???0WG? n?ժ?-wg???]?G?????D??|0?????      ?     x?M?MJA??u?^`?????˷u%???cE?.!???{H5?sϮ??????g?? ;8?1?=?b:VP??/^?????׌??????t???^3^?wP?k???	jz????9?0VԹ""	??@G!#%????P?ҁ?`!?ҁ?`!??ҁ?`!\?ҁ?`!ܑҁ?`!<?ҁ?`!?(??B????C?Bz??7?-?*??B????C?Bz??-D??J:?-?*??B????C?Bz??-D??餅r	?޷m??E?U     