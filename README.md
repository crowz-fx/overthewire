# Over The Wire

This repo will contain all the scripts, processes and write up's Lui does whilst completing the wargames on [overthewire.org](https://overthewire.org)

Higly recommend you check them out, try these yourself and show them some love

Posted this in accordance to the [rules here](https://overthewire.org/rules/)

## Layout/repo structure

- There are folders like `bandit/`, this is the wargame collection, inside the folder then contains the writeup/commands in order to complete the box(es)... for example `bandit/bandit0` contains the commands/process in order to get the pwd for level bandit1's user.

- `connect.sh` - the main grunt work in handling the sshpass and login to each box, you supply the username i.e. `bandit1` and it will lookup the password file (plain text)

  - Magic explanation - it uses the user you supply to determine the box hostname, port and pwdfile to lookup, see the bottom case statement in [connect.sh](connect.sh)

- `pwdfiles/` folder needs to be created and the files for the passwords you want to be able to connec too, for example if you have the pwd for the bandit8 user then create a file `pwdfiles/bandit8` and paste the password in

## Running

```bash
./connect.sh <username>

# examples
./connect.sh bandit0
```

## Final notes

None of this will be perfect, many ways to skin a cat but more importantly... have fun!

## Helpful commands
```bash
# grab your history in a nice easy-to copy-pasta format
history | cut -c 8-
```
