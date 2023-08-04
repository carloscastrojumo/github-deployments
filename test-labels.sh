#!/bin/bash

labels="[
    {
      "color": "ededed",
      "default": false,
      "description": null,
      "id": 5809623738,
      "name": "deploy-dev",
      "node_id": "LA_kwDOKDRsx88AAAABWkfSug",
      "url": "https://api.github.com/repos/carloscastrojumo/github-deployments/labels/deploy-dev"
    }
  ]"


if [[ -n $(echo $labels | sed -i '' 's/]"/\]\\'/' | jq -c '.[] | select(.name | contains ("deploy-")) | .name') ]]; then
  echo "Found deploy label"
else
  echo "Did not find deploy label"
fi

"[
    {
      "color": "ededed",
    }
]"
