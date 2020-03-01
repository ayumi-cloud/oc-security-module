#!/usr/bin/lua

local function has_value (table, val)
    for index=1,#table do
        if table[index] == val then
            return true
        end
    end
    return false
end

local function shorten(value, maxlen)
    if (string.len(value) > maxlen) and (maxlen > 3) then
        return string.sub(value, 1, maxlen - 3) .. "..."
    else
        return value
    end
end

local function concat_args(ARGS)
   local args = ""
   local skip_arguments = {"_wpnonce", "_wp_http_referer"}

   for k,v in pairs(ARGS) do
        name = v["name"];
        name = string.gsub(name, "ARGS_GET:(.*)", "%1");
        name = string.gsub(name, "ARGS_POST:(.*)", "%1");
        name = string.gsub(name, "FILES:(.*)", "%1");
        if not has_value(skip_arguments, name) then
            value = v["value"];
            --m.log(1, "Arg Name: " ..name.. " and Value: " ..value.. ".");
            if string.len(args) < 1000 then
                args = args .. shorten(name, 20) .. "=" .. shorten(value, 200) .."&";
            end
        end
   end

   return args;
end

local function get_file_contents(filename)
  local fd, err = io.open(filename, 'rb')
  if err then
      return ''
  end
  local content = fd:read(201) or ''
  content = string.gsub(content, '%c', '.')
  fd:close()
  return shorten(content, 200)
end

local function concat_files(FILES)
  local content = ""

  for k,v in pairs(FILES) do
        name = v["name"]
        name = string.gsub(name, "FILES_TMPNAMES:(.*)", "%1");
        path = v["value"]
        if string.len(content) < 1000 then
            content = content .. "@" .. shorten(name, 20) .. "=" .. get_file_contents(path) .. "&";
        end
  end
  return content
end

function main()
   local args_get = concat_args(m.getvars("ARGS_GET"));
   local args_post = concat_args(m.getvars("ARGS_POST"));
   local args_file = concat_args(m.getvars("FILES"));
   local files_content = concat_files(m.getvars("FILES_TMPNAMES"));

   m.setvar("TX.trapped", "1");
   message = "G:" .. args_get .. " P:" .. args_post .. " F:" .. args_file .. " FC:" .. files_content
   m.setvar("TX.trapinfo", message);
   return nil;
end
