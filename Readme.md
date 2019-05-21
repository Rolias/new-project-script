# Start a new project from a git Repository

I have a variety of "starter kit" repositories for various project types. When I clone those, the history of the starter kit comes with the repository, and I don't want that. This script gives me a clean new project. It does the following steps:

1. Gives you a prompt indicating you should be at the parent folder of where you want the project created
1. A second prompt requests the link to the remote repo. This link is the string that goes into the `git clone` command. In a tool like GitHub where it's the string, it provides via the clipboard icon. It can be in any form supported by `git clone.`
1. Prompts for the name of the target folder that will be the root of the project
1. clones the head of the repository specified into the folder specified
1. moves into the new project folder
1. removes the .git folder (and all children)
1. runs `git init`
1. runs `git add .`
1. runs `git commit - m "initial commit"`
   THE END

## Installation/Use

This project you can just clone directly. Feel free to throw away the `.git` folder. I like to store this at the root of my node development folder. You will need to make the script executable so from the terminal

```bash
chmod +x start-new-project.sh
## to run it then just
./start-new-project.sh
```
