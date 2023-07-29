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
    self.secondaryweapon = "";
    self.sidearm = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 1024.0 );
    }

    switch( codescripts\character::get_random_weapon(7) )
    {
        case 0:
            self.weapon = "kriss";
            break;
        case 1:
            self.weapon = "kriss_reflex";
            break;
        case 2:
            self.weapon = "ump45_acog";
            break;
        case 3:
            self.weapon = "ump45_eotech";
            break;
        case 4:
            self.weapon = "ump45_reflex";
            break;
        case 5:
            self.weapon = "tmp";
            break;
        case 6:
            self.weapon = "tmp_reflex";
            break;
    }

    if(level.script != "ending")
    {
        character\character_shadow_co_smg_pilot::main();
    }
    else
    {
        switch( codescripts\character::get_random_character(2) )
        {
            case 0:
                character\character_zack_pilot::main();
                break;
            case 1:
                character\character_velinda_pilot::main();
                break;
        }
    }

}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    character\character_shadow_co_smg_pilot::precache();
    character\character_zack_pilot::precache();
    character\character_velinda_pilot::precache();
    precacheitem( "kriss" );
    precacheitem( "kriss_reflex" );
    precacheitem( "ump45_acog" );
    precacheitem( "ump45_eotech" );
    precacheitem( "ump45_reflex" );
    precacheitem( "tmp" );
    precacheitem( "tmp_reflex" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
