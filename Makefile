run:
	python app.py

dev:
	FLASK_ENV=development python app.py

install:
	python3 -m venv venv
	./venv/bin/pip install -r requirements.txt