#!/bin/bash -x 
elastalert-create-index --config /elastalert/config/config.yaml
elastalert --config /elastalert/config/config.yaml $@
