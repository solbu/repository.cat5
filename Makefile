all:

repo:
	./create_repository.py https://github.com/Cat5TV/plugin.video.category5 repository.cat5 --datadir=repo/

publish:
	rsync -avh --progress --stats repo/ solbu@login.solbu.lan:websider/solbu.net/www_docs/cat5-repo/
