# dotfiles
A place for all my dotfiles (except .profiles)

## Procedure to organize dotfiles
- If something is specific to the machine/system, put in .profile which will be ran when the terminal first start up.
- Clone this repository somewhere in the system.
- Make necessary addition to dotfiles in this repository (very important, do before removing original dotfiles)
- Create symbolic links from the home folders to the dotfiles in this repository. Code to do so:     
`ln -sfn <path to target file> <path to symlink>`
- Always commit and push any changes after making them so the repository is always up to date.
- Also, always pull regularly on all machines after pushing new changes to github.
