---
title: "Readme"
author: Till Grallert
date: 2025-05-19 
lang: en
tags:
  - Project Jarāʾid
  - Wikidata
  - SPARQL
  - Periodical Studies
---

This repository contains a set of SPARQL queries for querying Wikidata for periodicals. Formal documentation is sorely missing, but the workflow and tool chain has been described in some detail in <https://doi.org/10.5281/zenodo.14112647>.

Queries are largely modularised, which allows for some plug-and-play approach in chaining modules together.

# General workflow

1. Select the basic data set

```sparql
PREFIX medium: <http://www.wikidata.org/entity/Q1002697>    # set a publication type: periodicals (wd:Q1002697), newspapers (wd:Q11032)
SELECT DISTINCT 
    *
# all periodicals before the date of interest
WITH {
  SELECT DISTINCT
    ?periodical ?dateOnset
  WHERE {
    VALUES ?dateOfInterest {"1910-06-01"^^xsd:dateTime }. # set a date of interest
    ?periodical wdt:P31/wdt:P279* medium: ;              # limit to medium
              (wdt:P571 | wdt:P580) ?dateOnset.
    ?periodical wdt:P407/wdt:P279* wd:Q13955.            # limit by publication language (Arabic = Q13955)
    FILTER(?dateOnset < ?dateOfInterest).                # published before a specific date
  }
  ORDER BY ?dateOnset
  LIMIT 4000
} as %periodicals
```

2. Retrieve additional information

# FILTERS
## Dates

- with data type:
    - `FILTER(?dateOnset < "1930-01-01"^^xsd:dateTime)`
- without data type but additional functions
    - `FILTER( YEAR(?dateOnset) < 1930)`
    - `FILTER( YEAR(COALESCE(?dateInception, ?dateStart)) < 1930).`

# Maps

1. Get locations: `?periodical (wdt:P291|wdt:P159|wdt:P276|wdt:P495|wdt:P131 ) ?pubPlace.`
2. Get coordinates `?pubPlace wdt:P625 ?coords`
3. Get geoshape `?pubPlace wdt:P3896 ?geoshape`
4. Options: #defaultView:Map{"hide":["?coords"], "markercluster": "true"}