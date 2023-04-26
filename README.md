# How to load your custom scripts

```bash
git clone git@github.com:sangqle/custom-command.git ~/.custom-command
```

Add this to your .bashrc or .zshrc
``` bash
// some code above
export PATH=$HOME/.custom-command/:$PATH
// some code below
```

If you get some issue about permssion you can run this command
```bash
chmod +x <your script here>
```

# Custom Commands
```bash
kill-port <port>
```