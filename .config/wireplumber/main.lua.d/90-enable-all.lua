-- Provide the "default" pw_metadata, which stores
-- dynamic properties of pipewire objects in RAM
load_module("metadata")

-- Default client access policy
default_access.enable()

-- Load devices
alsa_monitor.enable()

-- Track/store/restore user choices about devices
device_defaults.enable()

-- Track/store/restore user choices about streams
stream_defaults.enable()
