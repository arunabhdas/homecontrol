#! /bin/bash

FILE=`%%%{PBXUtilityScriptsPath}%%%/AskUserForNewFileDialog "Save As" ".gitignore"`
echo "$FILE"
touch "$FILE"

FILEX=`%%%{PBXUtilityScriptsPath}%%%/AskUserForNewFileDialog "Save As" ".gitattributes"`
echo "$FILEX"
touch "$FILEX"

# This script creates the .gitignore and .gitattributes in the current folder.

echo "# Mac OS X Finder and whatnot
.DS_Store

# XCode (and ancestors) per-user config (very noisy, and not relevant)
*.mode1
*.mode1v3
*.mode2v3
*.perspective
*.perspectivev3
*.pbxuser


# Generated files
VersionX-revision.h


# build products
build/
*.[oa]

# Other source repository archive directories (protects when importing)
.hg
.svn
CVS


# automatic backup files
*~.nib
*.swp
*~
*(Autosaved).rtfd/
Backup[ ]of[ ]*.pages/
Backup[ ]of[ ]*.key/
Backup[ ]of[ ]*.numbers/" >> "$FILE"


echo "*.pbxproj -crlf -diff -merge" >> "$FILEX"
