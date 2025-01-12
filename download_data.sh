#!/bin/bash
curl -L -o ./data.zip\
  https://www.kaggle.com/api/v1/datasets/download/sudalairajkumar/novel-corona-virus-2019-dataset
unzip data.zip -d data