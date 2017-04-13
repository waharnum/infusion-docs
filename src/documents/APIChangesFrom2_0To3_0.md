---
title: API Changes from 2.0 to 3.0
layout: default
category: Infusion
---

This page contains a list of the features, APIs, and etc. that have changed in Infusion 3.0.

## Framework Changes ##

### Core Framework Changes ###

This section describes major APIs that were in common use. For information about less widely-used features removed in 3.0, consult [Deprecations in 2.0](DeprecatedIn2_0.md).


### Preferences Framework ###

#### Panel Changes ####

##### Message Bundle Keys #####

###### Additions ######

* speak.json
  * `"switchOn"`
  * `"switchOff"`
* tableOfContents.json
  * `"switchOn"`
  * `"switchOff"`

###### Changes ######

<table>
    <thead>
        <tr>
            <th>Message Bundle</th>
            <th>In 3.0.0</th>
            <th>In 2.0.0</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan="2">speak.json</td>
            <td><code>"label"</code></td>
            <td><code>"speakLabel"</code></td>
        </tr>
        <tr>
            <td><code>"description"</code></td>
            <td><code>"speakDescr"</code></td>
        </tr>
        <tr>
            <td rowspan="2">tableOfContents.json</td>
            <td><code>"label"</code></td>
            <td><code>"tocLabel"</code></td>
        </tr>
        <tr>
            <td><code>"description"</code></td>
            <td><code>"tocDescr"</code></td>
        </tr>
    </tbody>
</table>