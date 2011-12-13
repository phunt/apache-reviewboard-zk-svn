#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: zpost-review.sh JIRA# ...";
    exit 1;
fi;

JIRA=$1
shift 1;

#post-review --repository-url="http://svn.apache.org/repos/asf" --server="https://reviews.apache.org" --target-groups=zookeeper --guess-summary --guess-description --diff-filename=<(svn diff $REVLIST) -o --bugs-closed=ZOOKEEPER-$JIRA $*

post-review --diff-filename=<(svn diff) --server="https://reviews.apache.org" --target-groups=zookeeper -o --bugs-closed=ZOOKEEPER-$JIRA $*

