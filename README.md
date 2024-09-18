# Let-Loose-Models (LLM)
Let Loose Models is my playground and test bed for evaluating LLM workflows fit for real world use-cases. Check the branches. Main is just boilerplate and is not usecase specific.

# Getting Started

- Run ChromaDB & VectorAdmin w/ Postgres in docker `docker compose  up`
- Create using `npx create-llama@latest`
- Install `npm install`
- Run `npm run dev`

# Create Embeddings
`sh ../scripts/generate-embeddings.local.sh `

# Troubleshooting
## ChromaDB
- List Collections
  - http://localhost:8000/api/v1/collections?tenant=default_tenant&database=default_database
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