currCursor = 0

function fsOptions()
  BIOSAPIS["sendMonitorSignal"]("set", "Welcome to BLOXOS setup master.\n")
  BIOSAPIS["sendMonitorSignal"]("add", "Please select what filesystem should be installed: \n")
  BIOSAPIS["sendMonitorSignal"]("add", "BSFS (recommended)")
  if not currCursor then
    BIOSAPIS["sendMonitorSignal"]("add", "\n")
  else
    BIOSAPIS["sendMonitorSignal"]("add", " < \n")
  end
  BIOSAPIS["sendMonitorSignal"]("add", "SUFS")
  if currCursor then
    BIOSAPIS["sendMonitorSignal"]("add", "\n")
  else
    BIOSAPIS["sendMonitorSignal"]("add", " < \n")
  end
 end
 
fsOptions()
while true do
  clicked = BIOSAPIS["detectUserInput"]()
  print(clicked)
  if clicked == "arrUp" or clicked == "arrDown" then
    if currCursor == 1 then
      print('run for up')
      currCursor = 0
      fsOptions()
      
    elseif clicked == "enter" then
    
      break
    
    elseif currCursor == 0 then
      print('run for down')
      currCursor = 1
      fsOptions()
    end
  end
  wait(0.5)
end
  
return currCursor

