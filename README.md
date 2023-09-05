### Scripts for Reaper
Simple custom Lua-scripts for Reaper which is made based on my own workflow needs. This repo is made public to help others who seek same or similar actions within Reaper. I will only update or change the scripts if my own needs change.
Hope someone find these useful. :)

### Scripts


#### JL_Toggle mute on items if same else mute
-- Toggle mute on selected media items with the following conditions:<br>
-- If the selected media items are all muted, then unmute all the selected media items.<br>
-- If the selected media items are all unmuted, then mute all the selected media items.<br>
-- If the selected media items are both muted and unmuted (they differ), then mute all the selected media items.<br>
###### User Config<br>
-- Bool. Set to true if item should unmute(instead of mute) if the selected item mute states don't match.
<br>
<br>

-------
#### JL_Toggle track height on all visible tracks in tcp
-- Toggles between two different heights for visible tracks in tcp.<br>
-- It reads the all visible tracks height and if their height differs it sets all visible tracks to track_height_a.<br>
-- If track heights match each other and match either track_height_a or track_height_b it toggles to the opposite track height.<br>
###### User Config<br>
-- Set Track Height A in pixels(default)<br>
-- Set Track Height B in pixels<br>
<br>
<br>

-------
#### JL_Toggle track height on selected tracks in tcp if match
-- Toggles between two different heights for selected tracks in tcp.<br>
-- It reads the selected tracks height and if their height differs it sets all selected tracks to track_height_a.<br>
-- If track heights match each other and either track_height_a or track_height_b it toggles to the opposite track height.<br>
###### User Config<br>
-- Set Track Height A in pixels(default)<br>
-- Set Track Height B in pixels<br>
<br>
<br>

-------

#### JL_Toggle track height on selected tracks in tcp
-- Toggles between two different heights for selected tracks in tcp.<br>
-- It reads the individual selected tracks height and if it matches either track_height_a or track_height_b<br>
-- it individually toggles to the opposite one.<br>
-- If the tracks height matches neither it is set to track_height_a.<br>
###### User Config<br>
-- Set Track Height A in pixels(default)<br>
-- Set Track Height B in pixels<br>
<br>
<br>

-------

#### JL_Read track height in pixels(utility)
-- Reads the height of a track in pixels and shows it in the reaper console.<br>
-- If several tracks is selected it shows and error message and do not get called.<br>
<br>
<br>

-------

#### JL_Latch preview - write to selection and set to trimread mode
-- Toggles between trim/read and latch preview on selected tracks automation mode.<br>
-- If latch preview mode is not selected it sets all tracks to trim/read mode (to prevent mistakes) and then sets the selected track to latch preview.<br>
-- If latch preview mode is selected it writes the changed values(changed during latch preview mode) to the track envelopes within the time selection,<br>
-- and then sets all tracks to trim/read mode, inlcuding the selected ones(to prevent mistakes).<br>
<br>
<br>

-------
