# -- Software Stack Version

SPARK_VERSION="3.0.0"
HADOOP_VERSION="2.7"
JUPYTERLAB_VERSION="2.1.5"

# -- Building the Images

docker build \
  -f ./dockerfile/cluster-base/Dockerfile \
  -t cluster-base .

docker build \
  --build-arg spark_version="${SPARK_VERSION}" \
  --build-arg hadoop_version="${HADOOP_VERSION}" \
  -f ./dockerfile/spark-base/Dockerfile \
  -t spark-base .

docker build \
  -f ./dockerfile/spark-master/Dockerfile \
  -t spark-master .

docker build \
  -f ./dockerfile/spark-worker/Dockerfile \
  -t spark-worker .

docker build \
  --build-arg spark_version="${SPARK_VERSION}" \
  --build-arg jupyterlab_version="${JUPYTERLAB_VERSION}" \
  -f ./dockerfile/jupyter-lab/Dockerfile \
  -t jupyterlab .