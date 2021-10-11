docker build -t corefinder/app-build .
docker run -d -p 138.197.178.132:5000:5000 corefinder/app-build
