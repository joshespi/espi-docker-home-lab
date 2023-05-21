# try getting uid from docker, if it fails, try 33 (should work)
WWW_DATA_UID=33 # plug in your number from previous step
RESULT=$(docker compose exec -u www-data espifam_wp id -u)
COMMAND_SUCCESS=$?
if [ $COMMAND_SUCCESS -eq 0 ]; then
  WWW_DATA_UID=$(echo $RESULT | tr -d '\r')
fi

# sudo chown -R $WWW_DATA_UID:$WWW_DATA_UID ./wordpress/wp-content
# sudo find ./wordpress/wp-content -type d -exec chmod 775 {} \;
# sudo find ./wordpress/wp-content -type f -exec chmod 664 {} \;


chown -R $WWW_DATA_UID:$WWW_DATA_UID /home/joshe/espi-docker-home-lab/espifam/wp-content
find /home/joshe/espi-docker-home-lab/espifam/wp-content -type d -exec chmod 775 {} \;
find /home/joshe/espi-docker-home-lab/espifam/wp-content -type f -exec chmod 664 {} \;
