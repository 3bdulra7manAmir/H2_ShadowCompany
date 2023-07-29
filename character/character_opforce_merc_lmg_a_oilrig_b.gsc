// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
	maps\_custom_utility::detach_all_attachments();
    self setmodel( "body_opforce_arctic_shotgun_c" );
    maps\_custom_utility::detach_all_attachments();
    self attach( "head_opforce_merc_a", "", 1 );
    self._ID40757 = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_opforce_arctic_shotgun_c" );
    precachemodel( "head_opforce_merc_a" );
}
