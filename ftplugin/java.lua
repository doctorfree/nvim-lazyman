local jdtls = require("jdtls")
local utils = require("utils.functions")
local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
local root_dir = require("jdtls.setup").find_root(root_markers)
local home = os.getenv("HOME")
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = home .. "/.local/share/eclipse/" .. project_name
local JDTLS_LOCATION = vim.fn.stdpath("data") .. "/mason/packages/jdtls"

if root_dir == "" then return end
if vim.fn.has("mac") == 1 then
  CONFIG = "config_mac"
elseif vim.fn.has("unix") == 1 then
  CONFIG = "config_linux"
else
  print("Only support mac and linux")
end

local function get_jdk_runtimes()
  local dir_prefix = "/Library/Java/JavaVirtualMachines/"
  local dir_affix = "/Contents/Home"

  local runtimes = {}

  local os_name = string.lower(utils.get_os_type())
  if os_name == "linux" then
    dir_prefix = "/usr/lib/jvm/"
    dir_affix = ""
  end

  if vim.fn.isdirectory(dir_prefix) <= 0 then
    dir_prefix = "/usr/lib/java/"
    dir_affix = ""
    if vim.fn.isdirectory(dir_prefix) <= 0 then
      return runtimes
    end
  end

  for value, _ in vim.fs.dir(dir_prefix) do
    -- local version = value:match(".*-(%d+).")
    local version = value:match(".*(%d+).")
    if os_name == "linux" then
      version = value:match("java-(%d+)-openjdk.-$")
      if version == nil then
        vim.notify("os is linux and jdk dir value is " .. value .. " and version was nil")
        goto continue
      end
    end

    if version == "8" then
      version = "1.8"
    end

    runtimes[version] = dir_prefix .. value .. dir_affix
    ::continue::
  end

  return runtimes
end

local table_runtimes = {}
local function set_jdk_runtimes()
  local runtimes = get_jdk_runtimes()
  for version, path in pairs(runtimes) do
    table.insert(table_runtimes,
      {
        name = "JavaSE-" .. version,
        path = path,
      }
    )
  end
end

set_jdk_runtimes()

vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.cmdheight = 0
local config = {}

config.settings = {
  java = {
    eclipse = {
      downloadSources = true,
    },
    configuration = {
      updateBuildConfiguration = "interactive",
      runtimes = table_runtimes,
    },
    maven = {
      downloadSources = true,
    },
    implementationsCodeLens = {
      enabled = true,
    },
    referencesCodeLens = {
      enabled = false,
    },
    references = {
      includeDecompiledSources = true,
    },
    inlayHints = {
      parameterNames = {
        enabled = "all", -- literals, all, none
      },
    },
    format = {
      enabled = false,
    },
  },
  signatureHelp = { enabled = true },
  completion = {
    favoriteStaticMembers = {
      "org.hamcrest.MatcherAssert.assertThat",
      "org.hamcrest.Matchers.*",
      "org.hamcrest.CoreMatchers.*",
      "org.junit.jupiter.api.Assertions.*",
      "java.util.Objects.requireNonNull",
      "java.util.Objects.requireNonNullElse",
      "org.mockito.Mockito.*",
    },
  },
  contentProvider = { preferred = "fernflower" },
  sources = {
    organizeImports = {
      starThreshold = 9999,
      staticStarThreshold = 9999,
    },
  },
  codeGeneration = {
    toString = {
      template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
    },
    useBlocks = true,
  },
}

config.cmd = {
  "java", -- or '/path/to/java11_or_newer/bin/java'
  -- depends on if `java` is in your $PATH env variable and if it points to the right version.

  "-Declipse.application=org.eclipse.jdt.ls.core.id1",
  "-Dosgi.bundles.defaultStartLevel=4",
  "-Declipse.product=org.eclipse.jdt.ls.core.product",
  "-Dlog.protocol=true",
  "-Dlog.level=ALL",
  "-javaagent:" .. JDTLS_LOCATION .. "/lombok.jar",
  "-Xms1g",
  "--add-modules=ALL-SYSTEM",
  "--add-opens",
  "java.base/java.util=ALL-UNNAMED",
  "--add-opens",
  "java.base/java.lang=ALL-UNNAMED",

  "-jar",
  vim.fn.glob(JDTLS_LOCATION .. "/plugins/org.eclipse.equinox.launcher_*.jar"),
  -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^                                       ^^^^^^^^^^^^^^
  -- Must point to the                                                     Change this to
  -- eclipse.jdt.ls installation                                           the actual version

  "-configuration",
  JDTLS_LOCATION .. "/" .. CONFIG,
  -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        ^^^^^^
  -- Must point to the                      Change to one of `linux`, `win` or `mac`
  -- eclipse.jdt.ls installation            Depending on your system.

  -- See `data directory configuration` section in the README
  "-data",
  workspace_dir,
}

local jar_patterns = {
  "/dev/microsoft/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar",
  "/dev/dgileadi/vscode-java-decompiler/server/*.jar",
  "/dev/microsoft/vscode-java-test/java-extension/com.microsoft.java.test.plugin/target/*.jar",
  "/dev/microsoft/vscode-java-test/java-extension/com.microsoft.java.test.runner/target/*.jar",
  "/dev/microsoft/vscode-java-test/java-extension/com.microsoft.java.test.runner/lib/*.jar",
  "/dev/testforstephen/vscode-pde/server/*.jar",
}
local plugin_path =
"/dev/microsoft/vscode-java-test/java-extension/com.microsoft.java.test.plugin.site/target/repository/plugins/"
local bundle_list = vim.tbl_map(
  function(x) return require("jdtls.path").join(plugin_path, x) end,
  {
    "junit-jupiter-*.jar",
    "junit-platform-*.jar",
    "junit-vintage-engine_*.jar",
    "org.opentest4j*.jar",
    "org.apiguardian.api_*.jar",
    "org.eclipse.jdt.junit4.runtime_*.jar",
    "org.eclipse.jdt.junit5.runtime_*.jar",
    "org.opentest4j_*.jar",
  }
)
vim.list_extend(jar_patterns, bundle_list)
local bundles = {}
for _, jar_pattern in ipairs(jar_patterns) do
  for _, bundle in ipairs(vim.split(vim.fn.glob(home .. jar_pattern), "\n")) do
    if not vim.endswith(
          bundle,
          "com.microsoft.java.test.runner-jar-with-dependencies.jar"
        )
        and not vim.endswith(bundle, "com.microsoft.java.test.runner.jar")
    then
      table.insert(bundles, bundle)
    end
  end
end

local extendedClientCapabilities = jdtls.extendedClientCapabilities
extendedClientCapabilities.resolveAdditionalTextEditsSupport = true

config.init_options = {
  bundles = bundles,
  extendedClientCapabilities = extendedClientCapabilities,
}

jdtls.start_or_attach(config)
