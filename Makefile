tag:=3.11

build:
			docker build -t 'python3:$(tag)' --build-arg PYTHON_VER=python$(tag)  .
			docker tag python3:$(tag) jyd119/python3:$(tag)
			docker tag python3:$(tag) jyd119/python3:latest

publish:
			docker tag python3:$(tag) jyd119/python3:$(tag)
			docker push jyd119/python3:$(tag)
			docker tag python3:$(tag) jyd119/python3:latest
			docker push jyd119/python3:latest
