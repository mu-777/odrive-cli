FROM python:3.7

# Install odrive Sync Agent
# from https://docs.odrive.com/docs/odrive-sync-agent#install-on-linux
RUN od="$HOME/.odrive-agent/bin" && curl -L "https://dl.odrive.com/odrive-py" --create-dirs -o "$od/odrive.py" && curl -L "https://dl.odrive.com/odriveagent-lnx-64" | tar -xvzf- -C "$od/" && curl -L "https://dl.odrive.com/odrivecli-lnx-64" | tar -xvzf- -C "$od/"

# Run the odrive Sync Agent server in the background
COPY odrive_entrypoint.sh /
ENTRYPOINT ["/odrive_entrypoint.sh"]
