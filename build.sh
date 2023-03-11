#!/bin/bash
npm install
npm run build
docker build -t react-app .

