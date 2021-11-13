# devops-netology
add one string.

#Все исключения относятся к папке terraform и ее подпапкам

# Все директории на любом уровне, названием .terraform
**/.terraform/*

# все файлы, в корне и подкаталогах, с расширением .tfstate или содержащие в названии .tfstate.
*.tfstate
*.tfstate.*

# Все файлы, в корне и подкаталогах, с именем crash.log
crash.log

# Все файлы, в корне и подкаталогах, с расширением .tfvars
*.tfvars

# Все файлы, в корне и подкаталогах, с названием override.tf или override.tf.json,
# а так же, чье название оканчивается на _override.tf или _override.tf.json
override.tf
override.tf.json
*_override.tf
*_override.tf.json

# Данная отмена исключения не работает, т.к. закомментирована
# !example_override.tf

# Закомментированные примеры
# Include tfplan files to ignore the plan output of command: terraform plan -out=tfplan
# example: *tfplan*

# Все файлы, в корне и подкаталогах, .terraformrc или terraform.rc
.terraformrc
terraform.rc

add one more line
