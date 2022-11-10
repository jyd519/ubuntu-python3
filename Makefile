tag:=3.9

build:
			docker build -t 'python3:3.9'  .

publish:
			docker tag python3:$(tag) jyd119/python3:$(tag)
			docker push jyd119/python3:$(tag)
			docker tag python3:$(tag) jyd119/python3:latest
			docker push jyd119/python3:latest
