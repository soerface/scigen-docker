FROM perl:5.10

RUN apt-get update
RUN apt-get install -y gnuplot texlive
RUN apt-get install -y inkscape

COPY scigen /usr/src/scigen
WORKDIR /usr/src/scigen
RUN mkdir -p /opt/scigen/out/
ENTRYPOINT ["perl", "-I.", "./make-latex.pl", "--savedir", "/opt/scigen/out/"]
