# Let-Loose-Models (LLM)
Let Loose Models is my playground and test bed for evaluating LLM workflows fit for real world use-cases. Check the branches. Main is just boilerplate and is not usecase specific.

# Getting Started

- Run ChromaDB & VectorAdmin w/ Postgres in docker `docker compose  up`
- Go either the UI route or Notebook route below

## If you need a web front use the `create-llama` app instead
- Create using `npx create-llama@latest`
- Install `npm install`
- Run `npm run dev`

# Generate Embeddings
# Create Embeddings from documents in /data directory through create-llama app
> This will up the nextJS app that allows for Q&A via webapp
`sh ../scripts/generate-embeddings.local.sh`

# Perform Q&A
## Via Notebooks
- Q&A on URL
  - [Notebook that does Q&A on Url](/notebooks/Question-Answer-on-URL.ipynb), will create chroma collection and uses llama-index programmatically to do Q&Q
## Via NextJS UI
> boot up the app and perform Q&A, this is a flaky experience due to always evolving app from create-llama team
 - `npm run dev`

# Troubleshooting
## ChromaDB
- List Collections
  - http://localhost:8000/api/v1/collections?tenant=default_tenant&database=default_database
## VectorAdmin
- Default credentials `username: root@vectoradmin.com, password: password`
  - When Connecting VectorAdmin to ChromaDB use connection string as `http://host.docker.internal:8000` [refer](https://github.com/Mintplex-Labs/vector-admin/blob/39fe4a1117a81feaf09a440b79792120964bb4d6/docker/DOCKER.md#connecting-to-a-vector-database)

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