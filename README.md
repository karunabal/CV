# CV

This repository keeps the current source of truth for Karthi Arunachalam's CV and active tailored applications.

## Structure

- `master/CV_full.tex`: canonical full CV with all current material.
- `master/CV_full.pdf`: compiled full CV.
- `templates/karthicv-single.cls`: shared LaTeX class used by CV files.
- `applications/2026-02-26-carbonthirteen/`: current tailored CarbonThirteen application.
- `certificates/`: current supporting certificates/transcripts.

## Workflow

Create tailored CVs from `master/CV_full.tex`, keep only the final source and submitted PDF for each active application, and avoid committing LaTeX build artifacts.

Compile the master CV:

```sh
cd master
pdflatex CV_full.tex
```

Compile the CarbonThirteen CV:

```sh
cd applications/2026-02-26-carbonthirteen
pdflatex CV.tex
pdflatex CL.tex
```

Keep `application.pdf` as the final submitted package when a combined PDF is needed.
