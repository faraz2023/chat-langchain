# Bash script to ingest data
# This involves scraping the data from the web and then cleaning up and putting in Weaviate.
# Error if any command fails
set -e
#wget -r -A.html https://langchain.readthedocs.io/en/latest/
wget --recursive -A.html --no-parent --no-clobber --convert-links --level=5 --timestamping --adjust-extension --html-extension --wait=1 --random-wait --domains=python.langchain.com --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3" https://python.langchain.com/en/latest/

python3 ingest.py
