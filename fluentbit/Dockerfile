FROM amazon/aws-for-fluent-bit:2.32.0.20240304

# `/fluent-bit/etc/fluent-bit.conf` 以外のパスに置く必要がある。
#
# > When using a custom configuration file, you must specify a different path than the one FireLens uses. Amazon ECS
# > reserves the `/fluent-bit/etc/fluent-bit.conf` filepath for Fluent Bit and `/fluentd/etc/fluent.conf`
# > for Fluentd.
# 引用: https://docs.aws.amazon.com/AmazonECS/latest/userguide/firelens-taskdef.html
COPY extra.conf /fluent-bit/etc/extra.conf
