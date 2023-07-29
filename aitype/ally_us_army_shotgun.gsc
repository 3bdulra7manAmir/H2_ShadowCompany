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
    self.sidearm = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch( codescripts\character::get_random_weapon(3) )
    {
        case 0:
            self.weapon = "m1014";
            break;
        case 1:
            self.weapon = "m1014_reflex";
            break;
        case 2:
            self.weapon = "m1014_eotech";
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
    precacheitem( "m1014" );
    precacheitem( "m1014_reflex" );
    precacheitem( "m1014_eotech" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
