echo off
set currdate=%date:~4% 
"C:\Program Files\MySQL\MySQL Workbench 8.0 CE\mysqldump.exe" -u root -p$@brin@123 uc4atividades > "C:\Users\Sabrina\Desktop\Sabrina\TÉCNICO\MODULO I\UC04 - Auxiliar na administração de banco de dados\Atividade 1\Plano de backup_%filedate%.sql" 