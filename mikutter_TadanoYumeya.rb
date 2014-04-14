# -*- coding: utf-8 -*-

Plugin.create(:mikutter_TadanoYumeya) do
   command(:mikutter_TadanoYumeya,
    name: 'せやけど、それはただの夢や',
    condition: Plugin::Command[:HasOneMessage],
    visible: true,
    role: :timeline) do |opt|
      message = opt.messages.first
      screen_name = message.user[:idname]
      Gtk::Clipboard.copy("#{screen_name}: #{message.to_s} [https://twitter.com/#{screen_name}/status/#{message.id}]")
  end

end
