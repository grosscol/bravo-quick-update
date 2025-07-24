---
---

# eQTL

Freeze 1 data live on production site

## Data Processed via Nextflow

modular compositions of processes that are called like functions

```nf
workflow susie_eqtl {
  analysis_type = "susie"
  susie_tsv     = channel.fromPath("${params.susie_eqtl_glob}")
  susie_headers = channel.of(params.susie_fields).collect()
  fields        = params.susie_fields
  types         = params.susie_types

  validate_header(susie_tsv, susie_headers)
  munge_files(susie_tsv, analysis_type)
  merge_files(munge_files.out.collect(), 
              analysis_type, fields, types)
}
```

## Visualization in a Vue Component.
Table with information about each eQTL

```html
<template>
<div class="child-component">
  <div ref="eqtltable" class="table-sm"></div>
</div>
</template>

<script>
import Tabulator from 'tabulator-tables'
export default {
 name: "EqtlSusieTable"
}
</script>
```
