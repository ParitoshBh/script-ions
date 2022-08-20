import os
import errno
from pathlib import Path

p = Path('PHOTOS PATH GOES HERE')

disallowed_extensions = ['.json', '.jpg_']
disallowed_suffix = ['-edited', '-edit', '-edi']

for dir in p.iterdir():
	subDir = Path(dir)

	try:
		subDir.rmdir()
		print(str(subDir) + ' directory deleted!')
	except OSError as err:
		if err.errno == errno.ENOTEMPTY:
			print('Directory not empty. Scanning ' + str(dir) + ' directory...')

			for file in subDir.iterdir():
				file_name = os.path.splitext(os.path.basename(file))[0]
				extension = os.path.splitext(file)[1]
				if extension in disallowed_extensions or file_name.endswith(tuple(disallowed_suffix)):
					os.remove(file)
					print('Deleted ' + str(file))
					#exit()
				else:
					#print(file)
					pass

	#exit()
