
address = Controls.IPAddress
port = Controls.Port
name1 = Controls.ShowName1
cue1 = Controls.Show1Cue
halt1 = Controls.Show1Halt
run1 = Controls.Show1Run
name2 = Controls.ShowName2
cue2 = Controls.Show2Cue
halt2 = Controls.Show2Halt
run2 = Controls.Show2Run
name3 = Controls.ShowName3
cue3 = Controls.Show3Cue
halt3 = Controls.Show3Halt
run3 = Controls.Show3Run


----  Sockets   ---
sock = TcpSocket.New()
sock.ReadTimeout = 0
sock.WriteTimeout = 0
sock.ReconnectTimeout = 5

-- Constants
EOL = "\r\n"                       -- End of line character as defined in device's API
EOLCharacter = TcpSocket.EOL.Lf  -- EOL Character lookup for TCPSocket ReadLine
iter = 1

PollTimer = Timer.New()
InitTimer = Timer.New()
pollTime = 30
InitTime  = 2





sock.EventHandler = function(sock, evt, err)
  if evt == TcpSocket.Events.Connected then
      print( "socket connected" )
   --InitTimer:Start(InitTime)
   --PollTimer:Start(poltime)
   -- init()
  elseif evt == TcpSocket.Events.Reconnect then
    print( "socket reconnecting..." )
  elseif evt == TcpSocket.Events.Data then
    print( "socket has data" )
    message = sock:Read(sock.BufferLength)
   --message = sock:Read(TcpSocket.EOL.Any)
    print('rx=',message)
    while (message ~= nil) do
      print( "reading until CrLf got "..message )
      message = sock:ReadLine(TcpSocket.EOL.Any)
    end
  elseif evt == TcpSocket.Events.Closed then
    sockon = false
    print("sockoff")
    print( "socket closed by remote" )
  elseif evt == TcpSocket.Events.Error then
    print( "socket closed due to error", err )
  elseif evt == TcpSocket.Events.Timeout then
    print( "socket closed due to timeout" )
  else
    print( "unknown socket event", evt ) --should never happen
  end
end





function send(cmd)
    sock:Write(cmd..EOL)
    print(cmd..EOL)
   -- sock:Disconnect(address.String, port.Value)
end

--[[
sock.Connected = function ()
  -- sock has connected now, so data can be sent
  send(cmd)
  sock:Disconnect()
end
]]--

address.EventHandler = function ( )
  sock:Connect(address.String, port.Value)
end




Controls.ShowName1.EventHandler = function ()
    show1 = name1.String  
    print(show1)
end

Controls.ShowName2.EventHandler = function ()
  show2 = name2.String  
    print(show2)
end

Controls.ShowName3.EventHandler = function ()
  show3 = name3.String  
  print(show3)
end

cue1.EventHandler = function ()
  send("authenticate 1")
  send("halt")
  send("gotoControlCue "..show1)
end

halt1.EventHandler = function ()
  send("authenticate 1")
  send("halt")
end

run1.EventHandler = function ()
  send("authenticate 1")
  send("run")
end

cue2.EventHandler = function ()
  send("authenticate 1")
  send("halt")
  send("gotoControlCue "..show2)
end

halt2.EventHandler = function ()
  send("authenticate 1")
  send("halt")
  send("gotoControlCue "..show2)
end

run2.EventHandler = function ()
  send("authenticate 1")
  send("run")
end

cue3.EventHandler = function ()
  send("authenticate 1")
  send("halt")
  send("gotoControlCue "..show3)
end

halt3.EventHandler = function ()
  send("authenticate 1")
  send("halt")
end

run3.EventHandler = function ()
  send("authenticate 1")
  send("run")
end

function loadnames()
  show1 = name1.String
  show2 = name2.String
  show3 = name3.String
end      

loadnames()

sock:Connect(address.String, port.Value)