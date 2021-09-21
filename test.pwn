#include <cef>


forward HudCef(player_id);


public OnGameModeInit(){
  cef_subscribe("hud:start", "HudCef");

}
public OnPlayerSpawn(playerid)
{
  cef_create_browser(playerid, 1, "url на худ", false, false);
}
public HudCef(player_id)
{
  return 1;
}
cmd:test_eat(player_id, arg[])
{
  new eat_max;
  if(sscanf(arg, "i", eat_max)) return SendClientMessage(player_id, -1, "test_eat [value]");
  cef_emit_event(player_id, "hud:eat", CEFINT(eat_max));
  return 1;
}
