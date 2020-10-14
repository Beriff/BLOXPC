![GitHub commit activity](https://img.shields.io/github/commit-activity/w/Beriff/BLOXPC?style=flat-square) ![Lines of code](https://img.shields.io/tokei/lines/github/Beriff/BLOXPC?style=flat-square) ![GitHub](https://img.shields.io/github/license/Beriff/BLOXPC?style=flat-square)

# BLOXPC

BLOXPC is a singleplayer roblox game where you're given a working PC. And nothing else. Do whatever you want!
(Play [here](https://www.roblox.com/games/5815647281/BLOXPC))

## What I can do?

Yeah, basically whatever you want. The PC got a CD ROM and you can overwrite those disks! With what? Well, with lua code obviously. After rewriting the disk, put it into CD ROM and start the PC. PC will follow disk's code.

## So basically, just a lua compiler?

No, not exactly. The disk can access PC's BIOS. What is this for? Just like in real computers, you can do a variety of things with BIOS "API". Write to screen, manually fill every pixel or do a beep noise. Are you getting to what I am leading? Yes, you're right, operating systems. By default, PC is like a toddler, it can't do anything. It can't even recognize the files on hard drive if there are any. It can't manage files, after all, it can't even start without a booting section of code.

## So, Operating systems?

You're getting closer. Because you aren't obligated to write them. You can write your own programs for other's OSes or create a simple disk program without OS. You are free to do anything. There are literally no limitations, you can simply delete the baseplate under yourself using PC and fall to the void. No limitations.

# What i wanted to achieve

I wanted to achieve a complete ecosystem of OSes and programs for them, a cozy community of creators and coders that helps others. And i am really looking forward to achieve this result.

# How it works?
Well, you're going to find it yourself if you want to look at sources. Here's a simple explanation. When PC starts, BIOS first checks all components ([POST](https://en.wikipedia.org/wiki/Power-on_self-test) system), then it looks for bootable device. If there are any disks in CDROM, it uses it as a booting code. If there aren't any bootable devices in CDROM, it executes the code stored in hard drive, starting from the first line.

# OS architecture
There aren't boot sector 512 KB limitation for disks. Just make sure that the bootloader will load operating system to the first lines of hard drive. I prefer using pastebin to load OS sources to the drive (they are in this github project as well!). How do you write the OS itself? I don't know. You can look for my OS sources, but i suggest creating something unique and your own.

# Hey hey hey! I wrote a cool OS!

Great! You can pool request it to the github project, and if it is really cool, it will be added as default disk in in-game store (Ys, we got in-game store. Every disk there is free, don't worry.)

# FAQ
* **What is this disk lying near to the PC in game?**
* This is a default OS. I wrote it by myself. If you don't feel ready to start your own OS, you can try writing simple programs for BLOXOS. It got pretty nice window api in my opinion. This repository includes documentation for user programs for BLOXOS too.

* **I don't have ideas for program.**
* I know this feeling, here i suggest some of the cool ideas in my opinion: a browser (Yes, you can make HTTP requests, how do you think we access pastebin here?), 3D game? , calculator, "irl" brick creator - set brick parameters on PC and it will generate this pc in game.

# ZOMG (insert feature mentioned in readme) IS MISSING!!!11!!oneone
Yeah, this readme acts like a TODO list too. Some features may miss for now but be sure they will be added.
