-- Script functionality:
-- Toggle activate individually targeted FX plugin on monitoring fx chain
-- Action to deactivate individually targeted FX on the monitor FX chain.
-- Use it together with the 'JL_toggle activate monitor FX' to reset the state to
-- default (off) when booting Reaper (put it in the global startup actions).

-- USER CONFIG AREA -----------------------------------------------------------

-- Define name of FX to toggle on/off.
-- MUST be an exact match (except for upper and lower case letters).
local targetFxName = "sonobus"

------------------------------------------------------- END OF USER CONFIG AREA
local mastTrack = reaper.GetMasterTrack(0)

local monFxCount = reaper.TrackFX_GetRecCount(mastTrack)
local monOffset = (0x1000000)-1;

for i = 0, monFxCount do
    local monitorPlugin = targetFxName
    local retval, individualFxName = reaper.TrackFX_GetFXName(mastTrack, monOffset+i)
    if retval then
        individualFxName = individualFxName:lower();
        if individualFxName == monitorPlugin then

            local fxIsEnabled = reaper.TrackFX_GetEnabled(mastTrack, monOffset+i)
            is_new_value,filename,sectionID,cmdID,mode,resolution,val,contextstr = reaper.get_action_context()
            local retval = reaper.GetToggleCommandState(cmdID)

            if (retval == -1) then
                reaper.SetToggleCommandState(sectionID, cmdID, 0)
            end

            if fxIsEnabled then
                reaper.TrackFX_SetEnabled(mastTrack, monOffset+i, false)
                reaper.SetToggleCommandState(sectionID, cmdID, 0)
            end
        end
    end
end