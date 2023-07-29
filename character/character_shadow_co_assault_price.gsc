// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_shadow_co_assault" );
    self attach( "head_hero_price_desert", "", 1 );
    self.headmodel = "head_hero_price_desert";
    self.voice = "shadowcompany";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_shadow_co_assault" );
    precachemodel( "head_hero_price_desert" );
}
