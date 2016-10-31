//Maya ASCII 2016 scene
//Name: SpikesLarge01.ma
//Last modified: Wed, Oct 26, 2016 10:33:56 PM
//Codeset: 1252
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -n "pCube81";
	rename -uid "D1C0C455-43DD-0543-B282-C2929540595C";
	setAttr ".rp" -type "double3" -1.0870262662574568 0.15193233799618255 0.13306526479653202 ;
	setAttr ".sp" -type "double3" -1.0870262662574568 0.15193233799618255 0.13306526479653202 ;
createNode mesh -n "pCube81Shape" -p "pCube81";
	rename -uid "D5E7AC51-4D61-7EA8-F487-93873E4D79E1";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 3 "f[0:10]" "f[30:39]" "f[59:130]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[11:29]" "f[40:58]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[131:139]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 196 ".uvst[0].uvsp[0:195]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.375 0.75
		 0.625 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.375 0.25 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75
		 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.375 0.25 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0 0.875
		 0.25 0.125 0 0.375 0.25 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5
		 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125
		 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75
		 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25
		 0.375 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 112 ".pt[0:111]" -type "float3"  -19.75473 0 0.40834668 -19.75473 
		0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 
		-19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 
		0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 
		0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 
		-19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 
		0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 
		0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 
		-19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 
		0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 
		0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 
		-19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 
		0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 
		0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 
		-19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 
		0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 
		0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 
		-19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 
		0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 
		0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 
		-19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 
		0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 
		0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 
		-19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 
		0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 
		0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 
		-19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 
		0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 
		0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 
		-19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 
		0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 0 0.40834668 -19.75473 
		0 0.40834668;
	setAttr -s 112 ".vt[0:111]"  17.19894981 0.75733781 1.79293966 20.30409622 0.75733781 0.15740895
		 17.97307396 3.30441093 0.59833229 18.93357658 2.16614366 -0.63894421 17.4626255 5.52232409 -0.093171775
		 17.90796852 4.74422073 -1.51470125 15.56341934 0.75733781 -1.31220698 18.66856575 0.75733781 -2.94773769
		 18.20563889 0.37850952 2.87375212 19.8873291 0.99395561 2.16542673 16.068357468 7.63074112 7.14258003
		 17.658041 6.30554295 6.23563623 14.95015526 10.80938911 7.91096878 16.27554512 9.7620821 6.83885765
		 17.32298279 0.92268562 1.25098705 19.0046710968 1.53813171 0.54266167 19.69131851 1.12803268 -3.002682209
		 17.92063332 0.45332909 -3.34622717 18.1323204 5.12737226 -6.10391617 17.16064072 4.78740788 -6.74306536
		 17.70980644 6.55137444 -6.68934059 16.64039421 8.29525566 -8.46153164 18.99257278 2.24779224 -1.60037374
		 16.7910099 1.487288 -1.94054747 19.63110352 1.74025369 -0.62880301 20.47472572 0.9440546 -1.58493876
		 21.66217041 8.059800148 -4.21357965 23.73070335 10.40381432 -6.79002094 21.34007454 10.24617863 -5.89812183
		 23.13378143 13.14996243 -8.41439152 18.21282959 1.8589325 -1.24705291 19.26201248 1.033261299 -2.13596964
		 20.28906059 2.15973139 1.61372209 21.43897247 2.15758276 -0.89219266 18.08445549 12.16323471 0.90949744
		 20.88838768 8.66398811 -1.41721654 16.92903137 14.40579605 -1.21006846 17.12375832 10.76807213 -3.19573784
		 17.31835365 1.49650812 0.25109643 18.46826363 1.49435949 -2.2548182 19.47026253 2.12202835 -1.161502
		 20.49905396 1.42222166 0.30834007 24.2091732 6.62229967 -1.36668408 23.14138603 4.61970043 -0.11365986
		 26.41130829 7.15362835 -1.63935184 25.093353271 5.10581541 -1.14444947 20.86115265 1.59637451 -2.38530254
		 21.88994408 0.89656782 -0.91546059 19.36451721 2.482656 -2.8567152 21.28989029 1.92351127 -2.089791775
		 22.013256073 5.56427526 -5.96261072 21.62849045 4.36878395 -4.46774483 23.3152771 5.68587589 -7.12908936
		 23.046461105 4.32688141 -6.044522285 19.65943336 0.93006635 -4.72906017 21.58480644 0.37092137 -3.96213698
		 20.14492035 0.53233504 2.45901752 21.48934364 1.35115802 0.83681583 20.44900703 3.25786161 2.97243452
		 20.85368538 3.35011578 2.26911664 20.12449074 5.40298367 3.90236759 19.93030548 5.18676472 2.68411946
		 18.33490944 1.31437647 1.35368752 19.67933273 2.13319969 -0.26851416 16.52551651 0.3434701 -0.79414099
		 19.36671448 1.033284903 -0.41932654 12.40067291 4.96370792 -1.52251852 11.84059525 8.38012886 -1.86734188
		 11.065038681 5.65267658 -3.42098475 9.88475609 8.71906567 -3.99216366 16.16805267 0.50165033 -2.13177872
		 17.85587311 1.19917107 -2.53204107 17.19894981 0.75733781 1.79293966 20.30409622 0.75733781 0.15740895
		 17.97307396 3.30441093 0.59833229 18.93357658 2.16614366 -0.63894421 17.4626255 5.52232409 -0.093171775
		 17.90796852 4.74422073 -1.51470125 15.56341934 0.75733781 -1.31220698 18.66856575 0.75733781 -2.94773769
		 22.77693939 0.21686411 -0.87187374 20.82758522 0.24980307 -3.79006362 23.11652565 2.56856799 -2.56542182
		 21.28380203 2.18822479 -3.060937643 23.93712807 4.77067375 -2.93313885 22.2708683 4.92505169 -3.088920355
		 20.65094948 2.60494137 0.5752449 18.70159531 2.63788033 -2.3429451 19.12972832 1.022842646 0.01875627
		 18.018386841 1.38441706 -0.45832241 15.4308424 2.49615145 2.58504868 13.51058388 3.036033154 2.5831027
		 14.49380875 2.019202948 3.48111057 12.62287521 2.51605868 3.86546993 18.6161499 0.39627635 0.83273232
		 17.5164299 0.85435224 0.2488569 20.40825653 1.74722862 -0.093335569 19.83156204 3.030594587 1.25384521
		 23.37559319 6.58474827 0.55246913 25.19963837 7.47336864 2.78646588 25.40848351 6.80512047 0.073362172
		 27.45065308 7.96733284 1.76236558 20.47646904 0.6201458 -0.78044313 21.51440239 0.16934538 0.56463593
		 17.93013954 0.16754937 4.55015516 25.7111702 0.16754937 0.45176184 18.47182274 3.052269936 1.5046531
		 20.94900131 2.00057411194 1.80890691 19.58516693 3.77863026 -2.70607328 21.3989048 2.81312084 -3.66139793
		 14.71392918 0.16754937 -2.22195959 21.940588 0.16754937 -6.70690012;
	setAttr -s 224 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 5 6 1 6 2 1 3 7 1 4 3 1 3 0 1 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0
		 9 11 0 10 12 0 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 13 14 1 14 10 1 11 15 1 16 17 0
		 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0
		 21 22 1 22 18 1 19 23 1 21 18 1 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0 25 27 0 26 28 0
		 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 29 30 1 30 26 1 27 31 1 29 26 1 32 33 0 34 35 0
		 36 37 0 38 39 0 32 34 0 33 35 0 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 37 38 1
		 38 34 1 35 39 1 40 41 0 42 43 0 44 45 0 46 47 0 40 42 0 41 43 0 42 44 0 43 45 0 44 46 0
		 45 47 0 46 40 0 47 41 0 45 46 1 46 42 1 43 47 1 42 45 1 48 49 0 50 51 0 52 53 0 54 55 0
		 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0 53 54 1 54 50 1 51 55 1
		 56 57 0 58 59 0 60 61 0 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0 61 63 0 62 56 0
		 63 57 0 61 62 1 62 58 1 59 63 1 60 59 1 59 56 1 64 65 0 66 67 0 68 69 0 70 71 0 64 66 0
		 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 64 0 71 65 0 69 70 1 70 66 1 67 71 1 69 66 1
		 72 73 0 74 75 0 76 77 0 78 79 0 72 74 0 73 75 0 74 76 0 75 77 0 76 78 0 77 79 0 78 72 0
		 79 73 0 77 78 1 78 74 1 75 79 1 76 75 1 75 72 1 80 81 0 82 83 0 84 85 0 86 87 0 80 82 0
		 81 83 0;
	setAttr ".ed[166:223]" 82 84 0 83 85 0 84 86 0 85 87 0 86 80 0 87 81 0 85 86 1
		 86 82 1 83 87 1 84 83 1 83 80 1 88 89 0 90 91 0 92 93 0 94 95 0 88 90 0 89 91 0 90 92 0
		 91 93 0 92 94 0 93 95 0 94 88 0 95 89 0 93 94 1 94 90 1 91 95 1 93 90 1 96 97 0 98 99 0
		 100 101 0 102 103 0 96 98 0 97 99 0 98 100 0 99 101 0 100 102 0 101 103 0 102 96 0
		 103 97 0 101 102 1 102 98 1 99 103 1 101 98 1 104 105 0 106 107 0 108 109 0 110 111 0
		 104 106 0 105 107 0 106 108 0 107 109 0 108 110 0 109 111 0 110 104 0 111 105 0 109 110 1
		 110 106 1 107 111 1;
	setAttr -s 140 -ch 448 ".fc[0:139]" -type "polyFaces" 
		f 3 0 5 16
		mu 0 3 0 1 3
		f 3 15 7 -3
		mu 0 3 4 3 5
		f 3 2 12 -9
		mu 0 3 4 5 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 3 14 -10 -8
		mu 0 3 3 10 11
		f 3 13 6 8
		mu 0 3 12 2 13
		f 3 -13 9 -4
		mu 0 3 6 5 7
		f 3 10 4 -14
		mu 0 3 12 0 2
		f 3 -12 -15 -6
		mu 0 3 1 10 3
		f 3 1 -16 -7
		mu 0 3 2 3 4
		f 3 -17 -2 -5
		mu 0 3 0 3 2
		f 4 17 22 -19 -22
		mu 0 4 14 15 16 17
		f 4 18 24 -20 -24
		mu 0 4 17 16 18 19
		f 3 19 29 -26
		mu 0 3 19 18 20
		f 4 20 28 -18 -28
		mu 0 4 20 21 22 23
		f 3 31 -27 -25
		mu 0 3 16 24 25
		f 3 30 23 25
		mu 0 3 26 17 27
		f 3 -30 26 -21
		mu 0 3 20 18 21
		f 3 27 21 -31
		mu 0 3 26 14 17
		f 3 -29 -32 -23
		mu 0 3 15 24 16
		f 4 32 37 -34 -37
		mu 0 4 28 29 30 31
		f 3 33 39 47
		mu 0 3 31 30 32
		f 3 34 44 -41
		mu 0 3 33 32 34
		f 4 35 43 -33 -43
		mu 0 4 34 35 36 37
		f 3 46 -42 -40
		mu 0 3 30 38 39
		f 3 45 38 40
		mu 0 3 40 31 41
		f 3 -45 41 -36
		mu 0 3 34 32 35
		f 3 42 36 -46
		mu 0 3 40 28 31
		f 3 -44 -47 -38
		mu 0 3 29 38 30
		f 3 -48 -35 -39
		mu 0 3 31 32 33
		f 4 48 53 -50 -53
		mu 0 4 42 43 44 45
		f 3 49 55 63
		mu 0 3 45 44 46
		f 3 50 60 -57
		mu 0 3 47 46 48
		f 4 51 59 -49 -59
		mu 0 4 48 49 50 51
		f 3 62 -58 -56
		mu 0 3 44 52 53
		f 3 61 54 56
		mu 0 3 54 45 55
		f 3 -61 57 -52
		mu 0 3 48 46 49
		f 3 58 52 -62
		mu 0 3 54 42 45
		f 3 -60 -63 -54
		mu 0 3 43 52 44
		f 3 -64 -51 -55
		mu 0 3 45 46 47
		f 4 64 69 -66 -69
		mu 0 4 56 57 58 59
		f 4 65 71 -67 -71
		mu 0 4 59 58 60 61
		f 3 66 76 -73
		mu 0 3 61 60 62
		f 4 67 75 -65 -75
		mu 0 4 62 63 64 65
		f 3 78 -74 -72
		mu 0 3 58 66 67
		f 3 77 70 72
		mu 0 3 68 59 69
		f 3 -77 73 -68
		mu 0 3 62 60 63
		f 3 74 68 -78
		mu 0 3 68 56 59
		f 3 -76 -79 -70
		mu 0 3 57 66 58
		f 4 79 84 -81 -84
		mu 0 4 70 71 72 73
		f 3 94 -82 -86
		mu 0 3 73 74 75
		f 3 81 91 -88
		mu 0 3 75 74 76
		f 4 82 90 -80 -90
		mu 0 4 76 77 78 79
		f 3 93 -89 -87
		mu 0 3 72 80 81
		f 3 92 85 87
		mu 0 3 82 73 83
		f 3 -92 88 -83
		mu 0 3 76 74 77
		f 3 89 83 -93
		mu 0 3 82 70 73
		f 3 -91 -94 -85
		mu 0 3 71 80 72
		f 3 80 86 -95
		mu 0 3 73 72 74
		f 4 95 100 -97 -100
		mu 0 4 84 85 86 87
		f 4 96 102 -98 -102
		mu 0 4 87 86 88 89
		f 3 97 107 -104
		mu 0 3 89 88 90
		f 4 98 106 -96 -106
		mu 0 4 90 91 92 93
		f 3 109 -105 -103
		mu 0 3 86 94 95
		f 3 108 101 103
		mu 0 3 96 87 97
		f 3 -108 104 -99
		mu 0 3 90 88 91
		f 3 105 99 -109
		mu 0 3 96 84 87
		f 3 -107 -110 -101
		mu 0 3 85 94 86
		f 3 110 115 126
		mu 0 3 98 99 100
		f 3 125 117 -113
		mu 0 3 101 100 102
		f 3 112 122 -119
		mu 0 3 101 102 103
		f 4 113 121 -111 -121
		mu 0 4 103 104 105 106
		f 3 124 -120 -118
		mu 0 3 100 107 108
		f 3 123 116 118
		mu 0 3 109 110 111
		f 3 -123 119 -114
		mu 0 3 103 102 104
		f 3 120 114 -124
		mu 0 3 109 98 110
		f 3 -122 -125 -116
		mu 0 3 99 107 100
		f 3 111 -126 -117
		mu 0 3 110 100 101
		f 3 -127 -112 -115
		mu 0 3 98 100 110
		f 4 127 132 -129 -132
		mu 0 4 112 113 114 115
		f 3 128 134 142
		mu 0 3 115 114 116
		f 3 129 139 -136
		mu 0 3 117 116 118
		f 4 130 138 -128 -138
		mu 0 4 118 119 120 121
		f 3 141 -137 -135
		mu 0 3 114 122 123
		f 3 140 133 135
		mu 0 3 124 115 125
		f 3 -140 136 -131
		mu 0 3 118 116 119
		f 3 137 131 -141
		mu 0 3 124 112 115
		f 3 -139 -142 -133
		mu 0 3 113 122 114
		f 3 -143 -130 -134
		mu 0 3 115 116 117
		f 3 143 148 159
		mu 0 3 126 127 128
		f 3 158 150 -146
		mu 0 3 129 128 130
		f 3 145 155 -152
		mu 0 3 129 130 131
		f 4 146 154 -144 -154
		mu 0 4 131 132 133 134
		f 3 157 -153 -151
		mu 0 3 128 135 136
		f 3 156 149 151
		mu 0 3 137 138 139
		f 3 -156 152 -147
		mu 0 3 131 130 132
		f 3 153 147 -157
		mu 0 3 137 126 138
		f 3 -155 -158 -149
		mu 0 3 127 135 128
		f 3 144 -159 -150
		mu 0 3 138 128 129
		f 3 -160 -145 -148
		mu 0 3 126 128 138
		f 3 160 165 176
		mu 0 3 140 141 142
		f 3 175 167 -163
		mu 0 3 143 142 144
		f 3 162 172 -169
		mu 0 3 143 144 145
		f 4 163 171 -161 -171
		mu 0 4 145 146 147 148
		f 3 174 -170 -168
		mu 0 3 142 149 150
		f 3 173 166 168
		mu 0 3 151 152 153
		f 3 -173 169 -164
		mu 0 3 145 144 146
		f 3 170 164 -174
		mu 0 3 151 140 152
		f 3 -172 -175 -166
		mu 0 3 141 149 142
		f 3 161 -176 -167
		mu 0 3 152 142 143
		f 3 -177 -162 -165
		mu 0 3 140 142 152
		f 4 177 182 -179 -182
		mu 0 4 154 155 156 157
		f 3 178 184 192
		mu 0 3 157 156 158
		f 3 179 189 -186
		mu 0 3 159 158 160
		f 4 180 188 -178 -188
		mu 0 4 160 161 162 163
		f 3 191 -187 -185
		mu 0 3 156 164 165
		f 3 190 183 185
		mu 0 3 166 157 167
		f 3 -190 186 -181
		mu 0 3 160 158 161
		f 3 187 181 -191
		mu 0 3 166 154 157
		f 3 -189 -192 -183
		mu 0 3 155 164 156
		f 3 -193 -180 -184
		mu 0 3 157 158 159
		f 4 193 198 -195 -198
		mu 0 4 168 169 170 171
		f 3 194 200 208
		mu 0 3 171 170 172
		f 3 195 205 -202
		mu 0 3 173 172 174
		f 4 196 204 -194 -204
		mu 0 4 174 175 176 177
		f 3 207 -203 -201
		mu 0 3 170 178 179
		f 3 206 199 201
		mu 0 3 180 171 181
		f 3 -206 202 -197
		mu 0 3 174 172 175
		f 3 203 197 -207
		mu 0 3 180 168 171
		f 3 -205 -208 -199
		mu 0 3 169 178 170
		f 3 -209 -196 -200
		mu 0 3 171 172 173
		f 4 209 214 -211 -214
		mu 0 4 182 183 184 185
		f 4 210 216 -212 -216
		mu 0 4 185 184 186 187
		f 3 211 221 -218
		mu 0 3 187 186 188
		f 4 212 220 -210 -220
		mu 0 4 188 189 190 191
		f 3 223 -219 -217
		mu 0 3 184 192 193
		f 3 222 215 217
		mu 0 3 194 185 195
		f 3 -222 218 -213
		mu 0 3 188 186 189
		f 3 219 213 -223
		mu 0 3 194 182 185
		f 3 -221 -224 -215
		mu 0 3 183 192 184;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode groupId -n "groupId179";
	rename -uid "F08C3B6F-49C2-291B-8F89-F0A4B6344FA7";
	setAttr ".ihi" 0;
createNode shadingEngine -n "blinn4SG";
	rename -uid "8D20A900-4EE5-6898-E602-08BFF3BFA303";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "materialInfo5";
	rename -uid "3D4D0C9A-4048-65F7-966E-E688AF0793FB";
createNode blinn -n "blinn4";
	rename -uid "CA790FC9-48B3-8E51-1E4D-32B5AA006A84";
	setAttr ".c" -type "float3" 0.25999999 0 0.066507936 ;
	setAttr ".it" -type "float3" 0.37012285 0.37012285 0.37012285 ;
	setAttr ".ambc" -type "float3" 0.42856488 0.081605248 0 ;
createNode groupId -n "groupId180";
	rename -uid "90778C62-4896-8164-AC8B-1A9397DFF188";
	setAttr ".ihi" 0;
createNode shadingEngine -n "blinn1SG";
	rename -uid "C8857200-4A7A-8E94-7A4D-F8A3D58BDCA5";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "4B1DF33A-46FA-2FE3-4C50-A5914CF6E664";
createNode blinn -n "blinn1";
	rename -uid "D442EB40-41E9-1982-0096-168365A578DA";
	setAttr ".c" -type "float3" 0.57599998 0.021887992 0.031640384 ;
	setAttr ".it" -type "float3" 0.37012285 0.37012285 0.37012285 ;
	setAttr ".ambc" -type "float3" 0.42856488 0.081605248 0 ;
createNode groupId -n "groupId181";
	rename -uid "2726FFB2-4445-02A2-9C38-C68DCF015489";
	setAttr ".ihi" 0;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "79BBEF00-4C65-6E39-4463-62852864EB63";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.080219045 0.029556919 0.011612458 ;
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId179.id" "pCube81Shape.iog.og[0].gid";
connectAttr "blinn4SG.mwc" "pCube81Shape.iog.og[0].gco";
connectAttr "groupId180.id" "pCube81Shape.iog.og[1].gid";
connectAttr "blinn1SG.mwc" "pCube81Shape.iog.og[1].gco";
connectAttr "groupId181.id" "pCube81Shape.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCube81Shape.iog.og[2].gco";
connectAttr "blinn4.oc" "blinn4SG.ss";
connectAttr "pCube80Shape.iog.og[1]" "blinn4SG.dsm" -na;
connectAttr "pCube81Shape.iog.og[0]" "blinn4SG.dsm" -na;
connectAttr "pCube82Shape.iog.og[1]" "blinn4SG.dsm" -na;
connectAttr "pCube83Shape.iog.og[1]" "blinn4SG.dsm" -na;
connectAttr "groupId177.msg" "blinn4SG.gn" -na;
connectAttr "groupId179.msg" "blinn4SG.gn" -na;
connectAttr "groupId183.msg" "blinn4SG.gn" -na;
connectAttr "groupId186.msg" "blinn4SG.gn" -na;
connectAttr "blinn4SG.msg" "materialInfo5.sg";
connectAttr "blinn4.msg" "materialInfo5.m";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "pCube80Shape.iog.og[0]" "blinn1SG.dsm" -na;
connectAttr "pCube81Shape.iog.og[1]" "blinn1SG.dsm" -na;
connectAttr "pCube82Shape.iog.og[0]" "blinn1SG.dsm" -na;
connectAttr "pCube83Shape.iog.og[0]" "blinn1SG.dsm" -na;
connectAttr "groupId176.msg" "blinn1SG.gn" -na;
connectAttr "groupId180.msg" "blinn1SG.gn" -na;
connectAttr "groupId182.msg" "blinn1SG.gn" -na;
connectAttr "groupId185.msg" "blinn1SG.gn" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "blinn1.msg" "materialInfo1.m";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn4SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn4.msg" ":defaultShaderList1.s" -na;
connectAttr "pCube81Shape.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId181.msg" ":initialShadingGroup.gn" -na;
// End of SpikesLarge01.ma