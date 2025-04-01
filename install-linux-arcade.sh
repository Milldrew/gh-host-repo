created="\e[32mcreated\e[0m"
creating="\e[32mcreating\e[0m"
path_to_apps="$HOME"/.local/share/applications
path_to_app_image="$path_to_apps"/practical-software-engineering-academy.AppImage
path_to_psea_icon="$HOME"/.local/share/icons/psea.icon
mkdir -p $path_to_apps
url_to_icon="https://github.com/Milldrew/practical-typing.com/blob/main/practical-type/favicon-48x48.png?raw=true"
url_to_download="https://practical-software-engineering-academy.com/api/downloads/SE_100/kali-linux"

echo ===========================
echo INSTALLING YOUR ARCADE GAME
echo ===========================

rm $path_to_app_image
echo  "\e[33m You can see the .AppImage being installed here: $path_to_app_image.\e[0m"
echo  "\e[33m Please be patient.\e[0m"
echo $path_to_app_image   $creating
curl -L   --retry 3 --retry-delay 5 --progress-bar $url_to_download -o $path_to_app_image

chmod +x $path_to_app_image
echo  $path_to_app_image $created

echo ================================
echo INSTALLING YOUR ARCADE GAME ICON
echo ================================
mkdir -p ~/.local/share/icons

curl -L   --retry 3 --retry-delay 5 --progress-bar $url_to_icon  -o $path_to_psea_icon


echo ~/.local/share/icons/psea.icon $created

echo desktop shortcut created ~/Desktop/practical-software-engineering-academy.desktop $creating

cat > ~/Desktop/practical-software-engineering-academy.desktop << EOL
[Desktop Entry]
Name=Practical Software Engineering Academy
Exec=$path_to_app_image
Icon=$path_to_psea_icon
Type=Application
Categories=Utility;
EOL

chmod +x ~/Desktop/practical-software-engineering-academy.desktop

echo desktop shortcut created ~/Desktop/practical-software-engineering-academy.desktop $created

