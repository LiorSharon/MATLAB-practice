Screen('Preference', 'SkipSyncTests', 1)
win=Screen('OpenWindow',0,[127 127 127], [0 0 640 480]) 
for ii=1:200
Screen('FillRect',win,[0 255 0],[50 50 100 100]+ii)
Screen('Flip',win)
end
pause(1)
sca
