#include <a_samp>
#include <cef>
#include <Pawn.CMD>
#include <sscanf2>



main(){}

forward HudCef(player_id);

public OnGameModeInit()
{
  	cef_subscribe("hud:start", "HudCef");
	SetGameModeText("Blank Script");
	AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
  	cef_create_browser(playerid, 1, "http://royzenvo.beget.tech/hud-test/", false, false);
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/mycommand", cmdtext, true, 10) == 0)
	{
		// Do something here
		return 1;
	}
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
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
cmd:test_wanted(player_id, arg[])
{
  new w;
  if(sscanf(arg, "i", w)) return SendClientMessage(player_id, -1, "test_wanted [value]");
  SetPlayerWantedLevel(player_id, w);

  return 1;
}
cmd:test_arm(player_id, arg[])
{
  new ar;
  if(sscanf(arg, "i", ar)) return SendClientMessage(player_id, -1, "test_arm [value]");
  SetPlayerArmour(player_id, ar);
  return 1;
}
cmd:test_hp(player_id, arg[])
{
  new hp;
  if(sscanf(arg, "i", hp)) return SendClientMessage(player_id, -1, "test_hp [value]");
  SetPlayerHealth(player_id, hp);
  return 1;
}
cmd:test_weapon(player_id, arg[])
{
  new w;
  if(sscanf(arg, "i", w)) return SendClientMessage(player_id, -1, "test_weapon [value]");
  GivePlayerWeapon(player_id, w, 50);
  return 1;
}
