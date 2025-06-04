/*
Function:
    FFPP_fnc_dataNamespace

Description:
    Returns a hash table namespace for punishment storage.
    Initializes is hash table does not exist.

Scope:
    <ANY>

Environment:
    <ANY>

Parameters:
    nil

Returns:
    <OBJECT> ("Logic") Punishment Data Namespace

Examples:
    private _data_namespace = call FFPP_fnc_dataNamespace; // Gets namespace for getVariable and setVariable

Author: Caleb Serafin
Date Updated: 27 May 2020
License: MIT License, Copyright (c) 2020 Official AntiStasi Community
*/
private _dataNamespace = missionNamespace getVariable ["dataNamespace",objNull];

if (isNull _dataNamespace) then {
    private _namespaces = allSimpleObjects ["logic"] select {_x getVariable ["dataNamespace",false]};
    if (_namespaces isEqualTo []) then {
        _dataNamespace = createSimpleObject ["Logic", [0,0,0]];
        _dataNamespace setVariable ["dataNamespace", true, true];
    } else {
        _dataNamespace = _namespaces select 0;
    };
    missionNamespace setVariable ["dataNamespace",_dataNamespace,true];
};

_dataNamespace;
