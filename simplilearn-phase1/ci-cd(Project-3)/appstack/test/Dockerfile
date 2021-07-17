FROM corefinder/automation-runner:latest

ADD . test/
WORKDIR /test
RUN chmod +x test.sh
ENTRYPOINT ["/bin/bash"]