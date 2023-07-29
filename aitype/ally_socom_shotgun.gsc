// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "allies";
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 100;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch( codescripts\character::get_random_weapon(2) )
    {
        case 0:
            self.weapon = "spas12";
            break;
        case 1:
            self.weapon = "spas12_reflex";
            break;
    }

    character\character_shadow_co_shotgun::main();
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    character\character_shadow_co_shotgun::precache();
    precacheitem( "spas12" );
    precacheitem( "spas12_reflex" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
