# Dependencies

The essential dependecies include `numpy`, `subprocess32`, `regex`, `tensorflow`:

    $ pip install --user numpy subprocess32 regex tensorflow

In order to run the server, you must install `bottle` and `paste` as well as `clang-format`:

    $ pip install --user bottle paste
    $ sudo apt-get install clang-format

# Training 

In order to train, organize the input into bins for training and validation, with each bin containing
a set of source files that compile. Then run the script `data_processing/generate_data.py` to generate
training data. The data needed for training is stored in the `network_inputs` directory.

To train the network, use the script `neural_net/train.py`. This saves the model periodically in the
directory `checkpoints`.

# Testing/Serving

Serve one of the trained models by using the script `server/serve.py`. The best checkpoint achieved during
training is automatically used.