## Setup

1. Install python2.7 (Ubuntu 16.04 comes with python 3 out of the box) and Pip
```
sudo apt-get install -y python2.7 python-pip
```

1. Use Pip to install virtualenv
```
sudo pip install -U virtualenv (-U updates it if the package is already installed)
```

1. Go to Projects directory, clone this repo

1. Create a python virtual environment
```
virtualenv .venv

# Enable the virtual environment
source .venv/bin/activate
```

1. Install pip inside that virtual environment
```
pip install ansible
```

[Reference page](https://serversforhackers.com/c/an-ansible2-tutorial) 