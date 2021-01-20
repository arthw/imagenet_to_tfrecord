python3 -m venv tf_env
source tf_env/bin/activate
pip install --upgrade pip==19.3.1
pip install intel-tensorflow
pip install google-cloud-storage
pip uninstall urllib3 -y && pip install urllib3 -y
