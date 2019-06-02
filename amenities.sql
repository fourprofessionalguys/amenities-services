--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3
-- Dumped by pg_dump version 11.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: amenities; Type: TABLE; Schema: public; Owner: flamingeagle9000
--

CREATE TABLE public.amenities (
    id integer NOT NULL,
    name character varying(255),
    "photoUrl" character varying(255)
);


ALTER TABLE public.amenities OWNER TO flamingeagle9000;

--
-- Name: amenities_id_seq; Type: SEQUENCE; Schema: public; Owner: flamingeagle9000
--

CREATE SEQUENCE public.amenities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.amenities_id_seq OWNER TO flamingeagle9000;

--
-- Name: amenities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: flamingeagle9000
--

ALTER SEQUENCE public.amenities_id_seq OWNED BY public.amenities.id;


--
-- Name: knex_migrations; Type: TABLE; Schema: public; Owner: flamingeagle9000
--

CREATE TABLE public.knex_migrations (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone
);


ALTER TABLE public.knex_migrations OWNER TO flamingeagle9000;

--
-- Name: knex_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: flamingeagle9000
--

CREATE SEQUENCE public.knex_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knex_migrations_id_seq OWNER TO flamingeagle9000;

--
-- Name: knex_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: flamingeagle9000
--

ALTER SEQUENCE public.knex_migrations_id_seq OWNED BY public.knex_migrations.id;


--
-- Name: knex_migrations_lock; Type: TABLE; Schema: public; Owner: flamingeagle9000
--

CREATE TABLE public.knex_migrations_lock (
    index integer NOT NULL,
    is_locked integer
);


ALTER TABLE public.knex_migrations_lock OWNER TO flamingeagle9000;

--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE; Schema: public; Owner: flamingeagle9000
--

CREATE SEQUENCE public.knex_migrations_lock_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knex_migrations_lock_index_seq OWNER TO flamingeagle9000;

--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: flamingeagle9000
--

ALTER SEQUENCE public.knex_migrations_lock_index_seq OWNED BY public.knex_migrations_lock.index;


--
-- Name: listings; Type: TABLE; Schema: public; Owner: flamingeagle9000
--

CREATE TABLE public.listings (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.listings OWNER TO flamingeagle9000;

--
-- Name: listings_amenities; Type: TABLE; Schema: public; Owner: flamingeagle9000
--

CREATE TABLE public.listings_amenities (
    id integer NOT NULL,
    amenity_id integer,
    listing_id integer
);


ALTER TABLE public.listings_amenities OWNER TO flamingeagle9000;

--
-- Name: listings_amenities_id_seq; Type: SEQUENCE; Schema: public; Owner: flamingeagle9000
--

CREATE SEQUENCE public.listings_amenities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.listings_amenities_id_seq OWNER TO flamingeagle9000;

--
-- Name: listings_amenities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: flamingeagle9000
--

ALTER SEQUENCE public.listings_amenities_id_seq OWNED BY public.listings_amenities.id;


--
-- Name: listings_id_seq; Type: SEQUENCE; Schema: public; Owner: flamingeagle9000
--

CREATE SEQUENCE public.listings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.listings_id_seq OWNER TO flamingeagle9000;

--
-- Name: listings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: flamingeagle9000
--

ALTER SEQUENCE public.listings_id_seq OWNED BY public.listings.id;


--
-- Name: amenities id; Type: DEFAULT; Schema: public; Owner: flamingeagle9000
--

ALTER TABLE ONLY public.amenities ALTER COLUMN id SET DEFAULT nextval('public.amenities_id_seq'::regclass);


--
-- Name: knex_migrations id; Type: DEFAULT; Schema: public; Owner: flamingeagle9000
--

ALTER TABLE ONLY public.knex_migrations ALTER COLUMN id SET DEFAULT nextval('public.knex_migrations_id_seq'::regclass);


--
-- Name: knex_migrations_lock index; Type: DEFAULT; Schema: public; Owner: flamingeagle9000
--

ALTER TABLE ONLY public.knex_migrations_lock ALTER COLUMN index SET DEFAULT nextval('public.knex_migrations_lock_index_seq'::regclass);


--
-- Name: listings id; Type: DEFAULT; Schema: public; Owner: flamingeagle9000
--

ALTER TABLE ONLY public.listings ALTER COLUMN id SET DEFAULT nextval('public.listings_id_seq'::regclass);


--
-- Name: listings_amenities id; Type: DEFAULT; Schema: public; Owner: flamingeagle9000
--

ALTER TABLE ONLY public.listings_amenities ALTER COLUMN id SET DEFAULT nextval('public.listings_amenities_id_seq'::regclass);


--
-- Data for Name: amenities; Type: TABLE DATA; Schema: public; Owner: flamingeagle9000
--

COPY public.amenities (id, name, "photoUrl") FROM stdin;
1	Self check-in	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/self-check-in.png
2	Air conditioning	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/air-conditioning.png
3	Bathroom essentials	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/essentials.png
4	Bedroom comforts	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/extra-pillows-blankets.png
5	Carbon monoxide detector	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/co2-detector.png
6	Coffee maker	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/coffee-maker.png
7	Dishwasher	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/dishwasher.png
8	Dryer	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/dryer.png
9	Elevator	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/elevator.png
10	Fire Extinguisher	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/fire-extinguisher.png
11	Full kitchen	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/kitchen.png
12	Free parking on premises	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/parking.png
13	Hair dryer	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/hair-dryer.png
14	Heating	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/heating.png
15	Indoor fireplace	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/indoor-fireplace.png
16	Iron	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/iron.png
17	Pool	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/pool.png
18	Private hot tub	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/hot-tub.png
19	TV	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/tv.png
20	Smoke detector	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/smoke-detector.png
21	Washer	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/washer.png
22	Wifi	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/wireless-internet.png
23	Suitable for events	https://amenities-images.s3-us-west-1.amazonaws.com/Amenities/suitable-for-events.png
24	Smoking allowed	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/smoking-allowed.png
25	Baby bath	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/baby-bath.png
26	Baby crib	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/crib.png
27	Bathtub	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/bathtub.png
28	Children's books and toys	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/childrens-books-toys.png
29	Game Console	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/controller.png
30	Garden or backyard	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/garden-backyard.png
31	High chair	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/high-chair.png
32	Pets allowed	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/pets-allowed.png
33	Pool toys	https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/pool-toys.png
\.


--
-- Data for Name: knex_migrations; Type: TABLE DATA; Schema: public; Owner: flamingeagle9000
--

COPY public.knex_migrations (id, name, batch, migration_time) FROM stdin;
5	20190516185530_initial.js	1	2019-05-31 12:19:59.771-06
\.


--
-- Data for Name: knex_migrations_lock; Type: TABLE DATA; Schema: public; Owner: flamingeagle9000
--

COPY public.knex_migrations_lock (index, is_locked) FROM stdin;
1	0
\.


--
-- Data for Name: listings; Type: TABLE DATA; Schema: public; Owner: flamingeagle9000
--

COPY public.listings (id, title) FROM stdin;
1	back-end
2	cultivate
3	withdrawal
4	methodology
5	Coordinator
6	plum
7	Street
8	Markets
9	ivory
10	redefine
11	Salad
12	PNG
13	Group
14	Tasty
15	Nakfa
16	Technician
17	architect
18	impactful
19	online
20	Analyst
21	motivating
22	Texas
23	invoice
24	Mission
25	architectures
26	virtual
27	China
28	Bike
29	Buckinghamshire
30	Buckinghamshire
31	forecast
32	hard drive
33	Intelligent
34	invoice
35	Practical Cotton Mouse
36	focus group
37	Ways
38	Kids
39	Buckinghamshire
40	24/7
41	Shirt
42	Human
43	blue
44	input
45	Down-sized
46	Money Market Account
47	Concrete
48	Forge
49	Concrete
50	bandwidth
51	European Unit of Account 9(E.U.A.-9)
52	parallelism
53	deposit
54	Plaza
55	New York
56	system
57	Fresh
58	Investment Account
59	neural-net
60	encoding
61	PNG
62	yellow
63	HTTP
64	backing up
65	client-driven
66	installation
67	Ergonomic
68	white
69	ROI
70	Equatorial Guinea
71	Turkey
72	ADP
73	Brunei Dollar
74	productize
75	deposit
76	Ohio
77	Gloves
78	Ergonomic
79	Iceland Krona
80	Personal Loan Account
81	indexing
82	Branding
83	web-enabled
84	Computer
85	Shirt
86	Ergonomic
87	Shirt
88	Pakistan Rupee
89	SQL
90	North Dakota
91	generating
92	ivory
93	Japan
94	Slovenia
95	1080p
96	Dynamic
97	analyzing
98	national
99	index
100	back-end
\.


--
-- Data for Name: listings_amenities; Type: TABLE DATA; Schema: public; Owner: flamingeagle9000
--

COPY public.listings_amenities (id, amenity_id, listing_id) FROM stdin;
1	24	78
2	17	10
3	21	78
4	1	69
5	17	50
6	12	4
7	1	48
8	25	66
9	33	32
10	5	98
11	9	82
12	18	4
13	19	93
14	16	27
15	1	56
16	6	63
17	21	48
18	2	64
19	11	48
20	14	29
21	3	58
22	23	94
23	18	20
24	27	78
25	30	41
26	3	32
27	3	27
28	4	39
29	31	79
30	24	68
31	8	71
32	5	77
33	4	29
34	12	14
35	10	69
36	13	38
37	30	84
38	8	36
39	31	12
40	13	88
41	3	15
42	30	8
43	13	91
44	30	39
45	1	22
46	31	26
47	3	29
48	16	7
49	28	41
50	27	64
51	20	51
52	3	83
53	26	20
54	6	78
55	24	82
56	26	90
57	11	9
58	32	9
59	14	84
60	27	45
61	7	86
62	13	79
63	3	10
64	23	75
65	33	56
66	19	13
67	2	12
68	9	11
69	9	42
70	2	76
71	18	64
72	22	20
73	9	93
74	10	64
75	23	99
76	7	48
77	13	30
78	33	4
79	8	5
80	22	73
81	17	39
82	7	38
83	3	12
84	25	35
85	21	68
86	16	32
87	10	22
88	4	14
89	8	15
90	15	62
91	28	41
92	28	62
93	4	100
94	31	78
95	26	91
96	31	85
97	1	3
98	24	71
99	13	97
100	3	57
101	2	57
102	20	24
103	28	45
104	19	43
105	24	41
106	32	45
107	22	4
108	27	29
109	32	44
110	22	78
111	2	69
112	15	77
113	9	52
114	4	30
115	10	69
116	24	3
117	13	76
118	16	70
119	24	17
120	5	1
121	23	81
122	21	19
123	11	13
124	9	69
125	18	71
126	5	51
127	33	78
128	19	85
129	1	6
130	14	71
131	10	22
132	8	49
133	26	87
134	12	64
135	19	61
136	9	90
137	2	4
138	16	17
139	32	13
140	15	2
141	19	70
142	26	3
143	18	49
144	28	84
145	33	21
146	26	5
147	18	22
148	32	53
149	6	62
150	5	20
151	18	71
152	26	22
153	32	7
154	2	81
155	30	64
156	15	7
157	29	19
158	27	47
159	26	86
160	17	16
161	17	84
162	28	70
163	25	56
164	13	51
165	4	24
166	18	21
167	3	95
168	1	36
169	28	62
170	28	26
171	6	44
172	1	92
173	1	33
174	33	60
175	8	81
176	12	62
177	16	69
178	9	100
179	23	40
180	8	76
181	26	41
182	14	35
183	18	82
184	28	51
185	19	61
186	17	90
187	11	15
188	3	64
189	16	20
190	25	40
191	4	42
192	4	74
193	24	88
194	20	11
195	3	71
196	24	57
197	11	65
198	10	16
199	22	80
200	30	43
201	6	84
202	11	30
203	6	14
204	15	17
205	1	25
206	1	92
207	19	57
208	10	55
209	16	64
210	5	92
211	21	21
212	30	47
213	23	30
214	21	73
215	28	95
216	29	18
217	5	19
218	13	82
219	24	64
220	9	11
221	29	98
222	29	91
223	20	48
224	1	92
225	4	28
226	11	93
227	7	51
228	18	17
229	11	79
230	1	24
231	25	97
232	27	13
233	10	87
234	3	76
235	24	3
236	17	85
237	20	65
238	22	98
239	22	22
240	32	38
241	31	49
242	12	52
243	10	22
244	9	90
245	31	87
246	21	22
247	17	72
248	7	79
249	1	79
250	22	8
251	10	99
252	32	100
253	8	92
254	11	39
255	30	55
256	31	73
257	8	4
258	21	46
259	1	99
260	28	25
261	19	8
262	24	1
263	5	30
264	31	9
265	14	51
266	32	24
267	22	33
268	15	56
269	3	73
270	29	71
271	25	19
272	2	70
273	11	78
274	22	17
275	11	46
276	32	41
277	31	7
278	18	25
279	26	54
280	32	79
281	18	46
282	12	52
283	25	2
284	3	54
285	22	28
286	27	91
287	19	3
288	8	42
289	20	30
290	29	17
291	31	78
292	26	19
293	33	77
294	15	91
295	29	77
296	27	72
297	24	3
298	6	64
299	15	92
300	17	63
301	4	46
302	10	52
303	14	34
304	6	25
305	31	16
306	14	28
307	10	26
308	19	32
309	14	38
310	27	85
311	14	87
312	11	78
313	32	37
314	31	78
315	15	76
316	30	14
317	5	11
318	30	24
319	15	81
320	5	19
321	1	73
322	9	13
323	33	42
324	11	43
325	19	80
326	30	39
327	5	79
328	5	67
329	1	35
330	2	37
331	5	32
332	5	13
333	14	67
334	11	87
335	19	41
336	2	92
337	21	17
338	2	56
339	18	58
340	32	83
341	15	8
342	18	28
343	20	28
344	4	55
345	14	83
346	5	84
347	3	31
348	26	75
349	7	19
350	22	90
351	15	49
352	29	90
353	1	79
354	19	47
355	4	44
356	27	29
357	15	65
358	21	76
359	18	77
360	1	93
361	17	34
362	33	76
363	31	1
364	21	9
365	20	59
366	28	79
367	25	46
368	29	58
369	20	32
370	21	63
371	27	20
372	5	71
373	19	59
374	2	81
375	28	77
376	7	38
377	24	33
378	8	2
379	17	49
380	32	70
381	32	100
382	5	7
383	30	38
384	2	73
385	1	18
386	11	36
387	4	89
388	3	96
389	13	62
390	14	67
391	5	19
392	6	12
393	20	39
394	16	75
395	27	32
396	5	14
397	11	31
398	20	65
399	25	83
400	11	13
401	7	12
402	7	4
403	10	77
404	19	69
405	30	34
406	24	90
407	30	40
408	21	71
409	33	14
410	26	89
411	33	92
412	1	9
413	21	100
414	20	41
415	4	57
416	23	73
417	11	71
418	32	53
419	18	12
420	9	61
421	20	35
422	28	27
423	33	70
424	3	94
425	30	71
426	7	76
427	4	36
428	19	100
429	14	76
430	29	33
431	16	70
432	26	51
433	20	74
434	2	66
435	16	80
436	24	68
437	26	46
438	18	57
439	32	1
440	23	83
441	23	53
442	17	34
443	13	57
444	25	41
445	24	8
446	10	43
447	8	35
448	11	77
449	29	51
450	11	13
451	24	31
452	13	12
453	33	77
454	26	78
455	20	46
456	10	5
457	31	61
458	2	60
459	3	3
460	32	3
461	21	64
462	11	55
463	11	29
464	28	98
465	30	21
466	33	64
467	5	78
468	28	49
469	19	71
470	10	49
471	6	86
472	11	13
473	31	80
474	8	90
475	21	40
476	22	50
477	31	80
478	16	59
479	3	8
480	4	64
481	6	38
482	6	71
483	9	52
484	1	37
485	28	81
486	18	79
487	16	2
488	24	21
489	3	100
490	8	10
491	20	11
492	26	27
493	10	14
494	19	41
495	18	77
496	29	2
497	28	99
498	18	69
499	1	80
500	5	93
501	1	75
502	2	97
503	12	19
504	25	32
505	32	54
506	29	73
507	13	71
508	23	58
509	17	36
510	12	94
511	25	92
512	10	26
513	24	56
514	24	86
515	15	84
516	14	32
517	10	18
518	18	76
519	3	81
520	26	90
521	8	43
522	3	33
523	10	40
524	26	85
525	2	75
526	15	34
527	22	6
528	19	63
529	31	88
530	15	30
531	3	59
532	4	64
533	10	4
534	19	21
535	23	48
536	12	21
537	5	96
538	11	13
539	25	99
540	3	100
541	27	54
542	31	84
543	33	74
544	9	2
545	4	64
546	26	74
547	26	43
548	26	13
549	13	54
550	21	51
551	1	94
552	4	40
553	17	76
554	27	96
555	26	29
556	1	91
557	24	28
558	28	14
559	2	36
560	4	32
561	20	5
562	19	9
563	28	72
564	12	20
565	12	97
566	4	71
567	24	26
568	28	95
569	29	51
570	11	30
571	24	64
572	1	27
573	4	82
574	17	55
575	26	8
576	30	62
577	13	44
578	6	43
579	9	60
580	18	1
581	1	55
582	16	94
583	13	44
584	29	33
585	10	39
586	27	8
587	26	56
588	24	13
589	14	41
590	19	60
591	1	83
592	17	2
593	4	24
594	4	6
595	28	32
596	24	78
597	20	53
598	22	53
599	25	33
600	33	36
601	19	100
602	23	49
603	10	72
604	30	21
605	3	48
606	31	32
607	12	50
608	4	84
609	12	14
610	15	54
611	20	24
612	1	60
613	4	17
614	13	8
615	33	29
616	2	19
617	13	94
618	24	90
619	30	6
620	32	98
621	4	86
622	9	23
623	31	85
624	15	48
625	7	58
626	8	57
627	1	26
628	31	56
629	33	76
630	16	87
631	33	95
632	33	13
633	1	36
634	14	91
635	31	49
636	33	30
637	14	46
638	15	73
639	22	95
640	13	6
641	14	19
642	27	10
643	23	12
644	31	16
645	31	100
646	33	7
647	14	39
648	18	30
649	26	12
650	21	71
651	9	29
652	33	83
653	8	47
654	1	93
655	22	92
656	29	40
657	11	99
658	9	34
659	12	21
660	29	44
661	19	45
662	23	94
663	28	27
664	30	42
665	32	6
666	27	99
667	9	92
668	25	53
669	28	91
670	23	53
671	13	89
672	2	4
673	19	14
674	16	68
675	20	51
676	7	63
677	32	39
678	1	99
679	13	26
680	7	5
681	19	40
682	19	90
683	3	56
684	5	98
685	8	84
686	20	36
687	29	50
688	5	48
689	25	91
690	27	18
691	26	5
692	6	34
693	30	12
694	26	76
695	28	15
696	10	19
697	29	79
698	20	97
699	9	78
700	6	43
701	21	93
702	13	37
703	21	66
704	32	32
705	18	93
706	16	51
707	24	20
708	17	41
709	3	78
710	21	82
711	30	94
712	21	9
713	14	25
714	5	48
715	23	75
716	21	57
717	28	37
718	2	72
719	16	62
720	11	61
721	26	86
722	20	99
723	10	51
724	15	82
725	5	73
726	13	11
727	15	41
728	4	26
729	19	77
730	17	15
731	5	40
732	14	41
733	18	8
734	31	32
735	21	94
736	5	53
737	15	46
738	18	86
739	11	43
740	33	41
741	14	36
742	15	56
743	14	40
744	22	76
745	3	71
746	22	92
747	1	35
748	2	4
749	18	57
750	15	27
751	29	5
752	29	10
753	6	92
754	4	40
755	20	79
756	19	58
757	24	17
758	9	17
759	19	19
760	28	20
761	31	24
762	1	28
763	20	41
764	3	14
765	28	63
766	5	83
767	11	38
768	22	47
769	27	14
770	15	74
771	22	46
772	26	2
773	14	25
774	27	24
775	10	96
776	14	39
777	4	30
778	8	4
779	31	16
780	1	78
781	31	14
782	2	18
783	1	40
784	2	81
785	17	40
786	7	6
787	13	36
788	27	45
789	23	11
790	20	79
791	23	88
792	32	23
793	15	64
794	21	42
795	1	27
796	18	94
797	24	5
798	25	48
799	14	8
800	26	32
801	26	36
802	4	79
803	33	57
804	30	56
805	17	7
806	6	42
807	15	9
808	19	66
809	3	25
810	18	8
811	2	8
812	24	33
813	24	1
814	21	85
815	5	79
816	9	13
817	29	95
818	24	63
819	11	97
820	22	37
821	20	90
822	17	12
823	27	69
824	23	98
825	25	34
826	32	89
827	6	24
828	10	68
829	26	97
830	32	16
831	3	11
832	21	98
833	20	16
834	20	54
835	3	8
836	25	64
837	2	94
838	25	76
839	10	17
840	18	4
841	9	58
842	26	89
843	24	92
844	21	49
845	22	12
846	1	46
847	25	73
848	10	62
849	22	40
850	12	28
851	20	16
852	22	4
853	23	93
854	15	42
855	28	86
856	28	14
857	12	29
858	5	65
859	8	93
860	9	56
861	32	92
862	30	93
863	24	70
864	9	2
865	3	99
866	5	11
867	5	55
868	28	31
869	8	19
870	26	16
871	5	61
872	20	33
873	10	64
874	22	54
875	1	56
876	20	93
877	12	3
878	4	12
879	28	17
880	16	93
881	7	96
882	18	13
883	32	33
884	17	63
885	14	67
886	2	96
887	23	10
888	9	61
889	22	67
890	27	100
891	27	8
892	15	62
893	15	5
894	14	98
895	26	60
896	25	17
897	22	43
898	21	33
899	14	19
900	2	27
901	14	17
902	14	72
903	19	4
904	6	98
905	31	91
906	28	2
907	27	91
908	18	49
909	1	25
910	11	72
911	12	1
912	8	85
913	7	63
914	16	22
915	14	11
916	7	11
917	18	83
918	15	50
919	2	79
920	12	75
921	16	39
922	10	23
923	11	80
924	12	68
925	13	86
926	16	86
927	17	15
928	7	100
929	28	6
930	29	34
931	23	18
932	20	70
933	28	27
934	30	26
935	22	77
936	19	33
937	10	33
938	17	38
939	3	99
940	30	83
941	22	25
942	13	32
943	4	25
944	1	39
945	25	45
946	27	33
947	28	60
948	8	21
949	1	95
950	29	28
951	18	98
952	6	69
953	7	51
954	8	34
955	3	98
956	29	92
957	27	15
958	3	47
959	8	98
960	21	55
961	28	65
962	24	83
963	22	72
964	7	73
965	31	34
966	5	20
967	3	94
968	26	66
969	3	48
970	26	1
971	4	71
972	17	53
973	1	94
974	4	9
975	4	17
976	5	41
977	11	39
978	21	19
979	15	99
980	29	36
981	14	36
982	10	54
983	23	40
984	8	36
985	28	51
986	6	3
987	27	20
988	17	81
989	28	29
990	33	98
991	4	55
992	15	83
993	28	57
994	22	18
995	19	99
996	19	89
997	17	55
998	5	66
999	21	27
1000	29	41
1001	17	94
1002	11	44
1003	26	57
1004	31	92
1005	16	99
1006	30	88
1007	11	70
1008	7	44
1009	25	23
1010	19	100
1011	8	48
1012	23	4
1013	5	31
1014	16	30
1015	28	96
1016	16	94
1017	22	36
1018	22	95
1019	3	44
1020	16	100
1021	12	13
1022	1	50
1023	15	67
1024	10	28
1025	25	9
1026	29	75
1027	32	76
1028	15	82
1029	13	2
1030	26	57
1031	33	76
1032	13	93
1033	13	60
1034	20	28
1035	30	11
1036	19	66
1037	15	76
1038	25	71
1039	3	10
1040	2	28
1041	8	29
1042	8	71
1043	3	11
1044	32	5
1045	19	36
1046	3	68
1047	23	5
1048	25	64
1049	15	82
1050	4	86
1051	8	39
1052	26	27
1053	31	52
1054	17	12
1055	24	6
1056	26	48
1057	33	28
1058	26	14
1059	3	97
1060	16	28
1061	32	28
1062	20	86
1063	29	88
1064	30	91
1065	18	13
1066	7	17
1067	23	26
1068	25	24
1069	28	66
1070	20	82
1071	3	61
1072	21	1
1073	23	45
1074	13	80
1075	7	18
1076	9	75
1077	32	75
1078	27	68
1079	2	31
1080	14	92
1081	31	41
1082	21	34
1083	16	62
1084	28	50
1085	10	60
1086	31	57
1087	28	33
1088	28	38
1089	27	75
1090	7	14
1091	8	41
1092	17	59
1093	14	31
1094	31	87
1095	29	85
1096	7	9
1097	30	73
1098	1	60
1099	26	38
1100	18	74
1101	26	30
1102	21	62
1103	10	77
1104	33	30
1105	25	100
1106	1	95
1107	9	86
1108	21	78
1109	18	36
1110	9	63
1111	11	63
1112	26	96
1113	27	68
1114	20	60
1115	2	54
1116	1	17
1117	11	4
1118	13	86
1119	10	71
1120	4	44
1121	32	34
1122	33	66
1123	26	61
1124	23	99
1125	17	69
1126	22	59
1127	19	77
1128	12	55
1129	12	16
1130	12	66
1131	13	11
1132	27	56
1133	24	67
1134	32	91
1135	6	95
1136	24	92
1137	20	1
1138	9	14
1139	32	67
1140	8	20
1141	4	10
1142	3	84
1143	9	50
1144	24	41
1145	25	82
1146	28	62
1147	15	86
1148	26	94
1149	25	74
1150	13	39
1151	1	56
1152	28	59
1153	32	100
1154	20	20
1155	23	89
1156	30	4
1157	2	86
1158	11	64
1159	13	20
1160	26	96
1161	3	19
1162	14	35
1163	22	18
1164	15	44
1165	31	27
1166	9	90
1167	8	37
1168	16	27
1169	16	42
1170	5	44
1171	9	28
1172	29	15
1173	18	81
1174	14	39
1175	20	27
1176	4	68
1177	17	20
1178	27	33
1179	8	30
1180	5	6
1181	2	33
1182	32	71
1183	16	81
1184	17	8
1185	8	84
1186	31	51
1187	21	6
1188	7	98
1189	11	77
1190	8	94
1191	8	97
1192	22	52
1193	17	19
1194	21	30
1195	16	73
1196	24	40
1197	15	34
1198	8	81
1199	7	57
1200	17	90
1201	15	76
1202	27	13
1203	12	39
1204	31	36
1205	30	85
1206	4	70
1207	14	7
1208	6	40
1209	21	50
1210	21	27
1211	23	68
1212	2	81
1213	19	35
1214	32	89
1215	21	38
1216	15	96
1217	27	30
1218	3	73
1219	7	32
1220	14	84
1221	20	57
1222	11	55
1223	12	15
1224	2	11
1225	8	90
1226	2	73
1227	3	94
1228	26	31
1229	30	34
1230	20	14
1231	29	22
1232	23	98
1233	12	5
1234	18	90
1235	22	81
1236	4	65
1237	12	14
1238	1	76
1239	13	40
1240	13	79
1241	6	50
1242	9	23
1243	6	67
1244	17	33
1245	26	33
1246	2	79
1247	22	65
1248	23	70
1249	6	29
1250	14	25
1251	32	60
1252	29	95
1253	10	95
1254	30	2
1255	17	43
1256	17	38
1257	5	65
1258	28	2
1259	18	6
1260	1	100
1261	19	74
1262	10	90
1263	24	38
1264	23	60
1265	28	57
1266	24	70
1267	24	86
1268	32	28
1269	23	81
1270	21	58
1271	5	98
1272	16	71
1273	13	10
1274	5	5
1275	14	84
1276	6	95
1277	30	65
1278	10	17
1279	15	18
1280	32	72
1281	33	25
1282	20	91
1283	30	66
1284	22	16
1285	28	29
1286	30	8
1287	1	46
1288	25	70
1289	21	82
1290	19	13
1291	20	26
1292	22	41
1293	29	78
1294	8	60
1295	27	64
1296	14	79
1297	21	34
1298	5	42
1299	9	22
1300	7	91
1301	17	54
1302	6	5
1303	17	71
1304	29	68
1305	26	64
1306	14	41
1307	23	43
1308	20	46
1309	33	70
1310	30	62
1311	6	84
1312	11	62
1313	9	40
1314	9	96
1315	23	6
1316	6	87
1317	11	38
1318	22	80
1319	3	99
1320	32	6
1321	32	90
1322	12	94
1323	10	42
1324	9	99
1325	10	85
1326	5	72
1327	28	34
1328	31	11
1329	10	94
1330	5	13
1331	11	91
1332	13	82
1333	4	10
1334	6	41
1335	31	38
1336	26	90
1337	29	92
1338	28	55
1339	31	99
1340	22	95
1341	31	91
1342	26	78
1343	31	63
1344	19	15
1345	3	82
1346	30	16
1347	15	56
1348	18	57
1349	27	89
1350	8	23
1351	29	33
1352	13	94
1353	31	23
1354	12	55
1355	16	56
1356	11	82
1357	3	30
1358	23	86
1359	26	49
1360	7	13
1361	33	15
1362	21	12
1363	16	10
1364	1	68
1365	11	50
1366	23	76
1367	8	99
1368	23	91
1369	20	35
1370	31	65
1371	2	52
1372	1	59
1373	29	73
1374	2	53
1375	4	42
1376	17	22
1377	3	49
1378	6	63
1379	7	40
1380	5	93
1381	10	33
1382	16	77
1383	19	83
1384	23	24
1385	23	39
1386	12	58
1387	22	35
1388	3	30
1389	3	36
1390	1	2
1391	5	22
1392	5	34
1393	32	17
1394	9	91
1395	7	47
1396	31	83
1397	20	62
1398	16	25
1399	2	9
1400	9	89
1401	19	8
1402	24	64
1403	20	31
1404	3	3
1405	2	87
1406	20	62
1407	27	56
1408	20	87
1409	16	95
1410	21	75
1411	4	96
1412	19	19
1413	5	77
1414	6	54
1415	13	20
1416	24	7
1417	25	33
1418	9	97
1419	24	77
1420	26	97
1421	17	93
1422	20	24
1423	4	42
1424	23	52
1425	6	15
1426	27	89
1427	8	63
1428	25	58
1429	13	45
1430	21	69
1431	33	89
1432	5	60
1433	8	59
1434	17	30
1435	10	73
1436	19	61
1437	14	14
1438	30	13
1439	30	48
1440	23	98
1441	25	96
1442	14	2
1443	22	22
1444	21	83
1445	6	62
1446	31	11
1447	15	12
1448	1	2
1449	25	10
1450	5	17
1451	15	97
1452	20	67
1453	27	86
1454	21	86
1455	11	81
1456	27	30
1457	28	98
1458	13	17
1459	30	36
1460	30	61
1461	1	87
1462	20	54
1463	32	88
1464	7	18
1465	15	38
1466	23	57
1467	28	2
1468	22	55
1469	25	58
1470	15	21
1471	26	59
1472	12	83
1473	29	65
1474	21	17
1475	30	90
1476	19	91
1477	21	7
1478	9	57
1479	23	46
1480	26	45
1481	10	5
1482	29	24
1483	28	74
1484	15	33
1485	31	56
1486	22	89
1487	13	27
1488	21	18
1489	27	49
1490	25	72
1491	10	92
1492	22	97
1493	10	91
1494	11	78
1495	33	38
1496	21	67
1497	27	86
1498	13	17
1499	29	19
1500	9	18
1501	8	87
1502	24	15
1503	10	88
1504	29	62
1505	32	68
1506	33	47
1507	13	98
1508	6	59
1509	6	16
1510	1	25
1511	3	23
1512	11	99
1513	22	6
1514	28	50
1515	1	55
1516	15	91
1517	32	100
1518	23	83
1519	16	68
1520	23	7
1521	3	7
1522	17	42
1523	10	67
1524	21	56
1525	7	44
1526	8	68
1527	1	23
1528	25	80
1529	32	47
1530	15	16
1531	15	11
1532	16	35
1533	28	63
1534	11	11
1535	22	82
1536	30	93
1537	26	74
1538	21	98
1539	13	36
1540	6	94
1541	17	63
1542	6	74
1543	17	75
1544	15	81
1545	25	84
1546	25	69
1547	8	28
1548	31	13
1549	7	41
1550	8	70
1551	26	8
1552	15	48
1553	6	43
1554	15	100
1555	10	59
1556	29	42
1557	18	3
1558	27	38
1559	6	33
1560	10	95
1561	26	76
1562	14	42
1563	15	22
1564	25	28
1565	13	44
1566	18	48
1567	32	58
1568	20	52
1569	8	51
1570	2	62
1571	1	63
1572	24	14
1573	20	13
1574	1	25
1575	1	29
1576	10	47
1577	21	67
1578	14	50
1579	2	64
1580	9	71
1581	32	77
1582	8	86
1583	24	90
1584	13	95
1585	8	34
1586	28	90
1587	20	45
1588	33	37
1589	28	27
1590	2	76
1591	24	21
1592	15	80
1593	29	83
1594	20	32
1595	15	2
1596	7	2
1597	12	78
1598	7	41
1599	15	23
1600	5	65
1601	2	30
1602	9	43
1603	26	6
1604	9	50
1605	1	29
1606	17	82
1607	28	99
1608	1	80
1609	27	69
1610	3	9
1611	9	96
1612	26	88
1613	26	56
1614	25	39
1615	19	96
1616	9	40
1617	22	85
1618	7	95
1619	16	67
1620	15	63
1621	20	19
1622	14	63
1623	30	74
1624	11	15
1625	17	29
1626	9	13
1627	32	6
1628	33	80
1629	11	64
1630	29	17
1631	8	99
1632	13	83
1633	19	98
1634	5	83
1635	16	53
1636	2	40
1637	6	25
1638	7	93
1639	26	72
1640	18	70
1641	22	4
1642	12	32
1643	10	82
1644	16	97
1645	5	62
1646	29	46
1647	10	70
1648	22	83
1649	6	95
1650	19	66
1651	13	27
1652	30	36
1653	2	79
1654	28	26
1655	4	29
1656	4	23
1657	17	89
1658	14	94
1659	2	54
1660	7	5
1661	20	75
1662	5	51
1663	7	68
1664	14	81
1665	8	39
1666	33	62
1667	12	89
1668	26	84
1669	1	38
1670	29	52
1671	4	57
1672	7	94
1673	22	45
1674	22	44
1675	12	10
1676	19	26
1677	8	7
1678	1	82
1679	15	2
1680	11	36
1681	29	39
1682	22	34
1683	1	85
1684	28	9
1685	28	52
1686	19	82
1687	15	45
1688	12	20
1689	18	75
1690	4	44
1691	25	42
1692	15	73
1693	18	43
1694	29	59
1695	25	25
1696	31	92
1697	12	99
1698	26	48
1699	27	92
1700	10	9
1701	17	88
1702	28	68
1703	6	66
1704	17	54
1705	9	40
1706	13	14
1707	30	74
1708	6	79
1709	21	3
1710	7	56
1711	10	70
1712	33	47
1713	1	23
1714	20	1
1715	8	76
1716	24	55
1717	4	12
1718	29	75
1719	15	58
1720	20	21
1721	6	35
1722	22	65
1723	14	55
1724	7	32
1725	1	46
1726	30	6
1727	17	66
1728	5	87
1729	20	98
1730	24	16
1731	14	98
1732	22	17
1733	6	15
1734	10	46
1735	3	66
1736	26	77
1737	23	54
1738	30	73
1739	17	41
1740	5	3
1741	22	29
1742	1	47
1743	19	18
1744	11	77
1745	18	71
1746	32	53
1747	17	44
1748	18	20
1749	32	18
1750	15	80
1751	2	55
1752	32	73
1753	18	80
1754	7	27
1755	19	19
1756	5	18
1757	22	78
1758	1	75
1759	18	15
1760	27	96
1761	6	29
1762	8	42
1763	19	10
1764	24	40
1765	23	72
1766	33	21
1767	10	60
1768	27	27
1769	12	59
1770	1	88
1771	10	18
1772	3	89
1773	1	30
1774	16	76
1775	10	27
1776	11	98
1777	30	34
1778	12	12
1779	4	49
1780	9	23
1781	3	90
1782	29	52
1783	29	37
1784	4	39
1785	12	90
1786	4	100
1787	10	27
1788	30	27
1789	29	49
1790	12	20
1791	30	78
1792	17	77
1793	1	24
1794	19	74
1795	2	68
1796	21	99
1797	18	18
1798	24	22
1799	7	75
1800	23	62
1801	20	77
1802	12	34
1803	28	96
1804	30	57
1805	27	15
1806	10	62
1807	32	87
1808	18	36
1809	4	21
1810	16	48
1811	28	29
1812	21	70
1813	6	49
1814	28	47
1815	26	2
1816	22	61
1817	11	78
1818	22	52
1819	28	62
1820	29	62
1821	23	4
1822	14	50
1823	32	26
1824	2	66
1825	16	83
1826	27	69
1827	21	56
1828	32	84
1829	33	8
1830	25	27
1831	27	55
1832	10	43
1833	22	21
1834	10	45
1835	28	77
1836	25	20
1837	4	66
1838	3	80
1839	15	21
1840	22	33
1841	18	87
1842	3	11
1843	32	32
1844	11	99
1845	27	100
1846	30	14
1847	25	63
1848	15	90
1849	11	32
1850	17	67
1851	32	1
1852	10	58
1853	17	18
1854	13	50
1855	21	55
1856	13	20
1857	8	41
1858	1	92
1859	18	92
1860	15	1
1861	22	20
1862	26	39
1863	26	24
1864	33	7
1865	28	12
1866	32	57
1867	11	20
1868	14	85
1869	16	99
1870	13	52
1871	1	14
1872	26	26
1873	6	98
1874	2	21
1875	26	33
1876	2	83
1877	33	33
1878	32	57
1879	1	40
1880	4	63
1881	30	43
1882	15	42
1883	14	19
1884	14	52
1885	24	88
1886	7	32
1887	15	100
1888	30	19
1889	33	14
1890	32	61
1891	3	70
1892	9	9
1893	32	94
1894	4	46
1895	18	98
1896	11	71
1897	15	60
1898	8	21
1899	33	64
1900	27	39
1901	18	6
1902	33	60
1903	32	45
1904	22	97
1905	1	4
1906	17	91
1907	19	88
1908	24	10
1909	23	81
1910	17	81
1911	13	83
1912	28	62
1913	2	44
1914	28	66
1915	26	6
1916	10	48
1917	16	82
1918	27	92
1919	29	69
1920	15	80
1921	23	64
1922	5	28
1923	26	23
1924	6	33
1925	15	74
1926	21	42
1927	13	78
1928	20	16
1929	23	31
1930	30	82
1931	12	16
1932	12	47
1933	10	33
1934	8	87
1935	21	3
1936	16	88
1937	16	12
1938	20	81
1939	7	2
1940	17	40
1941	9	43
1942	11	48
1943	27	36
1944	1	3
1945	7	33
1946	27	30
1947	12	33
1948	30	98
1949	6	55
1950	26	100
1951	32	74
1952	29	69
1953	28	71
1954	2	23
1955	29	3
1956	26	30
1957	10	75
1958	19	95
1959	30	26
1960	1	36
1961	26	62
1962	19	16
1963	30	5
1964	9	74
1965	25	67
1966	21	96
1967	33	57
1968	20	30
1969	5	38
1970	9	14
1971	16	78
1972	25	90
1973	31	36
1974	23	34
1975	26	43
1976	23	90
1977	24	99
1978	11	32
1979	5	23
1980	27	43
1981	32	75
1982	19	75
1983	22	98
1984	21	29
1985	12	66
1986	3	37
1987	28	38
1988	15	48
1989	19	74
1990	19	37
1991	9	34
1992	20	30
1993	27	50
1994	13	10
1995	30	9
1996	1	8
1997	17	82
1998	15	63
1999	25	94
2000	31	56
2001	10	37
2002	3	63
2003	8	7
2004	2	45
2005	11	13
2006	24	72
2007	31	82
2008	1	17
2009	26	28
2010	29	24
2011	30	6
2012	5	5
2013	7	11
2014	31	91
2015	3	30
2016	16	44
2017	3	71
2018	14	90
2019	33	67
2020	17	27
2021	30	98
2022	11	93
2023	7	78
2024	32	57
2025	12	81
2026	2	87
2027	15	55
2028	13	81
2029	11	60
2030	29	34
2031	1	15
2032	7	25
2033	29	54
2034	20	54
2035	32	9
2036	12	65
2037	29	28
2038	14	32
2039	20	77
2040	19	33
2041	8	73
2042	33	77
2043	5	38
2044	11	25
2045	18	95
2046	9	35
2047	1	18
2048	7	83
2049	4	38
2050	1	39
2051	16	96
2052	24	3
2053	26	82
2054	8	7
2055	10	79
2056	9	73
2057	8	38
2058	27	50
2059	32	81
2060	15	59
2061	23	50
2062	14	63
2063	31	51
2064	21	19
2065	2	28
2066	28	54
2067	28	46
2068	4	60
2069	29	85
2070	26	9
2071	12	82
2072	3	39
2073	12	59
2074	30	97
2075	27	1
2076	25	15
2077	28	6
2078	24	29
2079	15	17
2080	14	28
2081	2	1
2082	23	48
2083	9	98
2084	7	37
2085	32	33
2086	26	96
2087	1	8
2088	33	98
2089	5	53
2090	20	91
2091	9	63
2092	3	42
2093	19	39
2094	3	53
2095	14	26
2096	27	23
2097	6	55
2098	14	55
2099	5	77
2100	18	17
2101	30	86
2102	8	62
2103	18	47
2104	26	38
2105	4	2
2106	30	51
2107	24	64
2108	1	32
2109	12	74
2110	5	40
2111	29	48
2112	19	85
2113	9	15
2114	33	30
2115	12	36
2116	21	43
2117	2	98
2118	4	25
2119	12	12
2120	12	98
2121	8	26
2122	12	52
2123	7	50
2124	29	86
2125	12	98
2126	11	44
2127	27	59
2128	14	83
2129	22	86
2130	11	18
2131	31	57
2132	17	88
2133	11	94
2134	13	3
2135	22	79
2136	13	63
2137	4	34
2138	32	94
2139	19	26
2140	8	54
2141	33	60
2142	15	26
2143	25	79
2144	7	77
2145	26	44
2146	3	57
2147	12	53
2148	25	51
2149	15	34
2150	9	93
2151	11	48
2152	17	8
2153	17	8
2154	19	100
2155	8	5
2156	32	89
2157	16	85
2158	28	15
2159	10	95
2160	31	96
2161	18	7
2162	25	61
2163	12	25
2164	23	73
2165	21	11
2166	15	22
2167	23	54
2168	10	69
2169	4	12
2170	12	79
2171	4	78
2172	27	14
2173	12	83
2174	15	2
2175	12	74
2176	5	26
2177	25	35
2178	18	60
2179	7	95
2180	5	57
2181	9	87
2182	14	81
2183	32	43
2184	22	97
2185	6	85
2186	12	30
2187	20	94
2188	25	20
2189	22	93
2190	26	43
2191	19	85
2192	28	58
2193	14	67
2194	11	48
2195	6	28
2196	2	31
2197	28	78
2198	31	22
2199	22	49
2200	16	24
2201	31	37
2202	26	37
2203	29	86
2204	32	77
2205	8	77
2206	32	54
2207	5	78
2208	26	37
2209	2	28
2210	20	95
2211	2	30
2212	15	33
2213	1	50
2214	15	14
2215	9	16
2216	9	81
2217	11	85
2218	10	91
2219	28	59
2220	20	93
2221	13	99
2222	16	87
2223	10	19
2224	6	12
2225	25	18
2226	22	89
2227	26	4
2228	16	58
2229	20	94
2230	27	92
2231	21	60
2232	30	11
2233	25	53
2234	4	93
2235	24	95
2236	33	36
2237	20	82
2238	7	94
2239	24	93
2240	33	57
2241	18	100
2242	24	39
2243	17	31
2244	30	47
2245	21	30
2246	8	4
2247	26	30
2248	20	96
2249	11	30
2250	18	97
2251	25	71
2252	12	40
2253	8	92
2254	21	83
2255	1	41
2256	29	90
2257	20	6
2258	32	54
2259	11	5
2260	12	16
2261	13	43
2262	33	99
2263	10	46
2264	20	97
2265	24	48
2266	30	79
2267	25	89
2268	6	99
2269	27	20
2270	33	1
2271	32	57
2272	15	17
2273	32	37
2274	14	26
2275	27	24
2276	6	78
2277	16	84
2278	28	8
2279	3	8
2280	10	57
2281	8	71
2282	29	22
2283	19	99
2284	21	10
2285	20	75
2286	15	16
2287	18	85
2288	24	90
2289	32	89
2290	19	45
2291	17	83
2292	9	1
2293	23	20
2294	28	42
2295	11	20
2296	2	68
2297	23	15
2298	33	81
2299	13	83
2300	16	2
2301	21	32
2302	31	45
2303	24	27
2304	4	52
2305	28	4
2306	8	14
2307	20	67
2308	14	38
2309	12	18
2310	29	81
2311	9	64
2312	18	77
2313	3	47
2314	32	32
2315	2	19
2316	23	8
2317	28	86
2318	15	92
2319	25	86
2320	6	54
2321	4	24
2322	2	15
2323	11	90
2324	20	35
2325	12	39
2326	33	5
2327	17	99
2328	25	1
2329	8	76
2330	27	3
2331	8	32
2332	29	77
2333	1	76
2334	11	29
2335	20	14
2336	3	13
2337	7	14
2338	1	69
2339	9	62
2340	31	12
2341	20	96
2342	17	34
2343	29	82
2344	27	24
2345	31	61
2346	9	54
2347	17	72
2348	4	13
2349	20	57
2350	17	57
2351	25	90
2352	24	33
2353	12	65
2354	1	8
2355	30	67
2356	6	53
2357	20	21
2358	8	59
2359	20	36
2360	32	37
2361	33	68
2362	2	1
2363	16	100
2364	12	3
2365	30	3
2366	4	91
2367	17	46
2368	1	60
2369	31	54
2370	5	15
2371	13	48
2372	1	94
2373	30	33
2374	6	74
2375	2	11
2376	15	86
2377	6	68
2378	8	31
2379	10	45
2380	6	94
2381	16	19
2382	15	89
2383	23	23
2384	6	37
2385	23	31
2386	29	31
2387	29	45
2388	15	92
2389	1	50
2390	28	85
2391	15	90
2392	31	90
2393	8	93
2394	8	88
2395	17	90
2396	29	96
2397	29	70
2398	13	84
2399	26	58
2400	26	29
2401	22	86
2402	28	33
2403	9	96
2404	17	75
2405	17	89
2406	23	95
2407	31	87
2408	9	73
2409	21	29
2410	19	8
2411	31	43
2412	25	23
2413	6	3
2414	31	95
2415	25	7
2416	7	74
2417	2	78
2418	8	39
2419	5	39
2420	32	5
2421	31	79
2422	3	2
2423	29	60
2424	22	62
2425	2	15
2426	29	94
2427	27	54
2428	21	30
2429	3	36
2430	22	84
2431	18	44
2432	1	54
2433	2	34
2434	21	75
2435	18	71
2436	18	61
2437	12	54
2438	13	2
2439	16	58
2440	32	36
2441	19	76
2442	7	26
2443	29	34
2444	13	6
2445	32	91
2446	9	82
2447	32	97
2448	31	40
2449	6	58
2450	7	71
2451	29	24
2452	16	23
2453	3	4
2454	24	65
2455	21	2
2456	2	46
2457	29	34
2458	6	6
2459	16	61
2460	23	78
2461	33	91
2462	17	30
2463	9	70
2464	23	75
2465	31	100
2466	20	69
2467	1	24
2468	20	65
2469	20	53
2470	8	38
2471	16	78
2472	24	60
2473	11	82
2474	2	30
2475	20	7
2476	25	98
2477	22	24
2478	5	8
2479	26	12
2480	2	99
2481	32	28
2482	18	91
2483	15	67
2484	30	13
2485	22	25
2486	31	74
2487	11	72
2488	30	32
2489	21	48
2490	13	92
2491	14	26
2492	2	29
2493	11	90
2494	21	96
2495	5	18
2496	21	83
2497	1	64
2498	30	5
2499	33	27
2500	18	60
\.


--
-- Name: amenities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: flamingeagle9000
--

SELECT pg_catalog.setval('public.amenities_id_seq', 33, true);


--
-- Name: knex_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: flamingeagle9000
--

SELECT pg_catalog.setval('public.knex_migrations_id_seq', 5, true);


--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE SET; Schema: public; Owner: flamingeagle9000
--

SELECT pg_catalog.setval('public.knex_migrations_lock_index_seq', 1, true);


--
-- Name: listings_amenities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: flamingeagle9000
--

SELECT pg_catalog.setval('public.listings_amenities_id_seq', 2500, true);


--
-- Name: listings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: flamingeagle9000
--

SELECT pg_catalog.setval('public.listings_id_seq', 100, true);


--
-- Name: amenities amenities_pkey; Type: CONSTRAINT; Schema: public; Owner: flamingeagle9000
--

ALTER TABLE ONLY public.amenities
    ADD CONSTRAINT amenities_pkey PRIMARY KEY (id);


--
-- Name: knex_migrations_lock knex_migrations_lock_pkey; Type: CONSTRAINT; Schema: public; Owner: flamingeagle9000
--

ALTER TABLE ONLY public.knex_migrations_lock
    ADD CONSTRAINT knex_migrations_lock_pkey PRIMARY KEY (index);


--
-- Name: knex_migrations knex_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: flamingeagle9000
--

ALTER TABLE ONLY public.knex_migrations
    ADD CONSTRAINT knex_migrations_pkey PRIMARY KEY (id);


--
-- Name: listings_amenities listings_amenities_pkey; Type: CONSTRAINT; Schema: public; Owner: flamingeagle9000
--

ALTER TABLE ONLY public.listings_amenities
    ADD CONSTRAINT listings_amenities_pkey PRIMARY KEY (id);


--
-- Name: listings listings_pkey; Type: CONSTRAINT; Schema: public; Owner: flamingeagle9000
--

ALTER TABLE ONLY public.listings
    ADD CONSTRAINT listings_pkey PRIMARY KEY (id);


--
-- Name: listings_amenities listings_amenities_amenity_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: flamingeagle9000
--

ALTER TABLE ONLY public.listings_amenities
    ADD CONSTRAINT listings_amenities_amenity_id_foreign FOREIGN KEY (amenity_id) REFERENCES public.amenities(id);


--
-- Name: listings_amenities listings_amenities_listing_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: flamingeagle9000
--

ALTER TABLE ONLY public.listings_amenities
    ADD CONSTRAINT listings_amenities_listing_id_foreign FOREIGN KEY (listing_id) REFERENCES public.listings(id);


--
-- PostgreSQL database dump complete
--

