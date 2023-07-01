QUESTS = {
	quest = {
		{
			bestower = {
				npcId = '1879048194',
				npcName = 'Carlo Blagrove',
				text = "'Hallo there! Haven't seen you here before! Sit down, take a mug of my Blagrove's Brown! Good stuff, ain't it? Best you ever had? No? Ah well. You see, I've been entering the All-Farthing Brewing Moot every year like clockwork for nigh on fifty years now, and not one prize to my name!\n\n'But this time, I think I got the smell of a best in show. See, I just heard that my old great-granddad -- a Took he was -- who ran the Bird and Baby in his day, won the Moot-prize most every year he entered! They say his Brown was the best ever, but it seems the recipe died with him, because the Bird just hasn't been able to compete since those days. I'm thinking he might have written down his recipe somewhere. If it would be anywhere, it would be in the Great Smials over in Tuckborough to the east of Michel Delving.\n\n'I wonder... would you mind maybe going over there and take a look? If you find that old recipe, I'll give you the first taste of the new brew!'",
			},
			map = {
				mapId = '1879048525',
			},
			rewards = {
				money = {
					gold = '0',
					silver = '0',
					copper = '90',
				},
				XP = {
					quantity = '118',
				},
				object = {
					id = '1879051637',
					name = "Blagrove's Brown",
				},
			},
			id = '1879048195',
			name = 'The Bird and Baby',
			rawName = 'The Bird and Baby',
			category = '22',
			level = '7',
			description = 'Carlo Blagrove, innkeeper of The Bird and Baby, is entering the Four Farthings Brewing-moot.',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879049591',
				npcName = 'Lobelia Sackville-Baggins',
				text = "'I must have those fireworks in time for my birthday party. One way or another, by hook or by crook, I will have them, I tell you!\n\n'Ah! Hyacinth said her fireworks were stolen, didn't she? Well, then, the answer is simple. All you have to do is get them back from the thieves! Talk to Shirriff Smallburrow here in Hobbiton, and I'm sure he will set you right on the path if you can pull him away from his mug!\n\n'After all, that is what Bounders and Shirriffs --or whatever you are -- are supposed to do, isn't it? Catch thieves and ruffians and recover stolen properties for upstanding citizens like myself? It certainly is! Now be off!'",
			},
			prerequisite = {
				id = '1879051661',
				name = 'Brimstone and Sparks',
			},
			nextQuest = {
				id = '1879048528',
				name = 'Flare For Danger',
			},
			rewards = {
				XP = {
					quantity = '181',
				},
			},
			id = '1879048198',
			name = 'By Hook or By Crook',
			rawName = 'By Hook or By Crook',
			category = '22',
			level = '9',
			description = 'Lobelia insists on fireworks for her birthday party. The only possible way to get them in time for her party is to recover the fireworks stolen from Hyacinth Took.',
			questArc = "Lobelia's Fireworks",
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879049634',
				npcName = 'Otho Broadbelt',
				text = "'I hate to make more work for you, but it seems that the spiders infesting my waggon have run off somewhere. If they grow and breed, they may become a threat elsewhere in the Shire.\n\n'I think you should report this to the Shirriff in Hobbiton, Robin Smallburrow, and see what he thinks should be done. Robin Smallburrow can usually be found at The Ivy Bush Inn in Hobbiton town centre.\n\n'The last thing the Shire needs is an infestation of spiders nearly as big as a hobbit!'",
			},
			prerequisite = {
				id = '1879051717',
				name = 'Spider Plague',
			},
			nextQuest = {
				id = '1879048204',
				name = 'Untangled Webs',
			},
			map = {
				mapId = '268437678',
				region = '1',
			},
			rewards = {
				money = {
					gold = '0',
					silver = '0',
					copper = '90',
				},
				XP = {
					quantity = '344',
				},
			},
			id = '1879048199',
			name = 'Finding the Nest',
			rawName = 'Finding the Nest',
			category = '22',
			level = '10',
			description = 'Otho is concerned that the spiders infesting his waggon seem to have run off. They may now be a danger elsewhere in the Shire.',
			questArc = 'Spider Plague',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879051719',
				npcName = 'Walking-tree',
				text = 'The tree shudders, attempting to tear itself loose from the webs that bind it. Perhaps there is a way you could help it clear the webs away.',
			},
			prerequisite = {
				id = '1879051720',
				name = 'Web-cutter',
			},
			map = {
				mapId = '268437678',
				region = '1',
			},
			rewards = {
				XP = {
					quantity = '344',
				},
				object = {
					id = '1879103170',
					name = 'Gift Mathom',
				},
				selectOneOf = {
					object = {
						{
							id = '1879051721',
							name = "Smallburrow's Gloves",
						},
						{
							id = '1879051722',
							name = "Old Forester's Axe",
						},
						{
							id = '1879051723',
							name = 'Tree Shield',
						},
					},
				},
			},
			completionComment = {
				npc = {
					npcId = '1879048197',
					npcName = 'Shirriff Robin Smallburrow',
				},
				text = {
					{
						text = "'I didn't go for Shirriff to step on spiders!'",
					},
					{
						text = "'Walking tree, indeed...next you'll have me seeing oliphaunts!'",
					},
					{
						text = "'You ever think you'd be spider-hunting in the Shire?'",
					},
				},
			},
			id = '1879048200',
			name = 'Free the Tree',
			rawName = 'Free the Tree',
			category = '22',
			level = '10',
			description = 'You found the fabled \\qwalking tree\\q that Gammer Boffin told you about, and it appears to be entrapped by the spiders.',
			questArc = 'Spider Plague',
			hidden = 'false',
		},
		{
			bestower = {
				{
					npcId = '1879048531',
					npcName = 'Adelard Took',
					text = "'I don't know you, though I've heard your name. If you're interested in helping out around here, you should talk to Second Shirriff Bodo Bunce in Michel Delving. He can normally be found near Town Hole.'",
				},
				{
					npcId = '1879049599',
					npcName = 'Belco Brockhouse',
					text = "'I don't know you. If you was a Bounder, maybe people around here would welcome you more. You should go speak to Second Shirriff Bodo Bunce out near Town Hole in Michel Delving.'",
				},
				{
					npcId = '1879049600',
					npcName = 'Bingo Bolger',
					text = "'Plenty of problems around here for a Bounder to solve, but not for some stranger I don't know. If you want to help out, you should speak with Second Shirriff Bodo Bunce in Michel Delving. His offices are near Town Hole.'",
				},
				{
					npcId = '1879049601',
					npcName = 'Bodo Goodbody',
					text = "'There are lots of strangers about these days. We need more Bounders! If you want to help out, you should talk to Second Shirriff Bodo Bunce in Michel Delving. He can usually be found near Town Hole.'",
				},
				{
					npcId = '1879049602',
					npcName = 'Bounder',
					text = "'There's tell you're one what helps those in need. Well, if you want to help us Shire-folk, you'll have to join the Bounders. Most hobbits are friendly enough, but suspicious of strangers. As a Bounder, they'll trust you. At least a bit, anyway.\n\n'If you want to join the Watch as a Bounder, you'll have to speak to the Second Shirriff. He's the only one who can sign you up. You'll find him in Michel Delving, near Town Hole.\n\n'Second Shirriff Bunce is respected by most folk, so if he says you're a right sort, they'll listen.'",
				},
				{
					npcId = '1879049603',
					npcName = 'Bounder Chubb',
					text = "'We can use more Bounders. If you want to help, speak to Second Shirriff Bodo Bunce in Michel Delving. He can be found near Town Hole.'",
				},
				{
					npcId = '1879337247',
					text = "'We can use more Bounders. If you want to help, speak to Second Shirriff Bodo Bunce in Michel Delving. He can be found near Town Hole.'",
				},
				{
					npcId = '1879049576',
					npcName = 'Keeper Brombard Foxtail',
					text = "'Why, hullo there! I must say, we've been getting more than our share of strangers through this town, dwarves and other queer lot. Most folk will be polite enough, if you keep to yourself.\n\n'I suppose though that if you spoke to Second Shirriff Bunce -- he's captain of the Watch -- and he made you a Bounder, you might find a better welcome. Yes, yes, that would do it. The Shirriff can be found somewhere about in Michel Delving.\n\n'Good day to you!'",
				},
				{
					npcId = '1879049605',
					npcName = 'Cam Puddifoot',
					text = "'I don't know you, and I don't trust folks I don't know. If you was a Bounder, maybe I'd give you a little more time. You want to be a Bounder, speak to Second Shirriff Bodo Bunce in Michel Delving. You can find him near Town Hole.'",
				},
				{
					npcId = '1879049606',
					npcName = 'Daisy Bunce',
					text = "'Oh! Do you want to become a Bounder? I hear they need more people. You might want to speak to Second Shirriff Bodo Bunce in Michel Delving! Bodo doesn't often go far from Town Hole.'",
				},
				{
					npcId = '1879049607',
					npcName = 'Dora Brownlock',
					text = "'Well now, I don't know you, but I do know you're no Bounder. Maybe you should speak to Second Shirriff Bodo Bunce at his offices near Town Hole in Michel Delving.'",
				},
				{
					npcId = '1879049608',
					npcName = 'Edilina Proudfoot',
					text = "'I hear the Bounders need more people. You might want to talk to Second Shirriff Bodo Bunce near Town Hole in Michel Delving.'",
				},
				{
					npcId = '1879049609',
					npcName = 'Everard Holebourne',
					text = "'If you want to help us Shire-folk, you'll have to join the Bounders. You should go over to Michel Delving and talk to Second Shirriff Bodo Bunce. He'll be near Town Hole, I'm sure.'",
				},
				{
					npcId = '1879049610',
					npcName = 'Farmer Maggot',
					text = "'You there, get off my land! I've had enough trouble with strangers trapessing over my land without so much as a 'Hallo!'\n\n'If you've a problem, go see Bodo Bunce, the Second Shirriff over in Michel Delving. You'll find him near Town Hole.\n\n'Now off with you!'",
				},
				{
					npcId = '1879049611',
					npcName = 'Farmer Sandson',
					text = "'You maybe ought to go over to Michel Delving to talk to Shirriff Bodo Bunce. I hear he needs more Bounders real bad. His offices are near Town Hole.'",
				},
				{
					npcId = '1879049612',
					npcName = 'Filibert Bolger',
					text = "'Things ain't right here these days. Maybe getting more Bounders would help. If you don't have anything better to do, maybe you should go over to Michel Delving to talk to Second Shirriff Bodo Bunce. He'll be near Town Hole, like as not.'",
				},
				{
					npcId = '1879049613',
					npcName = 'Gaffer Gamgee',
					text = "'Eh, what're you doing about here? Strange folk aren't too welcome in Hobbiton! I suppose you won't do no harm, though. You've a friendlier look about you than some others I've seen. I suppose you could stay, but you'll have to speak to Second Shirriff Bunce about that.\n\n'Bunce is nigh on the captain of the Bounders, although old Flourdumpling might tell you different! You'll find him near Town Hole in Michel Delving. That's away west of here.\n\n'Now, I've work to do. Gardens don't tend themselves, you know!'",
				},
				{
					npcId = '1879049614',
					npcName = 'Gammer Boffin',
					text = "'Eh? Who are you? I want no strangers shadowing my doorstep. I'm not old Mad Baggins looking for an adventure! If you want to be walking about, bothering the folk here, you'll have to get permission from Second Shirriff Bunce.\n\n'He's Captain of the Watch out by Town Hole in Michel Delving, west of here. He might even have a use for you as a Bounder.\n\n'Now off with you!'",
				},
				{
					npcId = '1879049615',
					npcName = 'Gammer Tunnelly',
					text = "'I hear that Second Shirriff Bodo Bunce over in Michel Delving needs new Bounders. Maybe you should head over there to talk to him! His offices are near Town Hole.'",
				},
				{
					npcId = '1879049616',
					npcName = 'Gerd Whitfoot',
					text = "'I think you should go talk to Bodo Bunce, the Second Shirriff over in Michel Delving. I hear he needs folks to sign up as Bounders, and you look like you might do for the job. You can find him near Town Hole.'",
				},
				{
					npcId = '1879048510',
					npcName = 'Gerebert Took',
					text = "'We need more Bounders, we do. You should go over to Michel Delving to talk to Second Shirriff Bodo Bunce. His offices are near Town Hole.'",
				},
				{
					npcId = '1879049617',
					npcName = 'Griffo Boffin',
					text = "'Ow! My ankle. No, no, you can't help me right now. If you want to do me a favour, though, go over to Second Shirriff Bodo Bunce at his offices near Town Hole in Michel Delving. I hear he could use more Bounders.'",
				},
				{
					npcId = '1879049618',
					npcName = 'Hal Hornblower',
					text = "'I hear that Second Shirriff Bodo Bunce is hiring anyone at all as a Bounder. Hobbits, Big Folk, anyone! You should go over to Michel Delving to talk to him about that. You can usually find him near Town Hole.'",
				},
				{
					npcId = '1879337248',
					text = "'You want to help out in the Shire? You ought to talk to Second Shirriff Bodo Bunce in Michel Delving. I hear he needs new Bounders to sign up right away. You can find him at his offices near Town Hole.'",
				},
				{
					npcId = '1879049620',
					npcName = 'Hart Holeman',
					text = "'Oh, bother those bears! What? Oh, well...if you want to help out around here, you should become a Bounder. We can sure use more of them! You should talk to Second Shirriff Bodo Bunce in Michel Delving if you want to join up. His offices are near Town Hole.'",
				},
				{
					npcId = '1879049621',
					npcName = 'Hildifons Took II',
					text = "'I think you look like Bounder material! You should go over to Michel Delving to talk to Second Shirriff Bodo Bunce about a job. You will probably find him near Town Hole.'",
				},
				{
					npcId = '1879049622',
					npcName = 'Shirriff Hob Hayward',
					text = "'If you're wanting to travel freely about the Shire, you'll want to talk to the Second Shirriff, Bodo Bunce. See, folk here in the Shire, they don't take to strangers much. Lot of queer folk trapessing through here recently. Now though, if Bunce lets you join the Bounders, well then I'll wager you'd find a warmer welcome!\n\n'You can find Bunce near Town Hole in Michel Delving. That's a ways west of here.\n\n'Good luck to you, stranger.'",
				},
				{
					npcId = '1879337249',
					text = "'I've heard that Second Shirriff Bodo Bunce in Michel Delving needs folks to sign up as Bounders. Maybe you should go talk to him? You can find him near Town Hole.'",
				},
				{
					npcId = '1879049624',
					npcName = 'Holly Hornblower',
					text = "'Hello there! Have you heard that the Bounders are expanding? Not just their belts, mind you! You should go talk to Second Shirriff Bodo Bunce in Michel Delving if you're interested. His offices are near Town Hole.'",
				},
				{
					npcId = '1879049625',
					npcName = 'Hyacinth Took',
					text = "'Hello there, stranger. If you want to help out around the Shire, you should become a Bounder. Go talk to Second Shirriff Bodo Bunce in Michel Delving if you're interested. You can usually find him near Town Hole.'",
				},
				{
					npcId = '1879049626',
					npcName = 'Lily Proudfoot',
					text = "'You should go talk to Second Shirriff Bodo Bunce over in Michel Delving. I hear he needs some new Bounders. You can find him near Town Hole.'",
				},
				{
					npcId = '1879049627',
					npcName = 'Linda Bolger',
					text = "'We can use some help around here, but not from strangers. If you want to help out around the Shire, you should talk to Second Shirriff Bodo Bunce in Michel Delving about becoming a Bounder. You can usualy find him near Town Hole.'",
				},
				{
					npcId = '1879049628',
					npcName = 'Longo Burrow',
					text = "'Second Shirriff Bodo Bunce over in Michel Delving has put out the call for more Bounders. Seems to me you might want to head over there and join up. The Watch-office over there is near Town Hole.'",
				},
				{
					npcId = '1879049595',
					npcName = 'Mat Harfoot',
					text = "'If you're interested in helping out around here as a Bounder, you should talk to Second Shirriff Bodo Bunce in Michel Delving. His offices are near Town Hole.'",
				},
				{
					npcId = '1879049629',
					npcName = 'Milo Bolger',
					text = "'Have you heard that the Bounders are looking for new people? Maybe you should head over to Michel Delving to talk to Second Shirriff Bodo Bunce about the job. His offices are near Town Hole.'",
				},
				{
					npcId = '1879049630',
					npcName = 'Milo Hornblower',
					text = "'You might want to go over to Michel Delving to talk to Second Shirriff Bodo Bunce. I hear he's hiring new Bounders! You can find him near Town Hole.'",
				},
				{
					npcId = '1879049631',
					npcName = 'Mungo Burrows',
					text = "'If you want to help out in the Shire, you should become a Bounder! Speak with Second Shirriff Bodo Bunce over at his offices near Town Hole in Michel Delving.'",
				},
				{
					npcId = '1879049632',
					npcName = 'Odovacar Bolger',
					text = "'Budgeford needs more Bounders! You should talk to Second Shirriff Bodo Bunce over in Michel Delving about signing up for the job. You can find Bunce near Town Hole.'",
				},
				{
					npcId = '1879049634',
					npcName = 'Otho Broadbelt',
					text = "'Who are you? I don't know you. You should join the Bounders first if you want to help out around the Shire. Speak with Second Shirriff Bodo Bunce over in Michel Delving if you're interested. You can find him near Town Hole.'",
				},
				{
					npcId = '1879048526',
					npcName = 'Thain Paladin Took II',
					text = "'I am sorry, I cannot grant an audience to just any stranger. I must admit there is a favourable look to you, so you may be welcome in the Shire. However, I would want to leave that decision in the hands of the Second Shirriff, Bodo Bunce. In fact, he may allow you to become a Bounder of the Watch, although that would be most unusual.\n\n'Shirriff Bunce can be found in Michel Delving to the west. I recommend you speak with him as soon as possible.\n\n'Farewell.'",
				},
				{
					npcId = '1879049635',
					npcName = 'Pansy Tunnelly',
					text = "'Well, I never. You're a stranger, aren't you? If you want to get by in the Shire, you should join the Bounders. Go over quick to Michel Delving and talk to Second Shirriff Bodo Bunce. You'll find him near Town Hole.'",
				},
				{
					npcId = '1879049636',
					npcName = 'Peony Grubb',
					text = "'Are you a stranger around here? You must be. Take my advice and join the Bounders. Go over to Michel Delving and talk to Second Shirriff Bodo Bunce, why don't you? His offices are near Town Hole.'",
				},
				{
					npcId = '1879048529',
					npcName = 'Pervinca Took',
					text = "'Oh my, another stranger. You should go over to see Second Shirriff Bodo Bunce in Michel Delving. His offices are near Town Hole.'",
				},
				{
					npcId = '1879337250',
					text = "'Who are you, anyways? I don't recall your face. Maybe you should head over to Michel Delving to talk to Second Shirriff Bodo Bunce. I hear he's looking for more Bounders, and you look like you might be good at that job. Bunce can be found near Town Hole.'",
				},
				{
					npcId = '1879049638',
					npcName = 'Ponto Hornblower',
					text = "'Hullo there. You're new around here, aren't you? Maybe you should join the Bounders if you'll be staying a while. I hear that Second Shirriff Bodo Bunce in Michel Delving is looking for more people. You can find him near Town Hole.'",
				},
				{
					npcId = '1879048519',
					npcName = 'Bounder Primstone',
					text = "'Now what would you be doing about here? Must admit though, you have a friendly look about you, so you probably won't do any harm. Still, folk around here will be distrustful of you, unless you talk to Second Shirriff Bunce. He's captain of the Watch. If you're looking for work, he may even let you join the Bounders.\n\n'Second Shirrif Bunce has his offices out at Town Hole in Michel Delving. That's in the Westfarthing.\n\n'If you join the Bounders, folk won't likely be so distrustful of you. Might even ask you for help with a few things. And trust me, that'll keep you busier than you like!'",
				},
				{
					npcId = '1879049639',
					npcName = 'Prisca Underhill',
					text = "'Well now, look at you. Do you want to help out around the Shire? You should go over to Michel Delving and talk to Second Shirriff Bodo Bunce, so's you can become a Bounder. He can be found near Town Hole.'",
				},
				{
					npcId = '1879048197',
					npcName = 'Shirriff Robin Smallburrow',
					text = "'Hullo there, what's a body like you doing about in Hobbiton? Oh well, you don't look of a mind to do much harm, now do you?\n\n'Still, most folk won't have a thing to do with you, not unless you talk to Second Shirriff Bunce down in Michel Delving. He's in charge of the Watch. In fact, he may let you join as a Bounder, although that would be odd.\n\n'As a Bounder though, most folk won't be so suspicious of you.'",
				},
				{
					npcId = '1879049640',
					npcName = 'Rollo Boffin',
					text = "'No, I don't know you. Thought I did, but I don't. Say! Maybe you should go talk to Second Shirriff Bodo Bunce over in Michel Delving. I hear he's trying to hire more Bounders, and maybe you'll do for that job. His offices are near Town Hole.'",
				},
				{
					npcId = '1879049641',
					npcName = 'Ruby Primstone',
					text = "'You should go over to see Second Shirriff Bodo Bunce in Michel Delving. I hear he's hiring Bounders like mad! You might find him near Town Hole.'",
				},
				{
					npcId = '1879337251',
					text = "'Have you heard about the Bounders? They're hiring lots of new folks. Maybe you should join? If you want to, go over to Michel Delving and talk to Second Shirriff Bodo Bunce. His offices are near Town Hole.'",
				},
				{
					npcId = '1879337252',
					text = "'Goodness gracious, another stranger! Do you want to become a Bounder, too? You should go over to Michel Delving to speak with Second Shirriff Bodo Bunce. You can usually find him around Town Hole.'",
				},
				{
					npcId = '1879049644',
					npcName = 'Wilcome Tunnelly',
					text = "'Who's this? I got no time dealing with some stranger walking about and disturbing the peace. Got enough problems as it is with those cursed spiders!\n\n'Talk to Second Shirriff Bunce in Michel Delving; he's captain of the Watch. He's oft looking for Bounders to help in keeping the peace. If he feels comfortable trusting you, then maybe I'll have some work for you.\n\n'But for now, be off with you!",
				},
				{
					npcId = '1879049645',
					npcName = 'Wilimar Bolger',
					text = "'What? Who are you, again? Oh, oh, I see. You might want to go over to Michel Delving and talk to Second Shirriff Bodo Bunce. I hear he's hiring lots of new Bounders. His offices are near Town Hole.'",
				},
				{
					npcId = '1879049588',
					npcName = 'Mayor Will Whitfoot',
					text = "'Who's this now? I can't be disturbed by some stranger. If you are looking for work from folk around here, talk to Second Shirriff Bunce over there. He assists me with the Watch, making sure the Bounders make their rounds, keeping out undesirable folk and the like.\n\n'Now you don't seem like a bad lot, so I suppose he might let you join the Watch as a Bounder.'",
				},
			},
			rewards = {
				money = {
					gold = '0',
					silver = '0',
					copper = '90',
				},
				XP = {
					quantity = '118',
				},
				object = {
					id = '1879049647',
					name = "Bounder's Feather Cap",
				},
			},
			completionComment = {
				{
					npc = {
						npcId = '1879049602',
						npcName = 'Bounder',
					},
					text = {
						{
							text = "'So, you're a Bounder now? That's good!'",
						},
						{
							text = "'We really need the help, friend. Thank you!'",
						},
					},
				},
				{
					npc = {
						npcId = '1879049596',
						npcName = 'Second Shirriff Bodo Bunce',
					},
					text = {
						{
							text = "'Well now, Bounder ${PLAYER}, I'm sure there will be plenty of work for you!'",
						},
						{
							text = "'Welcome to the Watch, Bounder ${PLAYER}!'",
						},
					},
				},
			},
			id = '1879048202',
			name = 'Join the Bounders',
			rawName = 'Join the Bounders',
			category = '22',
			level = '7',
			description = 'In order for you to help the Hobbits of the Shire, you will need to join the Bounders of the Watch.',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879048197',
				npcName = 'Shirriff Robin Smallburrow',
				text = "'Welcome to Hobbiton, ${PLAYER}. It's always nice to see new folk, and I think it's important to strengthen the bonds of friendship. I think you should call on Bounder Chubb in Needlehole and see if he has any work that needs doing. Needlehole has become such a busy place that it may require its own Shirriff soon!\n\n'Needlehole is due north of Michel Delving, some distance past Little Delving, north-west of here. Don't be surprised if you find some dwarves there -- Needlehole is on the road to Ered Luin, and we've had more dwarf-traders coming through that way of late. \n\n'You'll probably find Bounder Chubb on duty near the entrance to town.'",
			},
			rewards = {
				money = {
					gold = '0',
					silver = '0',
					copper = '90',
				},
				XP = {
					quantity = '148',
				},
				selectOneOf = {
					object = {
						{
							id = '1879051726',
							name = "Chubb's Helmet",
						},
						{
							id = '1879049716',
							name = 'Cooked Carrots',
							quantity = '3',
						},
					},
				},
			},
			completionComment = {
				npc = {
					npcId = '1879049603',
					npcName = 'Bounder Chubb',
				},
				text = {
					{
						text = "'The Bounders serve an important role in the Shire, especially today.'",
					},
					{
						text = "'It's important that the Bounders all work together to protect the Shire from Outsiders.'",
					},
				},
			},
			id = '1879048203',
			name = 'Needlehole Watch',
			rawName = 'Needlehole Watch',
			category = '22',
			level = '8',
			description = 'Shirriff Smallburrow believes you should become acquainted with the other Shirriffs and Bounders.',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879048197',
				npcName = 'Shirriff Robin Smallburrow',
				text = "'Now we have to find a way through the webs that are blocking the spider-nest you found. Those webs are too tough and sticky to cut through, and we can't burn them without setting the whole wood afire.\n\n'Fortunately, I think I know who can help us. Gammer Boffin up in Overhill is a wise, old lady who knows all kinds of things about herbs and such. I think she'll be able to brew up something to help us deal with those webs. Her home is in the middle of Overhill.\n\n'Perhaps with old Gammer's help, we'll be able to deal with the spider-nest in the woods.'",
			},
			prerequisite = {
				id = '1879048199',
				name = 'Finding the Nest',
			},
			nextQuest = {
				id = '1879051720',
				name = 'Web-cutter',
			},
			rewards = {
				XP = {
					quantity = '344',
				},
				selectOneOf = {
					object = {
						{
							id = '1879051729',
							name = "Boffin's Shoulders",
						},
						{
							id = '1879099282',
							name = 'Lesser Milkthistle Draught',
							quantity = '3',
						},
					},
				},
			},
			id = '1879048204',
			name = 'Untangled Webs',
			rawName = 'Untangled Webs',
			category = '22',
			level = '10',
			description = 'The spider nest you discovered is blocked from reach by a mass of monstrous webs, too strong to cut through.',
			questArc = 'Spider Plague',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879048210',
				npcName = 'Barmy Rootknot',
				text = "'Well, I suppose you'd like a mug of our justly famous Green Dragon's Breath beer? Well we've plenty and to spare! But say, I've heard of you around the Shire. They say you're good at solving problems! Well, I've got a little problem of my own.\n\n'The annual Four Farthings Brewing-moot is coming up, and old Gerd wants to enter some of our special reserve in the judging. But the thing of it is, for the special Gerd uses old barrels from Ered Luin that the dwarves used for brandy. Every year, a dwarf-merchant he knows delivers a barrel. This year, though, it seems that the poor fellow was waylaid by huge beastly spiders near Overhill, and in his hurry to get away, he lost the barrel from his waggon.\n\n'I wonder if you can head up to Overhill and look to the north-west of town for the barrel? It would mean a lot to Gerd to enter the judging with his best beer!'",
			},
			map = {
				mapId = '268437678',
				region = '1',
			},
			rewards = {
				money = {
					gold = '0',
					silver = '0',
					copper = '90',
				},
				XP = {
					quantity = '302',
				},
				object = {
					{
						id = '1879062270',
						name = "Green Dragon's Breath Ale",
					},
					{
						id = '1879103170',
						name = 'Gift Mathom',
					},
				},
			},
			id = '1879048211',
			name = 'The Green Dragon',
			rawName = 'The Green Dragon',
			category = '22',
			level = '9',
			description = 'Gerd Whitfoot, innkeeper of The Green Dragon in Bywater, is entering the Four Farthings Brewing-moot.',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879048213',
				npcName = 'Ponto Hopsbloom',
				text = "'Welcome to The Floating Log! I'm sure you'll be wanting a draught of my Toad's Tongue brew, won't you? Say, you're that one what's been helping folks around here, aren't you? Maybe you can help me out some too.\n\n'You see, the Four Farthings Brewing-moot is coming up, and I want to win this year! So I'm going to need some of our famous hops from the fens here, Frog Hops we call 'em.\n\n'Well, anyways, these hops grow around the Frog Marsh just north of here. I'm not sure what it is, but them old toads get mean when you pick the hops. Now I'm not one for warts you know, so I wonder if you'd be so kind as to pick a peck of Frog Hops for me? I'd be much obliged....'",
			},
			rewards = {
				money = {
					gold = '0',
					silver = '0',
					copper = '90',
				},
				XP = {
					quantity = '302',
				},
				object = {
					{
						id = '1879062275',
						name = "Toad's Tongue Ale",
					},
					{
						id = '1879103170',
						name = 'Gift Mathom',
					},
				},
			},
			id = '1879048214',
			name = 'The Floating Log',
			rawName = 'The Floating Log',
			category = '22',
			level = '9',
			description = 'Ponto Hopsbloom, innkeeper of The Floating Log in Frogmorton, is entering the Four Farthings Brewing-moot.',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879048218',
				npcName = 'Halson Tubwort',
				text = "'Be welcome to The Plough and Stars! Stay a while and put your feet up! Try our famous Wooly-foot Stout!\n\n'Good, isn't it? But let me tell you, I have a brewing problem you might be able to help me with. The Four Farthings Brewing-moot is coming up, and I want to make some of my best Wooly-foot Stout for the judging. But you see, I need my secret ingredient! I use powdered gypsum to take the bitter edge off the brew.\n\n'Usually I order it from the quarry in Scary not far to the east of here, but it hasn't shown up. Can you please go to Scary and find out from old Wilcome Tunnely what happened to it? Much obliged to you!'",
			},
			map = {
				mapId = '268437678',
				region = '1',
			},
			rewards = {
				money = {
					gold = '0',
					silver = '0',
					copper = '90',
				},
				XP = {
					quantity = '366',
				},
				object = {
					{
						id = '1879051642',
						name = 'Wooly-foot Stout',
					},
					{
						id = '1879103170',
						name = 'Gift Mathom',
					},
				},
			},
			id = '1879048219',
			name = 'The Plough and Stars',
			rawName = 'The Plough and Stars',
			category = '22',
			level = '11',
			description = 'Halson Tubwort, innkeeper of The Plough and Stars, is entering the Four Farthings Brewing-moot.',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879049632',
				npcName = 'Odovacar Bolger',
				text = "'Never fear! My hound, Veronica, will track down that \\qBlack Rider\\q with just a sniff of his cloak. She's the best hunter in the Four Farthings! Maggot can talk up his Grip, Fang, and Wolf all he likes, but I'll stake Veronica against the pack of 'em!\n\n'You just follow Veronica wherever she leads, and you'll see! She'll find that trespasser!'",
			},
			prerequisite = {
				id = '1879061456',
				name = 'Cloak of the Black Rider',
			},
			map = {
				mapId = '268437678',
				region = '1',
			},
			rewards = {
				money = {
					gold = '0',
					silver = '0',
					copper = '90',
				},
				XP = {
					quantity = '344',
				},
				object = {
					id = '1879103170',
					name = 'Gift Mathom',
				},
				selectOneOf = {
					object = {
						{
							id = '1879061462',
							name = "Bolger's Leggings",
						},
						{
							id = '1879061463',
							name = "Bolger's Robe",
						},
						{
							id = '1879276493',
							name = "Bolger's Shoulders",
						},
					},
				},
			},
			completionComment = {
				{
					npc = {
						npcId = '1879061461',
						npcName = 'Greta Fallohide',
					},
					text = {
						{
							text = "'That fool nephew of mine ought know better than to scare people like that!'",
						},
						{
							text = "'Did you call the Shirriffs out on my nephew, Fogo? No? Pity....'",
						},
						{
							text = "'If I'd known what Fogo was up to, I'd never sewed that cloak for him.'",
						},
					},
				},
				{
					npc = {
						npcId = '1879048223',
						npcName = 'Fogo Fallohide',
					},
					text = {
						{
							text = "'There weren't no harm in the joke, was there?'",
						},
						{
							text = "'No more night \\qrides\\q for me...too many wolves out there!",
						},
						{
							text = "'You're not going to tell the Shirriffs about that little joke, are you?'",
						},
					},
				},
				{
					npc = {
						npcId = '1879049632',
						npcName = 'Odovacar Bolger',
					},
					text = {
						{
							text = "'Thanks to you, Bounder, for finding that fool Fallohide!'",
						},
						{
							text = "'No more of this \\qBlack Rider\\q nonsense, thanks to you!'",
						},
						{
							text = "'I'll not be selling my farm for any price now!'",
						},
					},
				},
			},
			id = '1879048224',
			name = 'Fate of the Black Rider',
			rawName = 'Fate of the Black Rider',
			category = '22',
			level = '10',
			description = 'Odovacar Bolger is certain the mystery of the trespasser in black will soon be resolved.',
			questArc = 'Spectre of the Black Rider',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879048225',
				npcName = 'Gunderic Grubb',
				text = "'Welcome to the Golden Perch! Have a draught of Old Withywindle. It has won the Four Farthings Brewing-moot three years running, but I'm afraid I may not win this year, as I don't have much of the old stock left! Somehow or other, my yeast mash has gone bad, and some fool let mould get to my dried store. It happens, but my yeast is special. It's what makes the Old Withywindle so good! So I had to get more. I figured, let's try the best that Bree-land has to offer, so I got old Barliman Butterbur to send me a packet from The Prancing Pony.\n\n'The thing of it is... it seems that the packet never arrived! Nor the waggoner neither. What I think happened is those blasted brigands camped out west of the Marish have gotten the waggon. The camp is in the hills south of Woodhall, about mid-way between Tuckborough and old Maggot's farm.\n\n'They say as you are one who can deal with problems like those brigands. What say you head out that way and see if you can find my yeast among their ill-gotten goods?'",
			},
			map = {
				mapId = '268437678',
				region = '1',
			},
			rewards = {
				money = {
					gold = '0',
					silver = '0',
					copper = '90',
				},
				XP = {
					quantity = '344',
				},
				object = {
					{
						id = '1879062159',
						name = 'Old Withywindle',
					},
					{
						id = '1879103170',
						name = 'Gift Mathom',
					},
				},
			},
			id = '1879048226',
			name = 'The Golden Perch',
			rawName = 'The Golden Perch',
			category = '22',
			level = '10',
			description = 'Gunderic Grubb, innkeeper of The Golden Perch is entering the Four Farthings Brewing-moot.',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879049750',
				npcName = 'Adso Haybank',
				text = "'Hey, friend, you're not from around here, and that may be a good thing. This is serious business, and I can't trust any of these louts with something so... so delicate. Making a place of my own took an unexpected turn not so long ago, and I am loath to tell my workers what has happened. I hope that you can help me with this matter. This satchel holds the last payment I need to make to ensure the safety of the folks here and the sanctity of this soon-to-be-splendid landmark.\n\n'Just take it to the Old Sweetgrass Farm, a little ways north-east of here, and give it over to the man who answers the door. It may be Bill -- Bill Ferny that is -- or one of his helpers.\n\n'Bill said he'll only be there at night, so don't waste your time hanging around during the day to catch a glimpse of him. Just knock on the door or ring the bell and hand over the satchel, hear me?'",
			},
			map = {
				mapId = '268437653',
				region = '1',
			},
			rewards = {
				money = {
					gold = '0',
					silver = '2',
					copper = '15',
				},
				XP = {
					quantity = '363',
				},
			},
			id = '1879048231',
			name = "Adso's Delivery",
			rawName = "Adso's Delivery",
			category = '28',
			level = '16',
			description = 'Adso Haybank, a Hobbit of Bree, runs a hunting lodge and way station along the Great East Road. In order to facilitate the building of the lodge, his endeavour ran afoul of unsavoury sorts and now payments are coming due.',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879062281',
				npcName = 'Constable Thistlewool',
				text = "'Ned's a good fellow with a difficult job. With the discovery of Calder Cob's betrayal, he's been given the task of learning what secrets Cob, one of his friends, divulged to the Blackwolds.\n\n'If you get a chance to pay him a visit, you might be able to assist him. Calder Cob has said little to none since he was taken prisoner.\n\n'You can find Ned within the jail. It is hard to miss...you'll likely hear that Otto whining in the stock outside the door before you reach the jail. Head north and east under the arch through the iron gates. You'll recognize the jail by the stocks -- and Otto in them -- on the porch.'",
			},
			nextQuest = {
				id = '1879048236',
				name = 'Intro: Question the Prisoner',
			},
			rewards = {
				money = {
					gold = '0',
					silver = '0',
					copper = '42',
				},
				XP = {
					quantity = '43',
				},
			},
			compoundPrerequisite = {
				prerequisite = {
					{
						id = '1879048541',
						name = 'Intro: The Spies',
					},
					{
						id = '1879048236',
						name = 'Intro: Question the Prisoner',
						operator = 'NOT_EQUAL',
					},
					{
						id = '1879048236',
						name = 'Intro: Question the Prisoner',
						status = 'UNDERWAY',
						operator = 'NOT_EQUAL',
					},
				},
			},
			id = '1879048235',
			name = 'The Jailor',
			rawName = 'The Jailor',
			category = '35',
			level = '3',
			description = "Ned Pruner is Archet's jailor. He is a good fellow charged with discovering the secrets Calder Cob traded to the Blackwold brigands.",
			hidden = 'true',
		},
		{
			bestower = {
				npcId = '1879048234',
				npcName = 'Jailor Ned Pruner',
				text = "'You're the one what helped discover that old Calder here was a traitor, ain't ye? Ye have me thanks for that, friend! I was just talking to my Peg about that. You're quite a hero!\n\n'Calder here could probably tell us a lot about what them Blackwolds are planning, if only he'd talk. Thing is, he's refusing to talk until he gets some better food, and he wants bilberry cakes. But me Peg don't have no bilberries to make the cakes.\n\n'Could you maybe go out and pick a few piles of bilberries from the bushes along the river southeast of town? Head southeast from Archet's gates and you you should spot it. If I could just get some cakes, maybe then Calder would talk!'",
			},
			nextQuest = {
				id = '1879186761',
				name = 'Report to Captain Brackenbrook',
			},
			rewards = {
				money = {
					gold = '0',
					silver = '0',
					copper = '90',
				},
				XP = {
					quantity = '51',
				},
				object = {
					id = '1879151459',
					name = 'Old Ring',
				},
			},
			compoundPrerequisite = {
				prerequisite = {
					{
						id = '1879048541',
						name = 'Intro: The Spies',
					},
					{
						id = '1879048239',
						name = 'Intro: The Storm is Upon Us',
						operator = 'NOT_EQUAL',
					},
					{
						id = '1879048235',
						name = 'The Jailor',
						status = 'UNDERWAY',
						operator = 'NOT_EQUAL',
					},
					{
						id = '1879186760',
						name = 'Intro: Interrogation',
					},
				},
			},
			id = '1879048236',
			name = 'Intro: Question the Prisoner',
			rawName = 'Intro: Question the Prisoner',
			category = '28',
			level = '3',
			description = 'The traitor, Calder Cob, refuses to speak with the gullible jailor, Ned Pruner, until he has some bilberry cakes.',
			hidden = 'true',
		},
		{
			bestower = {
				npcId = '1879048238',
				npcName = 'Jon Brackenbrook',
				text = "'Quickly! Calder Cob is making his move against Archet, and wicked men of Angmar are lending him and the Blackwolds strength. We must go to the town's defence at once! Return to me when you are prepared.'",
			},
			map = {
				mapId = '1879048237',
			},
			rewards = {
				money = {
					gold = '0',
					silver = '0',
					copper = '90',
				},
				reputationItem = {
					factionId = '1879091340',
					faction = 'Men of Bree',
					amount = '300',
				},
				XP = {
					quantity = '96',
				},
				trait = {
					id = '1879049557',
					name = 'Novice',
				},
				object = {
					id = '1879049556',
					name = 'Milestone Skill',
				},
			},
			compoundPrerequisite = {
				prerequisite = {
					{
						id = '1879048399',
						name = 'Instance: The Assault on Archet',
						operator = 'NOT_EQUAL',
					},
					{
						id = '1879190159',
						name = 'Intro: A Slender Hope',
					},
				},
			},
			id = '1879048239',
			name = 'Intro: The Storm is Upon Us',
			rawName = 'Intro: The Storm is Upon Us',
			category = '35',
			level = '5',
			description = 'Your efforts to ready Archet for the impending Blackwold attack have come to fruition. Now the preparations are complete, and the time has come to fight.',
			questArc = 'Bree-land Introduction',
			hidden = 'false',
			shareable = 'false',
		},
		{
			bestower = {
				npcId = '1879048238',
				npcName = 'Jon Brackenbrook',
				text = "<rgb=#00e4ff>This quest has been restored for Legendary Servers!</rgb>\n\n'If Archet is to survive the Blackwolds' attack, they must have time to better prepare their defences. We must give them that time.\n\n'The Blackwolds have established an encampment among the ruins to the south, which some call \\qBlackwolds' Roost.\\q While you go there and distract the Blackwolds, my hunters and I will help my father prepare for their attack.\n\n'Quickly now, we haven't any time to spare!'",
			},
			rewards = {
				money = {
					gold = '0',
					silver = '0',
					copper = '90',
				},
				XP = {
					quantity = '96',
				},
				selectOneOf = {
					object = {
						{
							id = '1879151269',
							name = 'Plumed Hat',
						},
						{
							id = '1879152192',
							name = "Guard's Helm",
						},
						{
							id = '1879272502',
							name = "Protector's Helm",
						},
					},
				},
			},
			compoundPrerequisite = {
				prerequisite = {
					{
						id = '1879048399',
						name = 'Instance: The Assault on Archet',
						operator = 'NOT_EQUAL',
					},
					{
						id = '1879190158',
						name = 'Intro: Into the Shadow',
						status = 'UNDERWAY',
						operator = 'GREATER_OR_EQUAL',
					},
				},
			},
			worldEventCondition = {
				worldEventID = '1879381183',
				worldEventName = 'WE_server_legendary_active',
				operator = 'EQUAL',
				value = '1',
			},
			id = '1879048240',
			name = "The Blackwolds' Roost",
			rawName = "The Blackwolds' Roost",
			category = '35',
			level = '5',
			description = 'Jon Brackenbrook is eager to help his father in the defence of Archet, but time is still needed to fully prepare the defences.',
			questArc = 'Bree-land Introduction',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879048539',
				npcName = 'Captain Brackenbrook',
				text = "'I have been such a fool. With Calder Cob turned traitor, I do not know whom to trust anymore. How many more spies dwell among us?\n\n'I would ask a favour of you. Go speak with my son Jon and ask for his help against the Blackwolds. Jon spends most of his time at the Hunter's Lodge to the east of Archet. From the town-gate, follow the road that wends to the east, and you will eventually make your way to the lodge.\n\n'If you can sway my son's heart, I will reward you handsomely.'",
			},
			nextQuest = {
				id = '1879048240',
				name = "The Blackwolds' Roost",
			},
			rewards = {
				money = {
					gold = '0',
					silver = '0',
					copper = '42',
				},
				XP = {
					quantity = '45',
				},
				selectOneOf = {
					object = {
						{
							id = '1879152179',
							name = 'Threadbare Cloth Shoulderpads',
						},
						{
							id = '1879152185',
							name = 'Ragged Leather Shoulderpads',
						},
						{
							id = '1879272504',
							name = 'Scuffed Chainmail Shoulderguards',
						},
					},
				},
			},
			completionComment = {
				npc = {
					npcId = '1879048539',
					npcName = 'Captain Brackenbrook',
				},
				text = {
					{
						text = "'I cannot believe I was so fooled by Calder.'",
					},
					{
						text = "'If Archet it so to be saved, it will be through the strength of people like you and my son.'",
					},
					{
						text = "'I wonder if my son will ever forgive me?'",
					},
				},
			},
			compoundPrerequisite = {
				prerequisite = {
					{
						id = '1879048541',
						name = 'Intro: The Spies',
					},
					{
						id = '1879048399',
						name = 'Instance: The Assault on Archet',
						operator = 'NOT_EQUAL',
					},
					{
						id = '1879186761',
						name = 'Report to Captain Brackenbrook',
					},
				},
			},
			id = '1879048241',
			name = "Intro: The Captain's Son",
			rawName = "Intro: The Captain's Son",
			category = '35',
			level = '4',
			description = 'Captain Brackenbrook has been estranged from his son, Jon, ever since they fought over the loyalty of Calder Cob. Captain Brackenbrook trusted Cob, while Jon had been suspicious of him. The orders you found proved Jon right.',
			questArc = 'Bree-land Introduction',
			hidden = 'true',
		},
		{
			bestower = {
				npcId = '1879048242',
				npcName = 'Fenton Marshley',
				text = "'I can make you a piece of equipment worthy of your skill as a hunter, ${PLAYER}, but with this offer I give to you a warning: the tale of this piece will be hard-fought and purchased with great toil.\n\n'I will need time between each stage of the process, so do not bring me everything at once. I will first need the matted hide of Zorrgolug, a great Warg of Fasach-falroid, and five brimstone-tinged Tarkrîp helmets affected by the great swamp of Malenhad. Begin your hunt with confidence and finish it with triumph!'",
			},
			prerequisite = {
				id = '1879048244',
				name = 'A Lesson from Legolas',
				status = 'UNDERWAY1',
			},
			rewards = {
				money = {
					gold = '0',
					silver = '49',
					copper = '70',
				},
				XP = {
					quantity = '7430',
				},
				itemXP = {
					quantity = '7430',
				},
				title = {
					id = '1879229318',
					name = 'Righteous Bow',
				},
				object = {
					id = '1879052081',
					name = 'Distilled Athelas Essence',
					quantity = '5',
				},
				selectOneOf = {
					object = {
						{
							id = '1879052471',
							name = 'Bracelet of Discovery',
						},
						{
							id = '1879052472',
							name = 'Earring of Discovery',
						},
					},
				},
			},
			id = '1879048243',
			name = 'Articles of Discovery',
			rawName = 'Articles of Discovery',
			category = '37',
			level = '50',
			description = 'Fenton Marshley has agreed to help you fashion a piece of equipment worthy of your great skill as a hunter.',
			questArc = 'The Swiftest Arrow',
			hidden = 'false',
			minLevel = '45',
			requiredClass = 'Hunter',
		},
		{
			bestower = {
				npcId = '1879048242',
				npcName = 'Fenton Marshley',
				text = "'You are deserving of equipment that reflects your well-honed skill, ${PLAYER}, and I would be delighted to help you fashion it. Be advised, however, that no path worth following is an easy one. The things I can help you prepare will only be as good as the story behind them, and the story behind these implements and articles will be one of fell dangers and the ultimate triumph over evil.\n\n'A hunter of lesser stature would despair of this road into the dark, but you, I know, will come again into the light of the sun. Speak with me if you are ready to set upon this path.'",
			},
			rewards = {
				money = {
					gold = '0',
					silver = '24',
					copper = '85',
				},
				XP = {
					quantity = '3180',
				},
				itemXP = {
					quantity = '3180',
				},
			},
			completionComment = {
				npc = {
					npcId = '1879052228',
					npcName = 'Legolas',
				},
				text = {
					{
						text = "'Greetings, fellow hunter!'",
					},
					{
						text = "'It is always a pleasure to speak with you, ${PLAYER}.'",
					},
				},
			},
			id = '1879048244',
			name = 'A Lesson from Legolas',
			rawName = 'A Lesson from Legolas',
			category = '37',
			level = '50',
			description = 'Fenton Marshley, impressed by your dedication and your ability, has recommended that you speak with Legolas, an Elf possessed of great skill in the hunt.',
			questArc = 'The Swiftest Arrow',
			hidden = 'false',
			minLevel = '45',
			requiredClass = 'Hunter',
		},
		{
			bestower = {
				text = 'As a Hunter, you have achieved such renown as to receive a summons from Fenton Marshley of Archet.\n\nYou should seek Fenton Marshley to receive further training in your class.',
			},
			nextQuest = {
				id = '1879048244',
				name = 'A Lesson from Legolas',
			},
			rewards = {
				money = {
					gold = '0',
					silver = '24',
					copper = '85',
				},
				XP = {
					quantity = '2650',
				},
				itemXP = {
					quantity = '2650',
				},
			},
			id = '1879048245',
			name = 'Hunter: The Swiftest Arrow is Learning',
			rawName = 'Hunter: The Swiftest Arrow is Learning',
			category = '37',
			level = '50',
			description = 'You have braved many challenges and walked many leagues through the wilderness, and now you are counted among the greatest of hunters.',
			questArc = 'The Swiftest Arrow',
			hidden = 'false',
			shareable = 'false',
			minLevel = '45',
			requiredClass = 'Hunter',
		},
		{
			bestower = {
				npcId = '1879048242',
				npcName = 'Fenton Marshley',
				text = "'I can make you a weapon that befits your great skill as a hunter, ${PLAYER}, but you must steel yourself for hardship, for its tale will not be easily won.\n\n'I will need time between each stage of the process, so do not bring me everything at once. I will first need corroded Iron Crown staves, which may be found in Angmar, and a razor-sharp claw belonging to Driftclaw, a great bear of the Misty Mountains, who dwells in the land of the giants.\n\n'May fortune smile upon you during your hunt, ${PLAYER}. It has to this point, and I know it will continue to do so.'",
			},
			prerequisite = {
				id = '1879048244',
				name = 'A Lesson from Legolas',
				status = 'UNDERWAY1',
			},
			rewards = {
				money = {
					gold = '0',
					silver = '49',
					copper = '70',
				},
				XP = {
					quantity = '7430',
				},
				itemXP = {
					quantity = '7430',
				},
				object = {
					id = '1879052096',
					name = 'Distilled Celebrant Salve',
					quantity = '5',
				},
				selectOneOf = {
					object = {
						{
							id = '1879052483',
							name = 'Bow of the Hunt',
						},
						{
							id = '1879052484',
							name = 'Crossbow of the Hunt',
						},
					},
				},
			},
			id = '1879048246',
			name = 'Implements of the Hunt',
			rawName = 'Implements of the Hunt',
			category = '37',
			level = '50',
			description = 'Fenton Marshley has agreed to help you fashion a weapon worthy of your great skill as a hunter. The tale of this weapon will be one of danger and evil, but from these hardships will come strength.',
			questArc = 'The Swiftest Arrow',
			hidden = 'false',
			minLevel = '45',
			requiredClass = 'Hunter',
		},
		{
			bestower = {
				npcId = '1879048269',
				npcName = 'Old Mugwort',
				text = "'I nearly forgot! Anlaf wants me to offer better blankets to our guests from Bree. Better blankets! Can you believe that? You come from the town, and you get better blankets. I ask you, is that right by any measure? No, it isn't!\n\n'Arinora has no choice but to see to it. Your first blankets are good enough for those used to the harder life, but their betters need something better, according to Anlaf.\n\n'So I figure I can help her while I work to frighten off these goblins! When you are killing lynx in Nain Enidh, north of here and east of Weathertop, tear off their hides! Their fur is soft and well-kept. Bring it to me, and I will make these blankets and get them back to Arinora.'",
			},
			rewards = {
				money = {
					gold = '0',
					silver = '11',
					copper = '50',
				},
				XP = {
					quantity = '1380',
				},
				selectOneOf = {
					object = {
						{
							id = '1879060467',
							name = "Arinora's Boots",
						},
						{
							id = '1879062339',
							name = "Arinora's Bracelet",
						},
						{
							id = '1879138700',
							name = "Arinora's Shield",
						},
					},
				},
			},
			completionComment = {
				npc = {
					npcId = '1879048248',
					npcName = 'Arinora',
				},
				text = {
					{
						text = "'You have been a big help to me, ${PLAYER}.'",
					},
					{
						text = "'There is always work to be done, but for now things are manageable.'",
					},
				},
			},
			id = '1879048249',
			name = 'Better Blankets',
			rawName = 'Better Blankets',
			category = '34',
			level = '25',
			description = 'Arinora is displeased with the preferential treatment that Anlaf is demanding for guests from the town of Bree, but there is little she can do about it. While Mugwort is out in the wild and focusing on killing Wargs, he figures he would help out his friend Arinora as well.',
			questArc = 'Wolves of the Scrub',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879048248',
				npcName = 'Arinora',
				text = "'There are too many travellers, even through this remote land, and the nearest water sits foul and stagnant. We've the well, of course, but water is rationed among all the guests and does not go as far as it might.\n\n'Blankets need making and mending, and there are no better hides to be found than those of the wolves. The hide of a Warg is too coarse, but a wolf's fur can be made soft with a comb. If you've the time and a good heart, I would ask for your assistance; you'll not see me stomping through the brush to get to the wolves, as deadly as they are!\n\n'There are a few places you may want to look for wolves with proper hides. Wolves creep among the ruins of Minas Eriol to the south, though that place is also crawling with Wargs and goblins. Wolves hunt too among the Weather Hills, to the east and north. Finally, you could travel even further north, but the Midgewater Pass is dangerous and full of even worse things than wolves. When you have the wolf-hides, return to me, and I'll see that you are rewarded.'",
			},
			rewards = {
				money = {
					gold = '0',
					silver = '7',
					copper = '0',
				},
				XP = {
					quantity = '1040',
				},
				object = {
					{
						id = '1879061340',
						name = 'Blueberry Muffins',
						quantity = '3',
					},
					{
						id = '1879083987',
						name = "Hornblower's Pie",
						quantity = '3',
					},
				},
				selectOneOf = {
					object = {
						{
							id = '1879167260',
							name = "Arinora's Cloak",
						},
						{
							id = '1879167502',
							name = "Arinora's Band",
						},
						{
							id = '1879062342',
							name = "Arinora's Gloves",
						},
						{
							id = '1879051362',
							name = "Candac's Wall",
						},
					},
				},
			},
			completionComment = {
				npc = {
					npcId = '1879048248',
					npcName = 'Arinora',
				},
				text = {
					{
						text = "'Wolf-hides can be made into decent blankets for those who have none, at need.'",
					},
					{
						text = "'There is always work to be done here.'",
					},
				},
			},
			id = '1879048250',
			name = 'Blankets from the Baying Wolves',
			rawName = 'Blankets from the Baying Wolves',
			category = '34',
			level = '22',
			description = 'Arinora has become overwhelmed with the many responsibilities she bears for the maintenance of The Forsaken Inn.',
			questArc = 'Inn Troubles',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879048248',
				npcName = 'Arinora',
				text = "'Ever since Gadaric Munce showed up, I've had no rest! Normally, we see no guests for months on end, but the glut of guests here has me stretched to my limit!\n\n'Anlaf is under great strain and takes his worries out on me, driving harder to see that the chambers are cared for, the workers watched, and the guests fed. Well, I'm just not able to do it all!\n\n'One thing that still needs to be done is the replacing of the pillows. All the stuffing's gone missing with the use they are getting, and I need to get the fluff back into them. We don't have the luxury of ducks, but the crebain circling about in the north might do in a pinch. There are plenty of the troublesome thorn-talon and sharp-eye crebain lurking about. Bring me some of their feathers, and I'll pay you for your trouble. The birds circle often over the vales surrounding Weathertop and the summit of the great hill.'",
			},
			rewards = {
				money = {
					gold = '0',
					silver = '7',
					copper = '0',
				},
				XP = {
					quantity = '1040',
				},
				selectOneOf = {
					object = {
						{
							id = '1879167242',
							name = "Arinora's Boots",
						},
						{
							id = '1879167452',
							name = "Arinora's Bow",
						},
						{
							id = '1879167503',
							name = "Arinora's Earring",
						},
					},
				},
			},
			completionComment = {
				npc = {
					npcId = '1879048248',
					npcName = 'Arinora',
				},
				text = {
					{
						text = "'Craban-wings smell terrible!'",
					},
					{
						text = "'We do what we can with what we have. That's the way of life in the Lone-lands.'",
					},
				},
			},
			id = '1879048251',
			name = 'Fluffing the Pillows',
			rawName = 'Fluffing the Pillows',
			category = '34',
			level = '22',
			description = "Arinora's duties became even greater when Gadaric Munce arrived at The Forsaken Inn. Anlaf is an unforgiving innkeep, according to Arinora, and she needs help to keep up with everything.",
			questArc = 'Inn Troubles',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879048248',
				npcName = 'Arinora',
				text = "'Old Mugwort does the cooking around here, though he has been in the wild for weeks, but I have some recipes of my own that tickle the fancy of some of the guests... so much so that they have bought out all of my latest fare! The recent commotion ran off our modest herd of swine, and I need more pork!\n\n'I need boar-feet and leg-bones. Though I'll not share with you all of my recipe, I will tell you that the marrow from the bones gives the soaked feet a richer taste. Once you pull the fur away and cure the feet in salt, you've a tasty treat. \n\n'You should find boars in the surrounding area and north-east among the Weather Hills. Be careful, though... not every foot is good for eating.'",
			},
			rewards = {
				money = {
					gold = '0',
					silver = '7',
					copper = '0',
				},
				XP = {
					quantity = '1040',
				},
				object = {
					id = '1879050187',
					name = 'Forsaken Ale',
					quantity = '5',
				},
				selectOneOf = {
					object = {
						{
							id = '1879053126',
							name = 'Simple Athelas Essence',
							quantity = '2',
						},
						{
							id = '1879052361',
							name = 'Simple Celebrant Salve',
							quantity = '2',
						},
					},
				},
			},
			completionComment = {
				npc = {
					npcId = '1879048248',
					npcName = 'Arinora',
				},
				text = {
					{
						text = "'Old Mugwort doesn't like me preparing dishes, but he has to understand that the guests love my creations!'",
					},
					{
						text = "'Thank you for bringing me the things I needed, ${PLAYER}.'",
					},
				},
			},
			id = '1879048252',
			name = 'By Hoof and Crook',
			rawName = 'By Hoof and Crook',
			category = '34',
			level = '22',
			description = "Some of the guests within The Forsaken Inn have developed a taste for Arinora's pork dishes.",
			questArc = 'Inn Troubles',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879051357',
				npcName = 'Lily Sandheaver',
				text = "'Hello there. I am in need of assistance from one not too familiar with the upper class here in Bree-town. I collect pottery from the ruins of the kingdom of Arnor... well, to be honest, I purchase the pottery. It is a sign of my standing, and for years I have had a greater and higher quality collection than that dreadful Mirabella Underhill!\n\n'The man from whom I purchase the pottery is named Candac Brightwood. I haven't heard from him for a dreadfully long time and am worried about my next delivery. And about Mr. Brightwood's well-being, of course. I need someone to carry a letter to Candac at the Forsaken Inn. Look for the inn along the Great East Road, just past the Midgewater Marshes.\n\n'Mirabella will visit me soon, and if I have nothing new to show her, I will look a fool! You don't want that, do you?'",
			},
			prerequisite = {
				id = '1879048256',
				name = "Candac's Obligation",
				operator = 'NOT_EQUAL',
			},
			nextQuest = {
				id = '1879048256',
				name = "Candac's Obligation",
			},
			rewards = {
				money = {
					gold = '0',
					silver = '7',
					copper = '0',
				},
				XP = {
					quantity = '621',
				},
				object = {
					id = '1879051358',
					name = "Brightwood's Waistcoat",
				},
			},
			completionComment = {
				{
					npc = {
						npcId = '1879048253',
						npcName = 'Candac Brightwood',
					},
					text = {
						{
							text = "'If you ask me, Mrs. Sandheaver is being unreasonable.'",
						},
						{
							text = "'The Munces are having trouble gathering the pottery my customers need.'",
						},
					},
				},
				{
					npc = {
						npcId = '1879051357',
						npcName = 'Lily Sandheaver',
					},
					text = {
						{
							text = "'Candac had better deliver the pottery I need, and soon!'",
						},
						{
							text = "'I am running out of time in which to receive the delivery from Candac! How terrible!'",
						},
					},
				},
			},
			id = '1879048254',
			name = "Candac's Delay",
			rawName = "Candac's Delay",
			category = '28',
			level = '22',
			description = 'Lily Sandheaver, a well-to-do hobbit of Bree, collects pottery gathered from old ruins in the Lone-lands. She is waiting for her latest delivery, but it has not arrived.',
			questArc = 'Traders from Bree',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879048253',
				npcName = 'Candac Brightwood',
				text = "'Mrs. Sandheaver awaits delivery of her latest conversation pieces, and I needn't make her wait any longer. I do not have enough to pay a proper courier at the moment, but when the delivery is complete, I am sure Mrs. Sandheaver will send me the payment I am due.\n\n'The pottery you collected needs to be delivered to Lily. Would you be willing to take these to Bree?\n\n'If you would, take this bundle and deliver it to Lily Sandheaver at the crossroads leading up Bree-hill, west of the Prancing Pony. She will give you payment, which I trust you will bring to me. I will then divide it fairly and give to you your share. Do we have a deal, ${PLAYER}?'",
			},
			rewards = {
				money = {
					gold = '0',
					silver = '1',
					copper = '80',
				},
				XP = {
					quantity = '333',
				},
				selectOneOf = {
					object = {
						{
							id = '1879051361',
							name = "Candac's Helmet",
						},
						{
							id = '1879051362',
							name = "Candac's Wall",
						},
					},
				},
			},
			completionComment = {
				{
					npc = {
						npcId = '1879051357',
						npcName = 'Lily Sandheaver',
					},
					text = {
						{
							text = "'These could be in better condition, but they will do well enough to humiliate Mirabella Underhill!'",
						},
						{
							text = "'Thank you, ${PLAYER}! These relics are most lovely indeed!'",
						},
					},
				},
				{
					npc = {
						npcId = '1879048253',
						npcName = 'Candac Brightwood',
					},
					text = {
						{
							text = "'Thanks for making that delivery!'",
						},
						{
							text = "'You're a great ${RACE}, my friend. You've been a big help!'",
						},
					},
				},
			},
			id = '1879048255',
			name = "Candac's Delivery",
			rawName = "Candac's Delivery",
			category = '34',
			level = '15',
			description = "Lily Sandheaver awaits Candac's latest delivery at the foot of Bree-hill in the town of Bree.",
			hidden = 'true',
		},
		{
			bestower = {
				npcId = '1879048253',
				npcName = 'Candac Brightwood',
				text = "'I will tell you of my troubles, traveller, and see if you can lend me some assistance. The Munces supply me with pottery and other trinkets found throughout the ruins in the Lone-lands. They count themselves folk of these lands, these Eglain, and they depend on such trade for their livelihood. Goblins have overrun the ruins where they are accustomed to gathering the pieces! They cannot collect the pottery shards I require, and I find my deliveries impossible to fulfill! If I cannot send a delivery of pottery to Mrs. Sandheaver in the town of Bree, I will not be paid!\n\n'There is a valley beneath the ruins of Minas Eriol, south-east of The Forsaken Inn, where wolves have been known to prowl. There may be some shattered bits of pottery there and perhaps some whole pieces, as well. If you can bring me some, I will see you paid for your efforts.\n\n'Do be careful... the Lone-lands never cease to be dangerous, especially in these troubled times.'",
			},
			prerequisite = {
				id = '1879048254',
				name = "Candac's Delay",
				status = 'UNDERWAY',
				operator = 'NOT_EQUAL',
			},
			rewards = {
				money = {
					gold = '0',
					silver = '8',
					copper = '50',
				},
				XP = {
					quantity = '1150',
				},
				selectOneOf = {
					object = {
						{
							id = '1879167505',
							name = "Brightwood's Bracelet",
						},
						{
							id = '1879167508',
							name = "Candac's Salvation",
						},
					},
				},
			},
			completionComment = {
				{
					npc = {
						npcId = '1879048253',
						npcName = 'Candac Brightwood',
					},
					text = {
						{
							text = "'Sometimes I fear for the Eglain.'",
						},
						{
							text = "'The Lone-lands are full of danger. That's why I stay at the inn whenever possible!'",
						},
					},
				},
				{
					npc = {
						npcId = '1879051357',
						npcName = 'Lily Sandheaver',
					},
					text = {
						{
							text = "'Candac has not yet delivered the pottery I need!'",
						},
						{
							text = "'I am at the end of my wits with that irresponsible Candac!'",
						},
					},
				},
			},
			id = '1879048256',
			name = "Candac's Obligation",
			rawName = "Candac's Obligation",
			category = '34',
			level = '23',
			description = 'Candac Brightwood buys pottery and other trinkets from the Munces at The Forsaken Inn, but they are having trouble gathering enough pieces with the goblins creeping into the Lone-lands.',
			questArc = 'Traders from Bree',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879049902',
				npcName = 'Frideric the Elder',
				text = "'There is a place where you can find shelter for the night. The innkeeper is an old man now, and the locals are a stern and morose lot, but the beds are warm, and the wine is cold. \n\n'Travel west along the east-west road that brought you here. The Forsaken Inn is by that road.\n\n'I know a man called Candac who might be found at the Inn. If you happen to go there, bid him greetings from Frideric.'",
			},
			rewards = {
				money = {
					gold = '0',
					silver = '4',
					copper = '0',
				},
				XP = {
					quantity = '483',
				},
			},
			id = '1879048257',
			name = 'Ost Guruth to The Forsaken Inn',
			rawName = 'Ost Guruth to The Forsaken Inn',
			category = '34',
			level = '20',
			description = "There's an inn by the road from Ost Guruth where you can find food and shelter and perhaps employment.",
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879048258',
				npcName = 'Gadaric Munce',
				text = "'My people suffered such horrors as Wargs tore through the ruins before the lashes of their masters. Ferocious and unyielding, the beasts devoured many members of my tribe, even as they lay dying.\n\n'The beasts must be punished, and my people must find their strength again. The Wargs dwell now among the ruins of Minas Eriol, the home they stole from my people! We must humiliate the enemy, take their tails, and show them they are weak.\n\n'Hunt down the Wargs, collect their tails, and bring them to me so I can see smiles once more upon the faces of those few that remain of my people!'",
			},
			rewards = {
				money = {
					gold = '0',
					silver = '13',
					copper = '60',
				},
				reputationItem = {
					factionId = '1879161272',
					faction = 'The Eglain',
					amount = '1200',
				},
				XP = {
					quantity = '1610',
				},
				selectOneOf = {
					object = {
						{
							id = '1879051367',
							name = "Munce's Gauntlets",
						},
						{
							id = '1879051368',
							name = "Munce's Axe",
						},
						{
							id = '1879051369',
							name = "Munce's Cape",
						},
					},
				},
			},
			completionComment = {
				npc = {
					npcId = '1879048258',
					npcName = 'Gadaric Munce',
				},
				text = {
					{
						text = "'Perhaps I will make a necklace of these Warg-tails you have brought to me.'",
					},
					{
						text = "'Minas Eriol weeps at every step taken by Warg or goblin within its crumbling walls.'",
					},
				},
			},
			id = '1879048259',
			name = 'Hunters Become Prey',
			rawName = 'Hunters Become Prey',
			category = '34',
			level = '23',
			description = 'The goblins in Annunlos used Wargs, evil beasts of war, to hunt members of the Eglain in the ruins of Minas Eriol. Gadaric wants vengeance on the foul beasts for the murders of his people.',
			questArc = 'Vengeance for the Lost',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879048258',
				npcName = 'Gadaric Munce',
				text = "'Our people suffered an attack that cost many lives, and who knows how many more will be dead of starvation before the year is spent? The goblins must pay for this foul treachery.\n\n'You carry yourself as one familiar with battle. Would you go to the ruins of Minas Eriol, south-east of this inn and destroy the goblins you find there? The Eglain deserve vengeance.'",
			},
			rewards = {
				money = {
					gold = '0',
					silver = '8',
					copper = '50',
				},
				reputationItem = {
					factionId = '1879161272',
					faction = 'The Eglain',
					amount = '1200',
				},
				XP = {
					quantity = '1150',
				},
				selectOneOf = {
					object = {
						{
							id = '1879167454',
							name = "Gadaric's Blade",
						},
						{
							id = '1879167455',
							name = "Munce's Stone",
						},
						{
							id = '1879167510',
							name = "Gadaric's Vengeance",
						},
					},
				},
			},
			completionComment = {
				npc = {
					npcId = '1879048258',
					npcName = 'Gadaric Munce',
				},
				text = {
					{
						text = "'The goblins have paid for the slaughter of my people, but it will never be enough.'",
					},
					{
						text = "'Minas Eriol must not remain a home for the goblins!'",
					},
				},
			},
			id = '1879048260',
			name = 'Vengeance for the Lost',
			rawName = 'Vengeance for the Lost',
			category = '34',
			level = '23',
			description = 'Gadaric Munce desires that vengeance be visited upon the goblins who drove his people from the ruins of Minas Eriol.',
			questArc = 'Vengeance for the Lost',
			hidden = 'false',
		},
		{
			bestower = {
				npcId = '1879051398',
				npcName = 'Leofwenna',
				text = "'${RACE}, you are real...my eyes are not deceived! I am Leofwenna of the Eglain. I have been trapped here for weeks, wounded and unable to make my way out past the goblins.\n\n'My people were overrun by the goblins and were forced to flee. I defended them as best I could, saving some who reached the archway to the west, but my wounds were grievous, and I was fortunate to find this hiding place. I have been luckier still that the goblins that have gone missing thanks to my blade were not missed and had food, though ill fare it was.\n\n'I am still weak and cannot make my way from this place on my own. Will you aid me? You need only take me as far as the archway to the west.'",
			},
			map = {
				mapId = '268437603',
				region = '1',
			},
			rewards = {
				money = {
					gold = '0',
					silver = '8',
					copper = '50',
				},
				reputationItem = {
					factionId = '1879161272',
					faction = 'The Eglain',
					amount = '1200',
				},
				XP = {
					quantity = '1150',
				},
				selectOneOf = {
					object = {
						{
							id = '1879051399',
							name = "Rescuer's Blade",
						},
						{
							id = '1879051400',
							name = "Rescuer's Hands",
						},
					},
				},
			},
			completionComment = {
				npc = {
					npcId = '1879048261',
					npcName = 'Hunulf Munce',
				},
				text = {
					{
						text = "'Thank you for freeing Leofwenna...I had thought her dead!'",
					},
					{
						text = "'The minstrels of the Eglain will sing your praises for years to come!'",
					},
				},
			},
			id = '1879048262',
			name = 'A Daring Rescue',
			rawName = 'A Daring Rescue',
			category = '34',
			level = '23',
			description = "Leofwenna was trapped in the ruins in the south-east when the goblins overran the Eglain's camp there. She has been hiding among the ruins since that time and is need of assistance.",
			hidden = 'false',
		},
	},
}