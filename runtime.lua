
address = Controls.IPAddress
port = Controls.Port
name1 = Controls.ShowName1
play1 = Controls.Show1Play
stop1 = Controls.Show1Stop
name2 = Controls.ShowName2
play2 = Controls.Show2Play
stop2 = Controls.Show2Stop
name3 = Controls.ShowName3
play3 = Controls.Show3Play
stop3 = Controls.Show3Stop


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
         --print("snd: ",cmd..Tail)
         sock:Write(cmd..EOL)
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

play1.EventHandler = function ()
  send("authenticate 1")
  send("gotoControlCue \x22"..show1.."\x22")
end

stop1.EventHandler = function ()
  send("authenticate 1")
  send("halt ".."\x22"..show1.."\x22")
end

play2.EventHandler = function ()
  send("authenticate 1")
  send("gotoControlCue \x22"..show2.."\x22")
end

stop1.EventHandler = function ()
  send("authenticate 1")
  send("halt ".."\x22"..show2.."\x22")
end

play3.EventHandler = function ()
  send("authenticate 1")
  send("gotoControlCue \x22"..show3.."\x22")
end

stop1.EventHandler = function ()
  send("authenticate 1")
  send("halt ".."\x22"..show3.."\x22")
end

function loadnames()
  show1 = name1.String
  show2 = name2.String
  show3 = name3.String
end      

loadnames()

sock:Connect(address.String, port.Value)