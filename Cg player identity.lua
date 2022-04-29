// Finds a player with the SteamID STEAM_0:1:34409736, checks if they are online and shows their name.

Player ply = Player.GetBySteamID("STEAM_0:0:1734505");

if(ply.IsValid()){
    Console.WriteLine("Player online: "..ply.GetName());
}else{
    Console.WriteLine("The player is not online :(");
}