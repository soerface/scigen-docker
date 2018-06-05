[![Build status](https://travis-ci.org/soerface/scigen-docker.svg?branch=master)](https://travis-ci.org/soerface/scigen-docker/)

# SCIGen

This repository contains the sourcecode from https://github.com/strib/scigen.
It extends the original work by putting everything inside docker, making scigen
accessible for everyone.

## Usage

    docker run -it --rm -v "$PWD":/opt/scigen/out/ soerface/scigen

In the current directory, a file `paper.pdf` will appear.

Help for command line options:

    docker run -it --rm -v "$PWD":/opt/scigen/out/ soerface/scigen --help


    Options:

        --help                    Display this help message
        --author <quoted_name>    An author of the paper (can be specified 
                                  multiple times)
        --seed <seed>             Seed the prng with this. Must be a number.
        --tar  <file>             Tar all the files up
        --remote                  Use a daemon to resolve symbols
        --talk                    Make a talk, instead of a paper
        --title <title>           Set the title (useful for talks)
        --sysname <name>          Set the system name
