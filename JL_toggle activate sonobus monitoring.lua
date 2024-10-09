-- This script requires the SWS extension installed.

-- Script functionality:
-- Toggle activate sonobus plugin on monitoring fx chain
-- If sonobus vst is active = deactivate it
-- If sonobus vst is deactivated - activate it


-- USER CONFIG AREA -----------------------------------------------------------

------------------------------------------------------- END OF USER CONFIG AREA
local mastTrack = reaper.GetMasterTrack(0)

local monFxCount = reaper.TrackFX_GetRecCount(mastTrack)
local monOffset = (0x1000000)-1;

for i = 0, monFxCount do
    local monitorPlugin = "VST3: SonoBus (Sonosaurus) (18ch)"
    local retval, individualFxName = reaper.TrackFX_GetFXName(mastTrack, monOffset+i)
    if retval then
        if individualFxName == monitorPlugin then
            local fxIsEnabled = reaper.TrackFX_GetEnabled(mastTrack, monOffset+i)
            if fxIsEnabled then
                reaper.TrackFX_SetEnabled(mastTrack, monOffset+i, false)
            else
                reaper.TrackFX_SetEnabled(mastTrack, monOffset+i, true)
            end
        end
    end
end