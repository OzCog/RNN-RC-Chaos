#!/bin/bash

cd ../../../Methods

mpiexec -n 3 python3 RUN.py esn_parallel \
--mode all \
--display_output 0 \
--system_name KuramotoSivashinskyGP512 \
--write_to_log 1 \
--N 100000 \
--N_used 10000 \
--RDIM 512 \
--scaler Standard \
--approx_reservoir_size 900 \
--degree 9 \
--radius 0.7 \
--sigma_input 1 \
--regularization 0.0 \
--dynamics_length 2000 \
--num_parallel_groups 3 \
--parallel_group_interaction_length 1 \
--iterative_prediction_length 200 \
--num_test_ICS 2 \
--noise_level 5

