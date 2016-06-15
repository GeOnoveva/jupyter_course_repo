# based on ctb/2016-mybinder-irkernel

install.packages(c('rzmq', 'repr', 'IRkernel', 'IRdisplay', 'raster'),
                 repos = c('http://irkernel.github.io/',
                           'http://cran.us.r-project.org'))

IRkernel::installspec()
