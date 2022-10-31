mkdir -p ${HOME}/.aws
cat > ${HOME}/.aws/credentials << EOF
[default]
aws_access_key_id = ${AWS_ACCESS_KEY_ID}
aws_secret_access_key = ${AWS_SECRET_ACCESS_KEY}
EOF
s3 sync files/ s3://files.dragonfly.co.nz/ --acl public-read
