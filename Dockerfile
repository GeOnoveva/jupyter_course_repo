# based on ctb/2016-mybinder-irkernel
FROM andrewosh/binder-base

USER root

# Add R dependencies
RUN apt-get update
RUN apt-get install -y r-base libzmq3-dev r-cran-nlme r-cran-vegan

COPY install-irkernel.R /home/install-irkernel.R

RUN R --no-save < /home/install-irkernel.R
USER main
