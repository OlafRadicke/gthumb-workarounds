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

This role removes all special characters in file names and replaces them with "\_"

##  delete_abandoned_comments ##

This role removes all orphaned xml (comment) files.

##  delete_catalogs ##

This role removes all searches/catalogs

##  create_find_all_tags ##

This role creates a bash script to find all used "comment::category" values.

##  collecting_alltags ##

This role collecting all values of "comment::category" that's in use and  
creates a new "~/.config/gthumb/tags.xml" file."

##  uncategorized_search ##

This role collects all the files that "comment::category" does not use.

## Sub category ##

The playbook takes into account the following subcategories

* c- category
* e- epochs
* l- location
* p- person
* n- nationality
* s- style
* y- name
* f- feature

And divide it into subfolders...

###  collecting_category ###

Collecting all pictures with a sub categories "category" ("c-") and creates catalogs.

###  collecting_epochs ###

Collecting all epochs with a sub categories "epochs" ("e-") and creates catalogs.

###  collecting_person ###

Collecting all pictures with a sub categories "person" ("p_") and creates catalogs.

###  collecting_name ###

Collecting all pictures with a sub categories "name" ("y-") and creates catalogs.

###  collecting_nationality ###

Collecting all pictures with a sub categories "name" ("n-") and creates catalogs.

###  collecting_style ###

Collecting all pictures with a sub categories "style" ("s-") and creates catalogs.


###  collecting_feature ###

Collecting all pictures with a sub categories "feature ("f-") and creates catalogs.

# Known issues #
* The playbook is very slowly
* " and ' in file name is not removed by the role "cleanup_filenames"
* The role "delete_abandoned_comments" delede all xml files in the path how is set in the variable "basedir", if the xml file is not a valide comments file

# Dodos #

* Add tag for epochs "-e"
* Add clean up job for tempory bash scripts in /tmp
