#!/bin/bash

export CHROMA_COLLECTION=question-answer-on-url, CHROMA_HOST=localhost, CHROMA_PORT=8000
export MODEL=gpt-4o-mini, EMBEDDING_MODEL=text-embedding-3-large
export OPENAI_API_KEY=
npm run generate