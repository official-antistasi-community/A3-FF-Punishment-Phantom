#include "..\script_component.hpp"

/*	here, you put in your CBA Settings so they are available in the editor!
[
	
	QSET(displayMusic),					//    _setting     - Unique setting name. Matches resulting variable name <STRING>
	"CHECKBOX",								//    _settingType - Type of setting. Can be "CHECKBOX", "EDITBOX", "LIST", "SLIDER" or "COLOR" <STRING>
	["Display Music Title","This enables the message of the currently played music title by the CVO Music System"],
											//    _title       - Display name or display name + tooltip (optional, default: same as setting name) <STRING, ARRAY>
	["main", "main Music"],					//    _category    - Category for the settings menu + optional sub-category <STRING, ARRAY>
	false,									//    _valueInfo   - Extra properties of the setting depending of _settingType. See examples below <ANY>
	0,										//    _isGlobal    - 1: all clients share the same setting, 2: setting can't be overwritten (optional, default: 0) <NUMBER>
	{},										//    _script      - Script to execute when setting is changed. (optional) <CODE>
	false									//    _needRestart - Setting will be marked as needing mission restart after being changed. (optional, default false) <BOOL>
] call CBA_fnc_addSetting;
*/

[
	QSET(enabled),
	"CHECKBOX",
	["Enable Notifications", "Should the friendly fire notifications be enabled? If not then the friendly fire incidents will still be logged to the RPT."],
	["Friendly Fire Phantom Protocol"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(tellInstigator),
	"CHECKBOX",
	["Tell Instigator", "Should the instigator be notified of his friendly fire incident and who he damaged?"],
	["Friendly Fire Phantom Protocol"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(tellVictim),
	"CHECKBOX",
	["Tell Victim", "Should the victim be informed of his friendly fire incident and who damaged him?"],
	["Friendly Fire Phantom Protocol"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(tellAdmin),
	"CHECKBOX",
	["Tell Admin", "Should the logged in admin be notified of the friendly fire incident? This includes the name of the instigator and victim."],
	["Friendly Fire Phantom Protocol"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;