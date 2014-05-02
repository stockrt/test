```lua
-- luarpc server loop
local server_accept_ready_list, _, err = socket.select({servant.server}, nil, 0)
  for _, server in pairs(server_accept_ready_list) do
    local client = server:accept()
    table.insert(servant.client_list, client)
    while #servant.client_list > servant.pool_size do
      old_client = table.remove(servant.client_list, 1)
      old_client:close()
    end
  end
end
```
