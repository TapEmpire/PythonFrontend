run:
	python app.py

dev:
	FLASK_ENV=development python app.py

install:
	pip install -r requirements.txt