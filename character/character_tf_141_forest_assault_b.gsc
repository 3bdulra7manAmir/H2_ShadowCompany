// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_tf141_assault_a" );
    self attach( "head_tf141_forest_a", "", 1 );
    self.headmodel = "head_tf141_forest_a";
    self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_tf141_assault_a" );
    precachemodel( "head_tf141_forest_a" );
}
