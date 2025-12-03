---
title: "SPARQL queries for Project Jarāʾid"
subtitle: "Readme"
description: |
   SPARQL for querying Wikidata for mostly Arabic periodicals
date: 2025-12-02
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

Documentation of queries can be found [here](docs/queries.md). A list of queries is provided in a [separate file](docs/queries_list.md).