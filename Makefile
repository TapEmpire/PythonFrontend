# first use "source venv/bin/activate"
run:
	python app.py

dev:
	FLASK_ENV=development python app.py

build:
	venv/bin/python build.py

release:
	./_tools/copyToBranch.sh stable

install:
	python3 -m venv venv
	./venv/bin/pip install -r requirements.txt