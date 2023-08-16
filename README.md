# How to load your custom scripts

```bash
git clone git@github.com:sangqle/custom-command.git ~/.custom-command
```

Add the addition source to your .bashrc or .zshrc
``` bash
// some code above
export PATH=$HOME/.custom-command/:$PATH
// some code below
```
Or you can one of these command below to append the source into .bashrc or .zshrc
```bash
echo -e "\n# Custom command\nexport PATH=\$HOME/.custom-command/:\$PATH" >> ~/.bashrc
```
```bash
echo -e "\n# Custom command\nexport PATH=\$HOME/.custom-command/:\$PATH" >> ~/.zshrc
```


Grant permission to your script
```bash
chmod +x <your script here>
```
Example for killport
```bash
chmod +x killport
```

# Custom Commands
## 1. killport
Kill port by port number or range of port
```bash
killport 3000 3001 3002
```
or kill range of port
```bash 
killport 3000-3002
```

## 2. port
Check port is open or not
```bash
port 3000
```