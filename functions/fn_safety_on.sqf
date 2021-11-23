/*
 * Name:	fn_force_lock
 * Date:	23/11/2021
 * Version: 2.0
 * Author: Fluffy
 *
 * Description:
 * Forces weapon safety
 *
 * Parameter(s):
 * _unit (OBJECT): Unit (Must be player)
 * 
 *
 * Returns:
 * True if sucessfuly completed
 *
 * Example:
 * [player] call flf_fnc_force_safety_on;
 */
 
params ["_unit"];
if (isPlayer _unit) then {
waitUntil {(isPlayer _unit) && (time>0)};
[_unit, currentWeapon _unit, currentMuzzle _unit] call ace_safemode_fnc_lockSafety;
true;
};

