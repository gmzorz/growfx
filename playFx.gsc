#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;
#include maps\mp\gametypes\_hud_message;
#include common_scripts\utility;
#include common_scripts\_createfx;

aftermath(){
	
}
cargo(){

}
carrier(){

}
cove(){

}
detour(){

}
dig(){

}
downhill(){

}
drone(){

}
encore(){

}
express(){

}
frost(){
	
}
grind(){
	
}
hijacked(){
	
}
hydro(){

}
magma(){

}
meltdown(){

}
mirage(){

}
nuketown(){

}
overflow(){

}
plaza(){

}
pod(){

}
raid(){

}
rush(){

}
standoff(){

}
studio(){

}
takeoff(){

}
uplink(){

}
vertigo(){

}
yemen(){

}
slums(){

}

init() {
	level thread onPlayerConnect();
	level.tweakfile = true;
	if(getDvar("mapname") == "mp_la"){ 
		level thread aftermath();
	}
	if(getDvar("mapname") == "mp_dockside"){ 
		level thread cargo();
	}
	if(getDvar("mapname") == "mp_carrier"){ 
		level thread carrier();
	}
	if(getDvar("mapname") == "mp_castaway"){ 
		level thread cove();
	}
	if(getDvar("mapname") == "mp_bridge"){ 
		level thread detour();
	}
	if(getDvar("mapname") == "mp_dig"){ 
		level thread dig();
	}
	if(getDvar("mapname") == "mp_downhill"){ 
		level thread downhill();
	}
	if(getDvar("mapname") == "mp_drone"){ 
		level thread drone();
	}
	if(getDvar("mapname") == "mp_concert"){ 
		level thread encore();
	}
	if(getDvar("mapname") == "mp_express"){ 
		level thread express();
	}
	if(getDvar("mapname") == "mp_frostbite"){ 
		level thread frost();
	}
	if(getDvar("mapname") == "mp_skate"){ 
		level thread grind();
	}
	if(getDvar("mapname") == "mp_hijacked"){ 
		level thread hijacked();
	}
	if(getDvar("mapname") == "mp_hydro"){ 
		level thread hydro();
	}
	if(getDvar("mapname") == "mp_magma"){ 
		level thread magma();
	}
	if(getDvar("mapname") == "mp_meltdown"){ 
		level thread meltdown();
	}
	if(getDvar("mapname") == "mp_mirage"){ 
		level thread mirage();
	}
	if(getDvar("mapname") == "mp_nuketown_2020"){ 
		level thread nuketown();
	}
	if(getDvar("mapname") == "mp_overflow"){ 
		level thread overflow();
	}
	if(getDvar("mapname") == "mp_nightclub"){ 
		level thread plaza();
	}
	if(getDvar("mapname") == "mp_podville"){ 
		level thread pod();
	}
	if(getDvar("mapname") == "mp_raid"){ 
		level thread raid();
	}	
	if(getDvar("mapname") == "mp_paintball"){ 
		level thread rush();
	}	
	if(getDvar("mapname") == "mp_village"){ 
		level thread standoff();
	}	
	if(getDvar("mapname") == "mp_studio"){ 
		level thread studio();
	}	
	if(getDvar("mapname") == "mp_takeoff"){ 
		level thread takeoff();
	}	
	if(getDvar("mapname") == "mp_uplink"){ 
		level thread uplink();
	}	
	if(getDvar("mapname") == "mp_vertigo"){ 
		level thread vertigo();
	}	
	if(getDvar("mapname") == "mp_socotra"){ 
		level thread yemen();
	}
	if(getDvar("mapname") == "mp_slums"){ 
		level thread slums();
	}
}
onPlayerConnect() {
	for(;;) {
		level waittill( "connected", player);
	}
}
setCustomFx(pos, rot, name) {
	//playFx(level._effect[name], pos);
	fx = spawn("script_model", pos);
	fx setModel("tag_origin");
	fx.angles = rot;
	playFXOnTag(level._effect[name], fx, "tag_origin");
}
setCustomModel(pos, rot, opt, name){
	model = spawn("script_model", pos);
	model setModel(name);
	model.angles = rot;
	if(opt == 1){
		model hide();
	}
	else{
	}
	iprintln(pos);
}
