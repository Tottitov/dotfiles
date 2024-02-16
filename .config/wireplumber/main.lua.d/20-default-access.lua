default_access = {}
default_access.properties = {}
default_access.rules = {}

function default_access.enable()
    if default_access.enabled == false then
        return
    end

    load_access("default", {
        rules = default_access.rules
    })
end
