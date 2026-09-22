# Advanced R Lab3 Package
Implement Euclidean GCD and Dijkstra shortest-path algorithm.
## vesion 0.1.0

## 1. Projection Structure
```text
lab3advr/
├── DESCRIPTION
├── NAMESPACE
├── README.md
├── LICENSE
├── LICENSE.md
├── lab3advr.Rproj
├── .gitignore
├── .gitlab-ci.yml
├── R/
│   ├── euclidean.R
│   ├── dijkstra.R
│   └── data.R
├── man/
│   ├── gcd.Rd
│   ├── dijkstra.Rd
│   └── wiki_graph.Rd
└── tests/
    ├── testthat.R
    └── testthat/
```
## 2. Purpose and Functionality
This R package is created for Advanced R Lab 3 assignment.
#### It implements two core algorithms in pure R:
#### 2.1 Euclidean algorithm to calculate the greatest common divisor (GCD) of two integers
#### 2.2 Dijkstra’s algorithm for the shortest path problem on weighted graphs

Features:
- Input validation inside functions
- Clean output for algorithm results
- Designed for lab learning and demonstration

## 3. License 
This project is licensed under the MIT License.
See the [LICENSE](https://gitlab.liu.se/qiayu183/lab3advr/-/blob/main/LICENSE?ref_type=heads) file for full terms.

## 4. Pipeline status 
- [pipeline status](https://gitlab.liu.se/qiayu183/lab3advr/-/pipelines)\
- note: we also test GitHub Actions (https://github.com/wenli420/lab3compare/actions).

## 5. Installation
#### devtools::install_git("https://gitlab.liu.se/qiayu183/lab3advr.git")


## 6. Run example
library(lab3advr)\
euclidean(100,1000)

## 7. Issues
- CI pipeline was not triggered after push
- CI failed:remotes package missing inside the container
- Unwant files were included in R package build
- Dependency management in DESCRIPTION
- Deprecated context() warning in testhat
- Devtools::document() notice quotes cause document() errors.
- Switching remotes requires detaching the previous one first.


