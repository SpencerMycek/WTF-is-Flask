# WTF is Flask
This repo contains a multi-part discussion to teach and learn Flask. The
material contained herein will be used as part of a single- or multi-part
series of in-person seminars at Computer Science House
([CSH](https://csh.rit.edu)).

## What I'll be using
I will be using my own knowledge of Flask, with aid from powerpoints, pre-coded
examples, and possibly some live coding examples.

This series will be based on the Flask Mega-Tutorial, by Miguel Grinberg
([here](https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world)).

This series will be split into chapters that follow closely to Miguel's
Tutorial's chapters.

## Things to do first
In order to start following along with this series you will need a few things:

1. Install *Python* (Version 3+ **__please__**)
2. Update [pip](#pip)
3. Make a [virtual environment](#venv)
4. Install Flask `pip install Flask`

View the version requirements in my [requirements.txt](requirements.txt).

### Pip
Python 2 has reached end of life, which means we will be using python 3.
Pip, a python package manager, comes pre-installed with Python 3 and you
should already have it installed. However, make sure it is the most current
version:

Linux or MacOS:
```Bash
pip install -U pip
```

Windows:
```Bash
python -m pip install -U pip
```

#### Installing packages
There are 3 ways to install/upgrade packages that are useful to remember:

Install latest version:
```Bash
pip install 'PackageName'
```

Install specific version:
```Bash
pip install 'PackageName==1.4'
```

Upgrade an already installed package to an existing version:
```Bash
pip install --upgrade PackageName
```

Bonus: Uninstall a package:
```Bash
pip uninstall PackageName
```

### Venv
Having a virtual environment for any project has some advantages:
1. User owned, so packages can be installed without heightened permissions
2. Packages are venv specific, so different projects can have different package
versions without conflict

That's already enough for me to switch use virtual environments, and I'll be
using one for this series, so it's best to have one to follow along.

To create a virtual environment in your current directory run:
```Bash
python -m venv venv 
```
This command is confusing, but it uses the package venv to create a virtual
environment named venv, the second venv in the command can be changed to be
whatever you want it to be, I have it as venv to keep everything simple.

After running the above command, activate the virtual environment by running

On linux/MacOS:
```
source venv/bin/activate
```

On Windows:
```
venv\Scripts\activate
```

And deactivate the environnemt by typing: `deactivate`

