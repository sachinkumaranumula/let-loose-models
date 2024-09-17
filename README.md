# Let-Loose-Models (LLM)
Let Loose Models is my playground and test bed for evaluating LLM workflows fit for real world use-cases. Check the branches. Main is just boilerplate and is not usecase specific.

# Getting Started

- Run ChromaDB & VectorAdmin w/ Postgres in docker `docker compose  up`
- Create using `npx create-llama@latest`
- Install `npm install`
- Run `npm run dev`

# Create Embeddings

- `export CHROMA_COLLECTION=chroma, CHROMA_HOST=0.0.0.0, CHROMA_PORT=8000`
- `export OPENAI_API_KEY=sk-svcacct-jHqBrYsO3N2_0YZSF6zOH6COr9bz05PvZuv_3mypVgO5WMYI5btfeIa6EXvKk2OMol3VtT3BlbkFJUask6Tlok3t-E7-2zzkudfX0ltvEzXEXKV_0dlmAUJAHPfPxKtBD-gSvmAssYsg3oJtAA`
- `npm run generate`