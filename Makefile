.PHONY: start
start:
	uvicorn main:app --reload --port 9003

.PHONY: format
format:
	black .
	isort .