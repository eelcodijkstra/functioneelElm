#!/usr/bin/env python
# coding: utf-8

# # Polynomen tekenen

# We gaan een programma maken dat een grafiek van een polynoom op het scherm toont. 
# 
# > Als je niet weet wat een polynoom is lees dan de uitleg op: [https://nl.wikipedia.org/wiki/Polynoom](https://nl.wikipedia.org/wiki/Polynoom)

# In het onderstaande venster zie hoe het resultaat eruit komt te zien. Je kunt hiermee experimenteren om te begrijpen wat de bedoeling is.

# In[1]:


get_ipython().run_cell_magic('html', '', '<h3>Polynome drawing</h3>\n<iframe src="http://goloca.org:443/examples/powfuncpointsdraw.elm" width="700" height="450\n"></iframe>')


# ```{margin}
# De *graad* van een polynoom is de hoogste macht van $x$ die voorkomt,
# bijvoorbeeld 2 in het geval van $x^2$.
# ```
# 
# De functie $f(x) = 2x^2 + 3x + 1$ is een voorbeeld van een (tweedegraads) polynoom.
# De getallen $2$, $3$ en $1$ zijn de *coëfficienten* van dit polynoom.
# Als je de getallen `2,3,1` invult in het vakje ("*numbers separated by ,*") krijg je de grafiek van dit polynoom. Als een polynoomterm ontbreekt vul je daarvoor 0 in: de coëfficient is dan 0.
# 
# Het programma toont de grafiek van de polynoom voor $-100 < x < 100$.

# * Vul in het vakje `5` in. Je ziet nu de grafiek voor de functie $f(x)=5$.

# * Vul in het vakje `1,0` in. Je zie nu de grafiek voor de functie $f(x)=x$.

# * Vul in het vakje `1,2` in. Je zie nu de grafiek voor de functie $f(x)=x+2$.

# * Vul in het vakje `1,0,0` in. Je zie nu de grafiek voor de functie $f(x)=x^2$.

# * Vul in het vakje `1,0,-4` in. Je zie nu de grafiek voor de functie $f(x)=x^2 - 4$.

# * Vul in het vakje `1,2,-4` in. Je zie nu de grafiek voor de functie $f(x)=x^2 + 2x  - 4$.

# * Vul nog wat andere waardes in voor a, b en c in en kijk wat er gebeurt. Als je een half wilt invullen moet dat als 0.5 en een tiende als 0.1.
# 
# * Vul vier getallen in en kijk wat er gebeurt. Wat betekent dit?

# In het volgende gedeelte maak je de Elm-hulpfuncties voor het berekenen van een polynoom in een aantal punten. Daarna gebruik je deze hulpfuncties in een Elm-toepassing om het resultaat te krijgen zoals je hierboven ziet.

# In[ ]:




