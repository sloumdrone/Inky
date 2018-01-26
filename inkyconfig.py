

inky = {
    'name_re': '^[\w\-\s\(\)]{1,50}$',
    're_title': 'Must contain only letters, numbers, underscores, & spaces',
    'locked_files': ['main','about','inky_markup'],
    'delete_ok': False,
    'edit_ok': False,
    'rename_ok': False,
    'num_ok': 0
}

#################################################################################
########################## Inky - Config Definitions ############################
#################################################################################
##
# 1) name_re       =>  (String)
#      -- The regEx pattern for allowable article names.
##
# 2) re_title      =>  (String)
#      -- Client-side notification if the user supplies a bad form entry.
##
# 3) locked_files  =>  (List of Strings)
#      -- Articles that can never be modified client-side regardless of
#        -- other settings.
##
# 4) delete_ok     =>  (True/False)
#      -- Enable/Disable client-side deletion of articles globally.
##
# 5) edit_ok       =>  (True/False)
#      -- Enable/disable client-side editing of articles globally.
##
# 6) rename_ok     =>  (True/False)
#      -- Enable/disable client-side renaming of articles globally.
##
# 7) num_ok        =>  (Integer)
#      -- Used for proper list display of edit, rename, and delete options.
#       -- The number should be equal tot he number of True values in config
#        -- items 4 - 6.
##
#################################################################################
