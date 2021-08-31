# class-template

Template for class repositories

## Summary

This template facilitates writing up assignments using LaTeX. Each assignment
should get its own directory in which the LaTeX building template should be
copied. The bash script `add-dir` simplifies this process. For instance, to
create a place in which to write up your first assignment, do
```bash
$ ./add-dir hw1
```
This will create a new directory called `hw1`. Its contents are as follows
```
hw1
  - Dockerfile
  - Makefile
  - run
  - src/
    - hw.tex
    - figures/
```

When using the template for the first time, you will first need to build the
docker image. The makefile has a target called `build` that facilitates this.
Your homework lives under `hw1/src/hw.tex`. After making edits, execute `make`
or `make hw` (the default target) to generate a PDF file which will be produced
at the top of the `hw1` directory.
