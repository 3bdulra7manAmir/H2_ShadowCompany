// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_forest_tf141_shotgun" );
    self attach( "head_tf141_forest_c", "", 1 );
    self.headmodel = "head_tf141_forest_c";
    self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_forest_tf141_shotgun" );
    precachemodel( "head_tf141_forest_c" );
}
