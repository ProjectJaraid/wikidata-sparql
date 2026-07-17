---
title: "SPARQL queries for Project Jarāʾid"
subtitle: "List of linked queries and screenshots of their results"
description: |
   SPARQL for querying Wikidata for mostly Arabic periodicals
date: 2026-07-16
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
      - Writing -- original draft
      - Writing -- review & editing
institute:
  - hu: Humboldt-Universität zu Berlin
  - nfdi: NFDI4Memory 
status: published
lang: en
tags:
  - Project Jarāʾid
  - Wikidata
  - SPARQL
---

Queries are largely modularised, which allows for some plug-and-play approach in chaining modules together. The language of results will depend on your operating system's language. 
Most queries are far too long for Wikimedia's link shortener, which is otherwise a great option for sharing due to the human-readability of the short links. But all non-ASCII characters have to be URL-encoded and the link shortener enforces a limit of 2.000 characters. I had therefore originally submitted almost all queries to the [query chest service](https://query-chest.toolforge.org/). However, as I should have known, shortened links are particularly prone to link rot and Query Chest has seemingly flushed its caches at some point in mid-July 2026. I have therefore reverted to linking full URLs despite them being extremely long and cumbersome.


## basic tables

1. All Arabic periodicals published before 1930, including information on holdings and digitised copies
    - [SPARQL query][rq:periodicals-lang_ar-basic]
    - [![All Arabic periodicals published before 1930, including information on holdings and digitised copies](../assets/img/periodicals-lang_ar-basic.png)][rq:periodicals-lang_ar-basic]
2. [Arabic periodicals, ranked by number of collections][rq:count-collections]. Note that one can easily switch to a bubble graph with the left-hand menu.
3. [Arabic periodicals, ranked by number of digitised collections][rq:periodicals-lang_ar-digitised-count]

## Maps

Maps with cluster markers for publication locations of periodicals published before 1930

1. Map of all Arabic periodicals
    - [SPARQL query][rq:periodicals-lang_ar-basic-disp_map]
    - [![](../assets/img/periodicals-lang_ar-basic-disp_map.png)][rq:periodicals-lang_ar-basic-disp_map]
2. Map of all Ottoman periodicals 
    - [SPARQL query][rq:periodicals-lang_ota-basic-disp_map]
    - [![](../assets/img/periodicals-lang_ota-basic-disp_map.png)][rq:periodicals-lang_ota-basic-disp_map]

### Historical stages of the data set


1. Map of all periodicals (items created before 18 March 2024)
    - [SPARQL query][rq:map-periodicals-all-2024-03-18-cluster]
    - [![Map of all periodicals (items created before 18 March 2024)](../assets/img/wikidata-map_periodicals-all-2024-03-18_markercluster.png)][rq:map-periodicals-all-2024-03-18-cluster]
2. Map of all Arabic periodicals (items created before 18 March 2024)
    - [SPARQL query][rq:map-periodicals-ar-2024-03-18-cluster]
    - [![Map of all Arabic periodicals (items created before 18 March 2024)](../assets/img/wikidata-map_periodicals-arabic-2024-03-18_markercluster.png)][rq:map-periodicals-ar-2024-03-18-cluster]
3. Map of all Arabic periodicals (items created until 8 August 2024)
    - [SPARQL query][rq:map-periodicals-ar-2024-08-08-cluster]
    - [![Map of all Arabic periodicals (items created until 8 August 2024)](../assets/img/wikidata-map_periodicals-arabic-2024-08-08_markercluster.png)][rq:map-periodicals-ar-2024-08-08-cluster]

## timelines

1. Timeline of all periodicals published in pre-Nakba Palestine
    - [SPARQL query][rq:palestine-1948_periodicals_timeline]
    - [![Timeline of all periodicals published in pre-Nakba Palestine](../assets/img/palestine-1948_periodicals_timeline.png)][rq:palestine-1948_periodicals_timeline]

## counts

Simple counts for documentary purposes

1. [All periodicals on Wikidata (items created before 18 March 2024)][rq:count-periodicals-all-2024-03-18]
2. [Arabic periodicals on Wikidata (items created before 18 March 2024)][rq:count-arabic-periodicals-2024-03-18]
3. [Arabic periodicals on Wikidata (items created before 8 August 2024)][rq:count-arabic-periodicals-2024-08-08]
4. Count of digitised collections for each Arabic periodical
    - [SPARQL query][rq:periodicals-lang_ar-digitised-count]
    - [![Table of digitised collections](../assets/img/periodicals-lang_ar-digitised-count.png)][rq:periodicals-lang_ar-digitised-count]


## publication languages

1. Bubble chart of publication languages
    - [SPARQL query][rq:languages-disp_bubble]
    - [![Bubble chart of publication languages](../assets/img/languages-disp_bubble.png)][rq:languages-disp_bubble]
2. Map of periodicals in the publication languages of the Eastern Mediterranean, with layers for languages
    - [SPARQL query][rq:periodicals-layers_languages-disp_map]
    - [![](../assets/img/periodicals-layers_languages-disp_map.png)][rq:periodicals-layers_languages-disp_map]
3. Map of periodicals without a publication language
    - [SPARQL query][rq:periodicals-filter_missing-lang]
    - [![](../assets/img/periodicals-filter_missing-lang.png)][rq:periodicals-filter_missing-lang]

### Historical stages of the data set

1. Bubble chart of publication languages (items created before 18 March 2024). Note the surprising prominence of Swedish.
    - [SPARQL query][rq:bubble-lang-2024-03-18]
    - [![Bubble chart of publication languages (items created before 18 March 2024). Note the surprising prominence of Swedish.](../assets/img/wikidata-bubble_periodicals-languages-2024-03-18.png)][rq:bubble-lang-2024-03-18]
2. Bubble chart of publication languages (items created before 8 August 2024). Note the surprising prominence of Swedish.
    - [SPARQL query][rq:bubble-lang-2024-08-08]
    - [![Bubble chart of publication languages (items created before 8 August 2024). Note the surprising prominence of Swedish.](../assets/img/wikidata-bubble_periodicals-languages-2024-08-08.png)][rq:bubble-lang-2024-08-08]


## holdings / collections

1. Bubble graph of collections of Arabic periodicals. Note the surprising prominence of the Internet Archive!
    - [SPARQL query][rq:holdings_periodicals-lang_ar-disp_bubble]
    - [![](../assets/img/holdings_periodicals-lang_ar-disp_bubble.png)][rq:holdings_periodicals-lang_ar-disp_bubble]
2. Map of Arabic periodicals with kown holdings. Periodicals are mapped to the location of the holding institution. 
    - [SPARQL query][rq:holdings_periodicals-lang_ar-disp_map]
    - [![](../assets/img/holdings_periodicals-lang_ar-disp_map.png)][rq:holdings_periodicals-lang_ar-disp_map]
3. Map of Arabic periodicals with known holdings.
    - [SPARQL query][rq:periodicals-lang_ar-holdings-disp_map]
    - [![](../assets/img/periodicals-lang_ar-holdings-disp_map.png)][rq:periodicals-lang_ar-holdings-disp_map]
4. List of Arabic periodicals with a single known holding. Of importance if you had the resources for digitisation.
    - [SPARQL query][rq:periodicals-lang_ar-holdings-filter_count-1]
5. Map Arabic periodicals in a specific holding (e.g. AUB's Jafet Library)
    - [SPARQL query][rq:periodicals-lang_ar-filter_collection-aub-disp_map]
    - [![Map of Arabic periodicals in AUB's Jafet Library](../assets/img/periodicals-lang_ar-filter_collection-aub-disp_map.png)][rq:periodicals-lang_ar-filter_collection-aub-disp_map]


## editors

1. Images of editors of Arabic periodicals found on WikiCommons
    - [SPARQL query][rq:editors-disp_imagegrid]
    - [![](../assets/img/editors-disp_imagegrid.png)][rq:editors-disp_imagegrid]
2. Gender and age of editors at the first year of publication
    - [SPARQL query][rq:editors-filter_age]
3. Social network of editors and their relatives.
    - [SPARQL query][rq:editors-social-network-disp_graph]
    - [![](../assets/img/editors-social-network-disp_graph_detail.png)][rq:editors-social-network-disp_graph]

## front pages

1. Network of front pages, locations and publication languages
    - [SPARQL query][rq:periodicals-lang_ar-image-disp_graph]
    - [![](../assets/img/periodicals-lang_ar-image-disp_graph.png)][rq:periodicals-lang_ar-image-disp_graph]

## dimensions

1. Basic table for periodicals with known dimensions
    - [SPARQL query][rq:periodicals-lang_ar-dimensions]

## geographic regions
### Palestine
### Levant

![Map of newspapers published in the Eastern Mediterranean during the summer of 1910, [SPARQL query][rq:map-levant-1910-06].](../assets/img/wikidata-map_periodicals-bilad-al-sham-1910-06-15.png)

![Map of newspapers published in the Eastern Mediterranean during the summer of 1910 with known holdings, [SPARQL query][rq:map-levant-1910-06-holdings].](../assets/img/wikidata-map_periodicals-bilad-al-sham-1910-06-15_holdings.png)

![Map of newspapers published in the Eastern Mediterranean during the summer of 1910 with digitised copies, [SPARQL query][rq:map-levant-1910-06-digitised].](../assets/img/wikidata-map_periodicals-bilad-al-sham-1910-06-15_digitised.png)


## external IDs

These can be used for further queries to external APIs

1. Hathi IDs: [SPARQL query][rq:periodicals-lang_ar-filter_ids-hathi]
    - can be used to query HathiTrust for copies via `https://catalog.hathitrust.org/api/volumes/full/recordnumber/{ID}.json`
2. OCLC IDs: [SPARQL query][rq:periodicals-lang_ar-filter_ids-oclc]
    - can be used to query HathiTrust for copies via `https://catalog.hathitrust.org/api/volumes/full/oclc/{ID}.json`

