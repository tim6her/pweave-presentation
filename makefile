revealjs:
	cp -R include/* build/
	cp test.py.md test.pmd
	sed -i -e 's/```python/```{python,echo=False,width="50\%"}/g' test.pmd
	pweave -f markdown test.pmd -F build/figures -o build/test.md
	pandoc -t revealjs -s --template=template/plotly.revealjs -f markdown --mathjax -V theme:metropolis -V history:true build/test.md -o build/index.html
