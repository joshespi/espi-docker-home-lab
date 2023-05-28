# Espi Docker Home Lab
This repository provides examples of YAML files for running containers in a home lab environment using Docker. To start the containers, use the following command:



```docker-compose -f filename.yml up -d```
## Pihole Container
To run Pihole on Ubuntu, follow these steps:
Stop the systemd-resolved service to use the standard DNS ports:

```sudo systemctl stop systemd-resolved && sudo systemctl disable systemd-resolved```

Edit the /etc/resolv.conf file and update the nameserver line to point the device back to its own IP address. This allows DNS resolution since we turned off systemd-resolved.

## yt-dlp-docker
To use the yt-dlp-docker container, follow these steps:

Open a terminal or command prompt and navigate to the yt-dlp-docker directory.

Build the Docker image by running the following command:
```docker build -t yt-dlp-image .```

Invoke the  script inline with the following command:
```bash scrape_yt.sh```
This will prompt you for a YouTube link and download the video into the ~/yt-downloads directory. (Note: This has only been tested on Ubuntu.)

If you want to simplify the execution of the  script, you can create an alias or function in your shell configuration file (e.g., .rc, .zshrc) to run the script with a single command. Follow these steps:

Open your shell configuration file with a text editor (e.g., nano ~/.rc).

Add an alias or function definition to the file. Here are examples of both options:

Alias:



<pre>
```alias download_youtube="/path/to/download_youtube.sh"```
Function:


```download_youtube() {
    /path/to/download_youtube.sh
}
```
</pre>
Replace /path/to/download_youtube.sh with the actual path to your  script.

Save the changes to the file and exit the text editor.

Reload the shell configuration file to apply the changes:
```source ~/.rc```
Now, you can execute the script using the defined alias or function. For example:

```download_youtube```

This allows you to run the download_youtube command in your terminal, and it will automatically execute the  script, prompting you for the YouTube link and initiating the download.

Remember to adjust the alias or function name to your preference.