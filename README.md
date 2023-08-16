# Quick start
## 1. For zsh
```bash
git clone git@github.com:sangqle/custom-command.git ~/.custom-command
cd ~/.custom-command
chmod +x killport
echo -e "\n# Custom command\nexport PATH=\$HOME/.custom-command/:\$PATH" >> ~/.zshrc
source ~/.zshrc
```
## 2. For bash
```bash
git clone git@github.com:sangqle/custom-command.git ~/.custom-command
cd ~/.custom-command
chmod +x killport
echo -e "\n# Custom command\nexport PATH=\$HOME/.custom-command/:\$PATH" >> ~/.bashrc
source ~/.bashrc
```
And then you can use killport command to kill port by port number or range of port
```bash
killport 3000 3001 3002
```

# How to load your custom scripts

## 1. Clone this repo to your home directory
```bash
git clone git@github.com:sangqle/custom-command.git ~/.custom-command
```

## 2. Grant permission to your script
```bash
cd ~/.custom-command
```

```bash
chmod +x <your script here>
```
Example for killport
```bash
chmod +x killport
```

## 3. Add the addition source to your .bashrc or .zshrc
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




## 4. Reload your .bashrc or .zshrc
```bash
source ~/.bashrc
```
```bash
source ~/.zshrc
```

# How to use
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