FROM perl:5.32-slim-buster

RUN apt-get update && apt-get install -y \
    gnuplot texlive inkscape \
    && rm -rf /var/lib/apt/lists/* && \
    mkdir -p /opt/scigen/out/

COPY scigen /usr/src/scigen

WORKDIR /usr/src/scigen

CMD ["perl", "./make-latex.pl", "--file", "/opt/scigen/out/paper.pdf"]
