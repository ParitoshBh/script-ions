## What It Does?

Removes the following files from each directory

- `.json` (image metadata file)
- `.jpg_`
- Edited files using Google's image editor. Usually such files come with names suffixed with `-edited`, `-edit`, `-edi`

## How To Use It

### Requirements

- Tested with Python 3.6.3 (should work with Python 3.6.x releases)

### Running It

1. Clone the repository using `git clone git@github.com:ParitoshBh/script-ions.git`
1. Or Download the repository zip [from here](https://github.com/ParitoshBh/script-ions/archive/master.zip) (and extract)
1. Navigate to the repository directory
1. Open `cleaner.py` file in any text editor and replace the text `PHOTOS PATH GOES HERE` with the absolute path of your google photos directory. Eg. `/home/YOUR_USER/Downloads/takeout-20170922T014548Z-001/Takeout/Google Photos`
1. Run the script by executing `python3 cleaner.py`

_Note that the script should be used with caution. It will permanently delete files and they will not be recoverable_

## Suggestions Are Welcome

If there's something you think should be include as part of this script, then please open an issue here and I will try to include the same as and when I get time! Or better yet, create a PR!