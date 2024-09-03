-- Function to log messages
local function log(message)
    io.stderr:write(os.date("%Y-%m-%d %H:%M:%S") .. " - " .. message .. "\n")
end

-- Detect the operating system
local function get_os()
    local os_type
    if package.config:sub(1,1) == '\\' then
        os_type = "windows"
    elseif os.execute('uname -s >/dev/null 2>&1') == 0 then
        local f = io.popen("uname -s")
        local uname = f:read("*a")
        f:close()
        if uname:match("^Darwin") then
            os_type = "macos"
        else
            os_type = "unix"
        end
    else
        os_type = "unknown"
    end

    if os_type == "windows" and package.config:sub(1,1) == '/' then
        os_type = "windows_forward_slash"
    end

    return os_type
end

-- Run R command and return result
local function run_r_command(cmd)
    local handle = io.popen(cmd)
    local result = handle:read("*a")
    handle:close()
    return result:gsub("%s+$", "")
end

-- Get the path to the main Lua filter in the surveydown package
local function get_main_filter_path()
    local cmd = 'Rscript -e "cat(system.file(\'quarto/filters\', \'main.lua\', package = \'surveydown\'))"'
    local result = run_r_command(cmd)

    if result == "" then
        error("Unable to find main.lua in the surveydown package. Please check your installation.")
    end

    return result
end

-- Get the main filter path
local main_filter_path = get_main_filter_path()

-- Load the main filter
local main_filter, load_error = loadfile(main_filter_path)

if load_error then
    error("Failed to load main filter: " .. load_error)
else
    main_filter = main_filter()  -- Execute the loaded chunk
end

-- Function to run the main filter
function Pandoc(doc)
    if main_filter and type(main_filter.Pandoc) == "function" then
        return main_filter.Pandoc(doc)
    else
        log("Warning: Main filter's Pandoc function not found or not a function")
        return doc
    end
end

-- Log that this filter has finished loading
log("Cross-platform nested filter loaded successfully")
