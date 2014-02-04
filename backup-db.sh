#!/bin/bash
drush sql-dump > dump.sql
gzip dump.sql
