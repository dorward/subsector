package Games::Traveller::Sector::Sec;
use strict;
use warnings;
use Moose;



1;



=head1 COPYRIGHT & LICENSE

Copyright 2008-2009 David Dorward

This program is free software; you can redistribute it and/or
modify it under the terms of the Artistic License version 2.0.

You are encouraged to contact the author if you wish to discuss
alternative licensing terms.

=back

__DATA__
SPINWARD MARCHES SECTOR

The data in the sector text files is laid out in column format:
 
 1-14: Name
15-18: HexNbr
20-28: UWP
   31: Bases
33-47: Codes & Comments
   49: Zone
52-54: PBG
56-57: Allegiance
59-74: Stellar Data
 
....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8

Zeycude       0101 C330698-9    Na Ni Po De        613 Zh M9 V
Reno          0102 C1207B9-A    Na Po De           603 Zh G8 V M1 D
Errere        0103 B263664-B  Z C0 Ni Ri           910 Zh M1 V M4 D
Cantrel       0104 C366243-9    Lo Ni              520 Zh F1 III
Gyomar        0108 D8B2889-5    Fl                 824 Na A8 IV
Thengo        0202 C868586-5    Ag Ni              801 Zh G5 V M3 D
Rio           0301 C686648-8    Ag Ni Ri           201 Na M1 V M0 D
Gesentown     0303 B21169B-C  Z Na Ni Ic           801 Zh M9 D M9 D
Chronor       0304 A6369A5-D  Z Hi Cp              304 Zh M8 V
Atsa          0307 B4337CA-A  Z Na Po              810 Zh F7 V M9 D
Whenge        0503 D648500-8    Ag Ni              610 Na M8 V
Enlas-du      0601 E975776-6    Ag                 323 Na F1 V
Algebaster    0605 C665658-9    Ag Ni Ri           410 Na M0 V M1 D
Rasatt        0607 E883401-7    Ni                 910 Na F0 V
Ninjar        0608 A211666-C  Z Ni Na              410 Zh A4 D
Sheyou        0610 B756779-A  Z Ag                 111 Zh F4 V M0 D
Indo          0703 E334662-5    Ni                 320 Na F6 V
Nerewhon      0704 E738475-7    Ni                 820 Na K5 V
Cipango       0705 A886865-C  Z Ri                 121 Zh G2 V
Stave         0710 E7667A8-2    Ag                 801 Na M9 V M2 D
Narval        0805 D525688-6  Z Ni              A  603 Na G4 V M6 VI
Plaven        0807 E845300-3    Lo Ni              910 Na G8 V M7 D
Quar          0808 B532720-B  N Na Po           A  401 Im M2 V
Frond         0810 E9C3300-9    Lo Ni Fl           103 Cs F8 V
Condyole      0901 E7A1522-8    Ni Fl              923 Na F8 III
Puparkin      0902 C7B3386-9    Lo Ni Fl           502 Na K8 V M4 D
Chwistyoch    0904 B766766-A  Z Ag Ri           A  424 Zh M2 V
Gougeste      0909 C372510-A    Ni              A  420 Na K2 V
Esalin        1004 C565673-8    Ag Ni Ri        A  223 Cs F3 V M5 D
Ruby          1005 B400445-B  S Ni Va              201 Im M1 V M3 D
Emerald       1006 B766555-B  S Ag Ni              534 Im M1 VI
Zenopit       1010 D130546-7    Ni Po De           622 Na M8 D
Riverland     1102 C566A99-9    Hi              A  214 Zh M7 III
Clan          1103 B672899-A  Z                 A  901 Zh M8 V
Jewell        1106 A777999-C  A Hi In Cp           623 Im G7 V
Zircon        1110 C792668-8  M Ni                 624 Fa F0 V
Ao-dai        1201 E410644-6    Na Ni              312 Zh K2 V M3 D
Mongo         1204 A368685-A  A Ag Ni Ri           603 Im M6 III M0 D
Utoland       1209 C473464-7    Ni                 410 Fa M0 V
Pequan        1210 E5656B9-4    Ag Ni              710 Na M5 V
Nakege        1305 D591314-2    Lo Ni           A  501 Im M6 V M0 D
Lysen         1307 B592655-A  S Ni                 623 Im M9 V
Foelen        1401 B638665-8    Ni              A  910 Zh K0 V
Farreach      1402 A200400-B  Z Ni Va           A  415 Zh M3 II M0 V
871-438       1510 E722000-8    Lo Ni Po Ba        801 Na M9 V M8 D
Louzy         1604 D322A88-8    Hi Na In Po        110 Im M5 V
Grant         1607 X664100-0    Lo Ni           R  222 Im K6 V
Efate         1705 A646930-D  B Hi In              810 Im K4 V
Alell         1706 B46789C-A    Ri                 410 Im M7 V M7 D
Yres          1802 BAC6773-7    Fl                 335 Im G5 V
Menorb        1803 C652998-7    Hi Po              310 Im M5 II
Uakye         1805 B439598-D    Ni                 320 Im M9 V
Whanga        1806 E676126-7    Lo Ni              224 Im A1 V M1 D
Knorbes       1807 E888787-2    Ag Ri              834 Im G3 V
Forboldn      1808 E893614-4    Ni                 312 Im G0 V
Ruie          1809 C776977-7    Hi In           A  701 Na M3 V
Jenghe        1810 C799663-9  S Ni                 323 Im M0 V
Pixie         1903 A100103-D  N Lo Ni Va           901 Im M1 V M0 D
Boughene      1904 A8B3531-D  S Ni Fl              601 Im M7 V
Hefry         1909 C200423-7  S Ni Va              320 Im K6 II M6 D
Regina        1910 A788899-C  A Ri Cp              703 Im F7 V M8 D M6 V
Feri          2005 B384879-B  S Ri                 620 Im G4 V M3 D
Roup          2007 C77A9A9-7  S Hi In Wa        A  323 Im F9 V
Pscias        2106 X355423-1    Ni              R  501 Im M5 VI
Yori          2110 C360757-A    Ri De              713 Im F1 V
Tentus        2201 C979500-A  S Ni                 920 Im M2 V
Kinorb        2202 A663659-8    Ni Ri              622 Im M7 V
Beck's World  2204 D88349D-4    Ni                 701 Im M0 V M2 D
Enope         2205 C411988-6    Hi In Na           600 Im M4 V M5 D
Wochiers      2207 EAC28CC-9    Fl                 703 Im F0 V
Yorbund       2303 C7C6503-7    Ni Fl              220 Im M8 VI
Shionthy      2306 X000742-8    Na As           R  714 Im M4 V
Algine        2308 X766977-4    Hi              R  723 Im M9 VI
Yurst         2309 E7B4643-5    Ni Fl              824 Im K9 V
Heya          2402 B687745-5    Ag Ri              734 Im K6 III M8 D
Keng          2405 E2718CA-3                       812 Im G5 III M9 D
Moughas       2406 CA5A588-B    Ni Wa              801 Im M9 V M9 D
Rethe         2408 E230AA8-8    Hi Na Po De        323 Im G7 V
Inthe         2410 B575776-9  A Ag                 423 Im F8 V
Paya          2509 A655241-9  N Lo Ni              603 Im F3 V
Dhian         2510 C9A769D-4    Ni Fl              202 Im M5 V
Corfu         2602 X895674-8    Ag Ni           R  222 Im M0 V
Focaline      2607 EA88544-A    Ag Ni              724 Im F3 V
Lablon        2701 B646589-A    Ag Ni              503 Im M2 III M4 D
Heguz         2706 E66A224-C    Lo Ni Wa           510 Im M5 V M7 D
Violante      2708 C669452-A    Ni                 420 Im M0 V
Pavanne       2905 C669452-A    Ni                 425 Im G2 V
Carsten       2906 C427402-B    Ni                 804 Im M8 V
Zila          2908 E25672C-7    Ag              A  701 Im M6 V M3 D
Jesedipere    3001 C775300-7    Lo Ni              411 Im F4 V
Yebab         3002 C9A489A-7    Fl                 712 Im M9 V
Nasemin       3003 B98A422-B  S Ni Wa              612 Im K2 V
Zykoca        3004 X994542-6    Ag Ni           R  320 Im M9 V
Aramanx       3005 B657974-6    Hi                 210 Im G0 V
Pysadi        3008 C4766D7-4    Ag Ni              201 Im K9 V M1 D
L'oeul d'Dieu 3010 B98A510-B  N Ni Wa              502 Im G1 V M9 D
Rugbird       3102 BAC5634-A    Ni Fl           A  811 Im M1 V
Towers        3103 B444448-A  S Ni              A  735 Im A8 III K6 D
Feneteman     3104 C222200-C    Lo Ni Po           910 Im G4 V M7 D
Lewis         3107 X427402-D    Ni              R  701 Im F8 V
Aramis        3110 A6B0556-B  A Ni De Cp           710 Im M9 VI
Junidy        3202 B434ABD-9  W Hi                 310 Im F7 V M9 D
Patinir       3207 C000632-9    Na Ni As           223 Im F3 V
Natoko        3209 B582211-8  N Lo Ni           A  801 Im M2 VI M6 D
Reacher       3210 C9A8542-8    Ni Fl           A  233 Im G4 D
Atson         0111 B310598-8    Ni                 933 Na K8 VI
Yiktor        0114 C6B6431-A    Ni Fl              123 Na G4 V M4 D
Xhosa         0115 EA95124-4    Lo Ni              910 Na M0 III
Prinx         0212 C436635-6    Ni                 720 Na A9 V K8 VI
Rushu         0215 E765664-4    Ag Ni Ri           903 Va A0 IV M6 D
Bael          0218 E200100-8    Lo Ni Va           812 Na K2 V
Mizan-fel     0311 B46258A-8    Ni                 323 Na F3 V
Sansibar      0412 B200310-A  Z D4 Lo Ni Va        701 Zh M3 V M3 D
Attica        0414 C400546-8    Ni Va              810 Na K1 VI M6 D
Retinae       0416 E8C69AA-5    Hi Fl              910 Cs M4 V
Terra Nova    0511 C786342-9    Lo Ni              812 Na M7 D
Asmodeus      0512 E596400-4    Ni                 205 Zh K8 V
Faisal        0518 D445436-3    Ni                 810 Cs K9 V M7 D
Lebeau        0613 B869554-C    Ni                 901 Zh G8 V M5 D
Querion       0614 B254788-9  Z Ag Cp              804 Zh M6 V
Dekalb        0618 EA8A799-6    Ri Wa              320 Cs M1 V
Winston       0620 E887573-6    Ag Ni              501 Sw K5 V M9 D
Rapp's World  0712 C592320-8  Z Lo Ni              402 Zh M5 V M8 VI
Thanber       0717 B243653-C    Ni Po              210 Cs M9 V M1 D
Entrope       0720 E336AAA-C    Hi                 720 Sw G6 V M1 D
Anselhome     0820 C110588-8    Ni                 601 Sw M6 VI M0 D
Caloran       0911 C796746-5    Ag                 510 Na G2 V M4 D
899-076       0912 E201300-8    Lo Ni Va Ic        520 Na F7 V
Quare         0915 B200545-9    Ni Va              204 Cs M3 V
Zeta 2        0919 X6B0000-0    Lo Ni De Ba     R  020 Na M4 V
Arden         1011 C5549CB-8    Hi                 810 Fa M4 V M5 D
Choleosti     1018 C200100-9    Lo Ni Va           101 Im M9 V M4 D
Margesi       1020 C575677-6    Ag Ni           A  910 Im M4 V M7 D
Frenzie       1116 A200436-A  N Ni Va              110 Im M2 III M3 D
Garda-Vilis   1118 B978868-A  S                    912 Im M3 V
Vilis         1119 A593943-A    Hi In              820 Im G5 V M8 D
Digitis       1212 E53668A-5    Ni                 920 Na M6 III
Edinina       1213 E400220-5    Lo Ni Va        A  401 Cs K6 V Mo D
728-907       1214 D955000-2    Lo Ni Ba           610 Im F1 V M4 D
Stellatio     1216 D5A4420-4    Ni Fl              210 Im M9 III
Arkadia       1217 E446845-6                       402 Im M1 V
Tremous Dex   1311 B511411-C    Ni Ic              201 Na K8 V M5 D
Mirriam       1315 E472300-8  N Lo Ni              110 Im F5 V
Saurus        1320 D888588-7    Ag Ni              820 Im A8 V M1 VI
Rangent       1411 E67A612-7    Ni Wa              503 Na M4 V
Denotam       1413 B739573-A  N Ni                 324 Im M2 V
Ficant        1417 E567353-5    Lo Ni              910 Im M0 V M1 D
Tionale       1511 C674321-8    Lo Ni           A  210 Cs M9 V M5 D
Calit         1515 C334867-7    C1                 501 Im K9 V M5 D
Asgard        1519 X3437C7-2    Po              R  520 Im F5 II M1 D
Tavonni       1520 E567000-7    Lo Ni Ba           434 Im G6 II
Phlume        1611 C887624-8    Ag Ni              710 Im G5 V M8 D
Extolay       1711 B45589A-A  N                    110 Im M2 V M4 D
Lanth         1719 A879533-B  A Ni Cp              710 Im F5 IV M9 D
Dinon         1811 D100535-A    Ni Va              201 Im A4 III
Ghandi        1815 B211455-A  N Ni Ic              303 Im F8 V M3 D
Victoria      1817 X697772-2    Ag              R  112 Im M2 V
Dinomn        1912 B674632-9  S Ag Ni              204 Im M8 VI
Ylaven        1916 X587552-4    Ag Ni           R  922 Im F9 V
Sonthert      1918 X6266AB-3    Ni              R  314 Im K6 V M0 D
D'Ganzio      1920 B120410-D  N Ni Po De           312 Im M3 V M0 D
Wypoc         2011 E9C4547-8    Ni Fl           A  922 Im M3 V
Djinni        2111 E459000-9    Lo Ni Ba        R  822 Im K5 V
Rech          2112 D9957AA-6    Ag                 501 Im M0 V
KKirka        2212 CAA5345-8    Lo Ni Fl           102 Im M8 V
Quopist       2215 B150679-A    Ni Po De        A  721 Im M3 V
Treece        2311 D232866-8    Na Po              610 Im M1 V
Echiste       2313 C53A313-A    Lo Ni Wa           720 Im G4 V
Pirema        2314 D691142-5    Lo Ni              802 Im M4 V
Rhise         2317 C100576-A    Ni Va           A  710 Im M7 V
Ivendo        2319 B324659-A  A C0 Ni              112 Im A9 V
Keanou        2411 C792348-7  S Lo Ni              213 Im M3 III M2 D
Tureded       2414 C465540-9    Ag Ni              614 Im M3 V
Vreibefger    2415 E481542-3    Ni                 901 Im M9 V
La'Belle      2416 C564112-4    Lo Ni              701 Im F2 V M3 D
Equus         2417 B55A858-B  S Wa                 202 Im F6 V M5 D
Icetina       2418 B5245A9-7  N Ni              A  301 Im M9 V M8 D
Cogri         2419 CA6A643-9    Ni Ri Wa           432 Im M1 II
Skull         2420 C2237C7-9  N Na Po              601 Im M1 V M0 VI
Kinorb        2512 C449433-9    Ni                 502 Im A0 V K9 D
Gileden       2514 C483103-6    Lo Ni              203 Im M9 V
Plannet       2519 E9C5677-7    Ni Fl              224 Im K5 V
Garrincski    2520 B632520-7  S Ni Po              410 Im M0 V M7 D
Macene        2612 B000453-E  N Ni As              911 Im G8 V M8 D
Fulacin       2613 A674210-D    Lo Ni              810 Im G3 V
Natoko        2620 C8879AB-9    Hi                 204 Im F4 V
Risek         2712 A325579-A  N Ni                 401 Im M5 V M3 D
Porozlo       2715 A867A74-B    Hi                 201 Im M1 V M9 D
Rhylanor      2716 A434934-F  A Hi Cp              810 Im M2 VI
Loneseda      2720 C86A215-7    Lo Ni Wa           705 Im M9 V
Valhalla      2811 E365432-5    Ni                 622 Im G4 IV
Zivije        2812 C6B199C-B    Hi Fl           A  421 Im G6 V
Jae Tellona   2814 A560565-8  N Ni De              913 Im F9 IV
Gerome        2818 X573000-0    Lo Ni Ba        R  701 Im K2 V
Henoz         2912 A245543-B    C0 Ag Ni           824 Im F3 D
Celepina      2913 B434456-9  A Ni                 201 Im M2 VI
Gitosy        2918 B000676-9    Na Ni As           620 Im G6 V M3 D
Belizo        3015 B895646-5    Ag Ni              923 Im G1 V
Kegena        3016 E869569-3    Ni              A  224 Im F6 V
Heroni        3017 E7A0614-3    Ni De              820 Im G5 V
457-973       3019 X372215-4    Lo Ni           R  534 Im G9 V
Somem         3020 C301340-B    Lo Ni Va Ic        201 Im M6 V M7 VI
Vinorian      3111 B879610-9    Ni                 610 Im M3 V M4 D
Nutema        3112 B864310-8  N Lo Ni              822 Im M3 V
Huderu        3114 X575000-0    Lo Ni Ba        R  920 Im M0 III
Cipatwe       3118 B35879A-6    Ag                 623 Im M1 V
Vanejen       3119 C686854-5    C4 Ri              520 Im K1 V M0 D
Margesi       3212 A576257-C  A Lo Ni              920 Im F0 V
Bevy          3216 D4209CC-A  S Hi Na In Po De     224 Im F4 V
Tacaxeb       3218 C230411-B    Ni Po De           801 Im M6 V M2 D
Powaza        3220 C787566-5    Ag Ni              332 Im A5 V K4 D
Junction      0122 D150441-4    Ni Po De           210 Na M3 V M2 D
Uniqua        0129 E62556B-4    Ni                 210 Na K9 V M2 D
Garoo         0130 A2008CB-A    Na Va              210 Na M1 V M5 D
Stern-Stern   0223 B321588-B    Ni Po              701 Da M0 V M3 D
886-945       0230 D833000-3    Lo Ni Po Ba        504 Na F8 V
Nomym         0321 C233898-A  G Na Po              623 Na G0 V
Laberv        0325 B354443-7  M Ni                 834 Da F0 V
Ektron        0326 C332652-9    Na Ni Po           423 Da M5 V
Zamine        0421 E897977-A    Hi In              223 Da M4 V
Engrange      0425 C554769-8    Ag                 701 Da M1 V M3 D
Ilium         0426 B444831-9  M                    401 Da G3 V M8 D
Roget         0427 B566777-9    Ag Ri              420 Da F8 V M9 D
Kardin        0429 E453123-6    Lo Ni Po           410 Na F7 V
Bularia       0430 C774622-5    Ag Ni              310 Cs M5 V M3 D
Rorre         0526 D765657-3    Ag Ni Ri           103 Da F4 V M7 D
Mire          0527 A665A95-B  M Hi Cp              110 Da M3 V
Condaria      0528 E54779B-5    Ag                 901 Na K3 V M0 D
Dorannia      0530 E42158A-8    Ni Po              510 Na K4 V
Terant 340    0622 D1405A7-9    Ni Po De           523 Da G0 V M5 D
Jacent        0624 A333644-D    Na Ni Po           710 Da M6 V
494-908       0625 X893000-0    Lo Ni Ba        R  710 Da M1 V
Darrian       0627 A463955-G    Hi                 225 Da G1 V M1 D
Torment       0721 X233231-4    Lo Ni Po        R  820 Da G1 V
Trifuge       0723 C446556-9    Ag Ni              210 Da M5 II
Nosea         0724 B2326BB-C  M Na Ni Po           620 Da G0 IV
Spume         0727 C140200-A  M Lo Ni Po De        434 Da M7 V
Ator          0729 D326258-6    Lo Ni              821 Na F7 V M7 D
Cunnonic      0822 E65767A-3    Ag Ni              502 Da M0 V
Debarre       0830 B854123-9    Lo Ni           A  822 Cs M2 V
Hrunting      0921 B463747-9  M Ri                 313 Sw M2 V
Tizon         0922 B386887-A  M Ri                 323 Sw K2 VI M3 D
Narsil        0927 B574A55-A  M Hi In              224 Sw M0 II M6 D
Flammarion    0930 A623514-B  B Ni Po              710 Im F8 V
Colada        1022 B364685-B  M Ag Ni Ri        A  211 Sw K2 V M8 D
Anduril       1026 B985855-B  M Ri                 222 Sw F2 V
Mjolnir       1121 B530544-A  M Ni Po De           522 Sw A5 V G0 D
Joyeuse       1123 B464778-A  M Ag Ri           A  201 Sw M3 V M9 D
Orcrist       1126 B8A6733-A  M Fl                 401 Sw M7 V M7 D
Enos          1130 E25059B-4  M Ni Po De           710 Sw M9 V
Gungnir       1221 B444779-8  M Ag                 432 Sw G3 VI M4 VI
Gram          1223 A895957-B  M Hi In Cp           603 Sw F2 D M2 D
Excalibur     1225 B324755-A  M                    402 Sw M5 V
Tyrfing       1324 B637735-A  M                    701 Sw M4 V
Sacnoth       1325 B775956-C  M Hi In              801 Sw F9 V M8 D
Caladbolg     1329 B365776-A  S Ag Ri              710 Im F7 V M0 D M4 D
Beater        1424 B685686-A  M Ag Ni Ri           610 Sw M4 V
Gunn          1429 E344110-8    Lo Ni           A  602 Im M6 V
Caliburn      1430 E000514-A    Ni As              924 Im M7 VI
Dyrnwyn       1522 B958412-A  M Ni                 201 Sw M4 V M8 D
Durendal      1523 B687334-B  M Lo Ni              714 Sw M1 V
Hofud         1524 B666553-A  M Ag Ni              501 Sw M4 V M9 D
Sting         1525 B645896-A  M                    302 Sw M0 V
Biter         1526 B354623-A  M Ag Ni              301 Sw M7 V M1 D
Steel         1529 E655000-7    Lo Ni Ba           324 Sw M8 III
Iron          1626 E529000-9    Lo Ni Ba           714 Sw F0 V
Bronze        1627 E201000-9    Lo Ni Va Ic Ba     510 Sw M3 V
Mithril       1628 E568000-7    Lo Ni Ba           301 Sw F4 D
Arba          1721 C200200-C    Lo Ni Va           610 Im K2 V
Wardn         1727 B756486-B  S Ni              A  502 Im M2 V
Olympia       1728 C328342-7    Lo Ni              120 Im M6 V
Smoug         1729 C14078A-9    Po De              902 Im M1 V M7 D
Rabwhar       1822 D5448BA-6  S                    313 Im M5 D
Adabicci      1824 A57189B-B  N                    801 Im K8 V M8 D
Zaibon        1825 B000544-B    Ni As              512 Im G5 III
Tenalphi      1826 A774102-E    Lo Ni              610 Im F7 V
Ianic         1924 E360697-5    Ni Ri De           924 Im M6 II M9 D
Spirelle      1927 C766846-8  S D1 Ri              715 Im M4 V
Derchon       2024 C512799-8  S Na Ic              901 Im M0 V M7 D
Lunion        2124 A995984-D  A Hi In Cp           810 Im M3 D M7 D
Shirene       2125 B984510-B  S Ag Ni           A  901 Im G4 V M1 D M1 D
Penkwar       2128 X978310-1    Lo Ni           R  320 Im M0 V
Harvosette    2129 C330737-9    Na Po De           910 Im M7 D M5 D
Carse         2224 C463325-9    Lo Ni              601 Im M8 V M6 D
Persephone    2228 B775833-A  W                    922 Im M2 V
Quiru         2321 B365300-8    Lo Ni              323 Im M6 V
Gorram        2322 X554220-0    Lo Ni           R  801 Im M8 V M6 VI
Resten        2323 B310100-B  S Lo Ni              501 Im M5 V M8 D
Capon         2324 B747748-A  N Ag                 610 Im M9 D
Sharrip       2325 C575101-A    Lo Ni              503 Im K5 V
Strouden      2327 A745988-D  N Hi In              920 Im M0 V M4 D
Gandr         2425 E000347-8    Lo Ni As           813 Im M7 V
Drolraw       2426 EAB6311-5    Lo Ni Fl           904 Im F1 V
Heroni        2521 B6449B9-8    Hi In              721 Im F3 V
Byret         2523 B485697-6    Ag Ni Ri           812 Im M0 V
Pimane        2527 E500343-4    Lo Ni Va           803 Im K0 V
Fosey         2621 A633656-A    Na Ni Po           620 Im M3 V
Mercury       2624 B658663-8  A Ag Ni              304 Im F7 V
Tivid         2627 C534477-8    Ni                 401 Im M3 V
Carey         2726 C579221-9    Lo Ni              910 Im M7 V  M2 D
Duale         2728 A5437BF-B    Po                 401 Im M2 V  M0 7
Catz          2824 C22048C-9    Ni Po De           510 Im G9 V M2 D
Meleto        2827 C675100-5  S Lo Ni              724 Im F9 V
Hexos         2828 B534420-8  N C3 Ni              123 Im K1 V M2 D
Pedase        2830 C415346-7  S Lo Ni Ic           101 Im M6 V M7 D
Moran         2924 C367300-8  N Lo Ni           A  201 Im M4 V M7 D
Maitz         2927 A201511-B    Ni Va Ic           122 Im F1 V
Mainz         2930 C553352-A  S Lo Ni Po           803 Im K2 V M7 D
Brodie        3021 C410468-7    Ni                 114 Im M1 III M7 D
Rorise        3022 C994100-A    Lo Ni              502 Im M7 V
Jokotre       3024 B6548D9-7                       810 Im K6 V
Fornice       3025 A354A87-C    Hi                 202 Im M0 V
Grille        3026 E410335-7    Lo Ni              701 Im F0 V M5 D
Pallique      3029 A511965-E    Hi Na In Ic     A  320 Im M1 V M0 D
Nexine        3030 C97A443-8  S Ni Wa              801 Im M8 V M6 D
Nadrin        3123 D120203-6  S Lo Ni Po De        920 Im M5 V M1 D
Mora          3124 AA99AC7-F  A Hi In Cx           112 Im M4 V
Dojodo        3223 C512311-7  S C0 Lo Ni Ic        710 Im M5 V
Fenl's Gren   3228 C647346-9    Lo Ni           A  423 Im K7 V
Emape         0133 B564500-B  N Ag Ni           A  503 Im M0 V
Raweh         0139 B130300-B  N Lo Ni Po De     A  920 Im G3 V M1 D
876-574       0140 E687200-0    Lo Ni              702 Na K7 V
Saxe          0231 EAA5543-7    Ni Fl              910 Na A2 V
Andor         0236 C695735-9    Ag              R  603 Dr F3 V
769-422       0240 E754401-8    Ni                 924 Na G2 V
Gothe         0332 E22159B-6    Ni Po              310 Im F5 IV
Mirriam       0333 B9998A6-A  B                 A  514 Im M6 V
Candory       0336 C593634-8    Ni              R  920 Dr F6 V M3 D
Wonderay      0340 E88A46A-4    Ni Wa              210 Na M3 V M1 D
Jone          0433 B792785-9  N                 A  810 Im M8 V M5 D
Jinx          0440 D100133-7    Lo Ni Va        A  202 Na G3 IV M6 D
Ucella        0532 D574654-7    C0 Ag Ni        A  410 Cs F2 V M6 D
Penelope      0533 C460642-4    Ni Ri De           323 Im F6 V M7 VI
Karin         0534 A767768-C  A Ag Ri           A  410 Im M7 V
Wonstar       0538 B455741-7  N Ag              A  910 Im M0 V M1 D
Froin         0539 C535225-9    Lo Ni              601 Im M7 V M2 D
Gohature      0632 C754766-7  S Ag                 523 Im F8 V
Quhaiathat    0637 C31479B-9    Ic                 210 Im M8 V
Lakou         0638 E779454-7    Ni              A  601 Im M6 D
Ralhe         0731 E224564-8    Ni                 801 Na M8 V M3 D
Iderati       0732 A887798-C  N Ag Ri Cp           201 Im M2 V
Tondoul       0739 E5136A7-4    Na Ni Ic           701 Na M8 V M1 D
875-496       0834 E888421-7  S Ni              A  510 Cs M8 V M7 D
Ochecate      0837 E747569-7    Ag Ni              210 Na G8 VI M8 D
Mewey         0838 D786799-5    Ag Ri              701 Na M3 V M3 D
975-452       0840 E100316-9    Lo Ni Va           821 Na M0 V
Asteltine     0931 B7A7402-A    Ni Fl              210 Na K7 V M3 D
Inchin        0938 D12035C-A    Lo Ni Po De        823 Na F0 III
Singer        0940 D553774-6    Po                 901 Na M2 V M2 D
567-908       1031 E532000-8    Lo Ni Po Ba        310 Na M9 V M1 D
Avastan       1037 C433520-A    Ni Po              724 Na M8 VI
Kwai Ching    1040 C503758-A    Na Va Ic           320 Na K3 V
Faldor        1131 E5936A7-2    Ni                 520 Na M7 III
Bowman        1132 D000300-9  S Lo Ni As           811 Cs M0 V
Squallia      1133 C438679-9    Ni                 320 Na F0 V
Tarsus        1138 B584620-A    Ag Ni              202 Cs K9 V
Walston       1232 C544338-8  S Lo Ni              302 Cs M5 V
Flexos        1233 E5A1422-6    Ni Fl              610 Na M8 V M2 D
Collace       1237 B628943-D  S Hi In              101 Cs F1 V M6 D
Pavabid       1238 C6678D8-6                    A  701 Cs M7 V
Datrillian    1331 E227633-8    Ni                 801 Na M7 V
Nirton        1332 X600000-0    Lo Ni Va Ba     R  011 Na K8 V
Judice        1337 E9B2000-8    Lo Ni Fl Ba        321 Cs M3 III
Trexalon      1339 B361851-C    Ri                 923 Na M0 D
Motmos        1340 B68468B-5  N Ag Ni Ri           710 Cs M2 V M2 D
Noctocol      1433 E7A5747-6    Fl                 602 Na M5 VI M2 D
Tarkine       1434 C466662-7  S Ag Ni Ri        A  310 Cs M0 V M2 D
Dallia        1435 B8B5883-9    Fl                 610 Cs F2 V
Talos         1436 E333532-9    Ni Po              820 Na F9 V M1 D
Dawnworld     1531 E885000-0    Lo Ni Ba           025 Na F8 D M5 D
Elixabeth     1532 B426467-8  N Ni                 201 Cs M4 V M5 D
Forine        1533 D3129B8-A    Hi Na In Ic        610 Na M0 V
Mertactor     1537 B262732-B  S Cp                 610 Im G1 V
Talchek       1631 C7B1462-5    Ni Fl           A  601 Cs K8 V M5 VI
Milagro       1632 E21178A-7    Na Ic              920 Cs M2 V
Pegaton       1634 C769873-4    Ri                 913 Na M0 V
Binges        1635 A800231-A    Lo Ni Va           720 Na F0 V
Mille Falcs   1637 B9A2469-C  A Ni Fl              301 Im M6 V
Grote         1731 A400404-B    Ni Va              124 Im F8 V
Lydia         1733 E110430-6    Ni                 902 Im M4 III M0 VI
Melior        1736 D140466-7    Ni Po De        A  724 Im G3 V
Egypt         1737 BAC6567-7  N Ni Fl              521 Im F8 V
Aster         1739 C86A410-9    Ni Wa              401 Im M9 V
Callia        1836 E150852-6    Po De              810 Im M7 V
Mithras       1932 C8B5546-6    Ni Fl              302 Im M3 V
Weiss         1934 A626464-B    Ni              A  703 Im M0 III M2 D
Windsor       1935 C783511-9    Ni                 210 Im K9 V M0 D
Overnale      1937 B45467A-9    Ag Ni              423 Im G3 V
New Rome      1938 B837866-B  N                    704 Im F8 V M0 D
Craw          1939 C573645-3    Ni                 923 Im G7 V
Aki           2035 B443987-9    Hi In Po        A  214 Im G6 V M2 D
Glisten       2036 A000986-F  A Hi Na In As Cp     821 Im K9 V
Trane         2038 C639422-B    Ni                 704 Im F4 V M3 D
Centry        2132 E222447-6    Ni Po              220 Im K3 V
Caledonia     2134 C541636-5    Ni Po              910 Im M4 III M0 D
Sorel         2137 E48569A-2    Ag Ni Ri           921 Im G3 V M3 D
Horosho       2138 C3378A6-A  S                    920 Im F4 V
Romor         2140 B450456-B  A Ni Po De           112 Im M5 V M3 D
Marastan      2231 D868772-5    Ag Ri              924 Im M7 V
Crout         2232 E4359CA-7    Hi                 314 Im M7 II M9 VI
Tirem         2233 C7B5975-B    Hi Fl              621 Im K5 V
Inthe         2234 C100598-B    Ni Va              924 Im K3 V
Tsarina       2236 D120636-5    Na Ni Po De     A  301 Im M5 V M2 D
Wurzburg      2237 C795300-A  S Lo Ni           A  510 Im F8 V
Bicornn       2331 E563576-2    Ni                 210 Im M0 V
Ffudn         2334 A41489D-C    Ic                 904 Im F3 V M3 VI
Bendor        2336 A756656-C  A Ag Ni              820 Im A5 V
Burtson       2534 C462667-8    Ni Ri              402 Im M4 V
Squanine      2536 A300550-B    Ni Va              303 Im F4 V M7 D
Dobham        2537 A450457-A  S Ni Po De           523 Im G0 V
Pyramus       2538 E566335-2    Lo Ni              214 Im M3 V
Thisbe        2539 E4305AD-5    Ni Po De           322 Im F8 II
Aramis        2540 B659772-6                       924 Im M3 V
Robin         2637 C00059C-C    Ni As              212 Im M5 V
D'Mara        2638 E75A798-5    Wa                 910 Im F4 VI
Kelcher       2639 C525567-9    Ni                 602 Im M6 V
Tussinian     2731 B678324-7    Lo Ni              520 Im K0 V
Edenelt       2733 A4638BD-B                       934 Im M7 V
Conway        2735 D894586-7  S Ag Ni              311 Im F0 V M0 D
Doods         2739 C4439DF-7  S Hi In Po           423 Im M7 V
Leander       2832 E695244-5    Lo Ni              801 Im M5 V M1 D
Pepernium     2833 D567530-3    Ag Ni              503 Im M1 V
Traltha       2834 B790630-6    Ni De              410 Im F5 V
Farquahar     2839 C625563-7  S Ni                 201 Im M5 V
Raydrad       2933 E99467A-6    Ag Ni              303 Im M7 III M9 D
Zyra          2934 B555448-7    Ni                 301 Im M8 V
Murchison     2935 B544433-6  N Ni                 305 Im M5 III M9 V
Hammermium    2936 A5525AB-B    Ni Po              535 Im M3 III
Thornnastor   2940 D534443-8  S C1 Ni              804 Im M1 III
Katarulu      3032 B252665-B  B Ni Po              201 Im M0 V  M9 D
Prilissa      3035 B985588-6    Ag Ni              510 Im K9 V
Tee-Tee-Tee   3038 C110530-9    Ni                 902 Im M2 V
Youghal       3039 AA95365-B    Lo Ni              201 Im M3 V
Tenelphi      3040 D76A579-9  S Ni Wa              901 Im F4 V MO VI
Zephyr        3138 X89556A-3    Ag Ni           R  404 Im M5 V
Chamois       3139 B544642-5  S Ag Ni              723 Im F9 IV
Ramiva        3233 B1107A7-8    Na                 913 Im M9 V
Trin          3235 A894A96-F  A Hi In Cp           101 Im M0 V
Hazel         3236 C645747-5    Ag              A  110 Im A1 V  M6 D
