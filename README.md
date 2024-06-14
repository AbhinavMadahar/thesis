# Finding Adam

_Advancing Commonsense Reasoning as a Potential Step towards Artificial General Intelligence, Artificial General Superintelligence, and Artificial Consciousness_

_Author: Abhinav Madahar <abhinavmadahar@gmail.com>_

## Navigating this repository

Please consult this table to match your desire with the appropriate directory:

| Desire                                | Directory          |
|---------------------------------------|--------------------|
| Read my thesis                        | `thesis`           |
| Re-run my experiments or view my data | `experiment`       |
| Verify my data analyses               | `analysis`         |
| Check out my research ideas           | `idea`             |
| Read my thesis proposal               | `proposal`         |
| Read the reports sent to my committee | `committee-report` |
| Use libraries which I create          | `libary`           |

My thesis is written in XeLaTex and must be built with a compiler which supports it; if you try to build my thesis with `pdflatex`, then it will fail.
The code which runs my thesis is written in Python 3, and I use PyTorch.
The required packages are stored in `requirements.txt`.
Data is stored in JSON.

All of the work in my thesis is built using a single Makefile.
To build a particular entity, consult the following table; e.g. to build my thesis document, you would run `make thesis`.

| Entity                                                                 | Make target                                  |
|------------------------------------------------------------------------|----------------------------------------------|
| Everything                                                             | `all` (this is the default target)           |
| My thesis document                                                     | `thesis`                                     |
| All the experiments                                                    | `experiment`                                 |
| A particular experiment                                                | `experiment--<experiment id>`                |
| All the analyses                                                       | `analysis`                                   |
| A particular analysis                                                  | `analysis--<analysis id>`                    |
| All the libraries                                                      | `library`                                    |
| A particular library                                                   | `library--<library id>`                      |

Each experiment and each analysis has its own Python virtual environment.
This is by necessity; by the time I finish my thesis, the most recent code will have been written years after the oldest code, so there would likely be version incompatibilities.

An experiment uses a script, `experiment.py`, to generate data, which is stored in its `data` directory.
The `data` directory contains several directories, each containing the data gained from a particular trial; the data from the $n^\text{th}$ trial (0-indexed) is kept in the `trial-n` directory.
The `data` directory always includes a `trial.json` file and may also contain other files, such as CSV files containing data.
The `trial.json` file always includes at least the following keys:

| Key        | Content                                                   |
|------------|-----------------------------------------------------------|
| `title`    | the title of the experiment                               |
| `time`     | the date and time when this trial of the experiment began |
| `duration` | how long it took to run the experiment in this trial      |

An analysis uses a Jupyter file, `analysis.ipynb`, to generate findings, which are stored in its `findings` directory.
The `findings` directory always contains a `findings.json` file which gives information about the findings.
Analyses may generate CSV files or images and other rich media files; if this occurs, then they are stored in the analysis' `findings` directory.
The `findings.json` file always contains at least the following keys:
Note that, because analyses are assumed to consider all trials of an experiment, only one trial of an analysis is kept.

| Key        | Content                                                 |
|------------|---------------------------------------------------------|
| `title`    | the title of the analysis                               |
| `time`     | the date and time when this run of the analysis began   |
| `duration` | how long it took to run the analysis in this run        |
