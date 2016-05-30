do

function run(msg, matches)
       if not is_momod(msg) then
        return "ãÌÇÒ ÈÑÇí ãÏíÑ æ ÇÏãíä åÇ"
       end
	  local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        return "Çæá ÈÇíÏ áíä˜ ÌÏíÏ ÇíÌÇÏ ˜äíÏ"
       end
         local text = "áíä˜ Ñæå:\n"..group_link
          send_large_msg('user#id'..msg.from.id, text.."\n", ok_cb, false)
end

return {
  patterns = {
    "^[/!]([Ll]inkpv)$"
  },
  run = run
}

end