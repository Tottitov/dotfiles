alsa_monitor.enabled = true

alsa_monitor.properties = {
    ["alsa.reserve"] = true,
    ["alsa.midi"] = true,
    ["alsa.midi.monitoring"] = true,
    ["alsa.midi.node-properties"] = {
        ["node.name"] = "Midi-Bridge",
        ["priority.session"] = 100,
        ["priority.driver"] = 1,
    },
    ["vm.node.defaults"] = {
        ["api.alsa.period-size"] = 1256,
        ["api.alsa.headroom"] = 1024,
    },
}

alsa_monitor.rules = {
    {
        matches = {
            {
                { "device.name", "matches", "alsa_card.*" },
            },
        },
        apply_properties = {
            ["api.alsa.use-acp"] = true,
            ["api.acp.auto-profile"] = false,
            ["api.acp.auto-port"] = false,
        },
    },
    {
        matches = {
            {
                { "node.name", "matches", "alsa_input.*" },
            },
            {
                { "node.name", "matches", "alsa_output.*" },
            },
        },
    },
}
