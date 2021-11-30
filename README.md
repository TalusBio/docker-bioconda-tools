# A Docker image for our commonly used Bioconda packages

This Docker image contains the Bioconda packages that we use regularly in our
[NextFlow](https://nextflow.io) proteomics pipelines. It maintains strict
version control of:

- [Comet](https://uwpr.github.io/Comet/)
- [mokapot](https://mokapot.readthedocs.io)
- [ThermoRawFileParser](https://github.com/compomics/ThermoRawFileParser)
- [Python](https://www.python.org/)

It also details minimum versions for common data science and utility packages:

- [spectrum_utils](https://spectrum-utils.readthedocs.io)
- [NumPy](https://numpy.org)
- [Pandas](pandas.pydata.org/)
- [Matplotlib](https://matplotlib.org/)
- [seaborn](seaborn.pydata.org/)
- [Scikit-Learn](scikit-learn.org/)

All of this makes for a large, but manageable Docker image.

## Try it:

``` sh
docker pull ghcr.io/talusbio/bioconda-tools:latest
```

