-- Script functionality:
-- Toggles between two different heights for selected tracks in tcp.
-- It reads the individual selected tracks height and if it matches either track_height_a or track_height_b
-- it individually toggles to the opposite one.
-- If the tracks height matches neither it is set to track_height_a.

-- USER CONFIG AREA -----------------------------------------------------------

-- Set Track Height A in pixels(default)
track_height_a = 116

-- Set Track Height B in pixels
track_height_b = 500

------------------------------------------------------- END OF USER CONFIG AREA

function CountSelTracks()
    trackSum = reaper.CountSelectedTracks(0)
end

function GetSetTrackHeight()
    
    for i = 1, trackSum do
    
    trackNumber = reaper.GetSelectedTrack(0, i - 1)
    trackHeight = reaper.GetMediaTrackInfo_Value(trackNumber, "I_TCPH")
    
        if trackHeight == track_height_b then
            reaper.SetMediaTrackInfo_Value(trackNumber, "I_HEIGHTOVERRIDE", track_height_a)
            else
            reaper.SetMediaTrackInfo_Value(trackNumber, "I_HEIGHTOVERRIDE", track_height_b)
        end
    end
end

-- execute functions
CountSelTracks()
GetSetTrackHeight()

-- update GUI
reaper.TrackList_AdjustWindows(0)
reaper.UpdateArrange()
reaper.UpdateTimeline()
