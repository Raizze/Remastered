-- Legend of Hondo Merchant System
-- By Tatwi www.tpot.ca 2015


housemerch_template = ConvoTemplate:new {  initialScreen = "start",
					   templateType = "Lua",
					   luaClassHandler = "housemerch_convo_handler",
				           screens = {}
}

housemerch_start = ConvoScreen:new {
  id = "start",
  leftDialog = "",
  customDialogText = "Huh? What do you want? Did Paulie send you? Any hows, you intersted in some prints? Just eh, don't ask where they came from.",
  stopConversation = "false",
  options = {  {"Maybe, but I'm gonna need a bit more detail.", "banter1"},  }
}
housemerch_template:addScreen(housemerch_start);

housemerch_shop = ConvoScreen:new {
  id = "shop",
  leftDialog = "",
  customDialogText = "Here's what I currently have, changes often tho..",
  stopConversation = "false",
  options = {  }
}
housemerch_template:addScreen(housemerch_shop);

housemerch_banter1 = ConvoScreen:new {
  id = "banter1",
  leftDialog = "",
  customDialogText = "I'm talking top of the line stuff, blueprints for items that are hard or impossible to get.",
  stopConversation = "false",
  options = {
	{"What am I supposed to do with just the blueprints?", "banter2"},
	{"I'm interested, let me see what you have.", "shop"}
  }
}
housemerch_template:addScreen(housemerch_banter1);

housemerch_banter2 = ConvoScreen:new {
  id = "banter2",
  leftDialog = "",
  customDialogText = "You'll have to find yourself a crafter willing to build them for you...not my problem",
  stopConversation = "false",
  options = { 
	{"I'm interested, let me see what you have.", "shop"},
	{"I don't want to go to jail, I'll pass.", "get_lost"}
  }
}
housemerch_template:addScreen(housemerch_banter2);

housemerch_confirm_purchase = ConvoScreen:new {
  id = "confirm_purchase",
  leftDialog = "",
  customDialogText = "You sure about this pal? I don't do refunds.",
  stopConversation = "false",
  options = { }
}
housemerch_template:addScreen(housemerch_confirm_purchase);

housemerch_bye = ConvoScreen:new {
  id = "bye",
  leftDialog = "",
  customDialogText = "Yeah yeah, I'll be here....",
  stopConversation = "true",
  options = {  }
}
housemerch_template:addScreen(housemerch_bye);

housemerch_nope = ConvoScreen:new {
  id = "nope",
  leftDialog = "",
  customDialogText = "Pfft, stop wasting my time then....space slug.",
  stopConversation = "true",
  options = {   }
}
housemerch_template:addScreen(housemerch_nope);

housemerch_get_lost = ConvoScreen:new {
  id = "get_lost",
  leftDialog = "",
  customDialogText = "You've got some nerve..",
  stopConversation = "false",
  options = { {"Ah, sorry to bother you..", "get_lost_reply"} }
}
housemerch_template:addScreen(housemerch_get_lost);

housemerch_get_lost_reply = ConvoScreen:new {
  id = "get_lost_reply",
  leftDialog = "",
  customDialogText = "Run along, don't make me call my cousin Tony...",
  stopConversation = "true",
  options = {
  }
}
housemerch_template:addScreen(housemerch_get_lost_reply);

housemerch_faction_too_low = ConvoScreen:new {
  id = "faction_too_low",
  leftDialog = "",
  customDialogText = "Sorry, but I don't trust you enough to do business with you.",
  stopConversation = "false",
  options = {  {"I get that. I really do... Bye", "bye"}  }
}
housemerch_template:addScreen(housemerch_faction_too_low);

housemerch_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "This ain't a charity. Get the hell out of here!",
  stopConversation = "true",
  options = {  }
}
housemerch_template:addScreen(housemerch_insufficient_funds);

-- Template Footer
addConversationTemplate("housemerch_template", housemerch_template)
