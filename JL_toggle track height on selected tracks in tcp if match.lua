-- Script functionality:
-- Toggles between two different heights for selected tracks in tcp.
-- It reads the selected tracks height and if their height differs it sets all selected tracks to track_height_a.
-- If track heights match each other and either track_height_a or track_height_b it toggles to the opposite track height.

-- USER CONFIG AREA -----------------------------------------------------------

-- Set Track Height A in pixels(default)
track_height_a = 116

-- Set Track Height B in pixels
track_height_b = 500

------------------------------------------------------- END OF USER CONFIG AREA

function CountSelTracks()
    trackSum = reaper.CountSelectedTracks(0)
end

function GetTrackHeight()
    trackHeightTable = {}
    trackNumberTable = {}
    
    for i = 1, trackSum do
        trackNumber = reaper.GetSelectedTrack(0, i - 1)
        trackHeight = reaper.GetMediaTrackInfo_Value(trackNumber, "I_TCPH")
        table.insert(trackHeightTable, trackHeight)
        table.insert(trackNumberTable, trackNumber)
    end
end

function TrackHeightMatch()
    firstTrackHeight = trackHeightTable[1]
    
      for i,v in ipairs(trackHeightTable) do
          if (firstTrackHeight ~= v) then
              trackHeightMatch = false
              break
          else
              trackHeightMatch = true
          end
      end
end

function SetTrackHeight()
    
    if (trackHeightMatch == true and firstTrackHeight == track_height_a) then
        for i = 1, trackSum do
            reaper.SetMediaTrackInfo_Value(trackNumberTable[i], "I_HEIGHTOVERRIDE", track_height_b)
        end
    else
        for i = 1, trackSum do
            reaper.SetMediaTrackInfo_Value(trackNumberTable[i], "I_HEIGHTOVERRIDE", track_height_a)
        end
    end
end

-- execute functions
CountSelTracks()
GetTrackHeight()
TrackHeightMatch()
SetTrackHeight()

-- update GUI
reaper.TrackList_AdjustWindows(0)
reaper.UpdateArrange()
reaper.UpdateTimeline()
