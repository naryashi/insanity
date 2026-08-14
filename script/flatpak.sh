#!/usr/bin/env bash

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install -y app.fluxer.Fluxer  app.zen_browser.zen com.bitwarden.desktop com.discordapp.Discord com.github.tchx84.Flatseal com.mattjakeman.ExtensionManager com.obsproject.Studio com.spotify.Client im.riot.Riot io.ente.photos  io.github.flattool.Warehouse  io.github.giantpinkrobots.flatsweep  io.github.kolunmi.Bazaar  it.mijorus.gearlever  org.fedoraproject.MediaWriter org.gtk.Gtk3theme.Adwaita-dark  org.onlyoffice.desktopeditors org.signal.Signal org.videolan.VLC distroshelf
