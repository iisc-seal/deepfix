echo
echo 'Setting up a new virtual environment...'
echo
echo y | conda create -n deepfix python=2.7
echo 'done!'
source activate deepfix
pip install subprocess32 tensorflow-gpu==1.0.1 regex

mkdir temp
mkdir logs
mkdir data/results

echo
echo 'Downloading DeepFix dataset...'
wget -qO- https://www.cse.iitk.ac.in/users/karkare/prutor/prutor-deepfix-09-12-2017.db.gz | gunzip -c > data/iitk-dataset/dataset.db

echo 'Preprocessing DeepFix dataset...'
export PYTHONPATH=.
python data_processing/preprocess.py

echo "Make sure that your tensorflow is version 1.0.1 before proceeding, checking your tensorflow version now!"
echo
python -c 'import tensorflow as tf; print tf.__version__'
