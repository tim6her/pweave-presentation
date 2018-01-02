---
title: Test presentation
subtitle: using `pweave`
author: Tim B. Herbstrith
date: 28 April 2017
keywords: [pweave, plot.ly, data visualisation]
description: >
  This is a minimal example of a pweave presentation with plot.ly diagrams.
---

# My sample presentation

## Here's a code example.

### Let's start with some code

Okay

## Next slide

I don't know what I should write.

```python
import matplotlib.pyplot as plt
plt.plot([1, 2, 4, 5, 1, 0])
plt.show()
```

Let's go.

# Second Header

## Do you work now?

```python
x = 2
x**2
```

Ha ha, the value is <%= x %>

## And now for a diagramm

``` python

import plotly
import plotly.graph_objs as go

data = [{"x": [1, 2, 3], "y": [3, 1, 6]},
        {"x": [1, 2, 3], "y": [2, 0, 7]}]

layout = go.Layout(
    autosize=False,
    width=800,
    height=500,
    margin=go.Margin(
        l=50,
        r=50,
        b=100,
        t=100,
        pad=4
    )
)

fig = go.Figure(data=data, layout=layout)

print(plotly.offline.plot(fig,
                    include_plotlyjs=False,
                    show_link=False,
                    output_type='div'))
```
