#!/usr/bin/env bash

set -ex
PROTOS="mlflow/protos"
protoc -I="$PROTOS" \
    --go_out="apiclient/mlflow" \
    --go_opt=paths=source_relative \
    --go-grpc_out="apiclient/mlflow" \
    --go-grpc_opt=paths=source_relative \
    "$PROTOS"/databricks.proto \
    "$PROTOS"/service.proto \
    "$PROTOS"/model_registry.proto \
    "$PROTOS"/databricks_artifacts.proto \
    "$PROTOS"/scalapb/scalapb.proto
