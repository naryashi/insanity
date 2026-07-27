#!/usr/bin/env bash

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install -y  app.zen_browser.zen com.discordapp.Discord com.bitwarden.desktop com.github.tchx84.Flatseal com.mattjakeman.ExtensionManager  com.obsproject.Studio com.rtosta.zapzap io.ente.photos io.github.flattool.Warehouse io.github.giantpinkrobots.flatsweep  io.github.kolunmi.Bazaar it.mijorus.gearlever org.signal.Signal
