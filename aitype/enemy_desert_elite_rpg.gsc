// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "axis";
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 200;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "masada";
    self.sidearm = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 1024.0 );
    }

    self.weapon = "at4";
    character\character_us_army_assault_lmg::main();
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    character\character_us_army_assault_lmg::precache();
    precacheitem( "at4" );
    precacheitem( "masada" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
