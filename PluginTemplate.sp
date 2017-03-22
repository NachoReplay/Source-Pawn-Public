#pragma semicolon 1 // Force strict semicolon mode.

// ====[ INCLUDES ]====================================================
#include <sourcemod>
#include <sdktools>

// ====[ DEBUG INFORMATION AND SWITCHES ]==============================
//#define DEBUG			1
/*
#if defined DEBUG then
	PrintToServer("DEBUG: I'm debugging text printed to server console.");
#endif
*/

// ====[ CONSTANTS ]===================================================
#define MAX_ID			32
#define MAX_NAME		96
#define MAX_BUFF_SM		128
#define MAX_BUFF		512
#define MESSAGE_BUFF		4096

// ====[ CON_VARS ]====================================================
//ConVar g_Cvar_bla;

// ====[ VARIABLES ]===================================================
// Handle, String, Float, Bool, NUM, TFCT
//new blabla[MAXPLAYERS+1];


public Plugin:myinfo =  {
	name = "[As] PROTECTED",
	author = "[As] Nacho Replay",
	description = "This Plugin is PROTECTED",
	version = "Alpha 0.0.0",
	url = "http://steamcommunity.com/id/NachoReplay"
};



public OnPluginStart() {


	#if defined DEBUG then
		PrintToServer("OnPluginStart stuff was loaded");
	#endif
}

bool:IsValidClient(iClient) {
	#if defined DEBUG then
		PrintToServer("IsValidClient was called checking client validity.");
	#endif
	if(iClient < 1 || iClient > MaxClients)
		return false;
	if(!IsClientConnected(iClient))
		return false;
	if(IsClientInKickQueue(iClient))
		return false;
	if(IsClientSourceTV(iClient))
		return false;	
	if(IsFakeClient(iClient))
		return false;
	return IsClientInGame(iClient);
}
