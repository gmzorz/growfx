#include maps\mp\_utility;
#include common_scripts\utility;
#include maps\mp\gametypes\_hud_util;
#include maps\mp\gametypes\_hud_message;
 
/*
 
///////////////////////////////////////////////////////
 
FORGE MOD BY GMZORZ
 
You can only use one spawn function per game, scroll down to onPlayerSpawned to comment out the one you don't want.
 
------------------------------------------------------
 
Spawning models:
 
Scroll down modelNames()
put down your model names in the string fields
once you press the ads button (Rmouse as default) ingame, it will select the first model from the list.
Which will spawn when you press USE (F as default)
 
 
You can find the model names for each map in the attached .txt files (see folder "map models")
please note that not all models work on each map!!
 
------------------------------------------------------
 
How to save models: (THIS METHOD IS OUTDATED, REFER TO MY VIDEO TO SEE THE NEWER VERSION)
 
go ingame and place your models. Once you're done, navigate to the redacted game files and open the data folder
open up games_mp.log with your default text editor and scroll all the way down
you should see something like this:
 
{
"origin" "123.456 654.321 -100.000"
"classname" "script_model"
"model" "name_of_the_model"
"angles" "-3 277 -2"
}
 
navigate to redacted\data\maps\mp, open the .mapents file of the map you placed the models in.
(you can open the .mapents files using your default text editor)
scroll all the way down and paste the lines you just found in games_mp.log (ignore the time stamps, DONT PUT THOSE IN!)
make sure you save the file!!
 
------------------------------------------------------
 
Spawning effects (FX)
 
method works the same as spawning models, if the fx needs rotating try out playFxOnTag
 
------------------------------------------------------
 
Saving effects (coming soon?)
 
------------------------------------------------------
 
questions
skype: gijs.oosterling
discord: gmzorz #1650
 
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
 
*/
onPlayerSpawned() {
    self endon( "disconnect" );
    level endon( "game_ended" );
    for(;;)
    {
        self waittill( "spawned_player" );
        self freezecontrols(false);
        //self thread PlayFx();
        self thread SpawnModel();
        //self enableInvulnerability();
        //maps\mp\gametypes\_rank::registerScoreInfo( "kill", 5 );
    }
}
SpawnModel()
{
   
    self endon("death");
    self endon("disconnect");
    self endon("pause");
    level.models = [];
    for(;;)
    {
        switch(level.CurMap) //PUT DOWN MODEL NAMES HERE!!
        {
            
           
            case "mp_magma":
                level.models[0] = ("p6_mag_foliage_tree_jpn_pine_lrg_sway");
                level.models[1] = ("p6_mag_foliage_tree_jpn_pine_sml");
                level.models[2] = ("p6_mag_foliage_tree_jpn_pine_sml_far");
                level.models[3] = ("p6_mag_foliage_tree_jpn_pine_sml_sway");
                level.models[4] = ("p6_mag_rocks_cliffside_lava_01");
                level.models[5] = ("p6_mag_rocks_cluster_lava_01");
                level.models[6] = ("p6_mag_lava_flow_center");
                level.models[7] = ("p6_mag_lava_flow_northeast_side");
                level.models[8] = ("p6_mag_lava_flow_seaside");
                level.models[9] = ("p6_mag_lava_flow_train");
                level.models[10] = ("p6_mag_lava_flow_west_side");
                level.models[11] = ("p6_mag_lava_drops_detail_01");
                maxNum = level.models.size;
                break;
               
            case "mp_raid":
                level.models[0] = ("p6_tree_palm_date_med_sway");
                level.models[1] = ("foliage_ctl_tree_oak_green_1");
                level.models[2] = ("paris_potted_plant_large");
                level.models[3] = ("foliage_grass_lawn_cut_med_group_256");
                level.models[4] = ("foliage_grass_lawn_cut_med_group_512");
                level.models[5] = ("dub_rock_02");
                level.models[8] = ("t5_foliage_tree_banana02");
                level.models[9] = ("veh_t6_civ_sportscar_whole_orange");
                level.models[10] = ("veh_t6_civ_sportscar_whole_silver");
                level.models[11] = ("veh_t6_civ_sportscar_whole_orange");
                maxNum = level.models.size;
                break;
           
            case "mp_studio":
                level.models[0] = ("p6_stu_castle_door_frame");
                level.models[1] = ("p6_stu_castle_mace");
                level.models[2] = ("p6_rocks_cluster_03b");
                level.models[3] = ("veh_t6_drone_rcxd");
                level.models[4] = ("p6_rock_desert_pile01");
                level.models[5] = ("p6_stu_castle_spear");
                level.models[8] = ("p6_stu_castle_wall_piece");
                level.models[9] = ("p6_stu_castle_window");
                maxNum = level.models.size;
                break;
               
            case "mp_vertigo":
                level.models[0] = ("foliage_grass_lawn_cut_med_group_512");
                level.models[1] = ("foliage_grass_lawn_cut_med_group_256");
                level.models[2] = ("t5_foliage_tree_palm_fan04");
                level.models[3] = ("t5_foliage_grass_weed02");
                level.models[4] = ("t5_foliage_bush08b");
                level.models[5] = ("p6_ver_foliage_palm_fan01");
                level.models[8] = ("p6_tree_acacia_forked_sway02");
                maxNum = level.models.size;
                break;
               
            case "mp_slums":
                level.models[0] = ("t5_foliage_tree_palm_fan04");
                level.models[1] = ("p6_slums_piazza_statue");
                level.models[2] = ("mlv_p6_slums_highrise_floor_01");
                level.models[3] = ("p6_slums_highrise_floor_01");              
                maxNum = level.models.size;
                break;
               
            case "mp_hydro":
                level.models[0] = ("fx_mp_hydro_flood_mist_tail");
                level.models[1] = ("fx_mp_hydro_flood_water_spill");
                level.models[2] = ("fx_mp_hydro_hatch_spray");
                level.models[3] = ("fx_mp_hydro_splash_edge");
                level.models[4] = ("fx_mp_hydro_water_pipe");
                level.models[5] = ("fx_hydro_water_dam5");
                level.models[6] = ("fx_hydro_water_dam6");
                maxNum = level.models.size;
                break;
               
            case "mp_meltdown":
                level.models[0] = ("cs_cargoship_wall_light_on");
                level.models[1] = ("foliage_shrub_brownshort");
                level.models[2] = ("foliage_weed_dandelion2");
                level.models[3] = ("fxanim_gp_streamer_long_orange_mod");
                level.models[4] = ("light_outdoorwall02_on");
                level.models[5] = ("p6_mp_meltdown_tank_section");
                level.models[6] = ("p6_ship_stairs_single");
                maxNum = level.models.size;
                break;

            case "mp_hijacked":
                level.models[0] = ("foliage_grass_lawn_cut_med_group_512");
                level.models[1] = ("foliage_ctl_tree_oak_green_1");
                level.models[2] = ("t5_foliage_tree_aquilaria01v2");
                level.models[3] = ("p6_rocks_medium_05_jungle");
                maxNum = level.models.size;
                break;

            case "mp_downhill":
                /*level.models[0] = ("dh_rocks_snow_cliff_wall_01_bottom");
                level.models[1] = ("dh_rocks_snow_cliff_wall_01_top");
                level.models[2] = ("dh_rocks_snow_cliff_wall_02_bottom");
                level.models[3] = ("dh_rocks_snow_cliff_wall_02_top");
                level.models[4] = ("dh_rocks_snow_cliff_wall_03_bottom");
                level.models[5] = ("dh_rocks_snow_cliff_wall_03_top");
                level.models[6] = ("dh_rocks_snow_cluster_01");
                level.models[7] = ("dh_rocks_snow_cluster_02");
                level.models[8] = ("dh_rocks_snow_cluster_03");
                level.models[9] = ("dh_rocks_snow_cluster_04");
                level.models[10] = ("dh_rocks_snow_cover_boulder");
                level.models[11] = ("dh_rocks_snow_peak_01_bottom");
                level.models[12] = ("dh_rocks_snow_peak_01_top");
                level.models[13] = ("foliage_tree_pine_snow_tall");
                level.models[14] = ("mlv_dh_rocks_snow_cover_boulder");*/

                //level.models[0] = ("t6_wpn_supply_drop_ally");
                level.models[0] = ("dh_rocks_snow_cluster_01");
                level.models[1] = ("dh_rocks_snow_cluster_02");
                level.models[2] = ("dh_rocks_snow_cluster_02");
                /*level.models[2] = ("dh_grass_snow3");
                level.models[3] = ("dh_grass_tall_snow");
                level.models[4] = ("rus_grass_snow2");
                level.models[5] = ("rus_grass_snow2");
                level.models[6] = ("dh_rocks_snow_cluster_01");
                level.models[7] = ("dh_rocks_snow_cluster_02");
                level.models[8] = ("dh_rocks_snow_cluster_03");
                level.models[9] = ("dh_rocks_snow_cluster_04");
                level.models[10] = ("p6_3d_txt_levenim_frnt_wht_s");
                level.models[11] = ("p6_3d_txt_levenim_frnt_wht_e");
                level.models[12] = ("p6_3d_txt_levenim_frnt_wht_n");
                level.models[13] = ("p6_3d_txt_levenim_frnt_wht_d");
                level.models[14] = ("p6_3d_txt_levenim_frnt_wht_u");
                level.models[15] = ("t5_foliage_bush04_snow");*/
                maxNum = level.models.size;
                break;

            case "mp_frostbite":
                level.models[0] = ("dh_grass_snow2");
                level.models[1] = ("dh_grass_snow3");
                level.models[2] = ("dh_grass_tall_snow");
                level.models[4] = ("p6_fro_foliage_tree_elm_medium_gobo");
                level.models[5] = ("p6_fro_foliage_tree_elm_small_gobo");
                level.models[6] = ("mlv_p6_fro_snow_pile_small");
                level.models[7] = ("p6_fro_foliage_hedge_double_snow_gobo");
                level.models[8] = ("p6_fro_foliage_cedar_hedge_tall");
                level.models[9] = ("dh_foliage_bush01_snow_opt");
                level.models[10] = ("t5_foliage_grass08_short_snow_dried");
                level.models[11] = ("paris_potted_plant_large_dmg");
                level.models[12] = ("paris_tree_fence_01");
                level.models[13] = ("p6_fro_pillar_detail_block_box_3stack");
                level.models[14] = ("p6_fro_light_rack_housing");
                level.models[15] = ("p6_fro_light_rack_lights_on");
                level.models[16] = ("p6_fro_iron_park_bench");
                level.models[17] = ("p6_fro_brewery_wall_display");
                level.models[18] = ("p6_fro_brewery_wall_display");
                maxNum = level.models.size;
                break;
            
            case "mp_village":
                level.models[0] = ("clt_ladder_construction_01");
                level.models[1] = ("com_cardboardbox04");
                level.models[2] = ("com_wallchunk_cinderblock01");
                level.models[4] = ("com_wallchunk_cinderblockrow02");
                level.models[5] = ("com_water_tank1_stand");
                level.models[6] = ("com_water_tank2");
                level.models[7] = ("com_water_tower");
                level.models[8] = ("ctl_banister");
                level.models[9] = ("ctl_doorway_arch");
                level.models[10] = ("ctl_foliage_red_pine_med");
                level.models[11] = ("foliage_grass_flowerplants_squareclump");
                level.models[12] = ("foliage_hedge_boxy_overgrown3_vista");
                level.models[13] = ("foliage_ivy_bottom01");
                level.models[14] = ("foliage_weed_dandelion");
                level.models[15] = ("german_shepherd");
                level.models[16] = ("haybale");
                level.models[17] = ("intro_window_04");
                level.models[18] = ("lam_debris_brick_pile_01");
                level.models[19] = ("machinery_windmill_body");
                level.models[20] = ("me_brick_wall_dest");
                level.models[21] = ("me_merrygoround");
                level.models[22] = ("mlv_p6_village_statue");
                level.models[23] = ("mlv_p6_village_statue_base");
                level.models[24] = ("p6_building_edge_03_broken_32");
                level.models[25] = ("p6_cargo_container_chainlock");
                level.models[26] = ("p6_fence_metal_rus_grey");
                level.models[27] = ("p6_fence_wood");
                level.models[28] = ("p6_foliage_vista_tree_elm_01");
                level.models[29] = ("paris_floor_damaged_section_02");
                level.models[30] = ("vehicle_tractor");
                level.models[31] = ("viewmodel_hands_no_model");
                maxNum = level.models.size;
                break;

            case "mp_nuketown_2020":
                level.models[0] = ("dest_nt_nuked_female_05");
                level.models[1] = ("dest_nt_nuked_female_05");
                maxNum = level.models.size;
                break;
        }
        
    
   
        if (self adsButtonPressed())
        {
            checkNum = checkNum + 1;
            if (checkNum > maxNum - 1)
            {
                checkNum = 0;  
            }
            iprintln("model: ^1" + level.models[checkNum - 1] + " ^7selected, press (and hold) ^1USE ^7to spawn");
            
            wait 0.02;
        }
        wait 0.2;
       
        wait 0.05;
        if (self useButtonPressed())
        {
            mTag = ("");
            model = spawn("script_model", self.origin);
            model.angles = (0, self.angles[1], 0);
            mTag = (level.models[checkNum - 1]);
            model setModel(level.models[checkNum - 1]);
           
            iprintln("^1" + level.models[checkNum - 1] + "^7 placed");
            logPrint("\nsetCustomModel(" + self.origin + ", " + self.angles + ", 0, \"" + mTag + "\");\n//");
            //logPrint( "\n\n{\n" + "\"origin\" " + "\"" + self.origin[0] + " " + self.origin[1] + " " + self.origin[2] + "\"\n" + "\"classname\" \"script_model\"\n" + "\"model\" " + "\"" + mTag + "\"\n" + "\"angles\" \"" + model.angles[0] + " " + model.angles[1] + " " + model.angles[2] + "\"\n" + "}\n\n");
            
            //logs to games_mp.log for future map saving
            wait 0.01;
        }
        wait 0.3;
        //FORGE
        /*while(self attackbuttonpressed())
        {
            trace=bulletTrace(self GetTagOrigin("j_head"),self GetTagOrigin("j_head")+ anglesToForward(self GetPlayerAngles())* 1000000,true,self);
            while(self attackbuttonpressed())
            {
                trace["entity"] setOrigin(self GetTagOrigin("j_head")+ anglesToForward(self GetPlayerAngles())* 200);
                trace["entity"].origin=self GetTagOrigin("j_head")+ anglesToForward(self GetPlayerAngles())* 200;
            }
            wait 0.05;
        }*/
    }
}
PlayFx()
{
    self endon("death");
    self endon("disconnect");
    self endon("pause");
    level.effects = [];
    fxNum = 0;
    curEffect = level.effects[fxNum];
    for(;;)
    {
        curEffect = level.effects[fxNum];
        switch(level.CurMap)
        {
			
            case "mp_nuketown_2020":
            level.effects[0] = ""; //always leave 0 empty, for some reason i cannot fix this
            level.effects[1] = "fx_mp_nuked_final_explosion";
            level.effects[2] = "fx_mp_nuked_final_dust";
            break;
           
            case "mp_dockside": //cargo
            level.effects[0] = "";
            level.effects[1] = "fx_mp_water_drip_light_long";
            level.effects[2] = "water_splash";
            break;
           
            case "mp_meltdown":
            level.effects[0] = "";
            level.effects[1] = "fx_mp_water_rain_cooling_tower_splsh_200";
            level.effects[2] = "fx_mp_water_rain_cooling_tower";
            level.effects[3] = "fx_mp_water_drip_light_long";
            level.effects[4] = "fx_mp_steam_cooling_tower";
            level.effects[5] = "fx_water_wave_break_md";
            level.effects[6] = "fx_mp_vent_heat_distort";
            level.effects[7] = "fx_mp_steam_tunnel";
            level.effects[8] = "fx_light_reactor_glw_blue";
            level.effects[9] = "fx_sand_gust_ground_sm";
            level.effects[10] = "fx_dust_swirl_sm_gray_runner";
            break;
           
            case "mp_uplink":
            level.effects[0] = "";
            level.effects[1] = "fx_mp_uplink_rain_med_fast_os_vista";
            break;
           
            case "mp_hijacked":
            level.effects[0] = "";
            level.effects[1] = "fx_mp_hijacked_jacuzzi_surface";
            level.effects[2] = "fx_raid_hot_tub_sm";
            level.effects[3] = "fx_mp_hijacked_jacuzzi_steam";
            break;
           
            case "mp_magma":
            level.effects[0] = "";
            level.effects[1] = "fx_mp_magma_ash_ember_lg";
            level.effects[2] = "fx_mp_magma_ash_ground";
            level.effects[3] = "fx_mp_magma_lava_edge_fire_100";
            level.effects[4] = "fx_mp_magma_splat_grnd_fire";
            level.effects[5] = "fx_mp_magma_distort_geo_lg";
            level.effects[6] = "fx_mp_elec_spark_burst_xsm_thin";
            level.effects[7] = "fx_mp_elec_spark_burst_md_runner";
            level.effects[8] = "fx_fire_torso";
            level.effects[9] = "fx_fire_leg_left";
            break;
           
            case "mp_hydro":
            level.effects[0] = "";
            level.effects[1] = "fx_mp_hydro_flood_blast01";
            level.effects[2] = "fx_fog_street_sm_area_low";
            level.effects[3] = "fx_mp_hydro_dam_river_flat";
            level.effects[4] = "fx_mp_hydro_dam_river_top";
            break;
           
            case "mp_la": //aftermath
            level.effects[0] = "";
            level.effects[1] = "fx_water_fountian_pool_md";
            level.effects[2] = "fx_water_fire_sprinkler_gush";
            level.effects[3] = "fx_water_fire_sprinkler_sputter";
            level.effects[4] = "fx_water_fire_sprinkler_gush_splash";
            level.effects[5] = "fx_water_fire_sprinkler";
            level.effects[6] = "fx_mp_water_drip_light_long";
            break;

            case "mp_takeoff":
            level.effects[0] = "";
            level.effects[1] = "fx_mp_tak_glow_blue";
            level.effects[2] = "fx_light_upl_flour_glow_v_shape_cool";
            level.effects[3] = "fx_mp_tak_steam_loading_dock";
            break;
           
        }
        if (self adsButtonPressed())
        {
            fxNum = fxNum + 1;
            iprintln("Effect ^1" + level.effects[fxNum] + " ^7Selected");
            if(fxNum > level.effects.size - 1)
            {
                fxNum = 0;
            }
            wait 0.2;
        }
        wait 0.2;
        if (self useButtonPressed())
        {
            fTag = ("");
            fTag = (level.effects[fxNum]);
            playFx(level._effect[curEffect], (self.origin));
            iprintln("Effect ^1" + level.effects[fxNum] + " ^7Spawned");
            logPrint("\nsetCustomFx(" + self.origin + ", (-90, " + self.angles[1] + ", 0), \"" + fTag + "\");\n");
            wait 0.1;
        }
        wait 0.2;
    }
}
init()
{
    level thread onPlayerConnect();
    level.CurMap = getDvar("mapname");
}
onPlayerConnect()
{
    for(;;)
    {
        level waittill( "connected", player );
        player thread onPlayerSpawned();
        //self.firstrun = 1;
        //self.Invincible = 1;
    }
}
