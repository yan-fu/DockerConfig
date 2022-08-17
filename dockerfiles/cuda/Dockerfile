FROM nvidia/cuda:11.7.1-cudnn8-devel-ubuntu20.04

ENV PATH /opt/conda/bin:$PATH

RUN apt-get update && apt-get install -y --no-install-recommends \
	bzip2 \
	g++ \
	git \
	build-essential \
	wget && rm -rf /var/lib/apt/lists/*

ADD Anaconda3-2022.05-Linux-x86_64.sh /home/anaconda.sh
RUN /bin/bash /home/anaconda.sh -b -p /opt/conda && ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh

ENV LANG en_AU.UTF-8 LC_ALL=en_AU.UTF-8

RUN mkdir /workspace
WORKDIR /workspace

CMD ["/bin/bash"]

