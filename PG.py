from langchain.document_loaders import ReadTheDocsLoader

loader = ReadTheDocsLoader("rtdocs")

docs = loader.load()


print(docs)