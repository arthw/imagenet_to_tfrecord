import tensorflow as tf
cnt = 0

for example in tf.data.TFRecordDataset("raw/tf_records/validation/validation-00000-of-00000"):
    cnt += 1
print(cnt)
