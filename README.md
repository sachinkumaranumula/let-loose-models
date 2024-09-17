# Let-Loose-Models (LLM)
Let Loose Models is my playground and test bed for evaluating LLM workflows fit for real world use-cases. Check the branches. Main is just boilerplate and is not usecase specific.

# Getting Started

- Run ChromaDB & VectorAdmin w/ Postgres in docker `docker compose  up`
- Create using `npx create-llama@latest`
- Install `npm install`
- Run `npm run dev`

# Create Embeddings

- `export CHROMA_COLLECTION=chroma, CHROMA_HOST=localhost, CHROMA_PORT=8000`
- `export OPENAI_API_KEY=`
- `npm run generate`