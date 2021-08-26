{

read -p "Enter the server hostname: "  NAME;
cp -p /root/ssh_auto_login_template.txt $NAME.sh
chmod +x $NAME.sh

read -p "Are you using server password( Enter only yes or no): "  VALUE;
sed -i "s/value/$VALUE/g" $NAME.sh

read -p "Enter the IP Adress: " IP;
sed -i "s/ip/$IP/g" $NAME.sh

read -p "Enter the User Name: " USER_NAME;
sed -i "s/user_name/$USER_NAME/g" $NAME.sh

read -p "Enter the Port Number OR enter default 22: " PORT;
sed -i "s/port_number/$PORT/g" $NAME.sh


read -p "Enter the User password: " PASSWORD;
sed -i "s/passwd/$PASSWORD/g" $NAME.sh

read -p "Enter the key Location: " KEY_LOCATION;
sed -i "s/key_location/$KEY_LOCATION/g" $NAME.sh

}
