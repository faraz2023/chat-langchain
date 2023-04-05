.PHONY: start
start:
	uvicorn main:app --reload --port 12000

.PHONY: format
format:
	black .
	isort .