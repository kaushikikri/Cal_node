PGDMP         7                z            demo1    11.14    11.14     ?
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ?
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    41789    demo1    DATABASE     ?   CREATE DATABASE demo1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE demo1;
             postgres    false            ?            1259    41809    calc    TABLE     ?   CREATE TABLE public.calc (
    operation character varying NOT NULL,
    result character varying NOT NULL,
    date_time timestamp without time zone
);
    DROP TABLE public.calc;
       public         postgres    false            ?            1259    41790 
   calculator    TABLE     ?   CREATE TABLE public.calculator (
    first numeric NOT NULL,
    second numeric NOT NULL,
    operator character varying NOT NULL,
    result numeric NOT NULL,
    "time" timestamp without time zone NOT NULL
);
    DROP TABLE public.calculator;
       public         postgres    false            ?
          0    41809    calc 
   TABLE DATA               <   COPY public.calc (operation, result, date_time) FROM stdin;
    public       postgres    false    197   m       ?
          0    41790 
   calculator 
   TABLE DATA               M   COPY public.calculator (first, second, operator, result, "time") FROM stdin;
    public       postgres    false    196   ?       ?
   b   x?]??0?3T?9N"|jq??????[???PA?)???F?s?R?#_JV?+k?ʈe???C?????,?J????y?}??:(?i???_-?+      ?
   ?   x?}?[N!@??*??G3?'}???????x??	???????7d>???R/?)??9!?bg?W?MIZH??????S#Z?3??A?H8???Q)?5G?}?/?f?j(??? k?q?'l??R&?M#????8?????=?3????5?Y?`??[?^ךN???????? ???&??W%?.;o/???6?Z?a?Mn?q!zf?>>??e     