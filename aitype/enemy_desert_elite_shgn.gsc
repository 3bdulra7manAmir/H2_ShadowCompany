// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    if ( level.script == "boneyard" )
	{
		self.team = "allies";	
	}
	else
	{
		self.team = "axis";
	}
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 100;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch( codescripts\character::get_random_weapon(3) )
    {
        case 0:
            self.weapon = "spas12";
            break;
        case 1:
            self.weapon = "m1014";
            break;
        case 2:
            self.weapon = "aa12_reflex";
            break;
    }

    if( level.script == "af_caves" || level.script == "af_chase" || level.script == "ending" )
    {
        switch( codescripts\character::get_random_character(2) )
        {
            case 0:
                character\character_us_army_assault_unarmed::main();
                break;
            case 1:
                character\character_us_army_paramedic::main();
                break;
        }
    }
    else
    {
        character\character_shadow_co_shotgun::main();
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    character\character_shadow_co_shotgun::precache();
    character\character_us_army_assault_unarmed::precache();
    character\character_us_army_paramedic::precache();
    precacheitem( "spas12" );
    precacheitem( "m1014" );
    precacheitem( "aa12_reflex" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
