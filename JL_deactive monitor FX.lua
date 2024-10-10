-- This script requires the SWS extension installed.

-- Script functionality:
-- Toggle activate sonobus plugin on monitoring fx chain
-- If sonobus vst is active = deactivate it
-- If sonobus vst is deactivated - activate it


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