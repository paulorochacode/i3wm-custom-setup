import tkinter as tk
import os
import sys

os.system('firewall-cmd --state > firewalldstatus')
os.system('sudo ufw status verbose | egrep Default > ufwstatus')

f = open("ufwstatus", "r")
firewalldstatus = f.read()

f = open("firewalldstatus", "r")
ufwstatus = f.read()


root = tk.Tk()


# place a label on the root window
message1 = tk.Label(root, text=firewalldstatus)
message2 = tk.Label(root, text=ufwstatus)

message1.pack()
message2.pack()

# keep the window displaying
root.mainloop()

os.system('sudo rm -rf firewalldstatus')
os.system('sudo rm -rf ufwstatus')
