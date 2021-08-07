//This file holds all the equipment in spawnable supply creates
/*
*
*	How to set up a supply crate array
*	Open up Arma 3, hop in the Eden editor, place a unit and a box that's filled with equipment and start
*	Look at the box (get close to it to be sure) and run this script while looking at the box
*	
*	_array = [];
*	_array pushback (magazineCargo cursorObject);
*	_array pushback (getItemCargo cursorObject);
*	_array pushback (weaponCargo cursorObject);
*	_array pushback (getBackpackCargo cursorObject);
*	_array
*
*	Now copy the response text (don't forget to use Ctrl + A to select the whole text, might be really big)
*	And replace the desired array here with the now copied response text
*
*/
// {myBox addMagazineCargoGlobal [_x, 1]} forEach _mags;

//Note that the arrays were copy pasted. Can't be bothered to break them down

//Ammo crate
blu_crate_ammo = [["30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","16Rnd_9x21_Mag","16Rnd_9x21_Mag","16Rnd_9x21_Mag","16Rnd_9x21_Mag","16Rnd_9x21_Mag","16Rnd_9x21_Mag","11Rnd_45ACP_Mag","11Rnd_45ACP_Mag","11Rnd_45ACP_Mag","11Rnd_45ACP_Mag","11Rnd_45ACP_Mag","11Rnd_45ACP_Mag","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag","100Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_mag","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","3Rnd_HE_Grenade_shell","NLAW_F","HandGrenade","HandGrenade","HandGrenade","HandGrenade","HandGrenade","HandGrenade","MiniGrenade","MiniGrenade","MiniGrenade","MiniGrenade","MiniGrenade","MiniGrenade","ACE_20Rnd_65x47_Scenar_mag","ACE_20Rnd_65x47_Scenar_mag","ACE_20Rnd_65x47_Scenar_mag","ACE_20Rnd_65x47_Scenar_mag","ACE_30Rnd_65x47_Scenar_mag","ACE_30Rnd_65x47_Scenar_mag","ACE_30Rnd_65x47_Scenar_mag","ACE_30Rnd_65x47_Scenar_mag","ACE_20Rnd_65_Creedmor_mag","ACE_20Rnd_65_Creedmor_mag","ACE_20Rnd_65_Creedmor_mag","ACE_20Rnd_65_Creedmor_mag","ACE_30Rnd_65_Creedmor_mag","ACE_30Rnd_65_Creedmor_mag","ACE_30Rnd_65_Creedmor_mag","ACE_30Rnd_65_Creedmor_mag","ACE_10Rnd_762x51_M118LR_Mag","ACE_10Rnd_762x51_M118LR_Mag","ACE_10Rnd_762x51_M118LR_Mag","ACE_10Rnd_762x51_M118LR_Mag","ACE_20Rnd_762x51_M118LR_Mag","ACE_20Rnd_762x51_M118LR_Mag","ACE_20Rnd_762x51_M118LR_Mag","ACE_20Rnd_762x51_M118LR_Mag","ACE_10Rnd_762x51_Mk316_Mod_0_Mag","ACE_10Rnd_762x51_Mk316_Mod_0_Mag","ACE_10Rnd_762x51_Mk316_Mod_0_Mag","ACE_10Rnd_762x51_Mk316_Mod_0_Mag","ACE_20Rnd_762x51_Mk316_Mod_0_Mag","ACE_20Rnd_762x51_Mk316_Mod_0_Mag","ACE_20Rnd_762x51_Mk316_Mod_0_Mag","ACE_20Rnd_762x51_Mk316_Mod_0_Mag","ACE_10Rnd_762x51_Mk319_Mod_0_Mag","ACE_10Rnd_762x51_Mk319_Mod_0_Mag","ACE_10Rnd_762x51_Mk319_Mod_0_Mag","ACE_10Rnd_762x51_Mk319_Mod_0_Mag","ACE_20Rnd_762x51_Mk319_Mod_0_Mag","ACE_20Rnd_762x51_Mk319_Mod_0_Mag","ACE_20Rnd_762x51_Mk319_Mod_0_Mag","ACE_20Rnd_762x51_Mk319_Mod_0_Mag","ACE_20Rnd_762x51_Mag_Tracer","ACE_20Rnd_762x51_Mag_Tracer","ACE_20Rnd_762x51_Mag_Tracer","ACE_20Rnd_762x51_Mag_Tracer","ACE_20Rnd_762x51_Mag_Tracer_Dim","ACE_20Rnd_762x51_Mag_Tracer_Dim","ACE_20Rnd_762x51_Mag_Tracer_Dim","ACE_20Rnd_762x51_Mag_Tracer_Dim","ACE_10Rnd_338_300gr_HPBT_Mag","ACE_10Rnd_338_300gr_HPBT_Mag","ACE_10Rnd_338_300gr_HPBT_Mag","ACE_10Rnd_338_300gr_HPBT_Mag","ACE_10Rnd_338_API526_Mag","ACE_10Rnd_338_API526_Mag","ACE_10Rnd_338_API526_Mag","ACE_10Rnd_338_API526_Mag","ACE_7Rnd_408_305gr_Mag","ACE_7Rnd_408_305gr_Mag","ACE_7Rnd_408_305gr_Mag","ACE_7Rnd_408_305gr_Mag","ACE_5Rnd_127x99_Mag","ACE_5Rnd_127x99_Mag","ACE_5Rnd_127x99_Mag","ACE_5Rnd_127x99_Mag","ACE_5Rnd_127x99_API_Mag","ACE_5Rnd_127x99_API_Mag","ACE_5Rnd_127x99_API_Mag","ACE_5Rnd_127x99_API_Mag","ACE_5Rnd_127x99_AMAX_Mag","ACE_5Rnd_127x99_AMAX_Mag","ACE_5Rnd_127x99_AMAX_Mag","ACE_5Rnd_127x99_AMAX_Mag"],[[],[]],[],[[],[]]];

//Basic weapons crate
blu_crate_basicWeapons = [["30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","16Rnd_9x21_Mag","11Rnd_45ACP_Mag","30Rnd_45ACP_Mag_SMG_01","100Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_mag","ACE_20Rnd_65x47_Scenar_mag","ACE_20Rnd_65x47_Scenar_mag","ACE_20Rnd_65x47_Scenar_mag","ACE_20Rnd_65x47_Scenar_mag","ACE_30Rnd_65x47_Scenar_mag","ACE_30Rnd_65x47_Scenar_mag","ACE_30Rnd_65x47_Scenar_mag","ACE_30Rnd_65x47_Scenar_mag","ACE_20Rnd_65_Creedmor_mag","ACE_20Rnd_65_Creedmor_mag","ACE_20Rnd_65_Creedmor_mag","ACE_20Rnd_65_Creedmor_mag","ACE_30Rnd_65_Creedmor_mag","ACE_30Rnd_65_Creedmor_mag","ACE_30Rnd_65_Creedmor_mag","ACE_30Rnd_65_Creedmor_mag"],[[],[]],["arifle_MX_F","arifle_MX_F","arifle_MX_F","arifle_MX_F","arifle_MX_GL_F","arifle_MX_GL_F","arifle_MX_SW_F","arifle_MX_SW_F","arifle_MXC_F","arifle_MXC_F","SMG_01_F","hgun_P07_F","hgun_Pistol_heavy_01_F"],[[],[]]];

//Special weapons crate
blu_crate_specialWeapons = [["30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","7Rnd_408_Mag","7Rnd_408_Mag","7Rnd_408_Mag","7Rnd_408_Mag","7Rnd_408_Mag","7Rnd_408_Mag","7Rnd_408_Mag","7Rnd_408_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_762x51_Mag","20Rnd_556x45_UW_mag","20Rnd_556x45_UW_mag","20Rnd_556x45_UW_mag","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag","10Rnd_338_Mag","130Rnd_338_Mag","130Rnd_338_Mag","130Rnd_338_Mag","ACE_30Rnd_65x39_caseless_mag_Tracer_Dim","ACE_30Rnd_65x39_caseless_mag_Tracer_Dim","ACE_30Rnd_65x39_caseless_mag_Tracer_Dim","ACE_30Rnd_65x39_caseless_mag_Tracer_Dim","ACE_100Rnd_65x39_caseless_mag_Tracer_Dim","ACE_100Rnd_65x39_caseless_mag_Tracer_Dim","ACE_100Rnd_65x39_caseless_mag_Tracer_Dim","ACE_100Rnd_65x39_caseless_mag_Tracer_Dim","ACE_200Rnd_65x39_cased_Box_Tracer_Dim","ACE_200Rnd_65x39_cased_Box_Tracer_Dim","ACE_200Rnd_65x39_cased_Box_Tracer_Dim","ACE_200Rnd_65x39_cased_Box_Tracer_Dim","ACE_30Rnd_556x45_Stanag_Tracer_Dim","ACE_10Rnd_338_300gr_HPBT_Mag","ACE_10Rnd_338_300gr_HPBT_Mag","ACE_10Rnd_338_300gr_HPBT_Mag","ACE_10Rnd_338_300gr_HPBT_Mag","ACE_10Rnd_338_API526_Mag","ACE_10Rnd_338_API526_Mag","ACE_10Rnd_338_API526_Mag","ACE_10Rnd_338_API526_Mag","ACE_7Rnd_408_305gr_Mag","ACE_7Rnd_408_305gr_Mag","ACE_7Rnd_408_305gr_Mag","ACE_7Rnd_408_305gr_Mag","ACE_5Rnd_127x99_Mag","ACE_5Rnd_127x99_Mag","ACE_5Rnd_127x99_Mag","ACE_5Rnd_127x99_Mag","ACE_5Rnd_127x99_API_Mag","ACE_5Rnd_127x99_API_Mag","ACE_5Rnd_127x99_API_Mag","ACE_5Rnd_127x99_API_Mag","ACE_5Rnd_127x99_AMAX_Mag","ACE_5Rnd_127x99_AMAX_Mag","ACE_5Rnd_127x99_AMAX_Mag","ACE_5Rnd_127x99_AMAX_Mag"],[["optic_Aco","optic_Aco_smg","optic_Hamr","optic_SOS","optic_Holosight","optic_NVS","optic_MRD","optic_DMS","optic_LRPS","optic_AMS","optic_AMS_khk","optic_AMS_snd"],[1,1,1,1,1,1,1,1,1,1,1,1]],["arifle_SDAR_F","arifle_MXM_F","srifle_LRR_F","srifle_DMR_03_F","srifle_DMR_02_F","MMG_02_black_F"],[[],[]]];

//Support equipment crate
blu_crate_support = [["Laserbatteries","Laserbatteries","Laserbatteries","Laserbatteries","Laserbatteries","ACE_SpareBarrel","ACE_SpareBarrel"],[["ToolKit","MineDetector","ItemGPS","acc_flashlight","acc_pointer_IR","muzzle_snds_acp","muzzle_snds_L","muzzle_snds_H","muzzle_snds_B","muzzle_snds_338_black","muzzle_snds_338_green","muzzle_snds_338_sand","bipod_01_F_blk","bipod_01_F_mtp","bipod_01_F_snd","muzzle_snds_H_khk_F","bipod_01_F_khk","NVGoggles","NVGoggles_tna_F","ACE_muzzle_mzls_H","ACE_muzzle_mzls_B","ACE_muzzle_mzls_smg_01","ACE_muzzle_mzls_smg_02","ACE_muzzle_mzls_338","ACE_muzzle_mzls_93mmg","ACE_acc_pointer_green","ACE_MapTools","ACE_IR_Strobe_Item","ACE_Chemlight_Shield","ACE_Flashlight_MX991","ACE_EarPlugs","ACE_optic_Arco_PIP","ACE_Banana","optic_Yorris","optic_DMS","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","ACE_CableTie","ChemicalDetector_01_tan_F","ACE_DAGR","optic_Arco","ACE_EntrenchingTool","optic_Holosight","optic_Holosight_smg","ACE_Fortify","optic_MRCO","optic_KHS_tan","optic_Hamr","ACE_Clacker","optic_Holosight_arid_F","optic_SOS","optic_MRD","acc_flashlight_pistol","ACE_optic_Hamr_PIP","optic_ERCO_blk_F"],[1,1,5,5,5,5,5,5,5,2,2,2,2,2,2,5,2,2,2,5,5,5,5,5,5,4,12,12,12,12,12,10,1,10,10,5,5,5,5,10,2,4,4,4,10,10,2,4,2,10,2,6,2,10,4,6,4]],["Binocular","Rangefinder","Laserdesignator","Medikit"],[[],[]]];

//Equipment crate
blu_crate_equipment = [[],[["H_Cap_tan_specops_US","H_MilCap_mcamo","H_Booniehat_mcamo","H_Booniehat_tan","H_HelmetB_light","H_HelmetB_light_black","H_HelmetB_light_desert","H_HelmetB_light_grass","H_HelmetB_light_sand","H_HelmetB_light_snakeskin","H_HelmetB_black","H_HelmetB_camo","H_HelmetB_desert","H_HelmetB_grass","H_HelmetB_sand","H_HelmetB_snakeskin","H_HelmetSpecB","H_HelmetSpecB_blk","H_HelmetSpecB_paint2","H_HelmetSpecB_paint1","H_HelmetSpecB_sand","H_HelmetSpecB_snakeskin","H_HelmetCrew_B","H_PilotHelmetFighter_B","H_PilotHelmetHeli_B","H_CrewHelmetHeli_B","H_HelmetB_TI_tna_F","H_HelmetB_tna_F","H_HelmetB_Enh_tna_F","H_HelmetB_Light_tna_F","H_Booniehat_tna_F","V_Rangemaster_belt","V_BandollierB_blk","V_BandollierB_rgr","V_Chestrig_blk","V_Chestrig_rgr","V_TacVest_blk","V_PlateCarrier1_blk","V_PlateCarrier1_rgr","V_PlateCarrier2_rgr","V_PlateCarrier2_blk","V_PlateCarrierGL_blk","V_PlateCarrierGL_rgr","V_PlateCarrierGL_mtp","V_PlateCarrierSpec_blk","V_PlateCarrierSpec_rgr","V_PlateCarrierSpec_mtp","V_RebreatherB","V_TacChestrig_grn_F","V_PlateCarrier1_tna_F","V_PlateCarrier2_tna_F","V_PlateCarrierSpec_tna_F","V_PlateCarrierGL_tna_F","V_BandollierB_ghex_F","V_PlateCarrier1_rgr_noflag_F","V_PlateCarrier2_rgr_noflag_F"],[2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2]],[],[[],[]]];

//Uniform crate
blu_crate_uniform = [[],[["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CTRG_1","U_B_CTRG_3","U_B_CTRG_2","U_B_HeliPilotCoveralls","U_B_PilotCoveralls","U_B_GhillieSuit","U_B_FullGhillie_ard","U_B_FullGhillie_lsh","U_B_FullGhillie_sard","U_B_Wetsuit","U_B_T_Soldier_F","U_B_T_Soldier_AR_F","U_B_T_Soldier_SL_F","U_B_T_Sniper_F","U_B_T_FullGhillie_tna_F","U_B_CTRG_Soldier_F","U_B_CTRG_Soldier_2_F","U_B_CTRG_Soldier_3_F"],[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[],[]]];

//Explosives crate
blu_crate_explosive = [["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","3Rnd_HE_Grenade_shell","3Rnd_HE_Grenade_shell","3Rnd_HE_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","HandGrenade","HandGrenade","HandGrenade","HandGrenade","HandGrenade","HandGrenade","HandGrenade","HandGrenade","HandGrenade","HandGrenade","HandGrenade","HandGrenade","MiniGrenade","MiniGrenade","MiniGrenade","MiniGrenade","MiniGrenade","MiniGrenade","MiniGrenade","MiniGrenade","MiniGrenade","MiniGrenade","MiniGrenade","MiniGrenade","SmokeShell","SmokeShell","SmokeShellRed","SmokeShellRed","SmokeShellGreen","SmokeShellGreen","SmokeShellYellow","SmokeShellYellow","SmokeShellPurple","SmokeShellPurple","SmokeShellBlue","SmokeShellBlue","SmokeShellOrange","SmokeShellOrange","UGL_FlareWhite_F","UGL_FlareWhite_F","UGL_FlareGreen_F","UGL_FlareGreen_F","B_IR_Grenade","B_IR_Grenade","B_IR_Grenade","B_IR_Grenade","B_IR_Grenade","B_IR_Grenade","B_IR_Grenade","B_IR_Grenade","ACE_HandFlare_White","ACE_HandFlare_White","ACE_HandFlare_White","ACE_HandFlare_White","ACE_HandFlare_White","ACE_HandFlare_White","ACE_HandFlare_White","ACE_HandFlare_White","ACE_HandFlare_White","ACE_HandFlare_White","ACE_HandFlare_White","ACE_HandFlare_White","ACE_HandFlare_Green","ACE_HandFlare_Green","ACE_HandFlare_Green","ACE_HandFlare_Green","ACE_HandFlare_Green","ACE_HandFlare_Green","ACE_HandFlare_Green","ACE_HandFlare_Green","ACE_HandFlare_Green","ACE_HandFlare_Green","ACE_HandFlare_Green","ACE_HandFlare_Green","ACE_M84","ACE_M84","ACE_M84","ACE_M84","ACE_M84","ACE_M84","ACE_M84","ACE_M84","ACE_M84","ACE_M84","ACE_M84","ACE_M84"],[["ACE_Chemlight_Shield"],[12]],[],[[],[]]];

//Launchers crate
blu_crate_launcher = [["Titan_AA","Titan_AA","Titan_AA","Titan_AT","Titan_AT","Titan_AT","Titan_AP","Titan_AP","Titan_AP","NLAW_F","NLAW_F","NLAW_F","MRAWS_HEAT_F","MRAWS_HEAT_F","MRAWS_HEAT_F","MRAWS_HE_F","MRAWS_HE_F","MRAWS_HE_F"],[[],[]],["launch_B_Titan_F","launch_B_Titan_short_F","launch_NLAW_F","launch_MRAWS_sand_F"],[["B_Kitbag_rgr"],[3]]];

//Rations crate
blue_crate_rations = [[],[["ACE_Can_Franta","ACE_Can_RedGull","ACE_Can_Spirit","ACE_Canteen","ACE_Humanitarian_Ration","ACE_MRE_BeefStew","ACE_MRE_ChickenTikkaMasala","ACE_MRE_ChickenHerbDumplings","ACE_MRE_CreamChickenSoup","ACE_MRE_CreamTomatoSoup","ACE_MRE_LambCurry","ACE_MRE_MeatballsPasta","ACE_MRE_SteakVegetables","ACE_WaterBottle"],[4,4,4,10,5,4,4,4,4,4,4,4,4,10]],[],[[],[]]];


