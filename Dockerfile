# OS image 
FROM ubuntu:14.04
EXPOSE 5000
# install
RUN \
	apt-get update && \
	apt-get install -y build-essential python-dev python-pip && \
	apt-get install -y byobu curl git htop man unzip vim wget && \

PORTS  

RUN \
	cd ~ && \
	git clone https://github.com/ducminhnguyen/python-server-template && \
	cd python-server-template && \
	sudo pip install -r ./requirements.txt && \
	python main.py


# add path

CMD ["bash"]