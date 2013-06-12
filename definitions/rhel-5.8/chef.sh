#!/bin/bash -eux

curl -L https://www.opscode.com/chef/install.sh -o /tmp/install.sh
chmod +x /tmp/install.sh
/tmp/install.sh -v 11.4.4-2
