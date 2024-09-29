FROM nvcr.io/nvidia/jax:24.04-py3

RUN apt-get update
RUN apt-get install -y gedit
RUN apt-get install -y '^libxcb.*-dev' libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev libxkbcommon-dev libxkbcommon-x11-dev
RUN pip3 install PyQt5

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y libqt5gui5
RUN apt-get install -y texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra dvipng cm-super
RUN apt install -y vim

RUN pip3 install gym
RUN pip3 install pandas
RUN pip3 install seaborn
RUN pip3 install matplotlib
RUN pip3 install imageio
RUN pip3 install control
RUN pip3 install tqdm
RUN pip3 install tyro
RUN pip3 install meshcat
RUN pip3 install sympy
RUN pip3 install gymnax
RUN pip3 install jax
RUN pip3 install distrax
RUN pip3 install gputil
RUN pip3 install jaxopt 

