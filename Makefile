all:

repo:
	./create_repository.py https://github.com/Cat5TV/plugin.video.category5 repository.cat5 --datadir=../repo/

publish:
	rsync -avh --progress --stats ../repo/ user@example.net:public_html/cat5-repo/
