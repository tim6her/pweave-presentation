revealjs:
	cp -R include/* build/
	cp test.py.md index.pmd
	sed -i -e 's/```python/```{python,echo=False,width="50\%"}/g'  index.pmd
	sed -i -e 's/``` python/```{python,results="raw",echo=False}/g' index.pmd
	pweave -f markdown index.pmd -F build/figures -o build/index.md
	pandoc -t revealjs -s --template=template/plotly.revealjs -f markdown --mathjax -V theme:metropolis -V history:true build/index.md -o build/index.html
