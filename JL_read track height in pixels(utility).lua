-- Script functionality:
-- Reads the height of a track in pixels and displays it in the reaper console.
-- If several tracks is selected it displays an error message and do not get called.

-------------------------------------------------------------------------------

function Print(param)
    reaper.ClearConsole()
    reaper.ShowConsoleMsg(tostring(param).."\n")
end

function CountSelTracks()
    trackSum = reaper.CountSelectedTracks(0)
end

function GetTrackHeight()
    if (trackSum > 1) then
        Print("Error. More than one track selected. Select one track you wish to read the height of.")
    elseif (trackSum == 1) then
        trackNumber = reaper.GetSelectedTrack(0, 0)
        trackHeight = reaper.GetMediaTrackInfo_Value(trackNumber, "I_TCPH")
        Print("Track height in pixels: "..trackHeight)
    end
end

-- execute functions
CountSelTracks()
GetTrackHeight()