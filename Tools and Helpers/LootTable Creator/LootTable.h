/**
  /////////////////////////////////////////////////////////////////////////////
  Exile Mod Loot Table Template
  /////////////////////////////////////////////////////////////////////////////

  Format of this file is the following:

  > LootTableName
  Spawn Chance %, Item Class Name

  You can add one item to multiple loot tables.

  Be careful with spawn chance values! They do not define how common an item is
  in general, but how common it is in relation to all the other items of that
  loot table. Values from 0..100 are allowed. The higher the chance, the more
  often will it spawn.
*/

///////////////////////////////////////////////////////////////////////////////
// Slums/Ghetto, Farms, Village Houses, Castle etc.
// Spawn Guerilla things :)
///////////////////////////////////////////////////////////////////////////////
> CivillianLowerClass

// Food
200, Exile_Item_PlasticBottleEmpty
50, Exile_Item_PlasticBottleFreshWater
30, Exile_Item_Energydrink
40, Exile_Item_Beer
150, Exile_Item_GloriousKnakworst
170, Exile_Item_SausageGravy
170, Exile_Item_ChristmasTinner
170, Exile_Item_BBQSandwich
190, Exile_Item_Surstromming
200, Exile_Item_Catfood

20, Exile_Item_ChristmasTinner_Cooked
20, Exile_Item_BBQSandwich_Cooked
20, Exile_Item_GloriousKnakworst_Cooked
20, Exile_Item_SausageGravy_Cooked
20, Exile_Item_Surstromming_Cooked
20, Exile_Item_Catfood_Cooked

// Pistols
80, hgun_ACPC2_F            // ACP-C2 .45
80, hgun_P07_F              // P07 9 mm
80, hgun_Rook40_F           // Rook-40 9 mm
50, hgun_Pistol_heavy_01_F  // 4-five .45
50, hgun_Pistol_heavy_02_F  // Zubr .45
50, hgun_Pistol_Signal_F    // Starter Pistol

// Pistol Magazines
90, 11Rnd_45ACP_Mag       // 4-five
90, 16Rnd_9x21_Mag        // PDW2000, P07, ROOK-40
90, 30Rnd_9x21_Mag        // Sting, PDW2000, P07, ROOK-40
60, 6Rnd_45ACP_Cylinder   // Zubr
30, 6Rnd_GreenSignal_F    // Starter Pistol
30, 6Rnd_RedSignal_F      // Starter Pistol
90, 9Rnd_45ACP_Mag        // ACP-C2

// Pistol Items
50, muzzle_snds_L
50, muzzle_snds_acp
20, optic_Yorris      // No one needs this crap
20, optic_MRD

// SMG Ammo
40, 30Rnd_45ACP_Mag_SMG_01                // Vermin SMG
40, 30Rnd_45ACP_Mag_SMG_01_Tracer_Green   // Vermin SMG

// SMGs
30, SMG_01_F        // Vermin SMG .45 ACP
30, SMG_02_F        // Sting 9 mm
30, hgun_PDW2000_F  // PDW2000 9 mm

// SMG Items
50, optic_Holosight_smg
50, optic_ACO_grn_smg
50, optic_Aco_smg
50, optic_ACO_grn
50, optic_Aco

// Backpacks
75, B_OutdoorPack_blk
75, B_OutdoorPack_tan
75, B_OutdoorPack_blu

70, B_HuntingBackpack

60, B_AssaultPack_khk
60, B_AssaultPack_dgtl
60, B_AssaultPack_rgr
60, B_AssaultPack_sgg
60, B_AssaultPack_blk
60, B_AssaultPack_cbr
60, B_AssaultPack_mcamo
60, B_Kitbag_mcamo
60, B_Kitbag_sgg
60, B_Kitbag_cbr

50, B_FieldPack_blk
50, B_FieldPack_ocamo
50, B_FieldPack_oucamo
50, B_FieldPack_cbr
50, B_Bergen_sgg
50, B_Bergen_mcamo
50, B_Bergen_rgr
50, B_Bergen_blk

// Rifle Items
30, muzzle_snds_M
30, muzzle_snds_H
30, optic_Arco
30, optic_Hamr
30, optic_Holosight
40, acc_flashlight
30, acc_pointer_IR
30, optic_MRCO
30, optic_DMS

// Items
15, Binocular
10, Exile_Item_CamoTentKit
65, Exile_Item_CookingPot
40, Exile_Item_DuctTape
40, Exile_Item_LightBulb
200, Exile_Item_Matches
15, Exile_Item_InstaDoc
25, ItemGPS

// Chem lights
100, Chemlight_blue
100, Chemlight_green
100, Chemlight_red
100, Chemlight_yellow

// Road flares
80, FlareGreen_F
80, FlareRed_F
80, FlareWhite_F
80, FlareYellow_F

// Uniforms
50, U_C_Poor_1
50, U_C_Poor_2
50, U_C_Poor_shorts_1
50, U_C_HunterBody_grn

40, U_C_Poloshirt_salmon
40, U_C_Poloshirt_tricolour
40, U_C_Poloshirt_stripped
40, U_C_Poloshirt_burgundy
40, U_C_Poloshirt_blue

// Guerilla Headgear
30, H_Booniehat_khk
30, H_Booniehat_indp
30, H_Booniehat_mcamo
30, H_Booniehat_grn
30, H_Booniehat_tan
30, H_Booniehat_dirty
30, H_Booniehat_dgtl
30, H_Booniehat_khk_hs

20, H_Bandanna_khk
20, H_Bandanna_khk_hs
20, H_Bandanna_cbr
20, H_Bandanna_sgg
20, H_Bandanna_gry
20, H_Bandanna_camo
20, H_Bandanna_mcamo
20, H_BandMask_blk

10, H_Beret_blk
10, H_Beret_red
10, H_Beret_grn
10, H_Beret_grn_SF
10, H_Beret_brn_SF
10, H_Beret_ocamo
10, H_Beret_02
10, H_Beret_Colonel

15, H_Hat_camo
15, H_Cap_brn_SPECOPS
15, H_Cap_tan_specops_US
15, H_Cap_khaki_specops_UK
15, H_Watchcap_blk
15, H_Watchcap_khk
15, H_Watchcap_camo
15, H_Watchcap_sgg
15, H_TurbanO_blk

10, H_Shemag_khk
10, H_Shemag_tan
10, H_Shemag_olive
10, H_Shemag_olive_hs
10, H_ShemagOpen_khk
10, H_ShemagOpen_tan

// Guerilla Vests
15, V_BandollierB_khk
15, V_BandollierB_cbr
15, V_BandollierB_rgr
15, V_BandollierB_blk
15, V_BandollierB_oli
10, V_Chestrig_khk
10, V_Chestrig_rgr
10, V_Chestrig_blk
10, V_Chestrig_oli
15, V_HarnessO_brn
15, V_HarnessOGL_brn
15, V_HarnessO_gry
15, V_HarnessOGL_gry
15, V_HarnessOSpec_brn
15, V_HarnessOSpec_gry

5, V_I_G_resistanceLeader_F

// Guerilla Uniforms
40, U_IG_Guerilla1_1
40, U_IG_Guerilla2_1
40, U_IG_Guerilla2_2
40, U_IG_Guerilla2_3
40, U_IG_Guerilla3_1
40, U_IG_Guerilla3_2

10, U_IG_leader
5, U_I_G_resistanceLeader_F


//Addons
31, hlc_smg_mp5a2
32, hlc_smg_mp5a3
33, hlc_smg_mp5a4
34, hlc_smg_mp5n
35, hlc_smg_mp510
36, hlc_smg_mp5sd5
37, hlc_smg_mp5sd6
38, hlc_smg_9mmar
30, hlc_rifle_aks74u
31, hlc_rifle_augsrcarb
32, hlc_rifle_augsrcarb_t
33, hlc_rifle_augsrcarb_b
20, RH_m4
20, RH_m4_tg
20, RH_m4_des
21, RH_m4_wdl
21, RH_m4_ris
21, RH_m4a1_ris
22, RH_m4a1_ris_tg
22, RH_m4a1_ris_des
22, RH_m4a1_ris_wdl
23, RH_m4_ris_m_tg
23, RH_m4_ris_m_des
23, RH_m4_ris_m_wdl
24, RH_m4a6_tg
24, RH_m4a6_des
24, RH_m4a6_wdl
25, RH_m4sbr
25, RH_m4sbr_g
25, RH_m4sbr_b
26, RH_m16a1
26, RH_m16a2
26, RH_m16a3
26, RH_m16a4
27, RH_m16a4_tg
27, RH_m16a4_des
28, RH_m16a4_wdl
28, RH_m16a4_m
29, RH_m16a4_m_tg
29, RH_m16a4_m_des
29, RH_m16a4_m_wdl
15, RH_m4m
15, RH_m4m_g
15, RH_m4m_b
15, RH_m4_moe
16, RH_m4_moe_g
16, RH_m4_moe_b
16, RH_m4a6
16, RH_m16a6
17, RH_m16a6_tg
17, RH_m16a6_des
17, RH_m16a6_wdl
17, RH_sbr9
18, RH_sbr9_tg
18, RH_sbr9_des
18, RH_sbr9_wdl
18, RH_deagle
19, RH_deagleg
19, RH_deagles
19, RH_deaglem
19, RH_cz75
40, RH_sw659
40, RH_usp
40, RH_mak
40, RH_m1911
40, RH_kimber
41, RH_kimber_nw
41, RH_uspm
41, RH_m9
41, RH_m9c
41, RH_vz61
42, RH_g18
42, RH_g17
42, RH_tt33
42, RH_mk2
42, RH_p226
43, RH_p226s
43, RH_g19
43, RH_g19t
43, RH_vp70
44, RH_mateba
44, RH_python
44, RH_mp412
44, RH_bull
45, RH_bullb
45, RH_ttracker
45, RH_ttracker_g
46, RH_fnp45
46, RH_fnp45t
46, RH_fn57
46, RH_fn57_g
47, RH_fn57_t
47, RH_gsh18
47, RH_tec9
47, RH_muzi

50, hlc_30Rnd_545x39_B_AK
50, hlc_30Rnd_9x19_B_MP5
50, hlc_30Rnd_9x19_GD_MP5
50, hlc_30Rnd_9x19_SD_MP5
50, hlc_30Rnd_10mm_B_MP5
50, hlc_30Rnd_10mm_JHP_MP5
45, hlc_25Rnd_9x19mm_M882_AUG
45, hlc_25Rnd_9x19mm_JHP_AUG
45, hlc_25Rnd_9x19mm_subsonic_AUG
45, RH_30Rnd_556x45_M855A1
45, RH_30Rnd_556x45_Mk262
45, RH_30Rnd_556x45_Mk318
56, RH_20Rnd_556x45_M855A1
56, RH_20Rnd_556x45_Mk262
56, RH_20Rnd_556x45_Mk318
56, RH_60Rnd_556x45_M855A1
56, RH_60Rnd_556x45_Mk262
56, RH_60Rnd_556x45_Mk318
49, RH_7Rnd_50_AE
49, RH_16Rnd_9x19_cz
49, RH_14Rnd_9x19_sw
49, RH_12Rnd_45cal_usp
49, RH_8Rnd_9x18_Mak
49, RH_7Rnd_45cal_m1911
59, RH_16Rnd_40cal_usp
59, RH_15Rnd_9x19_M9
59, RH_20Rnd_32cal_vz61
59, RH_33Rnd_9x19_g18
59, RH_17Rnd_9x19_g17
59, RH_8Rnd_762_tt33
57, RH_10Rnd_22LR_mk2
57, RH_15Rnd_9x19_SIG
57, RH_18Rnd_9x19_VP
57, RH_6Rnd_44_Mag
57, RH_6Rnd_357_Mag
57, RH_6Rnd_454_Mag
52, RH_6Rnd_45ACP_Mag
52, RH_15Rnd_45cal_fnp
52, RH_20Rnd_57x28_FN
52, RH_18Rnd_9x19_gsh
52, RH_32Rnd_9x19_tec
52, RH_30Rnd_9x19_UZI

35, U_PMC_GTShirt_DJeans
35, U_PMC_GTShirt_SJeans
35, U_PMC_BlkTShirt_DJeans
35, U_PMC_BlkTShirt_SJeans
35, U_PMC_BluTShirt_SJeans
35, U_PMC_WTShirt_DJeans

///////////////////////////////////////////////////////////////////////////////
// Apartments, Offices etc.
///////////////////////////////////////////////////////////////////////////////
> CivillianUpperClass

200, Exile_Item_PlasticBottleEmpty
50, Exile_Item_PlasticBottleFreshWater
30, Exile_Item_Energydrink
40, Exile_Item_Beer
150, Exile_Item_GloriousKnakworst
170, Exile_Item_SausageGravy
170, Exile_Item_ChristmasTinner
170, Exile_Item_BBQSandwich
190, Exile_Item_Surstromming
200, Exile_Item_Catfood
20, Exile_Item_ChristmasTinner_Cooked
20, Exile_Item_BBQSandwich_Cooked
20, Exile_Item_GloriousKnakworst_Cooked
20, Exile_Item_SausageGravy_Cooked
20, Exile_Item_Surstromming_Cooked
20, Exile_Item_Catfood_Cooked

// Pistols
70, hgun_ACPC2_F              // ACP-C2 .45
70, hgun_P07_F                // P07 9 mm
70, hgun_Rook40_F             // Rook-40 9 mm
50, hgun_Pistol_heavy_01_F    // 4-five .45
50, hgun_Pistol_heavy_02_F    // Zubr .45
35, hgun_Pistol_Signal_F      // Starter Pistol

// Pistol Magazines
80, 11Rnd_45ACP_Mag      // 4-five
80, 16Rnd_9x21_Mag       // PDW2000, P07, ROOK-40
80, 30Rnd_9x21_Mag       // Sting, PDW2000, P07, ROOK-40
70, 6Rnd_45ACP_Cylinder  // Zubr
50, 6Rnd_GreenSignal_F   // Starter Pistol
50, 6Rnd_RedSignal_F     // Starter Pistol
70, 9Rnd_45ACP_Mag       // ACP-C2

// Pistol Items
25, muzzle_snds_L
25, muzzle_snds_acp
10, optic_Yorris
10, optic_MRD

// Backpacks
85, B_OutdoorPack_blk
85, B_OutdoorPack_tan
85, B_OutdoorPack_blu
70, B_HuntingBackpack

// Uniforms
100, U_C_Poloshirt_salmon
100, U_C_Poloshirt_tricolour
100, U_C_Poloshirt_stripped
100, U_C_Poloshirt_burgundy
100, U_C_Poloshirt_blue

50, U_C_Journalist
50, U_C_Scientist
50, U_Rangemaster

5, U_OrestesBody
5, U_NikosBody
5, U_NikosAgedBody

// Vests
50, V_Rangemaster_belt
50, V_Press_F
50, V_TacVest_blk_POLICE

// Headgear
60, H_Bandanna_surfer
60, H_Beret_blk_POLICE
60, H_Cap_blk
60, H_Cap_blk_Raven
60, H_Cap_blu
60, H_Cap_grn
60, H_Cap_headphones
60, H_Cap_oli
60, H_Cap_press
60, H_Cap_red
60, H_Cap_tan
60, H_Hat_blue
60, H_Hat_brown
60, H_Hat_checker
60, H_Hat_grey
60, H_Hat_tan
60, H_StrawHat
60, H_StrawHat_dark

// Rifles
70, arifle_Katiba_F       // Katiba 6.5 mm
60, arifle_MXC_F          // MXC 6.5 mm
60, arifle_MX_F           // MX 6.5 mm
60, arifle_MX_GL_F        // MX 3GL 6.5 mm
50, arifle_MXM_F          // MXM 6.5 mm
50, arifle_SDAR_F         // SDAR 5.56 mm
70, arifle_TRG21_F        // TRG-21 5.56 mm
70, arifle_TRG20_F        // TRG-20 5.56 mm
70, arifle_Mk20_F         // Mk20 5.56 mm
70, arifle_Mk20C_F        // Mk20C 5.56 mm

// Rifle Items
25, muzzle_snds_M
25, muzzle_snds_H
40, optic_Arco
40, optic_Hamr
40, optic_Holosight
70, acc_flashlight
70, acc_pointer_IR
60, optic_MRCO
60, optic_DMS


// Rifle Ammo
60, 20Rnd_556x45_UW_mag                     // SDAR
80, 30Rnd_556x45_Stanag                     // TRG-20, TRG-21/EGLM, Mk20/C/EGLM, SDAR
50, 30Rnd_556x45_Stanag_Tracer_Green        // TRG-20, TRG-21/EGLM, Mk20/C/EGLM, SDAR
50, 30Rnd_556x45_Stanag_Tracer_Red          // TRG-20, TRG-21/EGLM, Mk20/C/EGLM, SDAR
50, 30Rnd_556x45_Stanag_Tracer_Yellow       // TRG-20, TRG-21/EGLM, Mk20/C/EGLM, SDAR
80, 30Rnd_65x39_caseless_green              // Katiba
50, 30Rnd_65x39_caseless_green_mag_Tracer   // Katiba
80, 30Rnd_65x39_caseless_mag                // MX/C/M/SW/3GL
50, 30Rnd_65x39_caseless_mag_Tracer         // MX/C/M/SW/3GL

//Addons
41, hlc_rifle_ak74
41, hlc_rifle_aks74
41, hlc_rifle_aks74u
41, hlc_rifle_ak47
41, hlc_rifle_akm
41, hlc_rifle_rpk
42, hlc_rifle_ak12
42, hlc_rifle_akmgl
42, hlc_rifle_aks74_GL
42, hlc_rifle_RU556
42, hlc_rifle_RU5562
42, hlc_rifle_Colt727
43, hlc_rifle_Colt727_GL
43, hlc_rifle_bcmjack
43, hlc_rifle_Bushmaster300
43, hlc_rifle_vendimus
43, hlc_rifle_SAMR
43, hlc_rifle_honeybase
44, hlc_rifle_honeybadger
44, hlc_smg_mp5a2
44, hlc_smg_mp5a3
44, hlc_smg_mp5a4
44, hlc_smg_mp5n
44, hlc_smg_mp510
45, hlc_smg_mp5sd5
45, hlc_smg_mp5sd6
45, hlc_smg_9mmar
45, hlc_rifle_awmagnum
45, hlc_rifle_awmagnum_BL
45, hlc_rifle_awmagnum_FDE
46, RH_m4
46, RH_m4_tg
46, RH_m4_des
46, RH_m4_wdl
46, RH_m4_ris
46, RH_m4a1_ris
31, RH_m4a1_ris_tg
31, RH_m4a1_ris_des
31, RH_m4a1_ris_wdl
31, RH_m4_ris_m_tg
31, RH_m4_ris_m_des
31, RH_m4_ris_m_wdl
32, RH_m4a6_tg
32, RH_m4a6_des
32, RH_m4a6_wdl
32, RH_m4sbr
32, RH_m4sbr_g
32, RH_m4sbr_b
33, RH_m16a1
33, RH_m16a2
33, RH_m16a3
33, RH_m16a4
33, RH_m16a4_tg
33, RH_m16a4_des
34, RH_m16a4_wdl
34, RH_m16a4_m
34, RH_m16a4_m_tg
34, RH_m16a4_m_des
34, RH_m16a4_m_wdl
34, RH_m4m
35, RH_m4m_g
35, RH_m4m_b
35, RH_m4_moe
35, RH_m4_moe_g
35, RH_m4_moe_b
35, RH_m4a6
36, RH_m16a6
36, RH_m16a6_tg
36, RH_m16a6_des
36, RH_m16a6_wdl
36, RH_sbr9
36, RH_sbr9_tg
37, RH_sbr9_des
37, RH_sbr9_wdl
37, RH_deagle
37, RH_deagleg
37, RH_deagles
37, RH_deaglem
38, RH_cz75
38, RH_sw659
38, RH_usp
38, RH_mak
38, RH_m1911
38, RH_kimber
39, RH_kimber_nw
39, RH_uspm
39, RH_m9
39, RH_m9c
39, RH_vz61
39, RH_g18
21, RH_g17
21, RH_tt33
21, RH_mk2
21, RH_p226
21, RH_p226s
21, RH_g19
22, RH_g19t
22, RH_vp70
22, RH_mateba
22, RH_python
22, RH_mp412
22, RH_bull
23, RH_bullb
23, RH_ttracker
23, RH_ttracker_g
23, RH_fnp45
23, RH_fnp45t
23, RH_fn57
24, RH_fn57_g
24, RH_fn57_t
24, RH_gsh18
24, RH_tec9
24, RH_muzi

25, 29rnd_300BLK_STANAG
25, 29rnd_300BLK_STANAG_T
25, 29rnd_300BLK_STANAG_S
25, hlc_30rnd_556x45_EPR
25, hlc_30rnd_556x45_SOST
25, hlc_30rnd_556x45_SPR
26, hlc_30Rnd_545x39_B_AK
26, hlc_30Rnd_545x39_T_AK
26, hlc_30Rnd_545x39_EP_AK
26, hlc_45Rnd_545x39_t_rpk
26, hlc_30Rnd_762x39_b_ak
26, hlc_30Rnd_762x39_t_ak
27, hlc_45Rnd_762x39_t_rpk
27, hlc_45Rnd_762x39_m_rpk
27, hlc_30Rnd_556x45_B_AUG
27, hlc_30Rnd_556x45_SOST_AUG
27, hlc_30Rnd_556x45_SPR_AUG
27, hlc_30Rnd_556x45_T_AUG
28, hlc_40Rnd_556x45_B_AUG
28, hlc_40Rnd_556x45_SOST_AUG
28, hlc_40Rnd_556x45_SPR_AUG
28, hlc_25Rnd_9x19mm_M882_AUG
28, hlc_25Rnd_9x19mm_JHP_AUG
28, hlc_25Rnd_9x19mm_subsonic_AUG
29, hlc_30Rnd_9x19_B_MP5
29, hlc_30Rnd_9x19_GD_MP5
29, hlc_30Rnd_9x19_SD_MP5
29, hlc_30Rnd_10mm_B_MP5
29, hlc_30Rnd_10mm_JHP_MP5
29, hlc_5rnd_300WM_FMJ_AWM
30, RH_30Rnd_556x45_M855A1
30, RH_30Rnd_556x45_Mk262
30, RH_30Rnd_556x45_Mk318
30, RH_20Rnd_556x45_M855A1
30, RH_20Rnd_556x45_Mk262
30, RH_20Rnd_556x45_Mk318
31, RH_60Rnd_556x45_M855A1
31, RH_60Rnd_556x45_Mk262
31, RH_60Rnd_556x45_Mk318
31, RH_7Rnd_50_AE
31, RH_16Rnd_9x19_cz
31, RH_14Rnd_9x19_sw
32, RH_12Rnd_45cal_usp
32, RH_8Rnd_9x18_Mak
32, RH_7Rnd_45cal_m1911
32, RH_16Rnd_40cal_usp
32, RH_15Rnd_9x19_M9
32, RH_20Rnd_32cal_vz61
33, RH_33Rnd_9x19_g18
33, RH_17Rnd_9x19_g17
33, RH_8Rnd_762_tt33
33, RH_10Rnd_22LR_mk2
33, RH_15Rnd_9x19_SIG
33, RH_18Rnd_9x19_VP
34, RH_6Rnd_44_Mag
34, RH_6Rnd_357_Mag
34, RH_6Rnd_454_Mag
34, RH_6Rnd_45ACP_Mag
34, RH_15Rnd_45cal_fnp
34, RH_20Rnd_57x28_FN
35, RH_18Rnd_9x19_gsh
35, RH_32Rnd_9x19_tec
35, RH_30Rnd_9x19_UZI

36, U_PMC_GTShirt_DJeans
36, U_PMC_GTShirt_SJeans
36, U_PMC_BlkTShirt_DJeans
36, U_PMC_BlkTShirt_SJeans
36, U_PMC_BluTShirt_SJeans
36, U_PMC_WTShirt_DJeans
37, U_PMC_BluePlaidShirt_BeigeCords
37, U_PMC_RedPlaidShirt_DenimCords
37, U_PMC_BlackPoloShirt_BeigeCords
37, U_PMC_BluPolo_BgPants
37, U_PMC_BgPolo_GrnPants
37, U_PMC_BlckPolo_BgPants
38, U_PMC_BlckPolo_BluPants
38, U_PMC_BluPolo_GrnPants
38, U_PMC_BrnPolo_BgPants
38, U_PMC_BrnPolo_BluPants
38, U_PMC_GrnPolo_BgPants
38, U_PMC_WhtPolo_BgPants
35, U_PMC_WhtPolo_BluPants
35, U_PMC_WhtPolo_GrnPants

///////////////////////////////////////////////////////////////////////////////
// Kiosks, Supermarkets etc.
///////////////////////////////////////////////////////////////////////////////
> Shop

// Smoke Nades
 50, SmokeShell
 50, SmokeShellRed
 50, SmokeShellGreen
 50, SmokeShellYellow
 50, SmokeShellPurple
 50, SmokeShellBlue
 50, SmokeShellOrange

// Pistols
100, hgun_ACPC2_F             // ACP-C2 .45
100, hgun_Rook40_F            // Rook-40 9 mm
100, hgun_P07_F               // P07 9 mm
70, hgun_Pistol_heavy_01_F    // 4-five .45
70, hgun_Pistol_heavy_02_F    // Zubr .45
50, hgun_Pistol_Signal_F      // Starter Pistol

// Pistol Magazines
80, 11Rnd_45ACP_Mag    // 4-five
80, 16Rnd_9x21_Mag       // PDW2000, P07, ROOK-40
80, 30Rnd_9x21_Mag       // Sting, PDW2000, P07, ROOK-40
70, 6Rnd_45ACP_Cylinder  // Zubr
60, 6Rnd_GreenSignal_F     // Starter Pistol
60, 6Rnd_RedSignal_F   // Starter Pistol
80, 9Rnd_45ACP_Mag       // ACP-C2

// Pistol Items
25, muzzle_snds_L
25, muzzle_snds_acp
10, optic_Yorris
10, optic_MRD

200, Exile_Item_PlasticBottleEmpty
50, Exile_Item_PlasticBottleFreshWater
30, Exile_Item_Energydrink
40, Exile_Item_Beer
150, Exile_Item_GloriousKnakworst
170, Exile_Item_SausageGravy
170, Exile_Item_ChristmasTinner
170, Exile_Item_BBQSandwich
190, Exile_Item_Surstromming
200, Exile_Item_Catfood

20, Exile_Item_ChristmasTinner_Cooked
20, Exile_Item_BBQSandwich_Cooked
20, Exile_Item_GloriousKnakworst_Cooked
20, Exile_Item_SausageGravy_Cooked
20, Exile_Item_Surstromming_Cooked
20, Exile_Item_Catfood_Cooked

15, Binocular
10, Exile_Item_CamoTentKit
65, Exile_Item_CookingPot
40, Exile_Item_DuctTape
80, Exile_Item_LightBulb
200, Exile_Item_Matches
50, Exile_Item_InstaDoc
25, ItemGPS

//Addons
30, RH_deagle
30, RH_deagleg
30, RH_deagles
30, RH_deaglem
30, RH_cz75
30, RH_sw659
31, RH_usp
31, RH_mak
31, RH_m1911
31, RH_kimber
31, RH_kimber_nw
31, RH_uspm
32, RH_m9
32, RH_m9c
32, RH_vz61
32, RH_g18
32, RH_g17
32, RH_tt33
33, RH_mk2
33, RH_p226
33, RH_p226s
33, RH_g19
33, RH_g19t
33, RH_vp70
34, RH_mateba
34, RH_python
34, RH_mp412
34, RH_bull
34, RH_bullb
34, RH_ttracker
35, RH_ttracker_g
35, RH_fnp45
35, RH_fnp45t
35, RH_fn57
35, RH_fn57_g
35, RH_fn57_t
36, RH_gsh18
36, RH_tec9
36, RH_muzi

36, RH_7Rnd_50_AE
36, RH_16Rnd_9x19_cz
37, RH_14Rnd_9x19_sw
37, RH_12Rnd_45cal_usp
37, RH_8Rnd_9x18_Mak
37, RH_7Rnd_45cal_m1911
37, RH_16Rnd_40cal_usp
37, RH_15Rnd_9x19_M9
38, RH_20Rnd_32cal_vz61
38, RH_33Rnd_9x19_g18
38, RH_17Rnd_9x19_g17
38, RH_8Rnd_762_tt33
38, RH_10Rnd_22LR_mk2
38, RH_15Rnd_9x19_SIG
39, RH_18Rnd_9x19_VP
39, RH_6Rnd_44_Mag
39, RH_6Rnd_357_Mag
39, RH_6Rnd_454_Mag
39, RH_6Rnd_45ACP_Mag
39, RH_15Rnd_45cal_fnp
40, RH_20Rnd_57x28_FN
40, RH_18Rnd_9x19_gsh
40, RH_32Rnd_9x19_tec
40, RH_30Rnd_9x19_UZI

///////////////////////////////////////////////////////////////////////////////
// Factories, Construction Sites, Warehouses, Research etc.
///////////////////////////////////////////////////////////////////////////////
> Industrial

10, Exile_Item_DuctTape
30, Exile_Item_ExtensionCord
5, Exile_Item_FloodLightKit
50, Exile_Item_FuelCanisterEmpty
40, Exile_Item_FuelCanisterFull
25, Exile_Item_JunkMetal
20, Exile_Item_LightBulb
10, Exile_Item_MetalBoard
5, Exile_Item_PortableGeneratorKit
10, Exile_Item_Rope
50, Exile_Melee_Axe
30, Exile_Item_Matches
1, Exile_Item_ThermalScannerPro

//Addons

40, RH_sw659
40, RH_usp
40, RH_mak
40, RH_m1911
40, RH_kimber
40, RH_kimber_nw
39, RH_uspm
39, RH_m9
39, RH_m9c
39, RH_vz61
39, RH_g18
39, RH_g17
38, RH_tt33
38, RH_mk2
38, RH_p226
38, RH_p226s
38, RH_g19
38, RH_g19t

37, RH_7Rnd_50_AE
37, RH_16Rnd_9x19_cz
37, RH_14Rnd_9x19_sw
37, RH_12Rnd_45cal_usp
37, RH_8Rnd_9x18_Mak
37, RH_7Rnd_45cal_m1911
36, RH_16Rnd_40cal_usp
36, RH_15Rnd_9x19_M9
36, RH_20Rnd_32cal_vz61
36, RH_33Rnd_9x19_g18
36, RH_17Rnd_9x19_g17
36, RH_8Rnd_762_tt33
35, RH_10Rnd_22LR_mk2
35, RH_15Rnd_9x19_SIG
35, RH_18Rnd_9x19_VP
35, RH_6Rnd_44_Mag
35, RH_6Rnd_357_Mag
35, RH_6Rnd_454_Mag
34, RH_6Rnd_45ACP_Mag
34, RH_15Rnd_45cal_fnp
34, RH_20Rnd_57x28_FN
34, RH_18Rnd_9x19_gsh
34, RH_32Rnd_9x19_tec
34, RH_30Rnd_9x19_UZI

33, U_PMC_GTShirt_DJeans
33, U_PMC_GTShirt_SJeans
33, U_PMC_BlkTShirt_DJeans
33, U_PMC_BlkTShirt_SJeans
33, U_PMC_BluTShirt_SJeans
33, U_PMC_WTShirt_DJeans

///////////////////////////////////////////////////////////////////////////////
// Fuel Stations, Garages, Workshops etc.
///////////////////////////////////////////////////////////////////////////////
> VehicleService

10, Exile_Item_DuctTape
50, Exile_Item_FuelCanisterEmpty
40, Exile_Item_FuelCanisterFull
25, Exile_Item_JunkMetal
20, Exile_Item_LightBulb
10, Exile_Item_MetalBoard
1, Exile_Item_ThermalScannerPro

///////////////////////////////////////////////////////////////////////////////
// Towers, Barracks, Hangars etc.
///////////////////////////////////////////////////////////////////////////////
> Military

// LMGs
50, arifle_MX_SW_Black_F   // MX SW 6.5 mm (Black)
50, arifle_MX_SW_F       // MX SW 6.5 mm
50, LMG_Mk200_F        // Mk200 6.5 mm
50, LMG_Zafir_F        // Zafir 7.62 mm

// LMG Ammo
70, 100Rnd_65x39_caseless_mag      // MX SW
60, 100Rnd_65x39_caseless_mag_Tracer   // MX SW
70, 150Rnd_762x54_Box          // Zafir
60, 150Rnd_762x54_Box_Tracer       // Zafir
//60, 200Rnd_65x39_Belt          // Mk200
//50, 200Rnd_65x39_Belt_Tracer_Green   // Mk200
//50, 200Rnd_65x39_Belt_Tracer_Red     // Mk200
//50, 200Rnd_65x39_Belt_Tracer_Yellow    // Mk200
30, 130Rnd_338_Mag
300, 150Rnd_93x64_Mag

// Rifles
80, arifle_Katiba_F    // Katiba 6.5 mm
70, arifle_Katiba_GL_F   // Katiba GL 6.5 mm
70, arifle_MXC_F     // MXC 6.5 mm
70, arifle_MX_F      // MX 6.5 mm
35, arifle_MX_GL_F     // MX 3GL 6.5 mm
50, arifle_MXM_F     // MXM 6.5 mm
20, arifle_MXM_Black_F // MXM 6.5 mm (Black)
60, arifle_SDAR_F    // SDAR 5.56 mm
70, arifle_TRG21_F     // TRG-21 5.56 mm
70, arifle_TRG20_F     // TRG-20 5.56 mm
30, arifle_TRG21_GL_F  // TRG-21 EGLM 5.56 mm
60, arifle_Mk20_F    // Mk20 5.56 mm
60, arifle_Mk20C_F   // Mk20C 5.56 mm
30, arifle_Mk20_GL_F   // Mk20 EGLM 5.56 mm
20, arifle_MXC_Black_F   // MXC 6.5 mm (Black)
20, arifle_MX_Black_F  // MX 6.5 mm (Black)
20, arifle_MX_GL_Black_F // MX 3GL 6.5 mm (Black)

// Rifle Items
25, muzzle_snds_M
25, muzzle_snds_H
50, optic_Arco
50, optic_Hamr
50, optic_Holosight
60, acc_pointer_IR
50, optic_MRCO
70, acc_flashlight


// Rifle Ammo
35, 20Rnd_556x45_UW_mag            // SDAR
50, 30Rnd_556x45_Stanag            // TRG-20, TRG-21/EGLM, Mk20/C/EGLM, SDAR
40, 30Rnd_556x45_Stanag_Tracer_Green     // TRG-20, TRG-21/EGLM, Mk20/C/EGLM, SDAR
40, 30Rnd_556x45_Stanag_Tracer_Red     // TRG-20, TRG-21/EGLM, Mk20/C/EGLM, SDAR
40, 30Rnd_556x45_Stanag_Tracer_Yellow    // TRG-20, TRG-21/EGLM, Mk20/C/EGLM, SDAR
50, 30Rnd_65x39_caseless_green       // Katiba
40, 30Rnd_65x39_caseless_green_mag_Tracer  // Katiba
50, 30Rnd_65x39_caseless_mag         // MX/C/M/SW/3GL
40, 30Rnd_65x39_caseless_mag_Tracer      // MX/C/M/SW/3GL

// Snipers
25, srifle_DMR_01_F  // Rahim 7.62 mm
25, srifle_EBR_F // Mk18 ABR 7.62 mm
20, srifle_GM6_F   // GM6 Lynx 12.7 mm
20, srifle_LRR_F // M320 LRR .408

// Sniper Ammo
25, 5Rnd_127x108_Mag     // GM6 Lynx
25, 7Rnd_408_Mag       // M320 LRR
40, 10Rnd_762x51_Mag     // Rahim
40, 20Rnd_762x51_Mag     // Mk18 ABR
15, 5Rnd_127x108_APDS_Mag  // GM6 Lynx

// Sniper Items
25, muzzle_snds_B
35, optic_DMS
35, optic_SOS
35, optic_LRPS

// Noob Tube Nades
30, 1Rnd_HE_Grenade_shell
15, 3Rnd_HE_Grenade_shell

// Smoke Nades
35, SmokeShell
35, SmokeShellRed
35, SmokeShellGreen
35, SmokeShellYellow
35, SmokeShellPurple
35, SmokeShellBlue
35, SmokeShellOrange

// Noob Tube Flares
15, 3Rnd_UGL_FlareGreen_F
15, 3Rnd_UGL_FlareRed_F
15, 3Rnd_UGL_FlareWhite_F
15, 3Rnd_UGL_FlareYellow_F
35, UGL_FlareGreen_F
35, UGL_FlareRed_F
35, UGL_FlareWhite_F
35, UGL_FlareYellow_F

// No Infrared for now
//UGL_FlareCIR_F
//3Rnd_UGL_FlareCIR_F

// Noob Tube Smokes
35, 1Rnd_Smoke_Grenade_shell
35, 1Rnd_SmokeBlue_Grenade_shell
35, 1Rnd_SmokeGreen_Grenade_shell
35, 1Rnd_SmokeOrange_Grenade_shell
35, 1Rnd_SmokePurple_Grenade_shell
35, 1Rnd_SmokeRed_Grenade_shell
35, 1Rnd_SmokeYellow_Grenade_shell
15, 3Rnd_Smoke_Grenade_shell
15, 3Rnd_SmokeBlue_Grenade_shell
15, 3Rnd_SmokeGreen_Grenade_shell
15, 3Rnd_SmokeOrange_Grenade_shell
15, 3Rnd_SmokePurple_Grenade_shell
15, 3Rnd_SmokeRed_Grenade_shell
15, 3Rnd_SmokeYellow_Grenade_shell

// Explosives
25, HandGrenade
25, MiniGrenade

// Items
70, Binocular
50, ItemRadio
40, ItemGPS
50, NVGoggles
50, Exile_Item_InstaDoc

// Backpacks
70, B_OutdoorPack_blk
70, B_OutdoorPack_tan
70, B_OutdoorPack_blu
60, B_HuntingBackpack

50, B_AssaultPack_khk
50, B_AssaultPack_dgtl
50, B_AssaultPack_rgr
50, B_AssaultPack_sgg
50, B_AssaultPack_blk
50, B_AssaultPack_cbr
50, B_AssaultPack_mcamo

40, B_Kitbag_mcamo
40, B_Kitbag_sgg
40, B_Kitbag_cbr

20, B_FieldPack_blk
20, B_FieldPack_ocamo
20, B_FieldPack_oucamo
20, B_FieldPack_cbr

15, B_Bergen_sgg
15, B_Bergen_mcamo
15, B_Bergen_rgr
15, B_Bergen_blk

// Headgear
70, H_MilCap_ocamo
70, H_MilCap_mcamo
70, H_MilCap_oucamo
70, H_MilCap_blue
70, H_MilCap_rucamo
70, H_MilCap_dgtl

// Does not exist in ARMA anymore?
//  H_HelmetB_plain_mcamo

70, H_HelmetB
70, H_HelmetB_paint
70, H_HelmetB_light
70, H_HelmetB_plain_blk
70, H_HelmetSpecB
70, H_HelmetSpecB_paint1
70, H_HelmetSpecB_paint2
70, H_HelmetSpecB_blk
70, H_HelmetIA
70, H_HelmetIA_net
70, H_HelmetIA_camo
70, H_HelmetB_grass
70, H_HelmetB_snakeskin
70, H_HelmetB_desert
70, H_HelmetB_black
70, H_HelmetB_sand
70, H_HelmetB_light_grass
70, H_HelmetB_light_snakeskin
70, H_HelmetB_light_desert
70, H_HelmetB_light_black
70, H_HelmetB_light_sand

40, H_HelmetCrew_B
40, H_HelmetCrew_O
40, H_HelmetCrew_I

30, H_PilotHelmetFighter_B
30, H_PilotHelmetFighter_O
30, H_PilotHelmetFighter_I

30, H_PilotHelmetHeli_B
30, H_PilotHelmetHeli_O
30, H_PilotHelmetHeli_I

25, H_HelmetB_camo

30, H_CrewHelmetHeli_B
30, H_CrewHelmetHeli_O
30, H_CrewHelmetHeli_I

25, H_BandMask_khk
25, H_BandMask_reaper
25, H_BandMask_demon

10, H_HelmetO_oucamo
10, H_HelmetLeaderO_oucamo
10, H_HelmetSpecO_ocamo
10, H_HelmetSpecO_blk
10, H_HelmetO_ocamo
10, H_HelmetLeaderO_ocamo

// Vests
70, V_Rangemaster_belt
70, V_PlateCarrier1_blk
70, V_PlateCarrier1_rgr
70, V_PlateCarrier2_rgr
70, V_PlateCarrier3_rgr
70, V_PlateCarrierGL_rgr
70, V_PlateCarrierIA1_dgtl
70, V_PlateCarrierIA2_dgtl
70, V_PlateCarrierIAGL_dgtl
70, V_PlateCarrierSpec_rgr

50, V_TacVest_blk
50, V_TacVest_brn
50, V_TacVest_camo
50, V_TacVest_khk
50, V_TacVest_oli
50, V_TacVestCamo_khk
50, V_TacVestIR_blk

30, V_RebreatherB
30, V_RebreatherIR
30, V_RebreatherIA

10, V_PlateCarrierL_CTRG
10, V_PlateCarrierH_CTRG

// Uniforms
70, U_B_CTRG_1             // CTRG Combat Uniform (UBACS)
70, U_B_CTRG_2             // CTRG Combat Uniform (UBACS2)
70, U_B_CTRG_3             // CTRG Combat Uniform (Tee)
50, U_B_CombatUniform_mcam       // Combat Fatigues (MTP)
70, U_B_CombatUniform_mcam_tshirt  // Combat Fatigues (MTP) (Tee)
70, U_B_CombatUniform_mcam_vest  // Recon Fatigues (MTP)
90, U_B_CombatUniform_mcam_worn  // Worn Combat Fatigues (MTP)
30, U_B_SpecopsUniform_sgg       // Specop Fatigues (Sage)
20, U_O_OfficerUniform_ocamo     // Officer Fatigues (Hex)
20, U_I_OfficerUniform         // Combat Fatigues [AAF] (Tee)
35, U_I_CombatUniform        // Combat Fatigues [AAF]
35, U_I_CombatUniform_tshirt     // Combat Fatigues [AAF] (Tee)
35, U_I_CombatUniform_shortsleeve  // Combat Fatigues [AAF]

15, U_B_GhillieSuit        // Ghillie Suit [NATO]
15, U_O_GhillieSuit        // Ghillie Suit [CSAT]
15, U_I_GhillieSuit        // Ghillie Suit [AAF]

35, U_B_HeliPilotCoveralls       // Heli Pilot Coveralls
35, U_O_PilotCoveralls         // Pilot Coveralls [CSAT]
35, U_B_PilotCoveralls         // Pilot Coveralls [NATO]
35, U_I_pilotCoveralls         // Pilot Coveralls [AAF]
35, U_I_HeliPilotCoveralls       // Heli Pilot Coveralls

25, U_B_Wetsuit          // Wetsuit [NATO]
25, U_O_Wetsuit          // Wetsuit [CSAT]
25, U_I_Wetsuit          // Wetsuit [AAF]

15, U_O_CombatUniform_ocamo    // Heli Pilot Coveralls
15, U_O_CombatUniform_oucamo     // Fatigues (Urban) [CSAT]
15, U_O_SpecopsUniform_ocamo     // Recon Fatigues (Hex)
15, U_O_SpecopsUniform_blk       // Recon Fatigues (Black)

//Addons
10, hlc_rifle_awmagnum
10, hlc_rifle_awmagnum_BL
10, hlc_rifle_awmagnum_FDE
10, hlc_rifle_awMagnum_FDE_ghillie
10, hlc_rifle_awMagnum_BL_ghillie
10, hlc_rifle_awMagnum_OD_ghillie
11, hlc_rifle_l1a1slr
11, hlc_rifle_SLR
11, hlc_rifle_STG58F
11, hlc_rifle_FAL5061
11, hlc_rifle_c1A1
11, hlc_rifle_LAR
12, hlc_rifle_SLRchopmod
12, hlc_rifle_falosw
12, hlc_rifle_osw_GL
12, hlc_rifle_g3sg1
12, hlc_rifle_psg1
12, hlc_rifle_g3a3
13, hlc_rifle_g3ka4
13, HLC_Rifle_g3ka4_GL
13, hlc_rifle_hk51
13, hlc_rifle_hk53
13, hlc_rifle_M14
13, hlc_rifle_M21
14, hlc_rifle_M14DMR
14, hlc_rifle_m14sopmod
14, hlc_lmg_M60E4
14, hlc_lmg_minimipara
14, hlc_lmg_minimi
14, hlc_lmg_minimi_railed
15, hlc_lmg_m249para
15, hlc_lmg_M249E2
15, hlc_m249_pip1
15, hlc_m249_pip2
15, hlc_m249_pip3
15, hlc_m249_pip4
16, hlc_rifle_ak74
16, hlc_rifle_aks74
16, hlc_rifle_aks74u
16, hlc_rifle_ak47
16, hlc_rifle_akm
16, hlc_rifle_rpk
17, hlc_rifle_ak12
17, hlc_rifle_akmgl
17, hlc_rifle_aks74_GL
17, hlc_rifle_RU556
17, hlc_rifle_RU5562
17, hlc_rifle_Colt727
18, hlc_rifle_Colt727_GL
18, hlc_rifle_bcmjack
18, hlc_rifle_Bushmaster300
18, hlc_rifle_vendimus
18, hlc_rifle_SAMR
18, hlc_rifle_honeybase
19, hlc_rifle_honeybadger
19, hlc_rifle_aug
19, hlc_rifle_auga1_t
19, hlc_rifle_auga1_B
19, hlc_rifle_auga1carb
19, hlc_rifle_auga1carb_t
20, hlc_rifle_auga1carb_b
20, hlc_rifle_aughbar
20, hlc_rifle_aughbar_b
20, hlc_rifle_aughbar_t
20, hlc_rifle_augpara
20, hlc_rifle_augpara_b
21, hlc_rifle_augpara_t
21, hlc_rifle_auga2
21, hlc_rifle_auga2_b
21, hlc_rifle_auga2_t
21, hlc_rifle_auga2carb
21, hlc_rifle_auga2carb_t
22, hlc_rifle_auga2carb_b
22, hlc_rifle_auga2lsw
22, hlc_rifle_auga2lsw_t
22, hlc_rifle_auga2lsw_b
22, hlc_rifle_auga2para
22, hlc_rifle_auga2para_b
23, hlc_rifle_auga2para_t
23, hlc_rifle_augsr
23, hlc_rifle_augsr_b
23, hlc_rifle_augsr_t
23, hlc_rifle_augsrcarb
23, hlc_rifle_augsrcarb_t
24, hlc_rifle_augsrcarb_b
24, hlc_rifle_augsrhbar
24, hlc_rifle_augsrhbar_b
24, hlc_rifle_augsrhbar_t
24, hlc_rifle_auga3
24, hlc_rifle_auga3_bl
25, hlc_rifle_auga3_b
25, hlc_rifle_auga3_GL
25, hlc_rifle_auga3_GL_BL
25, hlc_rifle_auga3_GL_B
25, hlc_smg_mp5a2
25, hlc_smg_mp5a3
26, hlc_smg_mp5a4
26, hlc_smg_mp5n
26, hlc_smg_mp510
26, hlc_smg_mp5sd5
26, hlc_smg_mp5sd6
26, hlc_smg_9mmar
27, RH_m4
27, RH_m4_tg
27, RH_m4_des
27, RH_m4_wdl
27, RH_m4_ris
27, RH_m4a1_ris
28, RH_m4a1_ris_tg
28, RH_m4a1_ris_des
28, RH_m4a1_ris_wdl
28, RH_m4_ris_m_tg
28, RH_m4_ris_m_des
28, RH_m4_ris_m_wdl
29, RH_m4a6_tg
29, RH_m4a6_des
29, RH_m4a6_wdl
29, RH_m4sbr
29, RH_m4sbr_g
29, RH_m4sbr_b
30, RH_m16a1
30, RH_m16a2
30, RH_m16a3
30, RH_m16a4
30, RH_m16a4_tg
30, RH_m16a4_des
31, RH_m16a4_wdl
31, RH_m16a4_m
31, RH_m16a4_m_tg
31, RH_m16a4_m_des
31, RH_m16a4_m_wdl
31, RH_m4m
32, RH_m4m_g
32, RH_m4m_b
32, RH_m4_moe
32, RH_m4_moe_g
32, RH_m4_moe_b
32, RH_m4a6
33, RH_m16a6
33, RH_m16a6_tg
33, RH_m16a6_des
33, RH_m16a6_wdl
33, RH_sbr9
33, RH_sbr9_tg
34, RH_sbr9_des
34, RH_sbr9_wdl

34, RH_mk12mod1
34, RH_Mk12mod1_tg
34, RH_Mk12mod1_des
35, RH_Mk12mod1_wdl
35, RH_samr
35, RH_SAMR_tg
35, RH_SAMR_des
35, RH_SAMR_wdl
35, RH_hb
36, RH_hb_b
36, RH_hk416
36, RH_hk416_tg
36, RH_hk416_des
36, RH_hk416_wdl
36, RH_hk416c
37, RH_hk416c_tg
37, RH_hk416c_des
37, RH_hk416c_wdl
37, RH_hk416s
37, RH_hk416s_tg
37, RH_hk416s_des
38, RH_hk416s_wdl
38, RH_m27iar
38, RH_m27iar_tg
38, RH_m27iar_des
38, RH_m27iar_wdl
38, RH_ar10
39, RH_mk11
39, RH_m110
39, RH_sr25ec
39, RH_m4_m203
39, RH_m4_m203_tg
39, RH_m4_m203_des
40, RH_m4_m203_wdl
40, RH_m4_ris_m203
40, RH_m4_ris_m203s
40, RH_m4a1_ris_m203
40, RH_m4a1_ris_m203_tg
40, RH_m4a1_ris_m203_des
41, RH_m4a1_ris_m203_wdl
41, RH_m4a1_ris_m203s
41, RH_m4a1_ris_m203s_tg
41, RH_m4a1_ris_m203s_des
41, RH_m4a1_ris_m203s_wdl
41, RH_m16a1gl
42, RH_m16a2gl
42, RH_m16a4gl
42, RH_m16a4gl_tg
42, RH_m16a4gl_des
42, RH_m16a4gl_wdl
42, RH_deagle
43, RH_deagleg
43, RH_deagles
43, RH_deaglem
43, RH_cz75
43, RH_sw659
43, RH_usp
44, RH_mak
44, RH_m1911
44, RH_kimber
44, RH_kimber_nw
44, RH_uspm
44, RH_m9
45, RH_m9c
45, RH_vz61
45, RH_g18
45, RH_g17
45, RH_tt33
45, RH_mk2
46, RH_p226
46, RH_p226s
46, RH_g19
46, RH_g19t
46, RH_vp70
46, RH_mateba
47,RH_python
47,RH_mp412
47,RH_bull
47,RH_bullb
47,RH_ttracker
47,RH_ttracker_g
48, RH_fnp45
48, RH_fnp45t
48, RH_fn57
48, RH_fn57_g
48, RH_fn57_t
48, RH_gsh18
49, RH_tec9
49, RH_muzi

49, hlc_optic_artel_m14
49, hlc_optic_LRT_m14
49, hlc_optic_suit
50, HLC_Optic_ZFSG1
50, hlc_optic_accupoint_g3
50, HLC_Optic_PSO1
50, HLC_Optic_1p29
50, hlc_optic_kobra
50, hlc_muzzle_snds_HK33
51, hlc_muzzle_snds_G3
51, hlc_muzzle_snds_M14
51, hlc_muzzle_snds_fal
51, hlc_muzzle_545SUP_AK
51, hlc_muzzle_762SUP_AK
51, hlc_muzzle_556NATO_KAC
52, hlc_muzzle_300blk_KAC
52, hlc_muzzle_snds_AUG
52, hlc_muzzle_snds_a6AUG
52, hlc_muzzle_Agendasix
52, hlc_muzzle_Tundra
52, hlc_muzzle_Agendasix10mm
53, RH_eotech553
53, RH_eotech553mag
53, RH_eotech553_tan
53, RH_eotech553mag_tan
53, RH_eotexps3
53, RH_eotexps3_tan
54, RH_eothhs1
54, RH_eothhs1_tan
54, RH_compm4s
54, RH_compm2
54, RH_compm2l
54, RH_compm2_tan
55, RH_compm2l_tan
55, RH_t1
55, RH_t1_tan
55, RH_reflex
55, RH_shortdot
55, RH_m3lr
56, RH_ta01nsn
56, RH_ta01nsn_2D
56, RH_ta31rco
56, RH_ta31rco_2D
56, RH_ta31rmr
56, RH_ta31rmr_2D
57, RH_ta01nsn_tan
57, RH_ta01nsn_tan_2D
57, RH_ta31rco_tan
57, RH_ta31rco_tan_2D
57, RH_ta31rmr_tan
57, RH_ta31rmr_tan_2D
58, RH_ta648
58, RH_accupoint
58, RH_leu_mk4
58, RH_c79
58, RH_c79_2D
58, RH_m145
59, RH_barska_rds
59, RH_cmore
59, RH_LTdocter
59, RH_LTdocterl
59, RH_zpoint
59, RH_pas13cl
60, RH_pas13cm
60, RH_pas13cmg
60, RH_pas13ch
60, RH_peq15
60, RH_peq15_top
60, RH_peq15b
10, RH_peq15b_top
10, RH_peq2
10, RH_peq2_top
10, RH_SFM952V
10, RH_SFM952V_tan
10, RH_qdss_nt4
11, RH_qdss_nt4_tg
11, RH_qdss_nt4_des
11, RH_qdss_nt4_wdl
11, RH_saker
11, RH_saker_tg
11, RH_saker_des
12, RH_saker_wdl
12, RH_Saker762
12, RH_Saker762_tg
12, RH_Saker762_des
12, RH_Saker762_wdl
12, RH_fa556
13, RH_fa556_tg
13, RH_fa556_des
13, RH_fa556_wdl
13, RH_fa762
13, RH_fa762_tg
13, RH_fa762_des
14, RH_fa762_wdl
14, RH_spr_mbs
14, RH_spr_mbs_tg
14, RH_spr_mbs_des
14, RH_spr_mbs_wdl
14, RH_tundra
15, RH_tundra_tg
15, RH_tundra_des
15, RH_tundra_wdl
15, RH_m110sd
15, RH_m110sd_t
15, RH_HBLM
16, RH_HBLM_tg
16, RH_HBLM_des
16, RH_HBLM_wdl
16, RH_TD_ACB
16, RH_TD_ACB_g
16, RH_TD_ACB_b
17, RH_demz
17, RH_gemtech9
17, RH_A26
17, RH_suppr9
17, RH_aacusp
17, RH_gemtech45
18, RH_osprey
18, RH_fhusp
18, RH_x2
18, RH_m6x
18, RH_x300
18, RH_pmsd
19, RH_pmir
19, RH_matchsd
19, RH_m9qd
19, RH_vp70stock
19, RH_docter
19, RH_sfn57
20, RH_tecsd
20, RH_muzisd

20, hlc_20Rnd_762x51_B_G3
20, hlc_20rnd_762x51_T_G3
20, hlc_50rnd_762x51_M_G3
21, hlc_20Rnd_762x51_B_M14
21, hlc_20rnd_762x51_T_M14
21, hlc_50rnd_762x51_M_M14
21, hlc_20Rnd_762x51_B_fal
21, hlc_20Rnd_762x51_t_fal
21, hlc_20Rnd_762x51_S_fal
22, hlc_50rnd_762x51_M_FAL
22, hlc_100Rnd_762x51_B_M60E4
22, hlc_100Rnd_762x51_T_M60E4
22, hlc_100Rnd_762x51_M_M60E4
22, hlc_200rnd_556x45_M_SAW
22, hlc_200rnd_556x45_T_SAW
23, hlc_200rnd_556x45_B_SAW
23, 29rnd_300BLK_STANAG
23, 29rnd_300BLK_STANAG_T
23, 29rnd_300BLK_STANAG_S
23, hlc_30rnd_556x45_EPR
23, hlc_30rnd_556x45_SOST
24, hlc_30rnd_556x45_SPR
24, hlc_30Rnd_545x39_B_AK
24, hlc_30Rnd_545x39_T_AK
24, hlc_30Rnd_545x39_EP_AK
24, hlc_45Rnd_545x39_t_rpk
24, hlc_30Rnd_762x39_b_ak
25, hlc_30Rnd_762x39_t_ak
25, hlc_45Rnd_762x39_t_rpk
25, hlc_45Rnd_762x39_m_rpk
25, hlc_30Rnd_556x45_B_AUG
25, hlc_30Rnd_556x45_SOST_AUG
25, hlc_30Rnd_556x45_SPR_AUG
26, hlc_30Rnd_556x45_T_AUG
26, hlc_40Rnd_556x45_B_AUG
26, hlc_40Rnd_556x45_SOST_AUG
26, hlc_40Rnd_556x45_SPR_AUG
26, hlc_25Rnd_9x19mm_M882_AUG
26, hlc_25Rnd_9x19mm_JHP_AUG
27, hlc_25Rnd_9x19mm_subsonic_AUG
27, hlc_VOG25_AK
27, hlc_GRD_White
27, hlc_GRD_red
27, hlc_GRD_green
27, hlc_GRD_blue
28, hlc_GRD_orange
28, hlc_GRD_purple
28, hlc_30Rnd_9x19_B_MP5
28, hlc_30Rnd_9x19_GD_MP5
28, hlc_30Rnd_9x19_SD_MP5
28, hlc_30Rnd_10mm_B_MP5
29, hlc_30Rnd_10mm_JHP_MP5
29, hlc_5rnd_300WM_FMJ_AWM
29, hlc_5rnd_300WM_AP_AWM
29, hlc_5rnd_300WM_BTSP_AWM
29, hlc_5rnd_300WM_mk248_AWM
29, hlc_5rnd_300WM_SBT_AWM
30, RH_30Rnd_556x45_M855A1
30, RH_30Rnd_556x45_Mk262
30, RH_30Rnd_556x45_Mk318
30, RH_20Rnd_556x45_M855A1
30, RH_20Rnd_556x45_Mk262
30, RH_20Rnd_556x45_Mk318
31, RH_60Rnd_556x45_M855A1
31, RH_60Rnd_556x45_Mk262
31, RH_60Rnd_556x45_Mk318
31, RH_30Rnd_68x43_FMJ
31, RH_30Rnd_68x43_Match
31, RH_30Rnd_762x35_FMJ
32, RH_30Rnd_762x35_Match
32, RH_30Rnd_762x35_MSB
32, RH_20Rnd_762x51_M80A1
32, RH_20Rnd_762x51_Mk316LR
32, RH_20Rnd_762x51_Mk319
32, RH_20Rnd_762x51_LFMJSB
33, RH_20Rnd_762x51_AR10
33, RH_32Rnd_9mm_M822
33, RH_32Rnd_9mm_HP
33, RH_32Rnd_9mm_HPSB
33, RH_7Rnd_50_AE
33, RH_16Rnd_9x19_cz
34, RH_14Rnd_9x19_sw
34, RH_12Rnd_45cal_usp
34, RH_8Rnd_9x18_Mak
34, RH_7Rnd_45cal_m1911
34, RH_16Rnd_40cal_usp
34, RH_15Rnd_9x19_M9
35, RH_20Rnd_32cal_vz61
35, RH_33Rnd_9x19_g18
35, RH_17Rnd_9x19_g17
35, RH_8Rnd_762_tt33
35, RH_10Rnd_22LR_mk2
35, RH_15Rnd_9x19_SIG
36, RH_18Rnd_9x19_VP
36, RH_6Rnd_44_Mag
36, RH_6Rnd_357_Mag
36, RH_6Rnd_454_Mag
36, RH_6Rnd_45ACP_Mag
36, RH_15Rnd_45cal_fnp
37, RH_20Rnd_57x28_FN
37, RH_18Rnd_9x19_gsh
37, RH_32Rnd_9x19_tec
37, RH_30Rnd_9x19_UZI

37, U_PMC_GTShirt_DJeans
38, U_PMC_GTShirt_SJeans
38, U_PMC_BlkTShirt_DJeans
38, U_PMC_BlkTShirt_SJeans
38, U_PMC_BluTShirt_SJeans
38, U_PMC_WTShirt_DJeans
38, U_PMC_BluePlaidShirt_BeigeCords
39, U_PMC_RedPlaidShirt_DenimCords
39, U_PMC_BlackPoloShirt_BeigeCords
39, U_PMC_BluPolo_BgPants
39, U_PMC_BgPolo_GrnPants
39, U_PMC_BlckPolo_BgPants
39, U_PMC_BlckPolo_BluPants
40, U_PMC_BluPolo_GrnPants
40, U_PMC_BrnPolo_BgPants
40, U_PMC_BrnPolo_BluPants
40, U_PMC_GrnPolo_BgPants
40, U_PMC_WhtPolo_BgPants
40, U_PMC_WhtPolo_BluPants
41, U_PMC_WhtPolo_GrnPants
41, U_PMC_CombatUniformRS_BSGPBB
41, U_PMC_CombatUniformRS_BSGPSB
41, U_PMC_CombatUniformRS_BSSPBB
41, U_PMC_CombatUniformRS_BSSPSB
41, U_PMC_CombatUniformRS_GSBPBB
42, U_PMC_CombatUniformRS_GSSPBB
42, U_PMC_CombatUniformRS_IndPBSBB
42, U_PMC_CombatUniformRS_SSBPBB
42, U_PMC_CombatUniformRS_SSGPBB
42, U_PMC_CombatUniformRS_SSGPSB
42, U_PMC_CombatUniformRS_ChckDBS_GPSB
43, U_PMC_CombatUniformRS_ChckLB_GPBB
43, U_PMC_CombatUniformRS_ChckLR_SPBB
43, U_PMC_CombatUniformRS_ChckP_BPBB
43, U_PMC_CombatUniformLS_BSGPBB
43, U_PMC_CombatUniformLS_BSGPSB
43, U_PMC_CombatUniformLS_BSSPBB
44, U_PMC_CombatUniformLS_BSSPSB
44, U_PMC_CombatUniformLS_GSBPBB
44, U_PMC_CombatUniformLS_GSSPBB
44, U_PMC_CombatUniformLS_IndPBSBB
44, U_PMC_CombatUniformLS_SSBPBB
44, U_PMC_CombatUniformLS_SSGPBB
45, U_PMC_CombatUniformLS_SSGPSB
45, U_PMC_CombatUniformLS_ChckDBS_GPSB
45, U_PMC_CombatUniformLS_ChckLB_GPBB
45, U_PMC_CombatUniformLS_ChckLR_SPBB
45, U_PMC_CombatUniformLS_ChckP_BPBB
45, V_PlateCarrier1_PMC_rgr
46, V_PlateCarrier1_PMC_blk
46, V_PlateCarrier1_PMC_marpat
46, V_PlateCarrier1_PMC_khki
46, V_PlateCarrierInd_PMC_blk
46, V_PlateCarrierInd_PMC_grn
46, V_TacVest_darkblck
47, H_Cap_pmc
47, H_Cap_tan_pmc
47, H_Cap_pmc_headphones
47, H_Capbw_pmc
47, H_Capbw_tan_pmc
47, H_Booniehat_rgr
48, H_Booniehat_GCAMO
48, H_Booniehat_DMARPAT

///////////////////////////////////////////////////////////////////////////////
// Hospital, Medevac etc.
///////////////////////////////////////////////////////////////////////////////
> Medical

100, Exile_Item_InstaDoc

///////////////////////////////////////////////////////////////////////////////
// Light Houses + Life Guard Towers + Castles
///////////////////////////////////////////////////////////////////////////////
> Tourist

// The ONLY place to find the BEST backpacks :)
10, B_Carryall_ocamo
10, B_Carryall_oucamo
10, B_Carryall_mcamo
10, B_Carryall_oli
10, B_Carryall_khk
10, B_Carryall_cbr

// Snipers
80, srifle_DMR_01_F  // Rahim 7.62 mm
80, srifle_EBR_F // Mk18 ABR 7.62 mm
70, srifle_GM6_F   // GM6 Lynx 12.7 mm
70, srifle_LRR_F // M320 LRR .408

// Sniper Ammo
50, 5Rnd_127x108_Mag     // GM6 Lynx
50, 7Rnd_408_Mag       // M320 LRR
60, 10Rnd_762x51_Mag     // Rahim
60, 20Rnd_762x51_Mag     // Mk18 ABR
40, 5Rnd_127x108_APDS_Mag  // GM6 Lynx

// Sniper Items
70, muzzle_snds_B
70, acc_flashlight
70, acc_pointer_IR
70, optic_DMS
70, optic_SOS
70, optic_LRPS

80, Binocular
75, Rangefinder
50, Laserdesignator
50, ItemRadio
40, ItemGPS
50, NVGoggles
50, Exile_Item_InstaDoc

// Explosives
25, HandGrenade
25, MiniGrenade

//Addons
45, hlc_rifle_awcovert
45, hlc_rifle_awcovert_BL
45, hlc_rifle_awcovert_FDE
45, hlc_5rnd_300WM_FMJ_AWM
45, hlc_5rnd_300WM_AP_AWM
45, hlc_5rnd_300WM_BTSP_AWM
45, hlc_5rnd_300WM_mk248_AWM
45, hlc_5rnd_300WM_SBT_AWM
