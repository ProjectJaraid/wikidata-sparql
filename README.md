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

Most queries are far too long for Wikimedia's link shortener for sharing. I have therefore submitted many to the [query chest service](https://query-chest.toolforge.org/). A list of queries is provided below.

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

# Queries on query chest

[rq:publications-transliterated-title]: https://query-chest.toolforge.org/redirect/dSZmMD4FSCeucOakcKCuKkYSg6wo8GCeyO8YqugMe2z 

[rq:periodicals-holdings-2024-03-18]: https://query-chest.toolforge.org/redirect/eKwMLGU9oGqiEqCI2OUqKw2uy60KoKscqQgsWmwcaU6 

[rq:arabic-periodicals-images]: https://query-chest.toolforge.org/redirect/nNIwitQHCq02U4Ww8MwIGS4EcY4y6qCO2uOWqGwWoGU 

## counts

[rq:count-arabic-periodicals-2024-03-18]: https://query-chest.toolforge.org/redirect/oYNezk1fgs8UQyCQoKsSemEiWu6oiWSAq0As6k2QISv 

[rq:count-periodicals-all-2024-03-18]: https://query-chest.toolforge.org/redirect/BGlKl7mq24UyuaKyESSwQMYUS4S2qgwgUg4OuuOYksf 

[rq:count-arabic-periodicals-2024-08-08]: https://query-chest.toolforge.org/redirect/eO3ox4S9FwUeY24gs24CU6OOqiI0WiYKiEKmggM46sn 

[rq:count-collections]: https://query-chest.toolforge.org/redirect/wnhAUtiqI4MQyW0MOsqAyOqOwSuE6iSUcU28oCUAqkY 

[rq:count-digitised]: https://query-chest.toolforge.org/redirect/JwwYdMXGLosUGeSKCucwckW0gMmEqAY2Uosa2MiMYev

## Bubble charts

[rq:bubble-lang-2024-03-18]: https://query-chest.toolforge.org/redirect/dMk3vPTaZkuiqe804Wqeqkmi8SooO260qSCmAG08MI7 

[rq:bubble-lang-2024-08-08]: https://query-chest.toolforge.org/redirect/26dFDncq2WMkmei8eg26qwISOKyMAmioq6Co8WwUIKQ 

## Maps

[rq:map-periodicals-all-2024-03-18-cluster]: https://query-chest.toolforge.org/redirect/8K4bVhyOmm6seAwkmiIqsGEEY4yCooU6YMGsKSYQ2Eb 

[rq:map-periodicals-all-2024-08-08-cluster]: https://query-chest.toolforge.org/redirect/mYSKHVP1qQamkCeYQmSsKMWMGwg266UqEayEcYwgUy7 

[rq:map-periodicals-ar-2024-03-18-cluster]: https://query-chest.toolforge.org/redirect/LAwIgT9wqucyaW0mCQ0Ms2uKGUmygM6mwcSIuKKKyc0 

[rq:map-periodicals-ar-2024-08-08-cluster]: https://query-chest.toolforge.org/redirect/obqUZJy6sY448EAesSQSaW80kAsYucuIiE8sO8kY2Gd 

[rq:map-periodicals-ota-2024-08-01-cluster]: https://query-chest.toolforge.org/redirect/7c5YPWykbICAWcWaAYqYwMqEo6qUaaou0WaIugIqGYu

[rq:map-periodicals-ota-cluster]: https://query-chest.toolforge.org/redirect/wLTnRa9d2GceWkacK6Ek8uSUaWIGaamSsqe8C6kaMCI 

[rq:map-levant-1910-06]: https://query-chest.toolforge.org/redirect/v8e8UlL8s2gM46Ieou4UeMOimUSsyUS40uso0OAaIUL 

[rq:map-levant-1910-06-holdings]: https://query-chest.toolforge.org/redirect/W5asaV1sTwmMoAogKO8ckaoOgyIGU2Aq8QSQKWYkcSS 

[rq:map-levant-1910-06-digitised]: https://query-chest.toolforge.org/redirect/ZtdJnjhGtM4SGUks2GEYwcAmwKGeCmS8icSua0ISkwW 

### Palestine

[rq:palestine-1948_periodicals_map]: https://query-chest.toolforge.org/redirect/WSB7DBbD7oYkIU2k8KoksQkaauOu8ew8cEOs4CCyCID

[rq:palestine-1948_periodicals-holdings_map]: https://query-chest.toolforge.org/redirect/FastY9YqoKky0AAggWsk4mMeQW284SIOkIGGiEEMQKd

[rq:palestine-1948_periodicals-holdings_map-collection]: https://query-chest.toolforge.org/redirect/Bsfc1wk38K2WEaQk84qGkyeOkggEea8kGuSMqgGOEU1

[rq:palestine-1948_periodicals-digitised_map]: https://query-chest.toolforge.org/redirect/aDYfGc5U3MCeOaWIg0OcKoYK2MMweuiOo8KGA26yOib


