# esx_aceasync
An ESX addon to easily sync ace groups with the ESX groups system.

## Why?
I created this addon because my ESX server uses Kashacters and the ESX group systems would've required that I set each character's group individually to give perms. It only works for the normal ESX groups called `superadmin`, `admin`, `mod`, and `user`. It could be modified to work for others by following the existing formatting of the code.

## Installation
Put the folder in your resources folder.

Add the following to your server.cfg, it must be after es_extended is started.
```lua
add_ace resource.esx_acesync commands.setgroup allow

start esx_acesync
```

## Usage
Wherever you set your ace permissions add one of the following to the relevant principal that you want to be synced. 
```lua
esx_acesync.superadmin --For superadmins
esx_acesync.admin --For admins
esx_acesync.mod --For moderators
```

## FAQ
### Q: Does this work in reverse?
### A: No. This only works going from ace to ESX. Maybe if someone needs it I'll look into making an addon that goes from ESX to ace.

If you have any more suggestions to add here let me know or submit a PR.
