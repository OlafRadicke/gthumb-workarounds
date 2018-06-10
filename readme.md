# This is a ansible playbook for some workarounds for  gthumb #

# Configuration #

Create a hosts file with this schema:

```
[all]
localhost ansible_connection=local basedir="/run/media/my/cool/pics/"
```
The basedir variable has the information about the directory of your picture.

# Run it #

enter:
```bash
ansible-playbook -i ./hosts  gthumb_workarounds.yml
```
# About the ansible roles #

##  cleanup_filenames ##
##  delete_abandoned_comments ##
##  delete_catalogs ##
##  create_find_all_tags ##
##  collacting_alltags ##
##  uncategorized_search ##

## Sub category ##

* c- category
* p_ person
* n- nationality
* s- style
* y- name
* f- feature

###  collacting_category ###
###  collacting_person ###
###  collacting_name ###
###  collacting_nationality ###
###  collacting_style ###
###  collacting_feature ###
