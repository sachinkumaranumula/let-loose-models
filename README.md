# Let-Loose-Models (LLM)
Let Loose Models is my playground and test bed for evaluating LLM workflows fit for real world use-cases. Check the folders for usecase and drill down into models usage with frameworks or sdks.

# Developer Notes
## Strip notebook outputs on git commits
Add below to .gitconfig
```code
[filter "strip-notebook-output"]
    clean = "jupyter nbconvert --ClearOutputPreprocessor.enabled=True --to=notebook --stdin --stdout --log-level=ERROR"
```
## Manual notebook outputs cleanup
```code
pip install nbstripout
nbstripout ../notebooks/chromadb-client.ipynb
```