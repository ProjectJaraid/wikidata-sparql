---
title: "SPARQL queries for Project Jarāʾid"
subtitle: "Readme"
description: |
   SPARQL for querying Wikidata for mostly Arabic periodicals
date: 2026-07-15
author: 
  - name: Till Grallert
    institute: 
      - hu
      - nfdi
    correspondence: "yes"
    email: till.grallert@hu-berlin.de
    orcid: 0000-0002-5739-8094 
    roles: # CRediT-Roles - see https://credit.niso.org/
      - Conceptualization
      - Supervision
      - Software
      - Writing -- original draft
      - Writing -- review & editing
institute:
  - hu: Humboldt-Universität zu Berlin
  - nfdi: NFDI4Memory 
priority: 1    # value from 1 (low) to 5 (high)
urgency: 1     # value from 1 (low) to 5 (high)
type: code  # writing, code, or data
status: published
lang: en
markdown: pandoc
tags:
  - Project Jarāʾid
  - Wikidata
  - SPARQL
  - Periodical Studies
---

This repository contains a set of SPARQL queries for querying Wikidata for periodicals. Formal documentation is sorely missing, but the workflow and tool chain has been described in some detail in <https://doi.org/10.5281/zenodo.14112647>.

# This repo
## structure

<!-- Wo liegt was in diesem Repo -->

```plain
.
├── assets/           # screenshots
├── docs/             # documentation
├── queries/          # folder with SPARQL queries
├── subqueries/       # folder for routines and sub queries
├── CITATION.md       # how to cite
├── CONTRIBUTING.md
└── README.md         # this file
```

# Queries

All queries are provided in two forms:

1. the actual SPARQL query. These files end in `.rq`.
2. the URL for the embedded SPARQL query to executed on load on the Wikidata SPARQL endpoint. These files end in `.txt`. They are necessitated by a character limit in Wikidata's link shortener of 2000 characters and the volatility of <https://query-chest.toolforge.org/.

The general documentation of the SPARQL queries in this repository can be found [here](docs/queries.md). A list of queries, including screenshots of the results, is provided in a [separate file](docs/queries_list.md).