fx_version 'bodacious'
games { 'gta5' }

author 'Jackson Abney (Bear November, NWBear, HickorySB)'
description 'This resource syncs permission groups from ace to ESX'
version '1.1.0'

server_scripts {
    '@es_extended/imports.lua',
    'server/server.lua',
    'config.lua'
}

server_only 'yes'
