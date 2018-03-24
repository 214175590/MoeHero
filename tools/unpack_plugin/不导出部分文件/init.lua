local w2l = require 'w3x2lni'

w2l:file_remove('lua', 'lua/currentpath.lua')

local file_save = w2l.file_save
function w2l:file_save(type, name, buf)
    if type == 'resource' then
        return
    end
    if type == 'lua' then
        if name:sub(1, 7) == 'script\\' then
            return
        end
    end
    file_save(self, type, name, buf)
end
