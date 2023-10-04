### Scripts for Reaper
Simple custom Lua-scripts for Reaper which is made based on my own workflow needs. This repo is made public to help others who seeks similar actions within Reaper. I will only update or change the scripts if my own needs change.
I hope you will find them useful.

### Scripts


#### JL_toggle mute on items if same else mute
-- Toggle mute on selected media items with the following conditions:<br>
-- If the selected media items are all muted, then unmute all the selected media items.<br>
-- If the selected media items are all unmuted, then mute all the selected media items.<br>
-- If the selected media items are both muted and unmuted (they differ), then mute all the selected media items.<br>
###### User Config<br>
-- Bool. Set to true if item should unmute(instead of mute) if the selected item mute states don't match.
<br>
<br>

-------
#### JL_toggle track height on all visible tracks in tcp
-- Toggles between two different heights for visible tracks in tcp.<br>
-- It reads the all visible tracks height and if their height differs it sets all visible tracks to track_height_a.<br>
-- If track heights match each other and match either track_height_a or track_height_b it toggles to the opposite track height.<br>
###### User Config<br>
-- Set Track Height A in pixels(default)<br>
-- Set Track Height B in pixels<br>
<br>
<br>

-------
#### JL_toggle track height on selected tracks in tcp if match
-- Toggles between two different heights for selected tracks in tcp.<br>
-- It reads the selected tracks height and if their height differs it sets all selected tracks to track_height_a.<br>
-- If track heights match each other and either track_height_a or track_height_b it toggles to the opposite track height.<br>
###### User Config<br>
-- Set Track Height A in pixels(default)<br>
-- Set Track Height B in pixels<br>
<br>
<br>

-------

#### JL_toggle track height on selected tracks in tcp
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

#### JL_read track height in pixels(utility)
-- Reads the height of a track in pixels and displays it in the reaper console.<br>
-- If several tracks is selected it displays an error message and do not get called.<br>
<br>
<br>

-------

#### JL_latch preview - write to selection and set to trimread mode
-- Writes automation to selection (based on time selection) when toggling from latch preview to trim/read mode.
-- Toggles between trim/read and latch preview on selected tracks automation mode.<br>
-- If latch preview mode is not selected it sets all tracks to trim/read mode (to prevent mistakes) and then sets the selected track to latch preview.<br>
-- If latch preview mode is selected it writes the changed values(changed during latch preview mode) to the track envelopes within the time selection,<br>
-- and then sets all tracks to trim/read mode, inlcuding the selected ones(to prevent mistakes).<br>
<br>
<br>

-------

#### JL_toggle selected tracks between trimread and latch
-- Toggles between trim/read and latch on selected tracks automation mode.<br>
-- If latch mode is not selected it sets the individual selected tracks to latch mode.<br>
-- If latch mode is selected it sets the individual selected tracks to trim/read mode.<br>
<br>
<br>

-------

#### JL_create time selection between items
-- This script creates a timeselection between to items in the arrange view.<br>
-- It uses default Reaper action commands to achieve this behaviour.<br>
-- The cursor needs to be placed between the two items where you want to create the time selection,<br>
-- since the script uses the cursor to achieve the desired behaviour.<br>
-- You can assign it to a mouse modifier of your choice. For example:<br>
-- Preferences/Editing Behavior/Mouse Modifiers: Track | Double-Click | Default Action<br>
<br>
<br>

-------

#### JL_toggle envelope height on selected envelope lane
-- This script requires the SWS extension installed.<br>
<br>
-- Script functionality:<br>
-- Toggles between two different heights for the selected envelope.<br>
-- It reads the individual selected envelope height and toggles to the other one.<br>
-- If height does not match neither of the configurated envelope heights the bool default_envelope_a determines if set to a(true) or b(false).<br>
<br>
-- thanks to Edgemeal for posting code snippets of reaper.BR_EnvAlloc on the Cockos forum
###### User Config<br>
-- Set Track Height A in pixels(default)<br>
-- Set Track Height B in pixels<br>
-- Bool. Set to false if envelope should default to envelope_height_b instead of a.<br>
<br>
<br>

-------
#### JL_read envelope height in pixels(utility)
-- Reads the height of a selected envelope in pixels and displays it in the reaper console.<br>
<br>
<br>

-------
