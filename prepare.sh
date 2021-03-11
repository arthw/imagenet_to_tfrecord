python3 -m venv tf_env
source tf_env/bin/activate
pip install --upgrade pip
pip install intel-tensorflow
pip install google-cloud-storage
pip uninstall urllib3 -y && pip install urllib3 
