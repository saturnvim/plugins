# Add a plugin 
To contribute, please ensure the following structure is adhered to when adding a plugin to the registry. Each plugin must have its own directory with three files:

- `docs.md`: Documentation
- `init.lua`: Actual plugin code
- `plugin.yml`: Information structured

Example plugin directory structure:

```
plugin-name/
│
├── docs.md
├── init.lua
└── plugin.yml
```

### plugin.yml
```yaml
source: user/plugin
```

Ensure that the `plugin.yml` file contains accurate source information as specified.

# init.lua 
```lua 
return { ... }
```
Example:
```lua
return {
  'vuki656/package-info.nvim',
  dependencies = { "MunifTanjim/nui.nvim" },
  init = function()
    require('package-info').setup({
      icons = {
        enable = true,
        style = {
          up_to_date = icons["check"] .. "  ",
          outdated = icons["skip"] .. "  ",
        },
      },
      autostart = true,
    })
  end,
  keys = {
    {
      "<leader>pnu",
      "<cmd>lua require('package-info').update()<cr>",
      desc = "Update dependency on the line"
    },
    {
      "<leader>pni",
      "<cmd>lua require('package-info').install()<cr>",
      desc = "Install a new dependency"
    },
    {
      "<leader>pnd",
      "<cmd>lua require('package-info').delete()<cr>",
      desc = "Delete dependency on the line"
    },
    {
      "<leader>pne",
      "<cmd>lua require('package-info').change_version()<cr>",
      desc = "Install a different dependency version"
    },
  }
}
```
You can follow lazy's plugin spec: https://github.com/folke/lazy.nvim#-plugin-spec
If you have to use icons you can use the ones in the icons array from saturnvim:

```lua
local icons = require("icons")
```

You can find the dictonary [here](https://github.com/saturnvim/saturnvim/blob/main/lua/icons/init.lua)
