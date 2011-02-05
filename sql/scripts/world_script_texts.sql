--
-- Version data (part used in command .server info )
--

DELETE FROM sd2_db_version;
INSERT INTO sd2_db_version (version) VALUES ('ScriptDev2 (for MaNGOS 0) ');

--
-- Below contains data for table `script_texts` mainly used in C++ parts.
-- valid entries for table are between -1000000 and -1999999
--

TRUNCATE script_texts;

--
-- -1 000 000 First 100 entries are reserved for special use, do not add regular text here.
--

INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1000000,'<ScriptDev2 Text Entry Missing!>',0,0,0,0,'DEFAULT_TEXT'),
(-1000001,'%s goes into a killing frenzy!',0,2,0,0,'EMOTE_GENERIC_FRENZY_KILL'),
(-1000002,'%s goes into a frenzy!',0,2,0,0,'EMOTE_GENERIC_FRENZY'),
(-1000003,'%s becomes enraged!',0,2,0,0,'EMOTE_GENERIC_ENRAGED'),
(-1000004,'%s goes into a berserker rage!',0,2,0,0,'EMOTE_GENERIC_BERSERK'),
(-1000005,'%s goes into a frenzy!',0,3,0,0,'EMOTE_BOSS_GENERIC_FRENZY'),
(-1000006,'%s becomes enraged!',0,3,0,0,'EMOTE_BOSS_GENERIC_ENRAGED');

--
-- Normal text entries below. Say/Yell/Whisper/Emote for any regular world object.
-- Text entries for text used by creatures in instances are using map id as part of entry.
-- Example: for map 430, the database text entry for all creatures normally on this map start with -1430
-- Values decrement as they are made.
-- For creatures outside instance, use -1 000 100 and below. Decrement value as they are made.
--
-- Comment should contain a unique name that can be easily identified later by using sql queries like for example
-- SELECT * FROM script_texts WHERE comment LIKE '%defias%';
-- Place the define used in script itself at the end of the comment.
--
-- Do not change entry without a very good reason. Localization projects depends on using entries that does not change!
-- Example: UPDATE script_texts SET content_loc1 = 'the translated text' WHERE entry = -1000100;
--

-- -1 000 100 GENERAL MAPS (not instance maps)
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1000100,'Come, little ones. Face me!',0,1,0,0,'azuregos SAY_TELEPORT'),

(-1000101,'Follow me, $N. I\'ll take you to the Defias hideout. But you better protect me or I am as good as dead',0,0,7,0,'defias traitor SAY_START'),
(-1000102,'The entrance is hidden here in Moonbrook. Keep your eyes peeled for thieves. They want me dead.',0,0,7,0,'defias traitor SAY_PROGRESS'),
(-1000103,'You can go tell Stoutmantle this is where the Defias Gang is holed up, $N.',0,0,7,0,'defias traitor SAY_END'),
(-1000104,'%s coming in fast! Prepare to fight!',0,0,7,0,'defias traitor SAY_AGGRO_1'),
(-1000105,'Help!',0,0,7,0,'defias traitor SAY_AGGRO_2'),

(-1000106,'Everyone ready?',0,0,1,0,'torek SAY_READY'),
(-1000107,'Ok, Lets move out!',0,0,1,0,'torek SAY_MOVE'),
(-1000108,'Prepare yourselves. Silverwing is just around the bend.',0,0,1,0,'torek SAY_PREPARE'),
(-1000109,'Silverwing is ours!',0,0,1,0,'torek SAY_WIN'),
(-1000110,'Go report that the outpost is taken. We will remain here.',0,0,1,0,'torek SAY_END'),

(-1000111,'Our house is this way, through the thicket.',0,0,7,0,'magwin SAY_START'),
(-1000112,'Help me!',0,0,7,0,'magwin SAY_AGGRO'),
(-1000113,'My poor family. Everything has been destroyed.',0,0,7,0,'magwin SAY_PROGRESS'),
(-1000114,'Father! Father! You\'re alive!',0,0,7,0,'magwin SAY_END1'),
(-1000115,'You can thank $N for getting me back here safely, father.',0,0,7,0,'magwin SAY_END2'),
(-1000116,'%s hugs her father.',0,2,7,0,'magwin EMOTE_HUG'),

(-1000117,'Thank you for agreeing to help. Now, let\'s get out of here $N.',0,0,1,0,'wounded elf SAY_ELF_START'),
(-1000118,'Over there! They\'re following us!',0,0,1,0,'wounded elf SAY_ELF_SUMMON1'),
(-1000119,'Allow me a moment to rest. The journey taxes what little strength I have.',0,0,1,16,'wounded elf SAY_ELF_RESTING'),
(-1000120,'Did you hear something?',0,0,1,0,'wounded elf SAY_ELF_SUMMON2'),
(-1000121,'Falcon Watch, at last! Now, where\'s my... Oh no! My pack, it\'s missing! Where has -',0,0,1,0,'wounded elf SAY_ELF_COMPLETE'),
(-1000122,'You won\'t keep me from getting to Falcon Watch!',0,0,1,0,'wounded elf SAY_ELF_AGGRO'),

(-1000123,'Ready when you are, $c.',0,0,0,15,'big will SAY_BIG_WILL_READY'),
(-1000124,'The Affray has begun. $n, get ready to fight!',0,0,0,0,'twiggy SAY_TWIGGY_BEGIN'),
(-1000125,'You! Enter the fray!',0,0,0,0,'twiggy SAY_TWIGGY_FRAY'),
(-1000126,'Challenger is down!',0,0,0,0,'twiggy SAY_TWIGGY_DOWN'),
(-1000127,'The Affray is over.',0,0,0,0,'twiggy SAY_TWIGGY_OVER'),

(-1000128,'We need you to send reinforcements to Manaforge Duro, Ardonis. This is not a request, it\'s an order.',0,0,0,0,'dawnforge SAY_COMMANDER_DAWNFORGE_1'),
(-1000129,'You cannot be serious! We are severely understaffed and can barely keep this manaforge functional!',0,0,0,0,'dawnforge SAY_ARCANIST_ARDONIS_1'),
(-1000130,'You will do as ordered. Manaforge Duro has come under heavy attack by mana creatures and the situation is out of control. Failure to comply will not be tolerated!',0,0,0,0,'dawnforge SAY_COMMANDER_DAWNFORGE_2'),
(-1000131,'Indeed, it is not a request.',0,0,0,0,'dawnforge SAY_PATHALEON_CULATOR_IMAGE_1'),
(-1000132,'My lord!',0,0,0,0,'dawnforge SAY_COMMANDER_DAWNFORGE_3'),
(-1000133,'Duro will be reinforced! Ultris was a complete disaster. I will NOT have that mistake repeated!',0,0,0,0,'dawnforge PATHALEON_CULATOR_IMAGE_2'),
(-1000134,'We\'ve had too many setbacks along the way: Hellfire Citadel, Fallen Sky Ridge, Firewing Point... Prince Kael\'thas will tolerate no further delays. I will tolerate nothing other than complete success!',0,0,0,0,'dawnforge PATHALEON_CULATOR_IMAGE_2_1'),
(-1000135,'I am returning to Tempest Keep. See to it that I do not have reason to return!',0,0,0,0,'dawnforge PATHALEON_CULATOR_IMAGE_2_2' ),
(-1000136,'Yes, my lord.',0,0,0,0,'dawnforge COMMANDER_DAWNFORGE_4 SAY_ARCANIST_ARDONIS_2'),
(-1000137,'See to it, Ardonis!',0,0,0,0,'dawnforge COMMANDER_DAWNFORGE_5'),

(-1000138,'Avruu\'s magic... it still controls me. You must fight me, mortal. It\'s the only way to break the spell!',0,0,0,0,'aeranas SAY_SUMMON'),
(-1000139,'Avruu\'s magic is broken! I\'m free once again!',0,0,0,0,'aeranas SAY_FREE'),

(-1000140,'Let\'s go.',0,0,1,0,'lilatha SAY_START'),
(-1000141,'$N, let\'s use the antechamber to the right.',0,0,1,0,'lilatha SAY_PROGRESS1'),
(-1000142,'I can see the light at the end of the tunnel!',0,0,1,0,'lilatha SAY_PROGRESS2'),
(-1000143,'There\'s Farstrider Enclave now, $C. Not far to go... Look out! Troll ambush!!',0,0,1,0,'lilatha SAY_PROGRESS3'),
(-1000144,'Thank you for saving my life and bringing me back to safety, $N',0,0,1,0,'lilatha SAY_END1'),
(-1000145,'Captain Helios, I\'ve been rescued from the Amani Catacombs. Reporting for duty, sir!',0,0,1,0,'lilatha SAY_END2'),
(-1000146,'Liatha, get someone to look at those injuries. Thank you for bringing her back safely.',0,0,1,0,'lilatha CAPTAIN_ANSWER'),

(-1000147,'I remember well the sting of defeat at the conclusion of the Third War. I have waited far too long for my revenge. Now the shadow of the Legion falls over this world. It is only a matter of time until all of your failed creation... is undone.',11332,1,0,0,'kazzak SAY_INTRO'),
(-1000148,'The Legion will conquer all!',11333,1,0,0,'kazzak SAY_AGGRO1'),
(-1000149,'All mortals will perish!',11334,1,0,0,'kazzak SAY_AGGRO2'),
(-1000150,'All life must be eradicated!',11335,1,0,0,'kazzak SAY_SURPREME1'),
(-1000151,'I\'ll rip the flesh from your bones!',11336,1,0,0,'kazzak SAY_SURPREME2'),
(-1000152,'Kirel Narak!',11337,1,0,0,'kazzak SAY_KILL1'),
(-1000153,'Contemptible wretch!',11338,1,0,0,'kazzak SAY_KILL2'),
(-1000154,'The universe will be remade.',11339,1,0,0,'kazzak SAY_KILL3'),
(-1000155,'The Legion... will never... fall.',11340,1,0,0,'kazzak SAY_DEATH'),
(-1000156,'REUSE ME',0,0,0,0,'REUSE ME'),
(-1000157,'Invaders, you dangle upon the precipice of oblivion! The Burning Legion comes and with it comes your end.',0,1,0,0,'kazzak SAY_RAND1'),
(-1000158,'Impudent whelps, you only delay the inevitable. Where one has fallen, ten shall rise. Such is the will of Kazzak...',0,1,0,0,'kazzak SAY_RAND2'),

(-1000159,'Do not proceed. You will be eliminated!',11344,1,0,0,'doomwalker SAY_AGGRO'),
(-1000160,'Tectonic disruption commencing.',11345,1,0,0,'doomwalker SAY_EARTHQUAKE_1'),
(-1000161,'Magnitude set. Release.',11346,1,0,0,'doomwalker SAY_EARTHQUAKE_2'),
(-1000162,'Trajectory locked.',11347,1,0,0,'doomwalker SAY_OVERRUN_1'),
(-1000163,'Engage maximum speed.',11348,1,0,0,'doomwalker SAY_OVERRUN_2'),
(-1000164,'Threat level zero.',11349,1,0,0,'doomwalker SAY_SLAY_1'),
(-1000165,'Directive accomplished.',11350,1,0,0,'doomwalker SAY_SLAY_2'),
(-1000166,'Target exterminated.',11351,1,0,0,'doomwalker SAY_SLAY_3'),
(-1000167,'System failure in five, f-o-u-r...',11352,1,0,0,'doomwalker SAY_DEATH'),

(-1000168,'Who dares awaken Aquementas?',0,1,0,0,'aquementas AGGRO_YELL_AQUE'),

(-1000169,'Muahahahaha! You fool! You\'ve released me from my banishment in the interstices between space and time!',0,1,0,0,'nether_drake SAY_NIHIL_1'),
(-1000170,'All of Draenor shall quick beneath my feet! I will destroy this world and reshape it in my image!',0,1,0,0,'nether_drake SAY_NIHIL_2'),
(-1000171,'Where shall I begin? I cannot bother myself with a worm such as yourself. There is a world to be conquered!',0,1,0,0,'nether_drake SAY_NIHIL_3'),
(-1000172,'No doubt the fools that banished me are long dead. I shall take wing survey my demense. Pray to whatever gods you hold dear that we do not meet again.',0,1,0,0,'nether_drake SAY_NIHIL_4'),
(-1000173,'NOOOOooooooo!',0,1,0,0,'nether_drake SAY_NIHIL_INTERRUPT'),

(-1000174,'Good $N, you are under the spell\'s influence. I must analyze it quickly, then we can talk.',0,0,7,0,'daranelle SAY_SPELL_INFLUENCE'),

(-1000175,'Thank you, mortal.',0,0,11,0,' SAY_JUST_EATEN'),

(-1000176,'The last thing I remember is the ship falling and us getting into the pods. I\'ll go see how I can help. Thank you!',0,0,7,0,'draenei_survivor SAY_HEAL1'),
(-1000177,'$C, Where am I? Who are you? Oh no! What happened to the ship?',0,0,7,0,'draenei_survivor SAY_HEAL2'),
(-1000178,'$C You saved me! I owe you a debt that I can never repay. I\'ll go see if I can help the others.',0,0,7,0,'draenei_survivor SAY_HEAL3'),
(-1000179,'Ugh... what is this place? Is that all that\'s left of the ship over there?',0,0,7,0,'draenei_survivor SAY_HEAL4'),
(-1000180,'Oh, the pain...',0,0,7,0,'draenei_survivor SAY_HELP1'),
(-1000181,'Everything hurts, Please make it stop...',0,0,7,0,'draenei_survivor SAY_HELP2'),
(-1000182,'Ughhh... I hurt. Can you help me?',0,0,7,0,'draenei_survivor SAY_HELP3'),
(-1000183,'I don\'t know if I can make it, please help me...',0,0,7,0,'draenei_survivor SAY_HELP4'),

(-1000184,'Yes Master, all goes along as planned.',0,0,7,0,'engineer_spark SAY_TEXT'),
(-1000185,'%s puts the shell to his ear.',0,2,7,0,'engineer_spark EMOTE_SHELL'),
(-1000186,'Now I cut you!',0,1,7,0,'engineer_spark SAY_ATTACK'),

(-1000187,'Thank you, dear $C, you just saved my life.',0,0,7,0,'faulk SAY_HEAL'),

(-1000188,'Deployment sucessful. Trespassers will be neutralized.',0,0,0,0,'converted_sentry SAY_CONVERTED_1'),
(-1000189,'Objective acquired. Initiating security routines.',0,0,0,0,'converted_sentry SAY_CONVERTED_2'),

(-1000190,'In Nagrand, food hunt ogre!',0,0,0,0,' SAY_LUMP_0'),
(-1000191,'You taste good with maybe a little salt and pepper.',0,0,0,0,' SAY_LUMP_1'),
(-1000192,'OK, OK! Lump give up!',0,0,0,0,' SAY_LUMP_DEFEAT'),

(-1000193,'Thank you, dear $C, you just saved my life.',0,0,1,0,'stillblade SAY_HEAL'),

(-1000194,'I give up! Please don\'t kill me!',0,0,0,0,'unkor SAY_SUBMIT'),

(-1000195,'I choose the third option: KILLING YOU!',0,0,0,0,'floon SAY_FLOON_ATTACK'),

(-1000196,'Belore...',0,0,1,0,'lady_sylvanas SAY_LAMENT_END'),
(-1000197,'%s kneels down and pick up the amulet.',0,2,1,0,'lady_sylvanas EMOTE_LAMENT_END'),

(-1000198,'Taste blade, mongrel!',0,0,0,0,'SAY_GUARD_SIL_AGGRO1'),
(-1000199,'Please tell me that you didn\'t just do what I think you just did. Please tell me that I\'m not going to have to hurt you...',0,0,0,0,'SAY_GUARD_SIL_AGGRO2'),
(-1000200,'As if we don\'t have enough problems, you go and create more!',0,0,0,0,'SAY_GUARD_SIL_AGGRO3'),

(-1000201,'I\'m saved! Thank you, doctor!',0,0,0,0,'injured_patient SAY_DOC1'),
(-1000202,'HOORAY! I AM SAVED!',0,0,0,0,'injured_patient SAY_DOC2'),
(-1000203,'Sweet, sweet embrace... take me...',0,0,0,0,'injured_patient SAY_DOC3'),

(-1000204,'%s looks up at you quizzically. Maybe you should inspect it?',0,2,0,0,'cluck EMOTE_A_HELLO'),
(-1000205,'%s looks at you unexpectadly.',0,2,0,0,'cluck EMOTE_H_HELLO'),
(-1000206,'%s starts pecking at the feed.',0,2,0,0,'cluck EMOTE_CLUCK_TEXT2'),

(-1000207,'You have my blessing',0,0,0,0,'ashyen_and_keleth SAY_REWARD_BLESS'),

(-1000208,'Frenzyheart kill you if you come back. You no welcome here no more!',0,0,0,0,'vekjik SAY_TEXTID_VEKJIK1'),

(-1000209,'Very well. Let\'s see what you have to show me, $N.',0,0,1,0,'anvilward SAY_ANVIL1'),
(-1000210,'What manner of trick is this, $R? If you seek to ambush me, I warn you I will not go down quietly!',0,0,1,0,'anvilward SAY_ANVIL2'),

(-1000211,'Warning! %s emergency shutdown process initiated by $N. Shutdown will complete in two minutes.',0,2,0,0,'manaforge_control EMOTE_START'),
(-1000212,'Emergency shutdown will complete in one minute.',0,2,0,0,'manaforge_control EMOTE_60'),
(-1000213,'Emergency shutdown will complete in thirty seconds.',0,2,0,0,'manaforge_control EMOTE_30'),
(-1000214,'Emergency shutdown will complete in ten seconds.',0,2,0,0,'manaforge_control EMOTE_10'),
(-1000215,'Emergency shutdown complete.',0,2,0,0,'manaforge_control EMOTE_COMPLETE'),
(-1000216,'Emergency shutdown aborted.',0,2,0,0,'manaforge_control EMOTE_ABORT'),

(-1000217,'Greetings, $N. I will guide you through the cavern. Please try and keep up.',0,4,0,0,'WHISPER_CUSTODIAN_1'),
(-1000218,'We do not know if the Caverns of Time have always been accessible to mortals. Truly, it is impossible to tell as the Timeless One is in perpetual motion, changing our timeways as he sees fit. What you see now may very well not exist tomorrow. You may wake up and have no memory of this place.',0,4,0,0,'WHISPER_CUSTODIAN_2'),
(-1000219,'It is strange, I know... Most mortals cannot actually comprehend what they see here, as often, what they see is not anchored within their own perception of reality.',0,4,0,0,'WHISPER_CUSTODIAN_3'),
(-1000220,'Follow me, please.',0,4,0,0,'WHISPER_CUSTODIAN_4'),
(-1000221,'There are only two truths to be found here: First, that time is chaotic, always in flux, and completely malleable and second, perception does not dictate reality.',0,4,0,0,'WHISPER_CUSTODIAN_5'),
(-1000222,'As custodians of time, we watch over and care for Nozdormu\'s realm. The master is away at the moment, which means that attempts are being made to dramatically alter time. The master never meddles in the affairs of mortals but instead corrects the alterations made to time by others. He is reactionary in this regard.',0,4,0,0,'WHISPER_CUSTODIAN_6'),
(-1000223,'For normal maintenance of time, the Keepers of Time are sufficient caretakers. We are able to deal with most ordinary disturbances. I speak of little things, such as rogue mages changing something in the past to elevate their status or wealth in the present.',0,4,0,0,'WHISPER_CUSTODIAN_7'),
(-1000224,'These tunnels that you see are called timeways. They are infinite in number. The ones that currently exist in your reality are what the master has deemed as \'trouble spots.\' These trouble spots may differ completely in theme but they always share a cause. That is, their existence is a result of the same temporal disturbance. Remember that should you venture inside one...',0,4,0,0,'WHISPER_CUSTODIAN_8'),
(-1000225,'This timeway is in great disarray! We have agents inside right now attempting to restore order. What information I have indicates that Thrall\'s freedom is in jeopardy. A malevolent organization known as the Infinite Dragonflight is trying to prevent his escape. I fear without outside assistance, all will be lost.',0,4,0,0,'WHISPER_CUSTODIAN_9'),
(-1000226,'We have very little information on this timeway. Sa\'at has been dispatched and is currently inside. The data we have gathered from his correspondence is that the Infinite Dragonflight are once again attempting to alter time. Could it be that the opening of the Dark Portal is being targeted for sabotage? Let us hope not...',0,4,0,0,'WHISPER_CUSTODIAN_10'),
(-1000227,'This timeway is currently collapsing. What that may hold for the past, present and future is currently unknown...',0,4,0,0,'WHISPER_CUSTODIAN_11'),
(-1000228,'The timeways are currently ranked in order from least catastrophic to most catastrophic. Note that they are all classified as catastrophic, meaning that any single one of these timeways collapsing would mean that your world would end. We only classify them in such a way so that the heroes and adventurers that are sent here know which timeway best suits their abilities.',0,4,0,0,'WHISPER_CUSTODIAN_12'),
(-1000229,'All we know of this timeway is that it leads to Mount Hyjal. The Infinite Dragonflight have gone to great lengths to prevent our involvement. We know next to nothing, mortal. Soridormi is currently attempting to break through the timeway\'s defenses but has thus far been unsuccessful. You might be our only hope of breaking through and resolving the conflict.',0,4,0,0,'WHISPER_CUSTODIAN_13'),
(-1000230,'Our time is at an end $N. I would wish you luck, if such a thing existed.',0,4,0,0,'WHISPER_CUSTODIAN_14'),

(-1000231,'Ah, $GPriest:Priestess; you came along just in time. I appreciate it.',0,0,0,20,'garments SAY_COMMON_HEALED'),
(-1000232,'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those gnolls with your power to back me!',0,0,1,4,'garments SAY_DG_KEL_THANKS'),
(-1000233,'Farewell to you, and may shadow always protect you!',0,0,1,3,'garments SAY_DG_KEL_GOODBYE'),

(-1000234,'Follow me, stranger. This won\'t take long.',0,0,0,0,'SAY_KHAD_SERV_0'),
(-1000235,'Shattrath was once the draenei capital of this world. Its name means "dwelling of light."',0,4,0,0,'SAY_KHAD_SERV_1'),
(-1000236,'When the Burning Legion turned the orcs against the draenei, the fiercest battle was fought here. The draenei fought tooth and nail, but in the end the city fell.',0,4,0,0,'SAY_KHAD_SERV_2'),
(-1000237,'The city was left in ruins and darkness... until the Sha\'tar arrived.',0,4,0,0,'SAY_KHAD_SERV_3'),
(-1000238,'Let us go into the Lower City. I will warn you that as one of the only safe havens in Outland, Shattrath has attracted droves of refugees from all wars, current and past.',0,4,0,0,'SAY_KHAD_SERV_4'),
(-1000239,'The Sha\'tar, or "born from light" are the naaru that came to Outland to fight the demons of the Burning Legion.',0,4,0,0,'SAY_KHAD_SERV_5'),
(-1000240,'They were drawn to the ruins of Shattrath City where a small remnant of the draenei priesthood conducted its rites inside a ruined temple on this very spot.',0,4,0,0,'SAY_KHAD_SERV_6'),
(-1000241,'The priesthood, known as the Aldor, quickly regained its strength as word spread that the naaru had returned and reconstruction soon began. The ruined temple is now used as an infirmary for injured refugees.',0,4,0,0,'SAY_KHAD_SERV_7'),
(-1000242,'It wouldn\'t be long, however, before the city came under attack once again. This time, the attack came from Illidan\'s armies. A large regiment of blood elves had been sent by Illidan\'s ally, Kael\'thas Sunstrider, to lay waste to the city.',0,4,0,0,'SAY_KHAD_SERV_8'),
(-1000243,'As the regiment of blood elves crossed this very bridge, the Aldor\'s exarchs and vindicators lined up to defend the Terrace of Light. But then the unexpected happened.',0,4,0,0,'SAY_KHAD_SERV_9'),
(-1000244,'The blood elves laid down their weapons in front of the city\'s defenders; their leader, a blood elf elder known as Voren\'thal, stormed into the Terrace of Light and demanded to speak to A\'dal.',0,4,0,0,'SAY_KHAD_SERV_10'),
(-1000245,'As the naaru approached him, Voren\'thal kneeled before him and uttered the following words: "I\'ve seen you in a vision, naaru. My race\'s only hope for survival lies with you. My followers and I are here to serve you."',0,4,0,0,'SAY_KHAD_SERV_11'),
(-1000246,'The defection of Voren\'thal and his followers was the largest loss ever incurred by Kael\'s forces. And these weren\'t just any blood elves. Many of the best and brightest amongst Kael\'s scholars and magisters had been swayed by Voren\'thal\'s influence.',0,4,0,0,'SAY_KHAD_SERV_12'),
(-1000247,'The naaru accepted the defectors, who would become known as the Scryers; their dwelling lies in the platform above. Only those initiated with the Scryers are allowed there.',0,4,0,0,'SAY_KHAD_SERV_13'),
(-1000248,'The Aldor are followers of the Light and forgiveness and redemption are values they understand. However, they found hard to forget the deeds of the blood elves while under Kael\'s command.',0,4,0,0,'SAY_KHAD_SERV_14'),
(-1000249,'Many of the priesthood had been slain by the same magisters who now vowed to serve the naaru. They were not happy to share the city with their former enemies.',0,4,0,0,'SAY_KHAD_SERV_15'),
(-1000250,'The Aldor\'s most holy temple and its surrounding dwellings lie on the terrace above. As a holy site, only the initiated are welcome inside.',0,4,0,0,'SAY_KHAD_SERV_16'),
(-1000251,'The attacks against Shattrath continued, but the city did not fall\, as you can see. On the contrary, the naaru known as Xi\'ri led a successful incursion into Shadowmoon Valley - Illidan\'s doorstep.',0,4,0,0,'SAY_KHAD_SERV_17'),
(-1000252,'There he continues to wage war on Illidan with the assistance of the Aldor and the Scryers. The two factions have not given up on their old feuds, though.',0,4,0,0,'SAY_KHAD_SERV_18'),
(-1000253,'Such is their animosity that they vie for the honor of being sent to assist the naaru there. Each day, that decision is made here by A\'dal. The armies gather here to receive A\'dal\'s blessing before heading to Shadowmoon.',0,4,0,0,'SAY_KHAD_SERV_19'),
(-1000254,'Khadgar should be ready to see you again. Just remember that to serve the Sha\'tar you will most likely have to ally with the Aldor or the Scryers. And seeking the favor of one group will cause the others\' dislike.',0,4,0,0,'SAY_KHAD_SERV_20'),
(-1000255,'Good luck stranger, and welcome to Shattrath City.',0,4,0,0,'SAY_KHAD_SERV_21'),

(-1000256,'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those murlocs with the Light on my side!',0,0,7,4,'garments SAY_ROBERTS_THANKS'),
(-1000257,'Farewell to you, and may the Light be with you always.',0,0,7,3,'garments SAY_ROBERTS_GOODBYE'),
(-1000258,'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those humans with your power to back me!',0,0,1,4,'garments SAY_KORJA_THANKS'),
(-1000259,'Farewell to you, and may our ancestors be with you always!',0,0,1,3,'garments SAY_KORJA_GOODBYE'),
(-1000260,'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those wendigo with the Light on my side!',0,0,7,4,'garments SAY_DOLF_THANKS'),
(-1000261,'Farewell to you, and may the Light be with you always.',0,0,7,3,'garments SAY_DOLF_GOODBYE'),
(-1000262,'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those corrupt timberlings with Elune\'s power behind me!',0,0,2,4,'garments SAY_SHAYA_THANKS'),
(-1000263,'Farewell to you, and may Elune be with you always.',0,0,2,3,'garments SAY_SHAYA_GOODBYE'),

(-1000264,'Ok, $N. Follow me to the cave where I\'ll attempt to harness the power of the rune stone into these goggles.',0,0,0,1,'phizzlethorpe SAY_PROGRESS_1'),
(-1000265,'I discovered this cave on our first day here. I believe the energy in the stone can be used to our advantage.',0,0,0,1,'phizzlethorpe SAY_PROGRESS_2'),
(-1000266,'I\'ll begin drawing energy from the stone. Your job, $N, is to defend me. This place is cursed... trust me.',0,0,0,1,'phizzlethorpe SAY_PROGRESS_3'),
(-1000267,'%s begins tinkering with the goggles before the stone.',0,2,0,0,'phizzlethorpe EMOTE_PROGRESS_4'),
(-1000268,'Help!!! Get these things off me so I can get my work done!',0,0,0,0,'phizzlethorpe SAY_AGGRO'),
(-1000269,'Almost done! Just a little longer!',0,0,0,1,'phizzlethorpe SAY_PROGRESS_5'),
(-1000270,'I\'ve done it! I have harnessed the power of the stone into the goggles! Let\'s get out of here!',0,0,0,1,'phizzlethorpe SAY_PROGRESS_6'),
(-1000271,'Phew! Glad to be back from that creepy cave.',0,0,0,1,'phizzlethorpe SAY_PROGRESS_7'),
(-1000272,'%s hands one glowing goggles over to Doctor Draxlegauge.',0,2,0,0,'phizzlethorpe EMOTE_PROGRESS_8'),
(-1000273,'Doctor Draxlegauge will give you further instructions, $N. Many thanks for your help!',0,0,0,1,'phizzlethorpe SAY_PROGRESS_9'),

(-1000274,'Time to teach you a lesson in manners, little $Gboy:girl;!',0,0,0,0,'larry SAY_START'),
(-1000275,'Now I\'m gonna give you to the count of \'3\' to get out of here before I sick the dogs on you.',0,0,0,0,'larry SAY_COUNT'),
(-1000276,'1...',0,0,0,0,'larry SAY_COUNT_1'),
(-1000277,'2...',0,0,0,0,'larry SAY_COUNT_2'),
(-1000278,'Time to meet your maker!',0,0,0,0,'larry SAY_ATTACK_5'),
(-1000279,'Alright, we give up! Don\'t hurt us!',0,0,0,0,'larry SAY_GIVEUP'),

(-1000280,'A shadowy, sinister presence has invaded the Emerald Dream. Its power is poised to spill over into our world, $N. We must oppose it! That\'s why I cannot accompany you in person.',0,0,0,1,'clintar SAY_START'),
(-1000281,'The Emerald Dream will never be yours!',0,0,0,0,'clintar SAY_AGGRO_1'),
(-1000282,'Begone from this place!',0,0,0,0,'clintar SAY_AGGRO_2'),
(-1000283,'That\'s the first relic, but there are still two more. Follow me, $N.',0,0,0,0,'clintar SAY_RELIC1'),
(-1000284,'I\'ve recovered the second relic. Take a moment to rest, and then we\'ll continue to the last reliquary.',0,0,0,0,'clintar SAY_RELIC2'),
(-1000285,'We have all three of the relics, but my energy is rapidly fading. We must make our way back to Dreamwarden Lurosa! He will let you know what to do next.',0,0,0,0,'clintar SAY_RELIC3'),
(-1000286,'Lurosa, I am entrusting the Relics of Aviana to $N, who will take them to Morthis Whisperwing. I must return completely to the Emerald Dream now. Do not let $N fail!',0,0,0,1,'clintar SAY_END'),

(-1000287,'Emergency power activated! Initializing ambulanory motor! CLUCK!',0,0,0,0,'oox SAY_OOX_START'),
(-1000288,'Physical threat detected! Evasive action! CLUCK!',0,0,0,0,'oox SAY_OOX_AGGRO1'),
(-1000289,'Thread analyzed! Activating combat plan beta! CLUCK!',0,0,0,0,'oox SAY_OOX_AGGRO2'),
(-1000290,'CLUCK! Sensors detect spatial anomaly - danger imminent! CLUCK!',0,0,0,0,'oox SAY_OOX_AMBUSH'),
(-1000291,'No one challanges the Wastewander nomads - not even robotic chickens! ATTACK!',0,0,0,0,'oox SAY_OOX17_AMBUSH_REPLY'),
(-1000292,'Cloaking systems online! CLUCK! Engaging cloak for transport to Booty Bay!',0,0,0,0,'oox SAY_OOX_END'),

(-1000293,'To the house! Stay close to me, no matter what! I have my gun and ammo there!',0,0,7,0,'stilwell SAY_DS_START'),
(-1000294,'We showed that one!',0,0,7,0,'stilwell SAY_DS_DOWN_1'),
(-1000295,'One more down!',0,0,7,0,'stilwell SAY_DS_DOWN_2'),
(-1000296,'We\'ve done it! We won!',0,0,7,0,'stilwell SAY_DS_DOWN_3'),
(-1000297,'Meet me down by the orchard--I just need to put my gun away.',0,0,7,0,'stilwell SAY_DS_PROLOGUE'),

(-1000298,'Alright, alright I think I can figure out how to operate this thing...',0,0,0,393,'wizzlecrank SAY_START'),
(-1000299,'Arrrgh! This isn\'t right!',0,0,0,0,'wizzlecrank SAY_STARTUP1'),
(-1000300,'Okay, I think I\'ve got it, now. Follow me, $n!',0,0,0,1,'wizzlecrank SAY_STARTUP2'),
(-1000301,'There\'s the stolen shredder! Stop it or Lugwizzle will have our hides!',0,1,0,0,'wizzlecrank SAY_MERCENARY'),
(-1000302,'Looks like we\'re out of woods, eh? Wonder what this does...',0,0,0,0,'wizzlecrank SAY_PROGRESS_1'),
(-1000303,'Come on, don\'t break down on me now!',0,0,0,393,'wizzlecrank SAY_PROGRESS_2'),
(-1000304,'That was a close one! Well, let\'s get going, it\'s still a ways to Ratchet!',0,0,0,0,'wizzlecrank SAY_PROGRESS_3'),
(-1000305,'Hmm... I don\'t think this blinking red light is a good thing...',0,0,0,0,'wizzlecrank SAY_END'),

(-1000306,'Let\'s get to the others, and keep an eye open for those wolves cutside...',0,0,1,0,'erland SAY_START_1'),
(-1000307,'Be careful, $N. Those wolves like to hide among the trees.',0,0,1,0,'erland SAY_START_2'),
(-1000308,'A $C attacks!',0,0,1,0,'erland SAY_AGGRO_1'),
(-1000309,'Beware! I am under attack!',0,0,1,0,'erland SAY_AGGRO_2'),
(-1000310,'Oh no! A $C is upon us!',0,0,1,0,'erland SAY_AGGRO_3'),
(-1000311,'We\'re almost there!',0,0,1,0,'erland SAY_PROGRESS'),
(-1000312,'We made it! Thanks, $N. I couldn\'t have gotten without you.',0,0,1,0,'erland SAY_END'),
(-1000313,'It\'s good to see you again, Erland. What is your report?',0,0,33,1,'erland SAY_RANE'),
(-1000314,'Masses of wolves are to the east, and whoever lived at Malden\'s Orchard is gone.',0,0,1,1,'erland SAY_RANE_REPLY'),
(-1000315,'If I am excused, then I\'d like to check on Quinn...',0,0,1,1,'erland SAY_CHECK_NEXT'),
(-1000316,'Hello, Quinn. How are you faring?',0,0,1,1,'erland SAY_QUINN'),
(-1000317,'I\'ve been better. Ivar the Foul got the better of me...',0,0,33,1,'erland SAY_QUINN_REPLY'),
(-1000318,'Try to take better care of yourself, Quinn. You were lucky this time.',0,0,1,1,'erland SAY_BYE'),

(-1000319,'Let the trial begin, Bloodwrath, attack!',0,1,1,0,'kelerun SayId1'),
(-1000320,'Champion Lightrend, make me proud!',0,1,1,0,'kelerun SayId2'),
(-1000321,'Show this upstart how a real Blood Knight fights, Swiftblade!',0,1,1,0,'kelerun SayId3'),
(-1000322,'Show $n the meaning of pain, Sunstriker!',0,1,1,0,'kelerun SayId4'),

(-1000323,'Mist! I feared I would never see you again! Yes, I am well, do not worry for me. You must rest and recover your health.',0,0,7,0,'mist SAY_AT_HOME'),
(-1000324,'%s growls in acknowledgement before straightening and making her way off into the forest.',0,2,0,0,'mist EMOTE_AT_HOME'),

(-1000325,'"Threshwackonator First Mate unit prepared to follow"',0,2,0,0,'threshwackonator EMOTE_START'),
(-1000326,'YARRR! Swabie, what have ye done?! He\'s gone mad! Baton him down the hatches! Hoist the mast! ARRRR! Every man for hi\'self!',0,0,7,0,'threshwackonator SAY_AT_CLOSE'),

(-1000327,'Ok, $n, let\'s go find where I left that mysterious fossil. Follow me!',0,0,7,0,'remtravel SAY_REM_START'),
(-1000328,'Now where did I put that mysterious fossil? Ah, maybe up there...',0,0,7,0,'remtravel SAY_REM_RAMP1_1'),
(-1000329,'Hrm, nothing up here.',0,0,7,0,'remtravel SAY_REM_RAMP1_2'),
(-1000330,'No mysterious fossil here... Ah, but my copy of Green Hills of Stranglethorn. What a good book!',0,0,7,0,'remtravel SAY_REM_BOOK'),
(-1000331,'I bet you I left it in the tent!',0,0,7,0,'remtravel SAY_REM_TENT1_1'),
(-1000332,'Oh wait, that\'s Hollee\'s tent... and it\'s empty.',0,0,7,0,'remtravel SAY_REM_TENT1_2'),
(-1000333,'Interesting... I hadn\'t noticed this earlier...',0,0,7,0,'remtravel SAY_REM_MOSS'),
(-1000334,'%s inspects the ancient, mossy stone.',0,2,7,0,'remtravel EMOTE_REM_MOSS'),
(-1000335,'Oh wait! I\'m supposed to be looking for that mysterious fossil!',0,0,7,0,'remtravel SAY_REM_MOSS_PROGRESS'),
(-1000336,'Nope. didn\'t leave the fossil back here!',0,0,7,0,'remtravel SAY_REM_PROGRESS'),
(-1000337,'Ah. I remember now! I gave the mysterious fossil to Hollee! Check with her.',0,0,7,0,'remtravel SAY_REM_REMEMBER'),
(-1000338,'%s goes back to work, oblivious to everything around him.',0,2,7,0,'remtravel EMOTE_REM_END'),
(-1000339,'Something tells me this $r wants the mysterious fossil too. Help!',0,0,7,0,'remtravel SAY_REM_AGGRO'),

(-1000340,'%s howls in delight at the sight of his lunch!',0,2,0,0,'kyle EMOTE_SEE_LUNCH'),
(-1000341,'%s eats his lunch.',0,2,0,0,'kyle EMOTE_EAT_LUNCH'),
(-1000342,'%s thanks you with a special dance.',0,2,0,0,'kyle EMOTE_DANCE'),

(-1000343,'Is the way clear? Let\'s get out while we can, $N.',0,0,0,0,'kayra SAY_START'),
(-1000344,'Looks like we won\'t get away so easy. Get ready!',0,0,0,0,'kayra SAY_AMBUSH1'),
(-1000345,'Let\'s keep moving. We\'re not safe here!',0,0,0,0,'kayra SAY_PROGRESS'),
(-1000346,'Look out, $N! Enemies ahead!',0,0,0,0,'kayra SAY_AMBUSH2'),
(-1000347,'We\'re almost to the refuge! Let\'s go.',0,0,0,0,'kayra SAY_END'),

(-1000348,'Ah...the wondrous sound of kodos. I love the way they make the ground shake... inspect the beast for me.',0,0,0,0,'kodo round SAY_SMEED_HOME_1'),
(-1000349,'Hey, look out with that kodo! You had better inspect that beast before i give you credit!',0,0,0,0,'kodo round SAY_SMEED_HOME_2'),
(-1000350,'That kodo sure is a beauty. Wait a minute, where are my bifocals? Perhaps you should inspect the beast for me.',0,0,0,0,'kodo round SAY_SMEED_HOME_3'),

(-1000351,'You, there! Hand over that moonstone and nobody gets hurt!',0,1,0,0,'sprysprocket SAY_START'),
(-1000352,'%s takes the Southfury moonstone and escapes into the river. Follow her!',0,3,0,0,'sprysprocket EMOTE_START'),
(-1000353,'Just chill!',0,4,0,0,'sprysprocket SAY_WHISPER_CHILL'),
(-1000354,'Stupid grenade picked a fine time to backfire! So much for high quality goblin engineering!',0,1,0,0,'sprysprocket SAY_GRENADE_FAIL'),
(-1000355,'All right, you win! I surrender! Just don\'t hurt me!',0,1,0,0,'sprysprocket SAY_END'),

(-1000356,'Okay, okay... gimme a minute to rest now. You gone and beat me up good.',0,0,1,14,'calvin SAY_COMPLETE'),

(-1000357,'Let\'s go before they find out I\'m free!',0,0,0,1,'KAYA_SAY_START'),
(-1000358,'Look out! We\'re under attack!',0,0,0,0,'KAYA_AMBUSH'),
(-1000359,'Thank you for helping me. I know my way back from here.',0,0,0,0,'KAYA_END'),

(-1000360,'The strands of LIFE have been severed! The Dreamers must be avenged!',0,1,0,0,' ysondre SAY_AGGRO'),
(-1000361,'Come forth, ye Dreamers - and claim your vengeance!',0,1,0,0,' ysondre SAY_SUMMONDRUIDS'),

(-1000362,'Let\'s go $N. I am ready to reach Whitereach Post.',0,0,1,0,'paoka SAY_START'),
(-1000363,'Now this looks familiar. If we keep heading east, I think we can... Ahh, Wyvern on the attack!',0,0,1,0,'paoka SAY_WYVERN'),
(-1000364,'Thanks a bunch... I can find my way back to Whitereach Post from here. Be sure to talk with Motega Firemane; perhaps you can keep him from sending me home.',0,0,1,0,'paoka SAY_COMPLETE'),

(-1000365,'Be on guard... Arnak has some strange power over the Grimtotem... they will not be happy to see me escape.',0,0,1,0,'lakota SAY_LAKO_START'),
(-1000366,'Look out, the Grimtotem are upon us!',0,0,1,0,'lakota SAY_LAKO_LOOK_OUT'),
(-1000367,'Here they come.',0,0,1,0,'lakota SAY_LAKO_HERE_COME'),
(-1000368,'More Grimtotems are coming this way!',0,0,1,0,'lakota SAY_LAKO_MORE'),
(-1000369,'Finally, free at last... I must be going now, thanks for helping me escape. I can get back to Freewind Post by myself.',0,0,1,0,'lakota SAY_LAKO_END'),

(-1000370,'Stay close, $n. I\'ll need all the help I can get to break out of here. Let\'s go!',0,0,1,1,'gilthares SAY_GIL_START'),
(-1000371,'At last! Free from Northwatch Hold! I need a moment to catch my breath...',0,0,1,5,'gilthares SAY_GIL_AT_LAST'),
(-1000372,'Now i feel better. Let\'s get back to Ratchet. Come on, $n.',0,0,1,23,'gilthares SAY_GIL_PROCEED'),
(-1000373,'Looks like the Southsea Freeboters are heavily entrenched on the coast. This could get rough.',0,0,1,25,'gilthares SAY_GIL_FREEBOOTERS'),
(-1000374,'Help! $C attacking!',0,0,1,0,'gilthares SAY_GIL_AGGRO_1'),
(-1000375,'$C heading this way fast! Time for revenge!',0,0,1,0,'gilthares SAY_GIL_AGGRO_2'),
(-1000376,'$C coming right at us!',0,0,1,0,'gilthares SAY_GIL_AGGRO_3'),
(-1000377,'Get this $C off of me!',0,0,1,0,'gilthares SAY_GIL_AGGRO_4'),
(-1000378,'Almost back to Ratchet! Let\'s keep up the pace...',0,0,1,0,'gilthares SAY_GIL_ALMOST'),
(-1000379,'Ah, the sweet salt air of Ratchet.',0,0,1,0,'gilthares SAY_GIL_SWEET'),
(-1000380,'Captain Brightsun, $N here has freed me! $N, i am certain the Captain will reward your bravery.',0,0,1,66,'gilthares SAY_GIL_FREED'),

(-1000381,'I sense the tortured spirits, $n. They are this way, come quickly!',0,0,0,1,'wilda SAY_WIL_START'),
(-1000382,'Watch out!',0,0,0,0,'wilda SAY_WIL_AGGRO1'),
(-1000383,'Naga attackers! Defend yourself!',0,0,0,0,'wilda SAY_WIL_AGGRO2'),
(-1000384,'Grant me protection $n, i must break trough their foul magic!',0,0,0,0,'wilda SAY_WIL_PROGRESS1'),
(-1000385,'The naga of Coilskar are exceptionally cruel to their prisoners. It is a miracle that I survived inside that watery prison for as long as I did. Earthmother be praised.',0,0,0,0,'wilda SAY_WIL_PROGRESS2'),
(-1000386,'Now we must find the exit.',0,0,0,0,'wilda SAY_WIL_FIND_EXIT'),
(-1000387,'Lady Vashj must answer for these atrocities. She must be brought to justice!',0,0,0,0,'wilda SAY_WIL_PROGRESS4'),
(-1000388,'The tumultuous nature of the great waterways of Azeroth and Draenor are a direct result of tormented water spirits.',0,0,0,0,'wilda SAY_WIL_PROGRESS5'),
(-1000389,'It shouldn\'t be much further, $n. The exit is just up ahead.',0,0,0,0,'wilda SAY_WIL_JUST_AHEAD'),
(-1000390,'Thank you, $n. Please return to my brethren at the Altar of Damnation, near the Hand of Gul\'dan, and tell them that Wilda is safe. May the Earthmother watch over you...',0,0,0,0,'wilda SAY_WIL_END'),

(-1000391,'I\'m Thirsty.',0,0,0,0,'tooga SAY_TOOG_THIRST'),
(-1000392,'Torta must be so worried.',0,0,0,0,'tooga SAY_TOOG_WORRIED'),
(-1000393,'Torta, my love! I have returned at long last.',0,0,0,0,'tooga SAY_TOOG_POST_1'),
(-1000394,'You have any idea how long I\'ve been waiting here? And where\'s dinner? All that time gone and nothing to show for it?',0,0,0,0,'tooga SAY_TORT_POST_2'),
(-1000395,'My dearest Torta. I have been gone for so long. Finally we are reunited. At long last our love can blossom again.',0,0,0,0,'tooga SAY_TOOG_POST_3'),
(-1000396,'Enough with the rambling. I am starving! Now, get your dusty shell into that ocean and bring momma some grub.',0,0,0,0,'tooga SAY_TORT_POST_4'),
(-1000397,'Yes Torta. Whatever your heart desires...',0,0,0,0,'tooga SAY_TOOG_POST_5'),
(-1000398,'And try not to get lost this time...',0,0,0,0,'tooga SAY_TORT_POST_6'),

(-1000399,'Peace is but a fleeting dream! Let the NIGHTMARE reign!',0,1,0,0,'taerar SAY_AGGRO'),
(-1000400,'Children of Madness - I release you upon this world!',0,1,0,0,'taerar SAY_SUMMONSHADE'),

(-1000401,'Hope is a DISEASE of the soul! This land shall wither and die!',0,1,0,0,'emeriss SAY_AGGRO'),
(-1000402,'Taste your world\'s corruption!',0,1,0,0,'emeriss SAY_CASTCORRUPTION'),

(-1000403,'Rin\'ji is free!',0,0,0,0,'SAY_RIN_FREE'),
(-1000404,'Attack my sisters! The troll must not escape!',0,0,0,0,'SAY_RIN_BY_OUTRUNNER'),
(-1000405,'Rin\'ji needs help!',0,0,1,0,'SAY_RIN_HELP_1'),
(-1000406,'Rin\'ji is being attacked!',0,0,1,0,'SAY_RIN_HELP_2'),
(-1000407,'Rin\'ji can see road now, $n. Rin\'ji knows the way home.',0,0,1,0,'SAY_RIN_COMPLETE'),
(-1000408,'Rin\'ji will tell you secret now... $n, should go to the Overlook Cliffs. Rin\'ji hid something on island  there',0,0,1,0,'SAY_RIN_PROGRESS_1'),
(-1000409,'You find it, you keep it! Don\'t tell no one that Rin\'ji talked to you!',0,0,1,0,'SAY_RIN_PROGRESS_2'),

(-1000410,'Here they come! Defend yourself!',0,0,1,5,'kanati SAY_KAN_START'),

(-1000411,'Why don\'t we deal with you now, Hendel? Lady Proudmoore will speak for you back in the tower.',0,0,7,0,'hendel SAY_PROGRESS_1_TER'),
(-1000412,'Please... please... Miss Proudmore. I didn\'t mean to...',0,0,7,0,'hendel SAY_PROGRESS_2_HEN'),
(-1000413,'I apologize for taking so long to get here. I wanted Lady Proudmoore to be present also.',0,0,7,0,'hendel SAY_PROGRESS_3_TER'),
(-1000414,'We can only stay a few moments before returning to the tower. If you wish to speak to us more you may find us there.',0,0,7,0,'hendel SAY_PROGRESS_4_TER'),
(-1000415,'%s, too injured, gives up the chase.',0,2,0,0,'hendel EMOTE_SURRENDER'),

(-1000416,'Well, I\'m not sure how far I\'ll make it in this state... I\'m feeling kind of faint...',0,0,0,0,'ringo SAY_RIN_START_1'),
(-1000417,'Remember, if I faint again, the water that Spraggle gave you will revive me.',0,0,0,0,'ringo SAY_RIN_START_2'),
(-1000418,'The heat... I can\'t take it...',0,0,0,0,'ringo SAY_FAINT_1'),
(-1000419,'Maybe... you could carry me?',0,0,0,0,'ringo SAY_FAINT_2'),
(-1000420,'Uuuuuuggggghhhhh....',0,0,0,0,'ringo SAY_FAINT_3'),
(-1000421,'I\'m not feeling so well...',0,0,0,0,'ringo SAY_FAINT_4'),
(-1000422,'Where... Where am I?',0,0,0,0,'ringo SAY_WAKE_1'),
(-1000423,'I am feeling a little better now, thank you.',0,0,0,0,'ringo SAY_WAKE_2'),
(-1000424,'Yes, I must go on.',0,0,0,0,'ringo SAY_WAKE_3'),
(-1000425,'How am I feeling? Quite soaked, thank you.',0,0,0,0,'ringo SAY_WAKE_4'),
(-1000426,'Spraggle! I didn\'t think I\'d make it back!',0,0,0,0,'ringo SAY_RIN_END_1'),
(-1000427,'Ringo! You\'re okay!',0,0,0,0,'ringo SAY_SPR_END_2'),
(-1000428,'Oh... I\'m feeling faint...',0,0,0,0,'ringo SAY_RIN_END_3'),
(-1000429,'%s collapses onto the ground.',0,2,0,0,'ringo EMOTE_RIN_END_4'),
(-1000430,'%s stands up after a short pause.',0,2,0,0,'ringo EMOTE_RIN_END_5'),
(-1000431,'Ugh.',0,0,0,0,'ringo SAY_RIN_END_6'),
(-1000432,'Ringo? Wake up! Don\'t worry, I\'ll take care of you.',0,0,0,0,'ringo SAY_SPR_END_7'),
(-1000433,'%s fades away after a long pause.',0,2,0,0,'ringo EMOTE_RIN_END_8'),

(-1000434,'Liladris has been waiting for me at Maestra\'s Post, so we should make haste, $N.',0,0,0,0,'kerlonian SAY_KER_START'),
(-1000435,'%s looks very sleepy...',0,2,0,0,'kerlonian EMOTE_KER_SLEEP_1'),
(-1000436,'%s suddenly falls asleep',0,2,0,0,'kerlonian EMOTE_KER_SLEEP_2'),
(-1000437,'%s begins to drift off...',0,2,0,0,'kerlonian EMOTE_KER_SLEEP_3'),
(-1000438,'This looks like the perfect place for a nap...',0,0,0,0,'kerlonian SAY_KER_SLEEP_1'),
(-1000439,'Yaaaaawwwwwnnnn...',0,0,0,0,'kerlonian SAY_KER_SLEEP_2'),
(-1000440,'Oh, I am so tired...',0,0,0,0,'kerlonian SAY_KER_SLEEP_3'),
(-1000441,'You don\'t mind if I stop here for a moment, do you?',0,0,0,0,'kerlonian SAY_KER_SLEEP_4'),
(-1000442,'Be on the alert! The Blackwood furbolgs are numerous in the area...',0,0,0,0,'kerlonian SAY_KER_ALERT_1'),
(-1000443,'It\'s quiet... Too quiet...',0,0,0,0,'kerlonian SAY_KER_ALERT_2'),
(-1000444,'Oh, I can see Liladris from here... Tell her I\'m here, won\'t you?',0,0,0,0,'kerlonian SAY_KER_END'),
(-1000445,'%s wakes up!',0,2,0,0,'kerlonian EMOTE_KER_AWAKEN'),

(-1000446,'A-Me good. Good, A-Me. Follow... follow A-Me. Home. A-Me go home.',0,0,0,0,'ame01 SAY_AME_START'),
(-1000447,'Good... good, A-Me. A-Me good. Home. Find home.',0,0,0,0,'ame01 SAY_AME_PROGRESS'),
(-1000448,'A-Me home! A-Me good! Good A-Me. Home. Home. Home.',0,0,0,0,'ame01 SAY_AME_END'),
(-1000449,'$c, no hurt A-Me. A-Me good.',0,0,0,0,'ame01 SAY_AME_AGGRO1'),
(-1000450,'Danger. Danger! $c try hurt A-Me.',0,0,0,0,'ame01 SAY_AME_AGGRO2'),
(-1000451,'Bad, $c. $c, bad!',0,0,0,0,'ame01 SAY_AME_AGGRO3'),

(-1000452,'I noticed some fire on that island over there. A human, too. Let\'s go check it out, $n.',0,0,1,0,'ogron SAY_OGR_START'),
(-1000453,'That\'s Reethe alright. Let\'s go see what he has to say, yeah?',0,0,1,1,'ogron SAY_OGR_SPOT'),
(-1000454,'W-what do you want? Just leave me alone...',0,0,0,6,'ogron SAY_OGR_RET_WHAT'),
(-1000455,'I swear. I didn\'t steal anything from you! Here, take some of my supplies, just go away!',0,0,0,27,'ogron SAY_OGR_RET_SWEAR'),
(-1000456,'Just tell us what you know about the Shady Rest Inn, and I won\'t bash your skull in.',0,0,1,0,'ogron SAY_OGR_REPLY_RET'),
(-1000457,'I... Well, I may of taken a little thing or two from the inn... but what would an ogre care about that?',0,0,0,6,'ogron SAY_OGR_RET_TAKEN'),
(-1000458,'Look here, if you don\'t tell me about the fire--',0,0,1,0,'ogron SAY_OGR_TELL_FIRE'),
(-1000459,'Not one step closer, ogre!',0,0,0,27,'ogron SAY_OGR_RET_NOCLOSER'),
(-1000460,'And I don\'t know anything about this fire of yours...',0,0,0,0,'ogron SAY_OGR_RET_NOFIRE'),
(-1000461,'What was that? Did you hear something?',0,0,0,0,'ogron SAY_OGR_RET_HEAR'),
(-1000462,'Paval Reethe! Found you at last. And consorting with ogres now? No fear, even deserters and traitors are afforded some mercy.',0,0,0,0,'ogron SAY_OGR_CAL_FOUND'),
(-1000463,'Private, show Lieutenant Reethe some mercy.',0,0,0,29,'ogron SAY_OGR_CAL_MERCY'),
(-1000464,'Gladly, sir.',0,0,0,0,'ogron SAY_OGR_HALL_GLAD'),
(-1000465,'%s staggers backwards as the arrow lodges itself deeply in his chest.',0,2,0,0,'ogron EMOTE_OGR_RET_ARROW'),
(-1000466,'Ugh... Hallan, didn\'t think you had it in you...',0,0,0,34,'ogron SAY_OGR_RET_ARROW'),
(-1000467,'Now, let\'s clean up the rest of the trash, men!',0,0,0,0,'ogron SAY_OGR_CAL_CLEANUP'),
(-1000468,'Damn it! You\'d better not die on me, human!',0,0,1,0,'ogron SAY_OGR_NODIE'),
(-1000469,'Still with us, Reethe?',0,0,1,0,'ogron SAY_OGR_SURVIVE'),
(-1000470,'Must be your lucky day. Alright, I\'ll talk. Just leave me alone. Look, you\'re not going to believe me, but it wa... oh, Light, looks like the girl could shoot...',0,0,0,0,'ogron SAY_OGR_RET_LUCKY'),
(-1000471,'By the way, thanks for watching my back.',0,0,1,0,'ogron SAY_OGR_THANKS'),

(-1000472,'1...',0,3,0,0,'mana bomb SAY_COUNT_1'),
(-1000473,'2...',0,3,0,0,'mana bomb SAY_COUNT_2'),
(-1000474,'3...',0,3,0,0,'mana bomb SAY_COUNT_3'),
(-1000475,'4...',0,3,0,0,'mana bomb SAY_COUNT_4'),
(-1000476,'5...',0,3,0,0,'mana bomb SAY_COUNT_5'),

(-1000477,'Let us leave this place. I\'ve had enough of these madmen!',0,0,0,0,'akuno SAY_AKU_START'),
(-1000478,'You\'ll go nowhere, fool!',0,0,0,0,'akuno SAY_AKU_AMBUSH_A'),
(-1000479,'Beware! More cultists come!',0,0,0,0,'akuno SAY_AKU_AMBUSH_B'),
(-1000480,'You will not escape us so easily!',0,0,0,0,'akuno SAY_AKU_AMBUSH_B_REPLY'),
(-1000481,'I can find my way from here. My friend Mekeda will reward you for your kind actions.',0,0,0,0,'akuno SAY_AKU_COMPLETE'),

(-1000482,'Look out!',0,0,0,0,'maghar captive SAY_MAG_START'),
(-1000483,'Don\'t let them escape! Kill the strong one first!',0,0,0,0,'maghar captive SAY_MAG_NO_ESCAPE'),
(-1000484,'More of them coming! Watch out!',0,0,0,0,'maghar captive SAY_MAG_MORE'),
(-1000485,'Where do you think you\'re going? Kill them all!',0,0,0,0,'maghar captive SAY_MAG_MORE_REPLY'),
(-1000486,'Ride the lightning, filth!',0,0,0,0,'maghar captive SAY_MAG_LIGHTNING'),
(-1000487,'FROST SHOCK!!!',0,0,0,0,'maghar captive SAY_MAG_SHOCK'),
(-1000488,'It is best that we split up now, in case they send more after us. Hopefully one of us will make it back to Garrosh. Farewell stranger.',0,0,0,0,'maghar captive SAY_MAG_COMPLETE'),

(-1000489,'Show our guest around Shattrath, will you? Keep an eye out for pickpockets in the lower city.',0,0,0,0,'SAY_KHAD_START'),
(-1000490,'A newcomer to Shattrath! Make sure to drop by later. We can always use a hand with the injured.',0,0,0,0,'SAY_KHAD_INJURED'),
(-1000491,'Be mindful of what you say, this one\'s being shown around by Khadgar\'s pet.',0,0,0,0,'SAY_KHAD_MIND_YOU'),
(-1000492,'Are you joking? I\'m a Scryer, I always watch what i say. More enemies than allies in this city, it seems.',0,0,0,0,'SAY_KHAD_MIND_ALWAYS'),
(-1000493,'Light be with you, $n. And welcome to Shattrath.',0,0,0,0,'SAY_KHAD_ALDOR_GREET'),
(-1000494,'We\'re rather selective of who we befriend, $n. You think you have what it takes?',0,0,0,0,'SAY_KHAD_SCRYER_GREET'),
(-1000495,'Khadgar himself is showing you around? You must have made a good impression, $n.',0,0,0,0,'SAY_KHAD_HAGGARD'),

(-1000496,'%s lifts its head into the air, as if listening for something.',0,2,0,0,'ancestral wolf EMOTE_WOLF_LIFT_HEAD'),
(-1000497,'%s lets out a howl that rings across the mountains to the north and motions for you to follow.',0,2,0,0,'ancestral wolf EMOTE_WOLF_HOWL'),
(-1000498,'Welcome, kind spirit. What has brought you to us?',0,0,0,0,'ancestral wolf SAY_WOLF_WELCOME'),

(-1000499,'Puny $r wanna fight %s? Me beat you! Me boss here!',0,0,1,0,'morokk SAY_MOR_CHALLENGE'),
(-1000500,'Me scared! Me run now!',0,1,0,0,'morokk SAY_MOR_SCARED'),

(-1000501,'Are you sure that you are ready? If we do not have a group of your allies to aid us, we will surely fail.',0,0,1,0,'muglash SAY_MUG_START1'),
(-1000502,'This will be a though fight, $n. Follow me closely.',0,0,1,0,'muglash SAY_MUG_START2'),
(-1000503,'This is the brazier, $n. Put it out. Vorsha is a beast, worthy of praise from no one!',0,0,1,0,'muglash SAY_MUG_BRAZIER'),
(-1000504,'Now we must wait. It won\'t be long before the naga realize what we have done.',0,0,1,0,'muglash SAY_MUG_BRAZIER_WAIT'),
(-1000505,'Be on your guard, $n!',0,0,1,0,'muglash SAY_MUG_ON_GUARD'),
(-1000506,'Perhaps we will get a moment to rest. But i will not give up until we have faced off against Vorsha!',0,0,1,0,'muglash SAY_MUG_REST'),
(-1000507,'We have done it!',0,0,1,0,'muglash SAY_MUG_DONE'),
(-1000508,'You have my deepest gratitude. I thank you.',0,0,1,0,'muglash SAY_MUG_GRATITUDE'),
(-1000509,'I am going to patrol the area for a while longer and ensure that things are truly safe.',0,0,1,0,'muglash SAY_MUG_PATROL'),
(-1000510,'Please return to Zoram\'gar and report our success to the Warsong runner.',0,0,1,0,'muglash SAY_MUG_RETURN'),

(-1000511,'Aright, listen up! Form a circle around me and move out!',0,0,0,0,'letoll SAY_LE_START'),
(-1000512,'Aright, $r, just keep us safe from harm while we work. We\'ll pay you when we return.',0,0,0,0,'letoll SAY_LE_KEEP_SAFE'),
(-1000513,'The dig site is just north of here.',0,0,0,0,'letoll SAY_LE_NORTH'),
(-1000514,'We\'re here! Start diggin\'!',0,0,0,0,'letoll SAY_LE_ARRIVE'),
(-1000515,'I think there\'s somethin\' buried here, beneath the sand!',0,0,0,0,'letoll SAY_LE_BURIED'),
(-1000516,'Almost got it!',0,0,0,0,'letoll SAY_LE_ALMOST'),
(-1000517,'By brann\'s brittle bananas! What is it!? It... It looks like a drum.',0,0,0,0,'letoll SAY_LE_DRUM'),
(-1000518,'Wow... a drum.',0,0,0,0,'letoll SAY_LE_DRUM_REPLY'),
(-1000519,'This discovery will surely rock the foundation of modern archaeology.',0,0,0,0,'letoll SAY_LE_DISCOVERY'),
(-1000520,'Yea, great. Can we leave now? This desert is giving me hives.',0,0,0,0,'letoll SAY_LE_DISCOVERY_REPLY'),
(-1000521,'Have ye gone mad? You expect me to leave behind a drum without first beatin\' on it? Not this son of Ironforge! No sir!',0,0,0,0,'letoll SAY_LE_NO_LEAVE'),
(-1000522,'This reminds me of that one time where you made us search Silithus for evidence of sand gnomes.',0,0,0,0,'letoll SAY_LE_NO_LEAVE_REPLY1'),
(-1000523,'Or that time when you told us that you\'d discovered the cure for the plague of the 20th century. What is that even? 20th century?',0,0,0,0,'letoll SAY_LE_NO_LEAVE_REPLY2'),
(-1000524,'I don\'t think it can top the one time where he told us that he\'d heard that Artha\'s "cousin\'s" skeleton was frozen beneath a glacier in Winterspring. I\'ll never forgive you for that one, Letoll. I mean honestly... Artha\'s cousin?',0,0,0,0,'letoll SAY_LE_NO_LEAVE_REPLY3'),
(-1000525,'I dunno. It can\'t possibly beat the time he tried to convince us that we\'re all actually a figment of some being\'s imagination and that they only use us for their own personal amusement. That went over well during dinner with the family.',0,0,0,0,'letoll SAY_LE_NO_LEAVE_REPLY4'),
(-1000526,'Shut yer yaps! I\'m gonna bang on this drum and that\'s that!',0,0,0,0,'letoll SAY_LE_SHUT'),
(-1000527,'Say, do you guys hear that?',0,0,0,0,'letoll SAY_LE_REPLY_HEAR'),
(-1000528,'IN YOUR FACE! I told you there was somethin\' here!',0,0,0,0,'letoll SAY_LE_IN_YOUR_FACE'),
(-1000529,'Don\'t just stand there! Help him out!',0,0,0,0,'letoll SAY_LE_HELP_HIM'),
(-1000530,'%s picks up the drum.',0,2,0,0,'letoll EMOTE_LE_PICK_UP'),
(-1000531,'You\'ve been a tremendous help, $r! Let\'s get out of here before more of those things show up! I\'ll let Dwarfowitz know you did the job asked of ya\' admirably.',0,0,0,0,'letoll SAY_LE_THANKS'),

(-1000532,'At your command, my liege...',0,0,0,0,'torloth TORLOTH_DIALOGUE1'),
(-1000533,'As you desire, Lord Illidan.',0,0,0,0,'torloth TORLOTH_DIALOGUE2'),
(-1000534,'Yes, Lord Illidan, I would sacrifice to you this magnificent physique. On this day you will fall - another victim of Torloth...',0,0,0,0,'torloth TORLOTH_DIALOGUE3'),
(-1000535,'Destroy them, Torloth. Let lose their blood like a river upon this hallowed ground.',0,0,0,0,'lordillidan ILLIDAN_DIALOGUE'),
(-1000536,'What manner of fool dares stand before Illidan Stormrage? Soldiers, destroy these insects!',0,1,0,0,'lordillidan ILLIDAN_SUMMON1'),
(-1000537,'You are no challenge for the Crimson Sigil. Mind breakers, end this nonsense.',0,1,0,0,'lordillidan ILLIDAN_SUMMON2'),
(-1000538,'Run while you still can. The highlords come soon...',0,1,0,0,'lordillidan ILLIDAN_SUMMON3'),
(-1000539,'Torloth your master calls!',0,1,0,0,'lordillidan ILLIDAN_SUMMON4'),
(-1000540,'So you have defeated the Crimson Sigil. You now seek to challenge my rule? Not even Arthas could defeat me, yet you dare to even harbor such thoughts? Then I say to you, come! Come $N! The Black Temple awaits...',0,1,0,0,'lordillidan EVENT_COMPLETED'),

(-1000541,'%s jumps into the moonwell and goes underwater...',0,2,0,0,'kitten EMOTE_SAB_JUMP'),
(-1000542,'%s follows $n obediertly.',0,2,0,0,'kitten EMOTE_SAB_FOLLOW'),

(-1000543,'Why have you come here, outsider? You will only find pain! Our fate will be yours...',0,0,0,25,'restless app SAY_RAND_1'),
(-1000544,'It was ... terrible... the demon...',0,0,0,25,'restless app SAY_RAND_2'),
(-1000545,'The darkness... the corruption... they came too quickly for anyone to know...',0,0,0,25,'restless app SAY_RAND_3'),
(-1000546,'The darkness will consume all... all the living...',0,0,0,25,'restless app SAY_RAND_4'),
(-1000547,'It is too late for us, living one. Take yourself and your friend away from here before you both are... claimed...',0,0,0,25,'restless app SAY_RAND_5'),
(-1000548,'It is too late for Jarl... its hold is too strong...',0,0,0,25,'restless app SAY_RAND_6'),
(-1000549,'Go away, whoever you are! Witch Hill is mine... mine!',0,0,0,25,'restless app SAY_RAND_7'),
(-1000550,'The manor... someone else... will soon be consumed...',0,0,0,25,'restless app SAY_RAND_8'),

(-1000551,'The %s is angered by your request and attacks!',0,2,0,0,'woodlands EMOTE_AGGRO'),
(-1000552,'Breaking off a piece of its bark, the %s hands it to you before departing.',0,2,0,0,'woodlands EMOTE_CREATE'),

(-1000553,'Be ready, $N. I hear the council returning. Prepare to ambush!',0,0,0,0,'deathstalker_faerleia SAY_START'),
(-1000554,'Well done. A blow to Arugal no doubt!',0,0,0,0,'deathstalker_faerleia SAY_END'),

(-1000555,'Back... to work...',0,0,0,0,'exhausted vrykul SAY_RAND_WORK1'),
(-1000556,'You treat us worse than animals!',0,0,0,0,'exhausted vrykul SAY_RAND_WORK2'),
(-1000557,'We will have revenge...some day.',0,0,0,0,'exhausted vrykul SAY_RAND_WORK3'),
(-1000558,'Curse you! You will not treat me like a beast!',0,0,0,0,'exhausted vrykul SAY_RAND_ATTACK1'),
(-1000559,'I\'d rather die fighting than live like a slave.',0,0,0,0,'exhausted vrykul SAY_RAND_ATTACK2'),
(-1000560,'Enough! I will teach you some manners, wench!',0,0,0,0,'exhausted vrykul SAY_RAND_ATTACK3'),

(-1000561,'My wounds are grave. Forgive my slow pace but my injuries won''t allow me to walk any faster.',0,0,0,0,'SAY_CORPORAL_KEESHAN_1'),
(-1000562,'Ah, fresh air, at last! I need a moment to rest.',0,0,0,0,'SAY_CORPORAL_KEESHAN_2'),
(-1000563,'The Blackrock infestation is thick in these parts. I will do my best to keep the pace. Let''s go!',0,0,0,0,'SAY_CORPORAL_KEESHAN_3'),
(-1000564,'Marshal Marris, sir. Corporal Keeshan of the 12th Sabre Regiment returned from battle and reporting for duty!',0,0,0,0,'SAY_CORPORAL_KEESHAN_4'),
(-1000565,'Brave adventurer, thank you for rescuing me! I am sure Marshal Marris will reward your kind deed.',0,0,0,0,'SAY_CORPORAL_KEESHAN_5'),

(-1000566,'Stand back! Stand clear! The infernal will need to be given a wide berth!',0,0,0,0,'SAY_NIBY_1'),
(-1000567,'BOW DOWN TO THE ALMIGHTY! BOW DOWN BEFORE MY INFERNAL DESTRO... chicken?',0,0,0,0,'SAY_NIBY_2'),
(-1000568,'%s rolls on the floor laughing.',0,2,0,0,'EMOTE_IMPSY_1'),
(-1000569,'Niby, you\' re an idiot.',0,0,0,0,'SAY_IMPSY_1'),
(-1000570,'Silence, servant! Vengeance will be mine! Death to Stormwind! Death by chicken!',0,0,0,0,'SAY_NIBY_3'),

(-1000571,'Help! I\'ve only one hand to defend myself with.',0,0,0,0,'SAY_MIRAN_1'),
(-1000572,'Feel the power of the Dark Iron Dwarves!',0,0,0,0,'SAY_DARK_IRON_DWARF'),
(-1000573,'Send them on! I\'m not afraid of some scrawny beasts!',0,0,0,0,'SAY_MIRAN_2'),
(-1000574,'Ah, here at last! It\'s going to feel so good to get rid of these barrels.',0,0,0,0,'SAY_MIRAN_3'),

(-1000575,'Together we will fight our way out of here. Are you ready?',0,0,0,0,'Lurgglbr - SAY_START_1'),
(-1000576,'Then we leave.',0,0,0,0,'Lurgglbr - SAY_START_2'),
(-1000577,'This is far enough. I can make it on my own from here.',0,0,0,0,'Lurgglbr - SAY_END_1'),
(-1000578,'Thank you for helping me $r. Please tell the king I am back.',0,0,0,0,'Lurgglbr - SAY_END_2'),

(-1000579,'Insolent fool! You thought to steal Zelemar\'s blood? You shall pay with your own!',0,1,0,0,'Zelemar the Wrathful - Aggro'),

(-1000580,'Sleep now, young one ...',0,0,0,0,'Raelorasz SAY_SLEEP'),
(-1000581,'A wonderful specimen.',0,0,0,0,'Raeloarsz SAY_SPECIMEN'),

(-1000582,'Help! Please, You must help me!',0,0,0,0,'Galen - periodic say'),
(-1000583,'Let us leave this place.',0,0,0,0,'Galen - quest accepted'),
(-1000584,'Look out! The $c attacks!',0,0,0,0,'Galen - aggro 1'),
(-1000585,'Help! I\'m under attack!',0,0,0,0,'Galen - aggro 2'),
(-1000586,'Thank you $N. I will remember you always. You can find my strongbox in my camp, north of Stonard.',0,0,0,0,'Galen - quest complete'),
(-1000587,'%s whispers to $N the secret to opening his strongbox.',0,2,0,0,'Galen - emote whisper'),
(-1000588,'%s disappears into the swamp.',0,2,0,0,'Galen - emote disapper'),

(-1000589,'Kroshius live? Kroshius crush!',0,1,0,0,'SAY_KROSHIUS_REVIVE'),

(-1000590,'Woot!',0,0,0,0,'Captive Child SAY_THANKS_1'),
(-1000591,'I think those weird bird guys were going to eat us. Gross!',0,0,0,0,'Captive Child SAY_THANKS_2'),
(-1000592,'Yay! We\'re free!',0,0,0,0,'Captive Child SAY_THANKS_3'),
(-1000593,'Gross!',0,0,0,0,'Captive Child SAY_THANKS_4'),

(-1000594,'At last... now I can rest.',0,0,0,0,'hero spirit SAY_BLESS_1'),
(-1000595,'I\'m so tired. Just let me rest for a moment.',0,0,0,0,'hero spirit SAY_BLESS_2'),
(-1000596,'I can\'t hear the screams anymore. Is this the end?',0,0,0,0,'hero spirit SAY_BLESS_3'),
(-1000597,'My nightmare, is it finally over?',0,0,0,0,'hero spirit SAY_BLESS_4'),
(-1000598,'It was awful... I dreamt I was fighting against my friends.',0,0,0,0,'hero spirit SAY_BLESS_5'),

(-1000599,'It\'s a miracle! The beast skinned itself!',0,0,0,5,'nesingwary trapper SAY_PHRASE_1'),
(-1000600,'Jackpot!',0,0,0,5,'nesingwary trapper SAY_PHRASE_2'),
(-1000601,'This is the last one i need for that set of Nesingwary steak knives!',0,0,0,5,'nesingwary trapper SAY_PHRASE_3'),
(-1000602,'Silly beasts!',0,0,0,5,'nesingwary trapper SAY_PHRASE_4'),

(-1000603,'Do not test me, scurvy dog! I\'m trained in the way of the Blood Knights!',0,0,0,0,'silvermoon harry SAY_AGGRO'),
(-1000604,'I\'ll pay! I\'ll pay! Eeeek! Please don\'t hurt me!',0,0,0,0,'silvermoon harry SAY_BEATEN'),

(-1000605,'We wait until you ready.',0,0,0,0,'rainspeaker SAY_ACCEPT'),
(-1000606,'Home time!',0,0,0,0,'rainspeaker SAY_START'),
(-1000607,'Thanks!',0,0,0,0,'rainspeaker SAY_END_1'),
(-1000608,'Oh no! Some puppy-men followed!',0,0,0,0,'rainspeaker SAY_END_2'),
(-1000609,'Dumb big-tongue lover! You not friend of Frenzyheart no more. Frenzyheart will get you good.',0,1,0,0,'rainspeaker SAY_TRACKER'),

(-1000610,'The mosswalker victim groans in pain.',0,2,0,0,'mosswalker victim EMOTE_PAIN'),

(-1000611,'Maybe you make weather better too?',0,0,0,0,'mosswalker victim SAY_RESCUE_1'),
(-1000612,'We saved. You nice, $N.',0,0,0,0,'mosswalker victim SAY_RESCUE_2'),
(-1000613,'You save us! Yay for you!',0,0,0,0,'mosswalker victim SAY_RESCUE_3'),
(-1000614,'Thank you! You good!',0,0,0,0,'mosswalker victim SAY_RESCUE_4'),

(-1000615,'Use my shinies...make weather good again...make undead things go away.',0,0,0,0,'mosswalker victim SAY_DIE_1'),
(-1000616,'We gave shinies to shrine... we not greedy... why this happen?',0,0,0,0,'mosswalker victim SAY_DIE_2'),
(-1000617,'I do something bad? I sorry....',0,0,0,0,'mosswalker victim SAY_DIE_3'),
(-1000618,'We not do anything... to them... I no understand.',0,0,0,0,'mosswalker victim SAY_DIE_4'),
(-1000619,'Thank...you.',0,0,0,0,'mosswalker victim SAY_DIE_5'),
(-1000620,'Please take... my shinies. All done...',0,0,0,0,'mosswalker victim SAY_DIE_6'),

(-1000621,'All systems on-line.  Prepare yourself, we leave shortly.',0,0,0,0,'maxx SAY_START'),
(-1000622,'Be careful in there and come back in one piece!',0,0,0,0,'maxx SAY_ALLEY_FAREWELL'),
(-1000623,'Proceed.',0,0,0,0,'maxx SAY_CONTINUE'),
(-1000624,'You\'re back!  Were you able to get all of the machines?',0,0,0,0,'maxx SAY_ALLEY_FINISH'),

(-1000625,'%s gathers the warp chaser\'s blood.',0,2,0,0,'zeppit EMOTE_GATHER_BLOOD'),

(-1000626,'Intiating energy collection.',0,0,0,0,'depleted golem SAY_GOLEM_CHARGE'),
(-1000627,'Energy collection complete.',0,0,0,0,'depleted golem SAY_GOLEM_COMPLETE'),

(-1000628,'%s feeds on the freshly-killed warp chaser.',0,2,0,0,'hungry ray EMOTE_FEED'),

(-1000629,'<cough> <cough> Damsel in distress over here!',0,0,0,0,'isla starmane - SAY_ISLA_PERIODIC_1'),
(-1000630,'Hello? Help?',0,0,0,0,'isla starmane - SAY_ISLA_PERIODIC_2'),
(-1000631,'Don''t leave me in here! Cause if you do I will find you!',0,0,0,0,'isla starmane - SAY_ISLA_PERIODIC_3'),
(-1000632,'Ok, let''s get out of here!',0,0,0,0,'isla starmane - SAY_ISLA_START'),
(-1000633,'You sure you''re ready? Take a moment.',0,0,0,0,'isla starmane - SAY_ISLA_WAITING'),
(-1000634,'Alright, let''s do this!',0,0,0,0,'isla starmane - SAY_ISLA_LEAVE_BUILDING');

-- -1 033 000 SHADOWFANG KEEP
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1033000,'Follow me and I\'ll open the courtyard door for you.',0,0,7,1,'prisoner ashcrombe SAY_FREE_AS'),
(-1033001,'I have just the spell to get this door open. Too bad the cell doors weren\'t locked so haphazardly.',0,0,7,1,'prisoner ashcrombe SAY_OPEN_DOOR_AS'),
(-1033002,'There it is! Wide open. Good luck to you conquering what lies beyond. I must report back to the Kirin Tor at once!',0,0,7,1,'prisoner ashcrombe SAY_POST_DOOR_AS'),

(-1033003,'Free from this wretched cell at last! Let me show you to the courtyard....',0,0,1,1,'prisoner adamant SAY_FREE_AD'),
(-1033004,'You are indeed courageous for wanting to brave the horrors that lie beyond this door.',0,0,1,1,'prisoner adamant SAY_OPEN_DOOR_AD'),
(-1033005,'There we go!',0,0,1,1,'prisoner adamant SAY_POST1_DOOR_AD'),
(-1033006,'Good luck with Arugal. I must hurry back to Hadrec now.',0,0,1,1,'prisoner adamant SAY_POST2_DOOR_AD'),

(-1033007,'About time someone killed the wretch.',0,0,1,1,'prisoner adamant SAY_BOSS_DIE_AD'),
(-1033008,'For once I agree with you... scum.',0,0,7,1,'prisoner ashcrombe SAY_BOSS_DIE_AS'),

(-1033009,'I have changed my mind loyal servants, you do not need to bring the prisoner all the way to my study, I will deal with him here and now.',0,0,0,1,'arugal SAY_INTRO_1'),
(-1033010,'Vincent!  You and your pathetic ilk will find no more success in routing my sons and I than those beggardly remnants of the Kirin Tor.',0,0,0,0,'arugal SAY_INTRO_2'),
(-1033011,'If you will not serve my Master with your sword and knowledge of his enemies...',0,0,0,1,'arugal SAY_INTRO_3'),
(-1033012,'Your moldering remains will serve ME as a testament to what happens when one is foolish enough to trespass in my domain!\n',0,0,0,0,'arugal SAY_INTRO_4'),

(-1033013,'Who dares interfere with the Sons of Arugal?',0,1,0,0,'boss_arugal YELL_FENRUS'),
(-1033014,'%s vanishes.',0,2,0,0,'prisoner ashcrombe EMOTE_VANISH_AS'),
(-1033015,'%s fumbles with the rusty lock on the courtyard door.',0,2,0,432,'prisoner adamant EMOTE_UNLOCK_DOOR_AD'),
(-1033016,'Arrrgh!',0,0,0,0,'deathstalker vincent SAY_VINCENT_DIE'),
(-1033017,'You, too, shall serve!',5793,1,0,0,'boss_arugal YELL_AGGRO'),
(-1033018,'Another Falls!',5795,1,0,0,'boss_arugal YELL_KILLED_PLAYER'),
(-1033019,'Release your rage!',5797,1,0,0,'boss_arugal YELL_COMBAT');

-- -1 034 000 STOCKADES

-- -1 036 000 DEADMINES
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1036000,'You there, check out that noise!',5775,1,7,0,'smite INST_SAY_ALARM1'),
(-1036001,'We\'re under attack! A vast, ye swabs! Repel the invaders!',5777,1,7,0,'smite INST_SAY_ALARM2');

-- -1 043 000 WAILING CAVERNS
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1043000,'At last! Naralex can be awakened! Come aid me, brave adventurers!',0,6,0,0,'Disciple of Naralex - SAY_INTRO'),
(-1043001,'I must make the nescessary preparations before the awakening ritual can begin. You must protect me!',0,0,0,0,'SAY_PREPARE'),
(-1043002,'These caverns were once a temple of promise for regrowth in the Barrens. Now, they are the halls of nightmares.',0,0,0,0,'Disciple of Naralex - SAY_FIRST_CORNER'),
(-1043003,'Come. We must continue. There is much to be done before we can pull Naralex from his nightmare.',0,0,0,0,'Disciple of Naralex - SAY_CONTINUE'),
(-1043004,'Within this circle of fire I must cast the spell to banish the spirits of the slain Fanglords.',0,0,0,0,'Disciple of Naralex - SAY_CIRCLE_BANISH'),
(-1043005,'The caverns have been purified. To Naralex''s chamber we go!',0,0,0,0,'Disciple of Naralex - SAY_PURIFIED'),
(-1043006,'Beyond this corridor, Naralex lies in fitful sleep. Let us go awaken him before it is too late.',0,0,0,0,'Disciple of Naralex - SAY_NARALEX_CHAMBER'),
(-1043007,'Protect me brave souls as I delve into the Emerald Dream to rescue Naralex and put an end to this corruption!',0,1,0,0,'Disciple of Naralex - SAY_BEGIN_RITUAL'),
(-1043008,'%s begins to perform the awakening ritual on Naralex.',0,2,0,0,'Disciple of Naralex - EMOTE_RITUAL_BEGIN'),
(-1043009,'%s tosses fitfully in troubled sleep.',0,2,0,0,'Naralex - EMOTE_NARALEX_AWAKE'),
(-1043010,'%s writhes in agony. The Disciple seems to be breaking through.',0,2,0,0,'Naralex - EMOTE_BREAK_THROUGH'),
(-1043011,'%s dreams up a horrendous vision. Something stirs beneath the murky waters.',0,2,0,0,'Naralex - EMOTE_VISION'),
(-1043012,'This $N is a minin from Naralex\'s nightmare no doubt!.',0,0,0,0,'Disciple of Naralex - SAY_MUTANUS'),
(-1043013,'I AM AWAKE, AT LAST!',5789,1,0,0,'Naralex - SAY_NARALEX_AWAKE'),
(-1043014,'At last! Naralex awakes from the nightmare.',0,0,0,0,'Disciple of Naralex - SAY_AWAKE'),
(-1043015,'Ah, to be pulled from the dreaded nightmare! I thank you, my loyal Disciple, along with your brave companions.',0,0,0,0,'Naralex - SAY_NARALEX_THANKYOU'),
(-1043016,'We must go and gather with the other Disciplies. There is much work to be done before I can make another attempt to restore the Barrens. Farewell, brave souls!',0,0,0,0,'Naralex - SAY_FAREWELL'),
(-1043017,'Attacked! Help get this $N off of me!',0,0,0,0,'Disciple of Naralex - SAY_AGGRO_1'),
(-1043018,'Help!',0,0,0,0,'Disciple of Naralex - SAY_AGGRO_2'),
(-1043019,'Deal with this $N! I need to prepare to awake Naralex!',0,0,0,0,'Disciple of Naralex - SAY_AGGRO_3');

-- -1 047 000 RAZORFEN KRAUL

-- -1 048 000 BLACKFATHOM DEEPS

-- -1 070 000 ULDAMAN
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1070000,'REUSE ME',0,0,0,0,'REUSE ME'),
(-1070001,'Who dares awaken Archaedas? Who dares the wrath of the makers!',5855,1,0,0,'archaedas SAY_AGGRO'),
(-1070002,'Awake ye servants, defend the discs!',5856,1,0,0,'archaedas SAY_AWAKE_GUARDIANS'),
(-1070003,'To my side, brothers. For the makers!',5857,1,0,0,'archaedas SAY_AWAKE_WARDERS'),
(-1070004,'Reckless mortal.',5858,1,0,0,'archaedas SAY_UNIT_SLAIN');

-- -1 090 000 GNOMEREGAN
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1090000,'With your help, I can evaluate these tunnels.',0,0,0,1,'emi shortfuse SAY_START'),
(-1090001,'Let\'s see if we can find out where these Troggs are coming from.... and put a stop to the invasion!',0,0,0,1,'emi shortfuse SAY_INTRO_1'),
(-1090002,'Such devastation... what a horrible mess...',0,0,0,5,'emi shortfuse SAY_INTRO_2'),
(-1090003,'It\'s quiet here....',0,0,0,1,'emi shortfuse SAY_INTRO_3'),
(-1090004,'...too quiet.',0,0,0,1,'emi shortfuse SAY_INTRO_4'),
(-1090005,'Look! Over there at the tunnel wall!',0,0,0,25,'emi shortfuse SAY_LOOK_1'),
(-1090006,'Trogg incursion! Defend me while I blast the hole closed!',0,0,0,5,'emi shortfuse SAY_HEAR_1'),
(-1090007,'Get this, $n off of me!',0,0,0,0,'emi shortfuse SAY_AGGRO_1'),
(-1090008,'I don\'t think one charge is going to cut it. Keep fending them off!',0,0,0,0,'emi shortfuse SAY_CHARGE_1'),
(-1090009,'The charges are set. Get back before they blow!',0,0,0,5,'emi shortfuse SAY_CHARGE_2'),
(-1090010,'Incoming blast in 10 seconds!',0,1,0,5,'emi shortfuse SAY_BLOW_1_10'),
(-1090011,'Incoming blast in 5 seconds. Clear the tunnel! Stay back!',0,1,0,5,'emi shortfuse SAY_BLOW_1_5'),
(-1090012,'FIRE IN THE HOLE!',0,1,0,25,'emi shortfuse SAY_BLOW_1'),
(-1090013,'Well done! Without your help I would have never been able to thwart that wave of troggs.',0,0,0,4,'emi shortfuse SAY_FINISH_1'),
(-1090014,'Did you hear something?',0,0,0,6,'emi shortfuse SAY_LOOK_2'),
(-1090015,'I heard something over there.',0,0,0,25,'emi shortfuse SAY_HEAR_2'),
(-1090016,'More troggs! Ward them off as I prepare the explosives!',0,0,0,0,'emi shortfuse SAY_CHARGE_3'),
(-1090017,'The final charge is set. Stand back!',0,0,0,1,'emi shortfuse SAY_CHARGE_4'),
(-1090018,'10 seconds to blast! Stand back!!!',0,1,0,5,'emi shortfuse SAY_BLOW_2_10'),
(-1090019,'5 seconds until detonation!!!!!',0,1,0,5,'emi shortfuse SAY_BLOW_2_5'),
(-1090020,'Nice work! I\'ll set off the charges to prevent any more troggs from making it to the surface.',0,0,0,1,'emi shortfuse SAY_BLOW_SOON'),
(-1090021,'FIRE IN THE HOLE!',0,1,0,0,'emi shortfuse SAY_BLOW_2'),
(-1090022,'Superb! Because of your help, my people stand a chance of re-taking our beloved city. Three cheers to you!',0,0,0,0,'emi shortfuse SAY_FINISH_2'),

(-1090023,'We come from below! You can never stop us!',0,1,0,1,'grubbis SAY_GRUBBIS_SPAWN'),

(-1090024,'Usurpers! Gnomeregan is mine!',5807,1,0,0,'thermaplugg SAY_AGGRO'),
(-1090025,'My machines are the future! They\'ll destroy you all!',5808,1,0,0,'thermaplugg  SAY_PHASE'),
(-1090026,'Explosions! MORE explosions! I\'ve got to have more explosions!',5809,1,0,0,'thermaplugg  SAY_BOMB'),
(-1090027,'...and stay dead! He got served',5810,1,0,0,'thermaplugg  SAY_SLAY'),

(-1090028,'$n attacking! Help!',0,0,0,0,'emi shortfuse SAY_AGGRO_2');

-- -1 109 000 SUNKEN TEMPLE
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1109000,'The walls of the chamber tremble. Something is happening...',0,2,0,0,'malfurion stormrage EMOTE_MALFURION'),
(-1109001,'Be steadfast, champion. I know why it is that you are here and I know what it is that you seek. Eranikus will not give up the shard freely. He has been twisted... twisted by the same force that you seek to destroy.',0,0,0,0,'malfurion stormrge SAY_MALFURION1'),
(-1109002,'Are you really surprised? Is it hard to believe that the power of an Old God could reach even inside the Dream? It is true - Eranikus, Tyrant of the Dream, wages a battle against us all. The Nightmare follows in his wake of destruction.',0,0,0,0,'malfurion stormrge SAY_MALFURION2'),
(-1109003,'Understand this, Eranikus wants nothing more than to be brought to Azeroth from the Dream. Once he is out, he will stop at nothing to destroy my physical manifestation. This, however, is the only way in which you could recover the scepter shard.',0,0,0,0,'malfurion stormrge SAY_MAFLURION3'),
(-1109004,'You will bring him back into this world, champion.',0,0,0,0,'malfurion Stormrge SAY_MALFURION4');

-- -1 129 000 RAZORFEN DOWNS
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1129000,'You\'ll never leave this place... alive.',5825,1,0,0,'amnennar SAY_AGGRO'),
(-1129001,'To me, my servants!',5828,1,0,0,'amnennar SAY_SUMMON60'),
(-1129002,'Come, spirits, attend your master!',5829,1,0,0,'amnennar SAY_SUMMON30'),
(-1129003,'I am the hand of the Lich King!',5827,1,0,0,'amnennar SAY_HP'),
(-1129004,'Too...easy!',5826,1,0,0,'amnennar SAY_KILL');

-- -1 189 000 SCARLET MONASTERY
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1189000,'Ah, I have been waiting for a real challenge!',5830,1,0,0,'herod SAY_AGGRO'),
(-1189001,'Blades of Light!',5832,1,0,0,'herod SAY_WHIRLWIND'),
(-1189002,'Light, give me strength!',5833,1,0,0,'herod SAY_ENRAGE'),
(-1189003,'Hah, is that all?',5831,1,0,0,'herod SAY_KILL'),
(-1189004,'REUSE_ME',0,0,0,0,'REUSE_ME'),

(-1189005,'Infidels! They must be purified!',5835,1,0,0,'mograine SAY_MO_AGGRO'),
(-1189006,'Unworthy!',5836,1,0,0,'mograine SAY_MO_KILL'),
(-1189007,'At your side, milady!',5837,1,0,0,'mograine SAY_MO_RESSURECTED'),

(-1189008,'What, Mograine has fallen? You shall pay for this treachery!',5838,1,0,0,'whitemane SAY_WH_INTRO'),
(-1189009,'The Light has spoken!',5839,1,0,0,'whitemane SAY_WH_KILL'),
(-1189010,'Arise, my champion!',5840,1,0,0,'whitemane SAY_WH_RESSURECT'),

(-1189011,'Tell me... tell me everything!',5847,1,0,0,'vishas SAY_AGGRO'),
(-1189012,'Naughty secrets!',5849,1,0,0,'vishas SAY_HEALTH1'),
(-1189013,'I\'ll rip the secrets from your flesh!',5850,1,0,0,'vishas SAY_HEALTH2'),
(-1189014,'Purged by pain!',5848,1,0,0,'vishas SAY_KILL'),
(-1189015,'The monster got what he deserved.',0,0,1,0,'vishas SAY_TRIGGER_VORREL'),

(-1189016,'We hunger for vengeance.',5844,1,0,0,'thalnos SAY_AGGRO'),
(-1189017,'No rest, for the angry dead.',5846,1,0,0,'thalnos SAY_HEALTH'),
(-1189018,'More... More souls.',5845,1,0,0,'thalnos SAY_KILL'),

(-1189019,'You will not defile these mysteries!',5842,1,0,0,'doan SAY_AGGRO'),
(-1189020,'Burn in righteous fire!',5843,1,0,0,'doan SAY_SPECIALAE'),

(-1189021,'Release the hounds!',5841,1,0,0,'loksey SAY_AGGRO'),

(-1189022,'It is over, your search is done! Let fate choose now, the righteous one.',11961,1,0,0,'horseman SAY_ENTRANCE'),
(-1189023,'Here\'s my body, fit and pure! Now, your blackened souls I\'ll cure!',12567,1,0,0,'horseman SAY_REJOINED'),
(-1189024,'So eager you are for my blood to spill, yet to vanquish me this my head you must kill!',11969,1,0,0,'horseman SAY_BODY_DEFEAT'),
(-1189025,'Over here, you idiot!',12569,1,0,0,'horseman SAY_LOST_HEAD'),
(-1189026,'Harken, cur! Tis you I spurn! Now, $N, feel the burn!',12573,1,0,0,'horseman SAY_CONFLAGRATION'),
(-1189027,'Soldiers arise, stand and fight! Bring victory at last to this fallen knight!',11963,1,0,0,'horseman SAY_SPROUTING_PUMPKINS'),
(-1189028,'Your body lies beaten, battered and broken. Let my curse be your own, fate has spoken.',11962,1,0,0,'horseman SAY_SLAY'),
(-1189029,'This end have I reached before. What new adventure lies in store?',11964,1,0,0,'horseman SAY_DEATH'),
(-1189030,'%s laughs.',0,2,0,0,'horseman EMOTE_LAUGH'),
(-1189031,'Horseman rise...',0,0,0,0,'horseman SAY_PLAYER1'),
(-1189032,'Your time is night...',0,0,0,0,'horseman SAY_PLAYER2'),
(-1189033,'You felt death once...',0,0,0,0,'horseman SAY_PLAYER3'),
(-1189034,'Now, know demise!',0,0,0,0,'horseman SAY_PLAYER4'),

(-1189035,'The master has fallen! Avenge him my brethren!',5834,1,0,0,'trainee SAY_TRAINEE_SPAWN');

-- -1 209 000 ZUL'FARRAK

-- -1 229 000 BLACKROCK SPIRE

-- -1 230 000 BLACKROCK DEPTHS
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1230000,'Ah, hits the spot!',0,0,0,0,'rocknot SAY_GOT_BEER'),
(-1230001,'Come to aid the Throne!',0,1,0,0,'dagran SAY_AGGRO'),
(-1230002,'Hail to the king, baby!',0,1,0,0,'dagran SAY_SLAY'),
(-1230003,'You have challenged the Seven, and now you will die!',0,0,0,0,'doomrel SAY_DOOMREL_START_EVENT'),

(-1230004,'The Sons of Thaurissan shall watch you perish in the Ring of the Law!',0,1,0,0,'grimstone SAY_START_1'),
(-1230005,'You have been sentenced to death for crimes against the Dark Iron Nation!',0,1,0,0,'grimstone SAY_START_2'),
(-1230006,'Unleash the fury and let it be done!',0,1,0,0,'grimstone SAY_OPEN_EAST_GATE'),
(-1230007,'But your real punishment lies ahead.',0,1,0,0,'grimstone SAY_SUMMON_BOSS_1'),
(-1230008,'Haha! I bet you thought you were done!',0,1,0,0,'grimstone SAY_SUMMON_BOSS_2'),
(-1230009,'Good Riddance!',0,1,0,0,'grimstone SAY_OPEN_NORTH_GATE');

-- -1 249 000 ONYXIA'S LAIR
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1249000,'How fortuitous. Usually, I must leave my lair to feed.',0,1,0,0,'onyxia SAY_AGGRO'),
(-1249001,'Learn your place mortal!',0,1,0,0,'onyxia SAY_KILL'),
(-1249002,'This meaningless exertion bores me. I\'ll incinerate you all from above!',0,1,0,254,'onyxia SAY_PHASE_2_TRANS'),
(-1249003,'It seems you\'ll need another lesson, mortals!',0,1,0,293,'onyxia SAY_PHASE_3_TRANS'),
(-1249004,'%s takes in a deep breath...',0,3,0,0,'onyxia EMOTE_BREATH');

-- -1 269 000 OPENING OF THE DARK PORTAL (BLACK MORASS)
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1269000,'Why do you persist? Surely you can see the futility of it all. It is not too late! You may still leave with your lives ...',10442,1,0,0,'temporus SAY_ENTER'),
(-1269001,'So be it ... you have been warned.',10444,1,0,0,'temporus SAY_AGGRO'),
(-1269002,'Time... sands of time is run out for you.',10443,1,0,0,'temporus SAY_BANISH'),
(-1269003,'You should have left when you had the chance.',10445,1,0,0,'temporus SAY_SLAY1'),
(-1269004,'Your days are done.',10446,1,0,0,'temporus SAY_SLAY2'),
(-1269005,'My death means ... little.',10447,1,0,0,'temporus SAY_DEATH'),

(-1269006,'Why do you aid the Magus? Just think of how many lives could be saved if the portal is never opened, if the resulting wars could be erased ...',10412,1,0,0,'chrono_lord_deja SAY_ENTER'),
(-1269007,'If you will not cease this foolish quest, then you will die!',10414,1,0,0,'chrono_lord_deja SAY_AGGRO'),
(-1269008,'You have outstayed your welcome, Timekeeper. Begone!',10413,1,0,0,'chrono_lord_deja SAY_BANISH'),
(-1269009,'I told you it was a fool\'s quest!',10415,1,0,0,'chrono_lord_deja SAY_SLAY1'),
(-1269010,'Leaving so soon?',10416,1,0,0,'chrono_lord_deja SAY_SLAY2'),
(-1269011,'Time ... is on our side.',10417,1,0,0,'chrono_lord_deja SAY_DEATH'),

(-1269012,'The time has come to shatter this clockwork universe forever! Let us no longer be slaves of the hourglass! I warn you: those who do not embrace the greater path shall become victims of its passing!',10400,1,0,0,'aeonus SAY_ENTER'),
(-1269013,'Let us see what fate lays in store...',10402,1,0,0,'aeonus SAY_AGGRO'),
(-1269014,'Your time is up, slave of the past!',10401,1,0,0,'aeonus SAY_BANISH'),
(-1269015,'One less obstacle in our way!',10403,1,0,0,'aeonus SAY_SLAY1'),
(-1269016,'No one can stop us! No one!',10404,1,0,0,'aeonus SAY_SLAY2'),
(-1269017,'It is only a matter...of time.',10405,1,0,0,'aeonus SAY_DEATH'),
(-1269018,'REUSE ME',0,0,0,0,'REUSE ME'),

(-1269019,'Stop! Do not go further, mortals. You are ill-prepared to face the forces of the Infinite Dragonflight. Come, let me help you.',0,0,0,0,'saat SAY_SAAT_WELCOME'),

(-1269020,'The time has come! Gul\'dan, order your warlocks to double their efforts! Moments from now the gateway will open, and your Horde will be released upon this ripe, unsuspecting world!',10435,1,0,0,'medivh SAY_ENTER'),
(-1269021,'What is this? Champions, coming to my aid? I sense the hand of the dark one in this. Truly this sacred event bears his blessing?',10436,1,0,0,'medivh SAY_INTRO'),
(-1269022,'Champions, my shield grows weak!',10437,1,0,0,'medivh SAY_WEAK75'),
(-1269023,'My powers must be concentrated on the portal! I do not have time to hold the shield!',10438,1,0,0,'medivh SAY_WEAK50'),
(-1269024,'The shield is nearly gone! All that I have worked for is in danger!',10439,1,0,0,'medivh SAY_WEAK25'),
(-1269025,'No... damn this feeble mortal coil...',10441,1,0,0,'medivh SAY_DEATH'),
(-1269026,'I am grateful for your aid, champions. Now, Gul\'dan\'s Horde will sweep across this world, like a locust swarm, and all my designs, all my carefully laid plans will at last fall into place.',10440,1,0,0,'medivh SAY_WIN'),
(-1269027,'Orcs of the Horde! This portalis the gateway to your new destiny! Azeroth lies before you, ripe for the taking!',0,1,0,0,'medivh SAY_ORCS_ENTER'),
(-1269028,'Gul\'dan speaks the truth! We should return at once to tell our brothers of the news! Retreat back trought the portal!',0,1,0,0,'medivh SAY_ORCS_ANSWER');

-- -1 289 000 SCHOLOMANCE
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1289000,'School is in session!',0,1,0,0,'gandling SAY_GANDLING_SPAWN');

-- -1 309 000 ZUL'GURUB
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1309000,'Let the coils of hate unfurl!',8421,1,0,0,'venoxis SAY_TRANSFORM'),
(-1309001,'Ssserenity..at lassst!',0,1,0,0,'venoxis SAY_DEATH'),

(-1309002,'Lord Hir\'eek, grant me wings of vengance!',8417,1,0,0,'jeklik SAY_AGGRO'),
(-1309003,'I command you to rain fire down upon these invaders!',0,1,0,0,'jeklik SAY_RAIN_FIRE'),
(-1309004,'Finally ...death. Curse you Hakkar! Curse you!',8422,1,0,0,'jeklik SAY_DEATH'),

(-1309005,'Draw me to your web mistress Shadra. Unleash your venom!',8418,1,0,0,'marli SAY_AGGRO'),
(-1309006,'Shadra, make of me your avatar!',0,1,0,0,'marli SAY_TRANSFORM'),
(-1309007,'Aid me my brood!',0,1,0,0,'marli SAY_SPIDER_SPAWN'),
(-1309008,'Bless you mortal for this release. Hakkar controls me no longer...',8423,1,0,0,'marli SAY_DEATH'),

(-1309009,'Shirvallah, fill me with your RAGE!',8419,1,0,0,'thekal SAY_AGGRO'),
(-1309010,'Hakkar binds me no more! Peace at last!',8424,1,0,0,'thekal SAY_DEATH'),

(-1309011,'Bethekk, your priestess calls upon your might!',8416,1,0,0,'arlokk SAY_AGGRO'),
(-1309012,'Feast on $n, my pretties!',0,1,0,0,'arlokk SAY_FEAST_PANTHER'),
(-1309013,'At last, I am free of the Soulflayer!',8412,1,0,0,'arlokk SAY_DEATH'),

(-1309014,'Welcome to da great show friends! Step right up to die!',8425,1,0,0,'jindo SAY_AGGRO'),

(-1309015,'I\'ll feed your souls to Hakkar himself!',8413,1,0,0,'mandokir SAY_AGGRO'),
(-1309016,'DING!',0,1,0,0,'mandokir SAY_DING_KILL'),
(-1309017,'GRATS!',0,1,0,0,'mandokir SAY_GRATS_JINDO'),
(-1309018,'$N! I\'m watching you!',0,1,0,0,'mandokir SAY_WATCH'),
(-1309019,'Don\'t make me angry. You won\'t like it when I\'m angry.',0,4,0,0,'mandokir SAY_WATCH_WHISPER'),

(-1309020,'PRIDE HERALDS THE END OF YOUR WORLD. COME, MORTALS! FACE THE WRATH OF THE SOULFLAYER!',8414,1,0,0,'hakkar SAY_AGGRO'),
(-1309021,'Fleeing will do you no good, mortals!',0,1,0,0,'hakkar SAY_FLEEING'),
(-1309022,'You dare set foot upon Hakkari holy ground? Minions of Hakkar, destroy the infidels!',0,1,0,0,'hakkar SAY_MINION_DESTROY'),
(-1309023,'Minions of Hakkar, hear your God. The sanctity of this temple has been compromised. Invaders encroach upon holy ground! The Altar of Blood must be protected. Kill them all!',0,1,0,0,'hakkar SAY_PROTECT_ALTAR'),

(-1309024,'%s goes into a rage after seeing his raptor fall in battle!',0,2,0,0,'mandokir EMOTE_RAGE');

-- -1 329 000 STRATHOLME
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1329000,'Thanks to Egan',0,0,0,0,'freed_soul SAY_ZAPPED0'),
(-1329001,'Rivendare must die',0,0,0,0,'freed_soul SAY_ZAPPED1'),
(-1329002,'Who you gonna call?',0,0,0,0,'freed_soul SAY_ZAPPED2'),
(-1329003,'Don\'t cross those beams!',0,0,0,0,'freed_soul SAY_ZAPPED3'),

(-1329004,'An Ash\'ari Crystal has fallen! Stay true to the Lich King, my brethren, and attempt to resummon it.',0,6,0,0,'thuzadin acolyte SAY_ANNOUNCE_ZIGGURAT_1'),
(-1329005,'One of the Ash\'ari Crystals has been destroyed! Slay the intruders!',0,6,0,0,'thuzadin acolyte SAY_ANNOUNCE_ZIGGURAT_2'),
(-1329006,'An Ash\'ari Crystal has been toppled! Restore the ziggurat before the Necropolis is vulnerable!',0,6,0,0,'thuzadin acolyte SAY_ANNOUNCE_ZIGGURAT_3'),
(-1329007,'The Ash\'ari Crystals have been destroyed! The Slaughterhouse is vulnerable!',0,6,0,0,'baron rivendare SAY_ANNOUNCE_RIVENDARE');

-- -1 349 000 MARAUDON

-- -1 389 000 RAGEFIRE CHASM

-- -1 409 000 MOLTEN CORE
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1409000,'%s performs one last service for Ragnaros.',0,2,0,0,'geddon EMOTE_SERVICE'),
(-1409001,'REUSE ME',0,0,0,0,'REUSE ME'),
(-1409002,'%s refuses to die while its master is in trouble.',0,2,0,0,'core rager EMOTE_LOWHP'),

(-1409003,'Reckless mortals, none may challenge the sons of the living flame!',8035,1,0,0,'majordomo SAY_AGGRO'),
(-1409004,'The runes of warding have been destroyed! Hunt down the infedels my bretheren.',8039,6,0,0,'majordomo SAY_SPAWN'),
(-1409005,'Ashes to Ashes!',8037,1,0,0,'majordomo SAY_SLAY'),
(-1409006,'Burn mortals! Burn for this transgression!',8036,1,0,0,'majordomo SAY_SPECIAL'),
(-1409007,'Impossible! Stay your attack mortals! I submitt! I submitt!',8038,1,0,0,'majordomo SAY_DEFEAT_1'),

(-1409008,'Behold Ragnaros, the Firelord! He who was ancient when this world was young! Bow before him, mortals! Bow before your ending!',8040,1,0,0,'ragnaros SAY_SUMMON_MAJ'),
(-1409009,'TOO SOON! YOU HAVE AWAKENED ME TOO SOON, EXECUTUS! WHAT IS THE MEANING OF THIS INTRUSION?',8043,1,0,0,'ragnaros SAY_ARRIVAL1_RAG'),
(-1409010,'These mortal infidels, my lord! They have invaded your sanctum, and seek to steal your secrets!',8041,1,0,0,'ragnaros SAY_ARRIVAL2_MAJ'),
(-1409011,'FOOL! YOU ALLOWED THESE INSECTS TO RUN RAMPANT THROUGH THE HALLOWED CORE, AND NOW YOU LEAD THEM TO MY VERY LAIR? YOU HAVE FAILED ME, EXECUTUS! JUSTICE SHALL BE MET, INDEED!',8044,1,0,0,'ragnaros SAY_ARRIVAL3_RAG'),
(-1409012,'NOW FOR YOU, INSECTS. BOLDLY YOU SAUGHT THE POWER OF RAGNAROS NOW YOU SHALL SEE IT FIRST HAND.',8045,1,0,0,'ragnaros SAY_ARRIVAL5_RAG'),

(-1409013,'COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!',8049,1,0,0,'ragnaros SAY_REINFORCEMENTS1'),
(-1409014,'YOU CANNOT DEFEAT THE LIVING FLAME! COME YOU MINIONS OF FIRE! COME FORTH YOU CREATURES OF HATE! YOUR MASTER CALLS!',8050,1,0,0,'ragnaros SAY_REINFORCEMENTS2'),
(-1409015,'BY FIRE BE PURGED!',8046,1,0,0,'ragnaros SAY_HAND'),
(-1409016,'TASTE THE FLAMES OF SULFURON!',8047,1,0,0,'ragnaros SAY_WRATH'),
(-1409017,'DIE INSECT!',8051,1,0,0,'ragnaros SAY_KILL'),
(-1409018,'MY PATIENCE IS DWINDILING! COME NATS TO YOUR DEATH!',8048,1,0,0,'ragnaros SAY_MAGMABURST'),

(-1409019,'You think you\'ve won already? Perhaps you\'ll need another lesson in pain!',0,1,0,0,'majordomo SAY_LAST_ADD'),
(-1409020,'Brashly you have come to rest the secrets of the living flame. You will soon regret the recklessness of your quest.',0,1,0,0,'majordomo SAY_DEFEAT_2'),
(-1409021,'I go now to summon the lord whos house this is. Should you seek an audiance with him your paltry lives will surly be forfit. Nevertheless seek out his lair if you dare!',0,1,0,0,'majordomo SAY_DEFEAT_3'),
(-1409022,'My flame! Please don\'t take away my flame... ',8042,1,0,0,'ragnaros SAY_ARRIVAL4_MAJ');

-- -1 429 000 DIRE MAUL

-- -1 469 000 BLACKWING LAIR
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1469000,'None of your kind should be here! You\'ve doomed only yourselves!',8286,1,0,0,'broodlord SAY_AGGRO'),
(-1469001,'Clever Mortals but I am not so easily lured away from my sanctum!',8287,1,0,0,'broodlord SAY_LEASH'),

(-1469002,'REUSE ME',0,0,0,0,'REUSE ME'),
(-1469003,'%s flinches as its skin shimmers.',0,2,0,0,'chromaggus EMOTE_SHIMMER'),

(-1469004,'In this world where time is your enemy, it is my greatest ally. This grand game of life that you think you play in fact plays you. To that I say...',0,0,0,0,'victor_nefarius SAY_GAMESBEGIN_1'),
(-1469005,'Let the games begin!',8280,1,0,0,'victor_nefarius SAY_GAMESBEGIN_2'),
(-1469006,'Ah, the heroes. You are persistent, aren\'t you. Your allied attempted to match his power against mine, and had to pay the price. Now he shall serve me, by slaughtering you. Get up little red wyrm and destroy them!',8279,1,0,0,'victor_nefarius SAY_VAEL_INTRO'),

(-1469007,'Well done, my minions. The mortals\' courage begins to wane! Now, let\'s see how they contend with the true Lord of Blackrock Spire!',8288,1,0,0,'nefarian SAY_AGGRO'),
(-1469008,'Enough! Now you vermin shall feel the force of my birthright, the fury of the earth itself.',8289,1,0,0,'nefarian SAY_XHEALTH'),
(-1469009,'Burn, you wretches! Burn!',8290,1,0,0,'nefarian SAY_SHADOWFLAME'),
(-1469010,'Impossible! Rise my minions! Serve your master once more!',8291,1,0,0,'nefarian SAY_RAISE_SKELETONS'),
(-1469011,'Worthless $N! Your friends will join you soon enough!',8293,1,0,0,'nefarian SAY_SLAY'),
(-1469012,'This cannot be! I am the Master here! You mortals are nothing to my kind! DO YOU HEAR? NOTHING!',8292,1,0,0,'nefarian SAY_DEATH'),
(-1469013,'Mages too? You should be more careful when you play with magic...',0,1,0,0,'nefarian SAY_MAGE'),
(-1469014,'Warriors, I know you can hit harder than that! Let\'s see it!',0,1,0,0,'nefarian SAY_WARRIOR'),
(-1469015,'Druids and your silly shapeshifting. Let\'s see it in action!',0,1,0,0,'nefarian SAY_DRUID'),
(-1469016,'Priests! If you\'re going to keep healing like that, we might as well make it a little more interesting!',0,1,0,0,'nefarian SAY_PRIEST'),
(-1469017,'Paladins, I\'ve heard you have many lives. Show me.',0,1,0,0,'nefarian SAY_PALADIN'),
(-1469018,'Shamans, show me what your totems can do!',0,1,0,0,'nefarian SAY_SHAMAN'),
(-1469019,'Warlocks, you shouldn\'t be playing with magic you don\'t understand. See what happens?',0,1,0,0,'nefarian SAY_WARLOCK'),
(-1469020,'Hunters and your annoying pea-shooters!',0,1,0,0,'nefarian SAY_HUNTER'),
(-1469021,'Rogues? Stop hiding and face me!',0,1,0,0,'nefarian SAY_ROGUE'),

(-1469022,'You\'ll pay for forcing me to do this.',8275,1,0,0,'razorgore SAY_EGGS_BROKEN1'),
(-1469023,'Fools! These eggs are more precious than you know.',8276,1,0,0,'razorgore SAY_EGGS_BROKEN2'),
(-1469024,'No! Not another one! I\'ll have your heads for this atrocity.',8277,1,0,0,'razorgore SAY_EGGS_BROKEN3'),
(-1469025,'If I fall into the abyss I\'ll take all of you mortals with me...',8278,1,0,0,'razorgore SAY_DEATH'),

(-1469026,'Too late...friends. Nefarius\' corruption has taken hold. I cannot...control myself.',8281,1,0,0,'vaelastrasz SAY_LINE1'),
(-1469027,'I beg you Mortals, flee! Flee before I lose all control. The Black Fire rages within my heart. I must release it!',8282,1,0,0,'vaelastrasz SAY_LINE2'),
(-1469028,'FLAME! DEATH! DESTRUCTION! COWER MORTALS BEFORE THE WRATH OF LORD....NO! I MUST FIGHT THIS!',8283,1,0,0,'vaelastrasz SAY_LINE3'),
(-1469029,'Nefarius\' hate has made me stronger than ever before. You should have fled, while you could, mortals! The fury of Blackrock courses through my veins!',8285,1,0,0,'vaelastrasz SAY_HALFLIFE'),
(-1469030,'Forgive me $N, your death only adds to my failure.',8284,1,0,0,'vaelastrasz SAY_KILLTARGET'),

(-1469031,'REUSE ME',0,0,0,0,'REUSE ME');

-- -1 509 000 RUINS OF AHN'QIRAJ
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1509000,'%s senses your fear.',0,2,0,0,'moam EMOTE_AGGRO'),
(-1509001,'%s bristles with energy!',0,2,0,0,'moan EMOTE_MANA_FULL'),
(-1509028,'%s drains your mana and turns to stone.',0,2,0,0,'moam EMOTE_ENERGIZING'),

(-1509002,'%s sets eyes on $N!',0,2,0,0,'buru EMOTE_TARGET'),

(-1509003,'They come now. Try not to get yourself killed, young blood.',0,1,0,0,'andorov SAY_ANDOROV_INTRO'),
(-1509004,'Remember, Rajaxx, when I said I\'d kill you last? I lied...',0,1,0,0,'andorov SAY_ANDOROV_ATTACK'),

(-1509005,'The time of our retribution is at hand! Let darkness reign in the hearts of our enemies!',8612,1,0,0,'rajaxx SAY_WAVE3'),
(-1509006,'No longer will we wait behind barred doors and walls of stone! No longer will our vengeance be denied! The dragons themselves will tremble before our wrath!',8610,1,0,0,'rajaxx SAY_WAVE4'),
(-1509007,'Fear is for the enemy! Fear and death!',8608,1,0,0,'rajaxx SAY_WAVE5'),
(-1509008,'Staghelm will whimper and beg for his life, just as his whelp of a son did! One thousand years of injustice will end this day!',8611,1,0,0,'rajaxx SAY_WAVE6'),
(-1509009,'Fandral! Your time has come! Go and hide in the Emerald Dream and pray we never find you!',8607,1,0,0,'rajaxx SAY_WAVE7'),
(-1509010,'Impudent fool! I will kill you myself!',8609,1,0,0,'rajaxx SAY_INTRO'),
(-1509011,'Attack and make them pay dearly!',8603,1,0,0,'rajaxx SAY_UNK1'),
(-1509012,'Crush them! Drive them out!',8605,1,0,0,'rajaxx SAY_UNK2'),
(-1509013,'Do not hesitate! Destroy them!',8606,1,0,0,'rajaxx SAY_UNK3'),
(-1509014,'Warriors! Captains! Continue the fight!',8613,1,0,0,'rajaxx SAY_UNK4'),
(-1509015,'You are not worth my time $N!',8614,1,0,0,'rajaxx SAY_DEAGGRO'),
(-1509016,'Breath your last!',8604,1,0,0,'rajaxx SAY_KILLS_ANDOROV'),
(-1509017,'Soon you will know the price of your meddling, mortals... The master is nearly whole... And when he rises, your world will be cease!',0,1,0,0,'rajaxx SAY_COMPLETE_QUEST'),

(-1509018,'I am rejuvinated!',8593,1,0,0,'ossirian SAY_SURPREME1'),
(-1509019,'My powers are renewed!',8595,1,0,0,'ossirian SAY_SURPREME2'),
(-1509020,'My powers return!',8596,1,0,0,'ossirian SAY_SURPREME3'),
(-1509021,'Protect the city at all costs!',8597,1,0,0,'ossirian SAY_RAND_INTRO1'),
(-1509022,'The walls have been breached!',8599,1,0,0,'ossirian SAY_RAND_INTRO2'),
(-1509023,'To your posts. Defend the city.',8600,1,0,0,'ossirian SAY_RAND_INTRO3'),
(-1509024,'Tresspassers will be terminated.',8601,1,0,0,'ossirian SAY_RAND_INTRO4'),
(-1509025,'Sands of the desert rise and block out the sun!',8598,1,0,0,'ossirian SAY_AGGRO'),
(-1509026,'You are terminated.',8602,1,0,0,'ossirian SAY_SLAY'),
(-1509027,'I...have...failed.',8594,1,0,0,'ossirian SAY_DEATH');

-- -1 531 000 TEMPLE OF AHN'QIRAJ
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1531000,'Are you so eager to die? I would be happy to accomodate you.',8615,1,0,0,'skeram SAY_AGGRO1'),
(-1531001,'Cower mortals! The age of darkness is at hand.',8616,1,0,0,'skeram SAY_AGGRO2'),
(-1531002,'Tremble! The end is upon you.',8621,1,0,0,'skeram SAY_AGGRO3'),
(-1531003,'Let your death serve as an example!',8617,1,0,0,'skeram SAY_SLAY1'),
(-1531004,'Spineless wretches! You will drown in rivers of blood!',8619,1,0,0,'skeram SAY_SLAY2'),
(-1531005,'The screams of the dying will fill the air. A symphony of terror is about to begin!',8620,1,0,0,'skeram SAY_SLAY3'),
(-1531006,'Prepare for the return of the ancient ones!',8618,1,0,0,'skeram SAY_SPLIT'),
(-1531007,'You only delay... the inevetable.',8622,1,0,0,'skeram SAY_DEATH'),

(-1531008,'You will be judged for defiling these sacred grounds! The laws of the Ancients will not be challenged! Trespassers will be annihilated!',8646,1,0,0,'sartura SAY_AGGRO'),
(-1531009,'I sentence you to death!',8647,1,0,0,'sartura SAY_SLAY'),
(-1531010,'I serve to the last!',8648,1,0,0,'sartura SAY_DEATH'),

(-1531011,'%s is weakened!',0,2,0,0,'cthun EMOTE_WEAKENED');

-- -1 532 000 KARAZHAN
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1532000,'Well done Midnight!',9173,1,0,0,'attumen SAY_MIDNIGHT_KILL'),
(-1532001,'Cowards! Wretches!',9167,1,0,0,'attumen SAY_APPEAR1'),
(-1532002,'Who dares attack the steed of the Huntsman?',9298,1,0,0,'attumen SAY_APPEAR2'),
(-1532003,'Perhaps you would rather test yourselves against a more formidable opponent?!',9299,1,0,0,'attumen SAY_APPEAR3'),
(-1532004,'Come, Midnight, let\'s disperse this petty rabble!',9168,1,0,0,'attumen SAY_MOUNT'),
(-1532005,'It was... inevitable.',9169,1,0,0,'attumen SAY_KILL1'),
(-1532006,'Another trophy to add to my collection!',9300,1,0,0,'attumen SAY_KILL2'),
(-1532007,'Weapons are merely a convenience for a warrior of my skill!',9166,1,0,0,'attumen SAY_DISARMED'),
(-1532008,'I always knew... someday I would become... the hunted.',9165,1,0,0,'attumen SAY_DEATH'),
(-1532009,'Such easy sport.',9170,1,0,0,'attumen SAY_RANDOM1'),
(-1532010,'Amateurs! Do not think you can best me! I kill for a living.',9304,1,0,0,'attumen SAY_RANDOM2'),

(-1532011,'Hmm, unannounced visitors? Preparations must be made.',9211,1,0,0,'moroes SAY_AGGRO'),
(-1532012,'Now, where was I? Oh yes...',9215,1,0,0,'moroes SAY_SPECIAL_1'),
(-1532013,'You rang?',9316,1,0,0,'moroes SAY_SPECIAL_2'),
(-1532014,'One more for dinner this evening.',9214,1,0,0,'moroes SAY_KILL_1'),
(-1532015,'Time... Never enough time.',9314,1,0,0,'moroes SAY_KILL_2'),
(-1532016,'I\'ve gone and made a mess.',9315,1,0,0,'moroes SAY_KILL_3'),
(-1532017,'How terribly clumsy of me...',9213,1,0,0,'moroes SAY_DEATH'),

(-1532018,'Your behavior will not be tolerated!',9204,1,0,0,'maiden SAY_AGGRO'),
(-1532019,'Ah ah ah...',9207,1,0,0,'maiden SAY_SLAY1'),
(-1532020,'This is for the best.',9312,1,0,0,'maiden SAY_SLAY2'),
(-1532021,'Impure thoughts lead to profane actions.',9311,1,0,0,'maiden SAY_SLAY3'),
(-1532022,'Cast out your corrupt thoughts.',9313,1,0,0,'maiden SAY_REPENTANCE1'),
(-1532023,'Your impurity must be cleansed.',9208,1,0,0,'maiden SAY_REPENTANCE2'),
(-1532024,'Death comes. Will your conscience be clear?',9206,1,0,0,'maiden SAY_DEATH'),

(-1532025,'Oh at last, at last. I can go home.',9190,1,0,0,'dorothee SAY_DOROTHEE_DEATH'),
(-1532026,'Don\'t let them hurt us, Tito! Oh, you won\'t, will you?',9191,1,0,0,'dorothee SAY_DOROTHEE_SUMMON'),
(-1532027,'Tito, oh Tito, no!',9192,1,0,0,'dorothee SAY_DOROTHEE_TITO_DEATH'),
(-1532028,'Oh dear, we simply must find a way home! The old wizard could be our only hope! Strawman, Roar, Tinhead, will you... wait! Oh golly, look! We have visitors!',9195,1,0,0,'dorothee SAY_DOROTHEE_AGGRO'),

(-1532029,'Wanna fight? Huh? Do ya? C\'mon, I\'ll fight you with both claws behind my back!',9227,1,0,0,'roar SAY_ROAR_AGGRO'),
(-1532030,'You didn\'t have to go and do that.',9229,1,0,0,'roar SAY_ROAR_DEATH'),
(-1532031,'I think I\'m going to go take fourty winks.',9230,1,0,0,'roar SAY_ROAR_SLAY'),

(-1532032,'Now what should I do with you? I simply can\'t make up my mind.',9254,1,0,0,'strawman SAY_STRAWMAN_AGGRO'),
(-1532033,'Don\'t let them make a mattress... out of me.',9256,1,0,0,'strawman SAY_STRAWMAN_DEATH'),
(-1532034,'I guess I\'m not a failure after all.',9257,1,0,0,'strawman SAY_STRAWMAN_SLAY'),

(-1532035,'I could really use a heart. Say, can I have yours?',9268,1,0,0,'tinhead SAY_TINHEAD_AGGRO'),
(-1532036,'Back to being an old rustbucket.',9270,1,0,0,'tinhead SAY_TINHEAD_DEATH'),
(-1532037,'Guess I\'m not so rusty, after all.',9271,1,0,0,'tinhead SAY_TINHEAD_SLAY'),
(-1532038,'%s begins to rust.',0,2,0,0,'tinhead EMOTE_RUST'),

(-1532039,'Woe to each and every one of you my pretties! <cackles>',9179,1,0,0,'crone SAY_CRONE_AGGRO'),
(-1532040,'It will all be over soon! <cackles>',9307,1,0,0,'crone SAY_CRONE_AGGRO2'),
(-1532041,'How could you? What a cruel, cruel world!',9178,1,0,0,'crone SAY_CRONE_DEATH'),
(-1532042,'Fixed you, didn\'t I? <cackles>',9180,1,0,0,'crone SAY_CRONE_SLAY'),

(-1532043,'All the better to own you with!',9276,1,0,0,'wolf SAY_WOLF_AGGRO'),
(-1532044,'Mmmm... delicious.',9277,1,0,0,'wolf SAY_WOLF_SLAY'),
(-1532045,'Run away little girl, run away!',9278,1,0,0,'wolf SAY_WOLF_HOOD'),

(-1532046,'What devil art thou, that dost torment me thus?',9196,1,0,0,'julianne SAY_JULIANNE_AGGRO'),
(-1532047,'Where is my lord? Where is my Romulo?',9199,1,0,0,'julianne SAY_JULIANNE_ENTER'),
(-1532048,'Romulo, I come! Oh... this do I drink to thee!',9198,1,0,0,'julianne SAY_JULIANNE_DEATH01'),
(-1532049,'Where is my Lord? Where is my Romulo? Ohh, happy dagger! This is thy sheath! There rust, and let me die!',9310,1,0,0,'julianne SAY_JULIANNE_DEATH02'),
(-1532050,'Come, gentle night; and give me back my Romulo!',9200,1,0,0,'julianne SAY_JULIANNE_RESURRECT'),
(-1532051,'Parting is such sweet sorrow.',9201,1,0,0,'julianne SAY_JULIANNE_SLAY'),

(-1532052,'Wilt thou provoke me? Then have at thee, boy!',9233,1,0,0,'romulo SAY_ROMULO_AGGRO'),
(-1532053,'Thou smilest... upon the stroke that... murders me.',9235,1,0,0,'romulo SAY_ROMULO_DEATH'),
(-1532054,'This day\'s black fate on more days doth depend. This but begins the woe. Others must end.',9236,1,0,0,'romulo SAY_ROMULO_ENTER'),
(-1532055,'Thou detestable maw, thou womb of death; I enforce thy rotten jaws to open!',9237,1,0,0,'romulo SAY_ROMULO_RESURRECT'),
(-1532056,'How well my comfort is revived by this!',9238,1,0,0,'romulo SAY_ROMULO_SLAY'),

(-1532057,'The Menagerie is for guests only.',9183,1,0,0,'curator SAY_AGGRO'),
(-1532058,'Gallery rules will be strictly enforced.',9188,1,0,0,'curator SAY_SUMMON1'),
(-1532059,'This curator is equipped for gallery protection.',9309,1,0,0,'curator SAY_SUMMON2'),
(-1532060,'Your request cannot be processed.',9186,1,0,0,'curator SAY_EVOCATE'),
(-1532061,'Failure to comply will result in offensive action.',9185,1,0,0,'curator SAY_ENRAGE'),
(-1532062,'Do not touch the displays.',9187,1,0,0,'curator SAY_KILL1'),
(-1532063,'You are not a guest.',9308,1,0,0,'curator SAY_KILL2'),
(-1532064,'This Curator is no longer op... er... ation... al.',9184,1,0,0,'curator SAY_DEATH'),

(-1532065,'Your blood will anoint my circle.',9264,1,0,0,'terestian SAY_SLAY1'),
(-1532066,'The great one will be pleased.',9329,1,0,0,'terestian SAY_SLAY2'),
(-1532067,'My life, is yours. Oh great one.',9262,1,0,0,'terestian SAY_DEATH'),
(-1532068,'Ah, you\'re just in time. The rituals are about to begin.',9260,1,0,0,'terestian SAY_AGGRO'),
(-1532069,'Please, accept this humble offering, oh great one.',9263,1,0,0,'terestian SAY_SACRIFICE1'),
(-1532070,'Let the sacrifice serve his testament to my fealty.',9330,1,0,0,'terestian SAY_SACRIFICE2'),
(-1532071,'Come, you dwellers in the dark. Rally to my call!',9265,1,0,0,'terestian SAY_SUMMON1'),
(-1532072,'Gather, my pets. There is plenty for all.',9331,1,0,0,'terestian SAY_SUMMON2'),

(-1532073,'Please, no more. My son... he\'s gone mad!',9241,1,0,0,'aran SAY_AGGRO1'),
(-1532074,'I\'ll not be tortured again!',9323,1,0,0,'aran SAY_AGGRO2'),
(-1532075,'Who are you? What do you want? Stay away from me!',9324,1,0,0,'aran SAY_AGGRO3'),
(-1532076,'I\'ll show you this beaten dog still has some teeth!',9245,1,0,0,'aran SAY_FLAMEWREATH1'),
(-1532077,'Burn you hellish fiends!',9326,1,0,0,'aran SAY_FLAMEWREATH2'),
(-1532078,'I\'ll freeze you all!',9246,1,0,0,'aran SAY_BLIZZARD1'),
(-1532079,'Back to the cold dark with you!',9327,1,0,0,'aran SAY_BLIZZARD2'),
(-1532080,'Yes, yes, my son is quite powerful... but I have powers of my own!',9242,1,0,0,'aran SAY_EXPLOSION1'),
(-1532081,'I am not some simple jester! I am Nielas Aran!',9325,1,0,0,'aran SAY_EXPLOSION2'),
(-1532082,'Surely you would not deny an old man a replenishing drink? No, no I thought not.',9248,1,0,0,'aran SAY_DRINK'),
(-1532083,'I\'m not finished yet! No, I have a few more tricks up me sleeve.',9251,1,0,0,'aran SAY_ELEMENTALS'),
(-1532084,'I want this nightmare to be over!',9250,1,0,0,'aran SAY_KILL1'),
(-1532085,'Torment me no more!',9328,1,0,0,'aran SAY_KILL2'),
(-1532086,'You\'ve wasted enough of my time. Let these games be finished!',9247,1,0,0,'aran SAY_TIMEOVER'),
(-1532087,'At last... The nightmare is.. over...',9244,1,0,0,'aran SAY_DEATH'),
(-1532088,'Where did you get that?! Did HE send you?!',9249,1,0,0,'aran SAY_ATIESH'),

(-1532089,'%s cries out in withdrawal, opening gates to the warp.',0,2,0,0,'netherspite EMOTE_PHASE_PORTAL'),
(-1532090,'%s goes into a nether-fed rage!',0,2,0,0,'netherspite EMOTE_PHASE_BANISH'),

(-1532091,'Madness has brought you here to me. I shall be your undoing!',9218,1,0,0,'malchezaar SAY_AGGRO'),
(-1532092,'Simple fools! Time is the fire in which you\'ll burn!',9220,1,0,0,'malchezaar SAY_AXE_TOSS1'),
(-1532093,'I see the subtlety of conception is beyond primitives such as you.',9317,1,0,0,'malchezaar SAY_AXE_TOSS2'),
(-1532094,'Who knows what secrets hide in the dark.',9223,1,0,0,'malchezaar SAY_SPECIAL1'),
(-1532095,'The cerestial forces are mine to manipulate.',9320,1,0,0,'malchezaar SAY_SPECIAL2'),
(-1532096,'How can you hope to withstand against such overwhelming power?',9321,1,0,0,'malchezaar SAY_SPECIAL3'),
(-1532097,'Surely you did not think you could win.',9222,1,0,0,'malchezaar SAY_SLAY1'),
(-1532098,'Your greed, your foolishness has brought you to this end.',9318,1,0,0,'malchezaar SAY_SLAY2'),
(-1532099,'You are, but a plaything, unfit even to amuse.',9319,1,0,0,'malchezaar SAY_SLAY3'),
(-1532100,'All realities, all dimensions are open to me!',9224,1,0,0,'malchezaar SAY_SUMMON1'),
(-1532101,'You face not Malchezaar alone, but the legions I command!',9322,1,0,0,'malchezaar SAY_SUMMON2'),
(-1532102,'I refuse to concede defeat. I am a prince of the Eredar! I am...',9221,1,0,0,'malchezaar SAY_DEATH'),

(-1532103,'Welcome Ladies and Gentlemen, to this evening\'s presentation!',9174,1,0,0,'barnes OZ1'),
(-1532104,'Tonight we plumb the depths of the human soul as we join a lost, lonely girl trying desperately -- with the help of her loyal companions -- to find her way home!',9338,1,0,0,'barnes OZ2'),
(-1532105,'But she is pursued... by a wicked malevolent crone!',9339,1,0,0,'barnes OZ3'),
(-1532106,'Will she survive? Will she prevail? Only time will tell. And now ... on with the show!',9340,1,0,0,'barnes OZ4'),
(-1532107,'Good evening, Ladies and Gentlemen! Welcome to this evening\'s presentation!',9175,1,0,0,'barnes HOOD1'),
(-1532108,'Tonight, things are not what they seem. For tonight, your eyes may not be trusted',9335,1,0,0,'barnes HOOD2'),
(-1532109,'Take for instance, this quiet, elderly woman, waiting for a visit from her granddaughter. Surely there is nothing to fear from this sweet, grey-haired, old lady.',9336,1,0,0,'barnes HOOD3'),
(-1532110,'But don\'t let me pull the wool over your eyes. See for yourself what lies beneath those covers! And now... on with the show!',9337,1,0,0,'barnes HOOD4'),
(-1532111,'Welcome, Ladies and Gentlemen, to this evening\'s presentation!',9176,1,0,0,'barnes RAJ1'),
(-1532112,'Tonight, we explore a tale of forbidden love!',9341,1,0,0,'barnes RAJ2'),
(-1532113,'But beware, for not all love stories end happily, as you may find out. Sometimes, love pricks like a thorn.',9342,1,0,0,'barnes RAJ3'),
(-1532114,'But don\'t take it from me, see for yourself what tragedy lies ahead when the paths of star-crossed lovers meet. And now...on with the show!',9343,1,0,0,'barnes RAJ4');

-- -1 533 000 NAXXRAMAS
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1533000,'Ahh... welcome to my parlor.',8788,1,0,0,'anubrekhan SAY_GREET'),
(-1533001,'Just a little taste...',8785,1,0,0,'anubrekhan SAY_AGGRO1'),
(-1533002,'There is no way out.',8786,1,0,0,'anubrekhan SAY_AGGRO2'),
(-1533003,'Yes, Run! It makes the blood pump faster!',8787,1,0,0,'anubrekhan SAY_AGGRO3'),
(-1533004,'I hear little hearts beating. Yesss... beating faster now. Soon the beating will stop.',8790,1,0,0,'anubrekhan SAY_TAUNT1'),
(-1533005,'Where to go? What to do? So many choices that all end in pain, end in death.',8791,1,0,0,'anubrekhan SAY_TAUNT2'),
(-1533006,'Which one shall I eat first? So difficult to choose... the all smell so delicious.',8792,1,0,0,'anubrekhan SAY_TAUNT3'),
(-1533007,'Closer now... tasty morsels. I\'ve been too long without food. Without blood to drink.',8793,1,0,0,'anubrekhan SAY_TAUNT4'),
(-1533008,'Shh... it will all be over soon.',8789,1,0,0,'anubrekhan SAY_SLAY'),

(-1533009,'Your old lives, your mortal desires, mean nothing. You are acolytes of the master now, and you will serve the cause without question! The greatest glory is to die in the master\'s service!',8799,1,0,0,'faerlina SAY_GREET'),
(-1533010,'Slay them in the master\'s name!',8794,1,0,0,'faerlina SAY_AGGRO1'),
(-1533011,'You cannot hide from me!',8795,1,0,0,'faerlina SAY_AGGRO2'),
(-1533012,'Kneel before me, worm!',8796,1,0,0,'faerlina SAY_AGGRO3'),
(-1533013,'Run while you still can!',8797,1,0,0,'faerlina SAY_AGGRO4'),
(-1533014,'You have failed!',8800,1,0,0,'faerlina SAY_SLAY1'),
(-1533015,'Pathetic wretch!',8801,1,0,0,'faerlina SAY_SLAY2'),
(-1533016,'The master... will avenge me!',8798,1,0,0,'faerlina SAY_DEATH'),

(-1533017,'Patchwerk want to play!',8909,1,0,0,'patchwerk SAY_AGGRO1'),
(-1533018,'Kel\'Thuzad make Patchwerk his Avatar of War!',8910,1,0,0,'patchwerk SAY_AGGRO2'),
(-1533019,'No more play?',8912,1,0,0,'patchwerk SAY_SLAY'),
(-1533020,'What happened to... Patch...',8911,1,0,0,'patchwerk SAY_DEATH'),

(-1533021,'%s sprays slime across the room!',0,3,0,0,'grobbulus EMOTE_SPRAY_SLIME'),

(-1533022,'%s lifts off into the air!',0,3,0,0,'sapphiron EMOTE_FLY'),

(-1533023,'Stalagg crush you!',8864,1,0,0,'stalagg SAY_STAL_AGGRO'),
(-1533024,'Stalagg kill!',8866,1,0,0,'stalagg SAY_STAL_SLAY'),
(-1533025,'Master save me...',8865,1,0,0,'stalagg SAY_STAL_DEATH'),
(-1533026,'Feed you to master!',8802,1,0,0,'feugen SAY_FEUG_AGGRO'),
(-1533027,'Feugen make master happy!',8804,1,0,0,'feugen SAY_FEUG_SLAY'),
(-1533028,'No... more... Feugen...',8803,1,0,0,'feugen SAY_FEUG_DEATH'),

(-1533029,'You are too late... I... must... OBEY!',8872,1,0,0,'thaddius SAY_GREET'),
(-1533030,'KILL!',8867,1,0,0,'thaddius SAY_AGGRO1'),
(-1533031,'EAT YOUR BONES!',8868,1,0,0,'thaddius SAY_AGGRO2'),
(-1533032,'BREAK YOU!',8869,1,0,0,'thaddius SAY_AGGRO3'),
(-1533033,'You die now!',8877,1,0,0,'thaddius SAY_SLAY'),
(-1533034,'Now YOU feel pain!',8871,1,0,0,'thaddius SAY_ELECT'),
(-1533035,'Thank... you...',8870,1,0,0,'thaddius SAY_DEATH'),
(-1533036,'Pleeease!',8873,1,0,0,'thaddius SAY_SCREAM1'),
(-1533037,'Stop, make it stop!',8874,1,0,0,'thaddius SAY_SCREAM2'),
(-1533038,'Help me! Save me!',8875,1,0,0,'thaddius SAY_SCREAM3'),
(-1533039,'Please, nooo!',8876,1,0,0,'thaddius SAY_SCREAM4'),

(-1533040,'Foolishly you have sought your own demise.',8807,1,0,0,'gothik SAY_SPEECH_1'),
(-1533041,'Death is the only escape.',8806,1,0,0,'gothik SAY_KILL'),
(-1533042,'I... am... undone!',8805,1,0,0,'gothik SAY_DEATH'),
(-1533043,'I have waited long enough! Now, you face the harvester of souls!',8808,1,0,0,'gothik SAY_TELEPORT'),

(-1533044,'Defend youself!',8892,1,0,0,'blaumeux SAY_BLAU_AGGRO'),
(-1533045,'Come, Zeliek, do not drive them out. Not before we\'ve had our fun.',8896,1,0,0,'blaumeux SAY_BLAU_TAUNT1'),
(-1533046,'I do hope they stay alive long enough for me to... introduce myself.',8897,1,0,0,'blaumeux SAY_BLAU_TAUNT2'),
(-1533047,'The first kill goes to me! Anyone care to wager?',8898,1,0,0,'blaumeux SAY_BLAU_TAUNT3'),
(-1533048,'Your life is mine!',8895,1,0,0,'blaumeux SAY_BLAU_SPECIAL'),
(-1533049,'Who\'s next?',8894,1,0,0,'blaumeux SAY_BLAU_SLAY'),
(-1533050,'Tou... che!',8893,1,0,0,'blaumeux SAY_BLAU_DEATH'),

(-1533051,'Come out and fight, ye wee ninny!',8899,1,0,0,'korthazz SAY_KORT_AGGRO'),
(-1533052,'To arms, ye roustabouts! We\'ve got company!',8903,1,0,0,'korthazz SAY_KORT_TAUNT1'),
(-1533053,'I heard about enough of yer sniveling. Shut yer fly trap \'afore I shut it for ye!',8904,1,0,0,'korthazz SAY_KORT_TAUNT2'),
(-1533054,'I\'m gonna enjoy killin\' these slack-jawed daffodils!',8905,1,0,0,'korthazz SAY_KORT_TAUNT3'),
(-1533055,'I like my meat extra crispy!',8902,1,0,0,'korthazz SAY_KORT_SPECIAl'),
(-1533056,'Next time, bring more friends!',8901,1,0,0,'korthazz SAY_KORT_SLAY'),
(-1533057,'What a bloody waste this is!',8900,1,0,0,'korthazz SAY_KORT_DEATH'),

(-1533058,'Flee, before it\'s too late!',8913,1,0,0,'zeliek SAY_ZELI_AGGRO'),
(-1533059,'Invaders, cease this foolish venture at once! Turn away while you still can!',8917,1,0,0,'zeliek SAY_ZELI_TAUNT1'),
(-1533060,'Perhaps they will come to their senses, and run away as fast as they can!',8918,1,0,0,'zeliek SAY_ZELI_TAUNT2'),
(-1533061,'Do not continue! Turn back while there\'s still time!',8919,1,0,0,'zeliek SAY_ZELI_TAUNT3'),
(-1533062,'I- I have no choice but to obey!',8916,1,0,0,'zeliek SAY_ZELI_SPECIAL'),
(-1533063,'Forgive me!',8915,1,0,0,'zeliek SAY_ZELI_SLAY'),
(-1533064,'It is... as it should be.',8914,1,0,0,'zeliek SAY_ZELI_DEATH'),

(-1533065,'You seek death?',14571,1,0,0,'rivendare_naxx SAY_RIVE_AGGRO1'),
(-1533066,'None shall pass!',14572,1,0,0,'rivendare_naxx SAY_RIVE_AGGRO2'),
(-1533067,'Be still!',14573,1,0,0,'rivendare_naxx SAY_RIVE_AGGRO3'),
(-1533068,'You will find no peace in death.',14574,1,0,0,'rivendare_naxx SAY_RIVE_SLAY1'),
(-1533069,'The master\'s will is done.',14575,1,0,0,'rivendare_naxx SAY_RIVE_SLAY2'),
(-1533070,'Bow to the might of the scourge!',14576,1,0,0,'rivendare_naxx SAY_RIVE_SPECIAL'),
(-1533071,'Enough prattling. Let them come! We shall grind their bones to dust.',14577,1,0,0,'rivendare_naxx SAY_RIVE_TAUNT1'),
(-1533072,'Conserve your anger! Harness your rage! You will all have outlets for your frustration soon enough.',14578,1,0,0,'rivendare_naxx SAY_RIVE_TAUNT2'),
(-1533073,'Life is meaningless. It is in death that we are truly tested.',14579,1,0,0,'rivendare_naxx SAY_RIVE_TAUNT3'),
(-1533074,'Death... will not stop me...',14580,1,0,0,'rivendare_naxx SAY_RIVE_DEATH'),

(-1533075,'Glory to the master!',8845,1,0,0,'noth SAY_AGGRO1'),
(-1533076,'Your life is forfeit!',8846,1,0,0,'noth SAY_AGGRO2'),
(-1533077,'Die, trespasser!',8847,1,0,0,'noth SAY_AGGRO3'),
(-1533078,'Rise, my soldiers! Rise and fight once more!',8851,1,0,0,'noth SAY_SUMMON'),
(-1533079,'My task is done!',8849,1,0,0,'noth SAY_SLAY1'),
(-1533080,'Breathe no more!',8850,1,0,0,'noth SAY_SLAY2'),
(-1533081,'I will serve the master... in... death!',8848,1,0,0,'noth SAY_DEATH'),

(-1533082,'%s takes in a deep breath...',0,2,0,0,'sapphiron EMOTE_BREATH'),
(-1533083,'%s resumes his attacks!',0,2,0,0,'sapphiron EMOTE_GROUND'),

(-1533084,'Our preparations continue as planned, master.',14467,1,0,0,'kelthuzad SAY_SAPP_DIALOG1'),
(-1533085,'It is good that you serve me so faithfully. Soon, all will serve the Lich King and in the end, you shall be rewarded...so long as you do not falter.',8881,1,0,0,'kelthuzad SAY_SAPP_DIALOG2_LICH'),
(-1533086,'I see no complications... Wait... What is this?',14468,1,0,0,'kelthuzad SAY_SAPP_DIALOG3'),
(-1533087,'Your security measures have failed! See to this interruption immediately!',8882,1,0,0,'kelthuzad SAY_SAPP_DIALOG4_LICH'),
(-1533088,'Yes, master!',14469,1,0,0,'kelthuzad SAY_SAPP_DIALOG5'),
(-1533089,'No!!! A curse upon you, interlopers! The armies of the Lich King will hunt you down. You will not escape your fate...',14484,1,0,0,'kelthuzad SAY_CAT_DIED'),
(-1533090,'Who dares violate the sanctity of my domain? Be warned, all who trespass here are doomed.',14463,6,0,0,'kelthuzad SAY_TAUNT1'),
(-1533091,'Fools, you think yourselves triumphant? You have only taken one step closer to the abyss! ',14464,6,0,0,'kelthuzad SAY_TAUNT2'),
(-1533092,'I grow tired of these games. Proceed, and I will banish your souls to oblivion!',14465,6,0,0,'kelthuzad SAY_TAUNT3'),
(-1533093,'You have no idea what horrors lie ahead. You have seen nothing! The frozen heart of Naxxramas awaits you!',14466,6,0,0,'kelthuzad SAY_TAUNT4'),
(-1533094,'Pray for mercy!',14475,1,0,0,'kelthuzad SAY_AGGRO1'),
(-1533095,'Scream your dying breath!',14476,1,0,0,'kelthuzad SAY_AGGRO2'),
(-1533096,'The end is upon you!',14477,1,0,0,'kelthuzad SAY_AGGRO3'),
(-1533097,'The dark void awaits you!',14478,1,0,0,'kelthuzad SAY_SLAY1'),
(-1533098,'<Kel\'Thuzad cackles maniacally!>',14479,1,0,0,'kelthuzad SAY_SLAY2'),
(-1533099,'AAAAGHHH!... Do not rejoice... your victory is a hollow one... for I shall return with powers beyond your imagining!',14480,1,0,0,'kelthuzad SAY_DEATH'),
(-1533100,'Your soul, is bound to me now!',14472,1,0,0,'kelthuzad SAY_CHAIN1'),
(-1533101,'There will be no escape!',14473,1,0,0,'kelthuzad SAY_CHAIN2'),
(-1533102,'I will freeze the blood in your veins!',14474,1,0,0,'kelthuzad SAY_FROST_BLAST'),
(-1533103,'Master! I require aid! ',14470,1,0,0,'kelthuzad SAY_REQUEST_AID'),
(-1533104,'Very well... warriors of the frozen wastes, rise up! I command you to fight, kill, and die for your master. Let none survive...',0,1,0,0,'kelthuzad SAY_ANSWER_REQUEST'),
(-1533105,'Minions, servants, soldiers of the cold dark, obey the call of Kel\'Thuzad!',14471,1,0,0,'kelthuzad SAY_SUMMON_MINIONS'),
(-1533106,'Your petty magics are no challenge to the might of the Scourge! ',14481,1,0,0,'kelthuzad SAY_SPECIAL1_MANA_DET'),
(-1533107,'Enough! I grow tired of these distractions! ',14483,1,0,0,'kelthuzad SAY_SPECIAL3_MANA_DET'),
(-1533108,'Fools, you have spread your powers too thin. Be free, my minions!',14482,1,0,0,'kelthuzad SAY_SPECIAL2_DISPELL'),

(-1533109,'You are mine now!',8825,1,0,0,'heigan SAY_AGGRO1'),
(-1533110,'I see you!',8826,1,0,0,'heigan SAY_AGGRO2'),
(-1533111,'You...are next!',8827,1,0,0,'heigan SAY_AGGRO3'),
(-1533112,'Close your eyes... sleep!',8829,1,0,0,'heigan SAY_SLAY'),
(-1533113,'The races of the world will perish. It is only a matter of time.',8830,1,0,0,'heigan SAY_TAUNT1'),
(-1533114,'I see endless suffering, I see torment, I see rage. I see... everything!',8831,1,0,0,'heigan SAY_TAUNT2'),
(-1533115,'Soon... the world will tremble!',8832,1,0,0,'heigan SAY_TAUNT3'),
(-1533116,'The end is upon you.',8833,1,0,0,'heigan SAY_CHANNELING'),
(-1533117,'Hungry worms will feast on your rotten flesh!',8834,1,0,0,'heigan SAY_TAUNT4'),
(-1533118,'Noo... o...',8828,1,0,0,'heigan SAY_DEATH'),

(-1533119,'%s spots a nearby Zombie to devour!',0,3,0,0,'gluth EMOTE_ZOMBIE'),

(-1533120,'Hah hah, I\'m just getting warmed up!',8852,1,0,0,'razuvious SAY_AGGRO1'),
(-1533121,'Stand and fight!',8853,1,0,0,'razuvious SAY_AGGRO2'),
(-1533122,'Show me what you\'ve got!',8854,1,0,0,'razuvious SAY_AGGRO3'),
(-1533123,'Sweep the leg! Do you have a problem with that?',8861,1,0,0,'razuvious SAY_SLAY1'),
(-1533124,'You should have stayed home!',8862,1,0,0,'razuvious SAY_SLAY2'),
(-1533125,'Do as I taught you!',8855,1,0,0,'razuvious SAY_COMMAND1'),
(-1533126,'Show them no mercy!',8856,1,0,0,'razuvious SAY_COMMAND2'),
(-1533127,'You disappoint me, students!',8858,1,0,0,'razuvious SAY_COMMAND3'),
(-1533128,'The time for practice is over! Show me what you\'ve learned!',8859,1,0,0,'razuvious SAY_COMMAND4'),
(-1533129,'An honorable... death...',8860,1,0,0,'razuvious SAY_DEATH'),

(-1533130,'%s summons forth Skeletal Warriors!',0,3,0,0,'noth EMOTE_WARRIOR'),
(-1533131,'%s raises more skeletons!',0,3,0,0,'noth EMOTE_SKELETON'),
(-1533132,'%s teleports to the balcony above!',0,3,0,0,'noth EMOTE_TELEPORT'),
(-1533133,'%s teleports back into the battle!',0,3,0,0,'noth EMOTE_TELEPORT_RETURN'),

(-1533134,'A Guardian of Icecrown enters the fight!',0,3,0,0,'kelthuzad EMOTE_GUARDIAN'),
(-1533135,'%s strikes!',0,3,0,0,'kelthuzad EMOTE_PHASE2'),

(-1533136,'%s teleports and begins to channel a spell!',0,3,0,0,'heigan EMOTE_TELEPORT'),
(-1533137,'%s rushes to attack once more!',0,3,0,0,'heigan EMOTE_RETURN'),

(-1533138,'%s teleports into the fray!',0,3,0,0,'gothik EMOTE_TO_FRAY'),
(-1533139,'The central gate opens!',0,3,0,0,'gothik EMOTE_GATE'),
(-1533140,'Brazenly you have disregarded powers beyond your understanding.',0,1,0,0,'gothik SAY_SPEECH_2'),
(-1533141,'You have fought hard to invade the realm of the harvester.',0,1,0,0,'gothik SAY_SPEECH_3'),
(-1533142,'Now there is only one way out - to walk the lonely path of the damned.',0,1,0,0,'gothik SAY_SPEECH_4'),

(-1533143,'An aura of necrotic energy blocks all healing!',0,3,0,0,'Loatheb EMOTE_AURA_BLOCKING'),
(-1533144,'The power of Necrotic Aura begins to wane!',0,3,0,0,'Loatheb EMOTE_AURA_WANE'),
(-1533145,'The aura fades away, allowing healing once more!',0,3,0,0,'Loatheb EMOTE_AURA_FADING'),

(-1533146,'%s spins her web into a cocoon!',0,3,0,0,'maexxna EMOTE_SPIN_WEB'),
(-1533147,'Spiderlings appear on the web!',0,3,0,0,'maexxna EMOTE_SPIDERLING'),
(-1533148,'%s sprays strands of web everywhere!',0,3,0,0,'maexxna EMOTE_SPRAY'),

(-1533149,'%s loses its link!',0,3,0,0,'tesla_coil EMOTE_LOSING_LINK'),
(-1533150,'%s overloads!',0,3,0,0,'tesla_coil EMOTE_TESLA_OVERLOAD'),
(-1533151,'The polarity has shifted!',0,3,0,0,'thaddius EMOTE_POLARITY_SHIFT'),

(-1533152,'%s decimates all nearby flesh!',0,3,0,0,'gluth EMOTE_DECIMATE'),

(-1533153,'A %s joins the fight!',0,3,0,0,'crypt_guard EMOTE_CRYPT_GUARD'),
(-1533154,'%s begins to unleash an insect swarm!',0,3,0,0,'anubrekhan EMOTE_INSECT_SWARM'),
(-1533155,'Corpse Scarabs appear from a Crypt Guard\'s corpse!',0,3,0,0,'anubrekhan EMOTE_CORPSE_SCARABS'),

(-1533156,'%s casts Unyielding Pain on everyone!',0,3,0,0,'lady_blaumeux EMOTE_UNYIELDING_PAIN'),
(-1533157,'%s casts Condemation on everyone!',0,3,0,0,'sir_zeliek EMOTE_CONDEMATION'),

(-1533158,'%s injects you with a mutagen!',0,5,0,0,'grobbulus EMOTE_INJECTION');

-- -1 534 000 THE BATTLE OF MT. HYJAL
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1534000,'I\'m in jeopardy, help me if you can!',11007,1,0,0,'jaina hyjal ATTACKED 1'),
(-1534001,'They\'ve broken through!',11049,1,0,0,'jaina hyjal ATTACKED 2'),
(-1534002,'Stay alert! Another wave approaches.',11008,1,0,0,'jaina hyjal INCOMING'),
(-1534003,'Don\'t give up! We must prevail!',11006,1,0,0,'jaina hyjal BEGIN'),
(-1534004,'Hold them back as long as possible.',11050,1,0,0,'jaina hyjal RALLY 1'),
(-1534005,'We must hold strong!',11051,1,0,0,'jaina hyjal RALLY 2'),
(-1534006,'We are lost. Fall back!',11009,1,0,0,'jaina hyjal FAILURE'),
(-1534007,'We have won valuable time. Now we must pull back!',11011,1,0,0,'jaina hyjal SUCCESS'),
(-1534008,'I did... my best.',11010,1,0,0,'jaina hyjal DEATH'),

(-1534009,'I will lie down for no one!',11031,1,0,0,'thrall hyjal ATTACKED 1'),
(-1534010,'Bring the fight to me and pay with your lives!',11061,1,0,0,'thrall hyjal ATTACKED 2'),
(-1534011,'Make ready for another wave! LOK-TAR OGAR!',11032,1,0,0,'thrall hyjal INCOMING'),
(-1534012,'Hold them back! Do not falter!',11030,1,0,0,'thrall hyjal BEGIN'),
(-1534013,'Victory or death!',11059,1,0,0,'thrall hyjal RALLY 1'),
(-1534014,'Do not give an inch of ground!',11060,1,0,0,'thrall hyjal RALLY 2'),
(-1534015,'It is over. Withdraw! We have failed.',11033,1,0,0,'thrall hyjal FAILURE'),
(-1534016,'We have played our part and done well. It is up to the others now.',11035,1,0,0,'thrall hyjal SUCCESS'),
(-1534017,'Uraaa...',11034,1,0,0,'thrall hyjal DEATH'),

(-1534018,'All of your efforts have been in vain, for the draining of the World Tree has already begun. Soon the heart of your world will beat no more.',10986,1,0,0,'archimonde SAY_PRE_EVENTS_COMPLETE'),
(-1534019,'Your resistance is insignificant.',10987,1,0,0,'archimonde SAY_AGGRO'),
(-1534020,'This world will burn!',10990,1,0,0,'archimonde SAY_DOOMFIRE1'),
(-1534021,'Manach sheek-thrish!',11041,1,0,0,'archimonde SAY_DOOMFIRE2'),
(-1534022,'A-kreesh!',10989,1,0,0,'archimonde SAY_AIR_BURST1'),
(-1534023,'Away vermin!',11043,1,0,0,'archimonde SAY_AIR_BURST2'),
(-1534024,'All creation will be devoured!',11044,1,0,0,'archimonde SAY_SLAY1'),
(-1534025,'Your soul will languish for eternity.',10991,1,0,0,'archimonde SAY_SLAY2'),
(-1534026,'I am the coming of the end!',11045,1,0,0,'archimonde SAY_SLAY3'),
(-1534027,'At last it is here. Mourn and lament the passing of all you have ever known and all that would have been! Akmin-kurai!',10993,1,0,0,'archimonde SAY_ENRAGE'),
(-1534028,'No, it cannot be! Nooo!',10992,1,0,0,'archimonde SAY_DEATH'),
(-1534029,'You are mine now.',10988,1,0,0,'archimonde SAY_SOUL_CHARGE1'),
(-1534030,'Bow to my will.',11042,1,0,0,'archimonde SAY_SOUL_CHARGE2');

-- -1 540 000 SHATTERED HALLS
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1540000,'You wish to fight us all at once? This should be amusing!',10262,1,0,0,'nethekurse SAY_INTRO'),
(-1540001,'You can have that one. I no longer need him.',10263,1,0,0,'nethekurse PEON_ATTACK_1'),
(-1540002,'Yes, beat him mercilessly. His skull is a thick as an ogres.',10264,1,0,0,'nethekurse PEON_ATTACK_2'),
(-1540003,'Don\'t waste your time on that one. He\'s weak!',10265,1,0,0,'nethekurse PEON_ATTACK_3'),
(-1540004,'You want him? Very well, take him!',10266,1,0,0,'nethekurse PEON_ATTACK_4'),
(-1540005,'One pitiful wretch down. Go on, take another one.',10267,1,0,0,'nethekurse PEON_DIE_1'),
(-1540006,'Ahh, what a waste... Next!',10268,1,0,0,'nethekurse PEON_DIE_2'),
(-1540007,'I was going to kill him anyway!',10269,1,0,0,'nethekurse PEON_DIE_3'),
(-1540008,'Thank you for saving me the trouble! Now it\'s my turn to have some fun...',10270,1,0,0,'nethekurse PEON_DIE_4'),
(-1540009,'Beg for your pittyfull life!',10259,1,0,0,'nethekurse SAY_TAUNT_1'),
(-1540010,'Run covad, ruun!',10260,1,0,0,'nethekurse SAY_TAUNT_2'),
(-1540011,'Your pain amuses me.',10261,1,0,0,'nethekurse SAY_TAUNT_3'),
(-1540012,'I\'m already bored.',10271,1,0,0,'nethekurse SAY_AGGRO_1'),
(-1540013,'Come on! ... Show me a real fight.',10272,1,0,0,'nethekurse SAY_AGGRO_2'),
(-1540014,'I had more fun torturing the peons.',10273,1,0,0,'nethekurse SAY_AGGRO_3'),
(-1540015,'You Loose.',10274,1,0,0,'nethekurse SAY_SLAY_1'),
(-1540016,'Ohh! Just die.',10275,1,0,0,'nethekurse SAY_SLAY_2'),
(-1540017,'What a ... a shame.',10276,1,0,0,'nethekurse SAY_DIE'),

(-1540018,'Smash!',10306,1,0,0,'omrogg GoCombat_1'),
(-1540019,'If you nice me let you live.',10308,1,0,0,'omrogg GoCombat_2'),
(-1540020,'Me hungry!',10309,1,0,0,'omrogg GoCombat_3'),
(-1540021,'Why don\'t you let me do the talking?',10317,1,0,0,'omrogg GoCombatDelay_1'),
(-1540022,'No, we will NOT let you live!',10318,1,0,0,'omrogg GoCombatDelay_2'),
(-1540023,'You always hungry. That why we so fat!',10319,1,0,0,'omrogg GoCombatDelay_3'),
(-1540024,'You stay here. Me go kill someone else!',10303,1,0,0,'omrogg Threat_1'),
(-1540025,'What are you doing!',10315,1,0,0,'omrogg Threat_2'),
(-1540026,'Me kill someone else...',10302,1,0,0,'omrogg Threat_3'),
(-1540027,'Me not like this one...',10300,1,0,0,'omrogg Threat_4'),
(-1540028,'That\'s not funny!',10314,1,0,0,'omrogg ThreatDelay1_1'),
(-1540029,'Me get bored...',10305,1,0,0,'omrogg ThreatDelay1_2'),
(-1540030,'I\'m not done yet, idiot!',10313,1,0,0,'omrogg ThreatDelay1_3'),
(-1540031,'Hey you numbskull!',10312,1,0,0,'omrogg ThreatDelay1_4'),
(-1540032,'Ha ha ha.',10304,1,0,0,'omrogg ThreatDelay2_1'),
(-1540033,'Whhy! He almost dead!',10316,1,0,0,'omrogg ThreatDelay2_2'),
(-1540034,'H\'ey...',10307,1,0,0,'omrogg ThreatDelay2_3'),
(-1540035,'We kill his friend!',10301,1,0,0,'omrogg ThreatDelay2_4'),
(-1540036,'This one die easy!',10310,1,0,0,'omrogg Killing_1'),
(-1540037,'I\'m tired. You kill next one!',10320,1,0,0,'omrogg Killing_2'),
(-1540038,'That\'s because I do all the hard work!',10321,1,0,0,'omrogg KillingDelay_1'),
(-1540039,'This all...your fault!',10311,1,0,0,'omrogg YELL_DIE_L'),
(-1540040,'I...hate...you...',10322,1,0,0,'omrogg YELL_DIE_R'),
(-1540041,'%s enrages!',0,2,0,0,'omrogg EMOTE_ENRAGE'),

(-1540042,'Ours is the true Horde! The only Horde!',10323,1,0,0,'kargath SAY_AGGRO1'),
(-1540043,'I\'ll carve the meat from your bones!',10324,1,0,0,'kargath SAY_AGGRO2'),
(-1540044,'I am called Bladefist for a reason, as you will see!',10325,1,0,0,'kargath SAY_AGGRO3'),
(-1540045,'For the real Horde!',10326,1,0,0,'kargath SAY_SLAY1'),
(-1540046,'I am the only Warchief!',10327,1,0,0,'kargath SAY_SLAY2'),
(-1540047,'The true Horde... will.. prevail...',10328,1,0,0,'kargath SAY_DEATH');

-- -1 542 000 BLOOD FURNACE
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1542000,'Who dares interrupt... What is this? What have you done? You ruin everything!',10164,1,0,0,'kelidan SAY_WAKE'),
(-1542001,'You mustn\'t let him loose!',10166,1,0,0,'kelidan SAY_ADD_AGGRO_1'),
(-1542002,'Ignorant whelps!',10167,1,0,0,'kelidan SAY_ADD_AGGRO_2'),
(-1542003,'You fools! He\'ll kill us all!',10168,1,0,0,'kelidan SAY_ADD_AGGRO_3'),
(-1542004,'Just as you deserve!',10169,1,0,0,'kelidan SAY_KILL_1'),
(-1542005,'Your friends will soon be joining you.',10170,1,0,0,'kelidan SAY_KILL_2'),
(-1542006,'Closer... Come closer.. and burn!',10165,1,0,0,'kelidan SAY_NOVA'),
(-1542007,'Good luck... you\'ll need it..',10171,1,0,0,'kelidan SAY_DIE'),

(-1542008,'Come intruders....',0,1,0,0,'broggok SAY_AGGRO'),

(-1542009,'My work must not be interrupted.',10286,1,0,0,'the_maker SAY_AGGRO_1'),
(-1542010,'Perhaps I can find a use for you.',10287,1,0,0,'the_maker SAY_AGGRO_2'),
(-1542011,'Anger... Hate... These are tools I can use.',10288,1,0,0,'the_maker SAY_AGGRO_3'),
(-1542012,'Let\'s see what I can make of you.',10289,1,0,0,'the_maker SAY_KILL_1'),
(-1542013,'It is pointless to resist.',10290,1,0,0,'the_maker SAY_KILL_2'),
(-1542014,'Stay away from... me.',10291,1,0,0,'the_maker SAY_DIE');

-- -1 543 000 HELLFIRE RAMPARTS
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1543000,'Do you smell that? Fresh meat has somehow breached our citadel. Be wary of any intruders.',0,1,0,0,'gargolmar SAY_TAUNT'),
(-1543001,'Heal me! QUICKLY!',10329,1,0,0,'gargolmar SAY_HEAL'),
(-1543002,'Back off, pup!',10330,1,0,0,'gargolmar SAY_SURGE'),
(-1543003,'What have we here...?',10331,1,0,0,'gargolmar SAY_AGGRO_1'),
(-1543004,'Heh... this may hurt a little.',10332,1,0,0,'gargolmar SAY_AGGRO_2'),
(-1543005,'I\'m gonna enjoy this.',10333,1,0,0,'gargolmar SAY_AGGRO_3'),
(-1543006,'Say farewell!',10334,1,0,0,'gargolmar SAY_KILL_1'),
(-1543007,'Much too easy...',10335,1,0,0,'gargolmar SAY_KILL_2'),
(-1543008,'Hahah.. <cough> ..argh!',10336,1,0,0,'gargolmar SAY_DIE'),

(-1543009,'You dare stand against me?!',10280,1,0,0,'omor SAY_AGGRO_1'),
(-1543010,'I will not be defeated!',10279,1,0,0,'omor SAY_AGGRO_2'),
(-1543011,'Your insolence will be your death.',10281,1,0,0,'omor SAY_AGGRO_3'),
(-1543012,'Achor-she-ki! Feast my pet! Eat your fill!',10277,1,0,0,'omor SAY_SUMMON'),
(-1543013,'A-Kreesh!',10278,1,0,0,'omor SAY_CURSE'),
(-1543014,'Die, weakling!',10282,1,0,0,'omor SAY_KILL_1'),
(-1543015,'It is... not over.',10284,1,0,0,'omor SAY_DIE'),
(-1543016,'I am victorious!',10283,1,0,0,'omor SAY_WIPE'),

(-1543017,'You have faced many challenges, pity they were all in vain. Soon your people will kneel to my lord!',10292,1,0,0,'vazruden SAY_INTRO'),
(-1543018,'Your time is running out!',10294,1,0,0,'vazruden SAY_AGGRO1'),
(-1543019,'You are nothing, I answer a higher call!',10295,1,0,0,'vazruden SAY_AGGRO2'),
(-1543020,'The Dark Lord laughs at you!',10296,1,0,0,'vazruden SAY_AGGRO3'),
(-1543021,'Is there no one left to test me?',10293,1,0,0,'vazruden SAY_TAUNT'),
(-1543022,'It is over. Finished!',10297,1,0,0,'vazruden SAY_KILL1'),
(-1543023,'Your days are done!',10298,1,0,0,'vazruden SAY_KILL2'),
(-1543024,'My lord will be the end you all...',10299,1,0,0,'vazruden SAY_DEATH'),
(-1543025,'%s descends from the sky.',0,3,0,0,'vazruden EMOTE_DESCEND');

-- -1 544 000 MAGTHERIDON'S LAIR
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1544000,'Wretched, meddling insects. Release me and perhaps i will grant you a merciful death!',10247,1,0,0,'magtheridon SAY_TAUNT1'),
(-1544001,'Vermin! Leeches! Take my blood and choke on it!',10248,1,0,0,'magtheridon SAY_TAUNT2'),
(-1544002,'Illidan is an arrogant fool. I will crush him and reclaim Outland as my own.',10249,1,0,0,'magtheridon SAY_TAUNT3'),
(-1544003,'Away, you mindless parasites. My blood is my own!',10250,1,0,0,'magtheridon SAY_TAUNT4'),
(-1544004,'How long do you believe your pathetic sorcery can hold me?',10251,1,0,0,'magtheridon SAY_TAUNT5'),
(-1544005,'My blood will be the end of you!',10252,1,0,0,'magtheridon SAY_TAUNT6'),
(-1544006,'I...am...UNLEASHED!!!',10253,1,0,0,'magtheridon SAY_FREED'),
(-1544007,'Thank you for releasing me. Now...die!',10254,1,0,0,'magtheridon SAY_AGGRO'),
(-1544008,'Not again...NOT AGAIN!',10256,1,0,0,'magtheridon SAY_BANISH'),
(-1544009,'I will not be taken so easily. Let the walls of this prison tremble...and FALL!!!',10257,1,0,0,'magtheridon SAY_CHAMBER_DESTROY'),
(-1544010,'Did you think me weak? Soft? Who is the weak one now?!',10255,1,0,0,'magtheridon SAY_PLAYER_KILLED'),
(-1544011,'The Legion...will consume you...all...',10258,1,0,0,'magtheridon SAY_DEATH'),
(-1544012,'REUSE_ME',0,0,0,0,'REUSE_ME'),
(-1544013,'%s begins to cast Blast Nova!',0,3,0,0,'magtheridon EMOTE_BLASTNOVA'),
(-1544014,'%s\'s bonds begin to weaken!',0,2,0,0,'magtheridon EMOTE_BEGIN'),
(-1544015,'%s breaks free!',0,2,0,0,'magtheridon EMOTE_FREED');

-- -1 545 000 THE STEAMVAULT
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1545000,'Surge forth my pets!',10360,1,0,0,'thespia SAY_SUMMON'),
(-1545001,'The depths will consume you!',10361,1,0,0,'thespia SAY_AGGRO_1'),
(-1545002,'Meet your doom, surface dwellers!',10362,1,0,0,'thespia SAY_AGGRO_2'),
(-1545003,'You will drown in blood!',10363,1,0,0,'thespia SAY_AGGRO_3'),
(-1545004,'To the depths of oblivion with you!',10364,1,0,0,'thespia SAY_SLAY_1'),
(-1545005,'For my lady and master!',10365,1,0,0,'thespia SAY_SLAY_2'),
(-1545006,'Our matron will be.. the end of.. you..',10366,1,0,0,'thespia SAY_DEAD'),

(-1545007,'I\'m bringin\' the pain!',10367,1,0,0,'mekgineer SAY_MECHANICS'),
(-1545008,'You\'re in for a world of hurt!',10368,1,0,0,'mekgineer SAY_AGGRO_1'),
(-1545009,'Eat hot metal, scumbag!',10369,1,0,0,'mekgineer SAY_AGGRO_2'),
(-1545010,'I\'ll come over there!',10370,1,0,0,'mekgineer SAY_AGGRO_3'),
(-1545011,'I\'m bringin\' the pain!',10371,1,0,0,'mekgineer SAY_AGGRO_4'),
(-1545012,'You just got served, punk!',10372,1,0,0,'mekgineer SOUND_SLAY_1'),
(-1545013,'I own you!',10373,1,0,0,'mekgineer SOUND_SLAY_2'),
(-1545014,'Have fun dyin\', cupcake!',10374,1,0,0,'mekgineer SOUND_SLAY_3'),
(-1545015,'Mommy!',10375,1,0,0,'mekgineer SAY_DEATH'),

(-1545016,'You deem yourselves worthy simply because you bested my guards? Our work here will not be compromised!',10390,1,0,0,'kalithresh SAY_INTRO'),
(-1545017,'This is not nearly over...',10391,1,0,0,'kalithresh SAY_REGEN'),
(-1545018,'Your head will roll!',10392,1,0,0,'kalithresh SAY_AGGRO1'),
(-1545019,'I despise all of your kind!',10393,1,0,0,'kalithresh SAY_AGGRO2'),
(-1545020,'Ba\'ahntha sol\'dorei!',10394,1,0,0,'kalithresh SAY_AGGRO3'),
(-1545021,'Scram, surface filth!',10395,1,0,0,'kalithresh SAY_SLAY1'),
(-1545022,'Ah ha ha ha ha ha ha!',10396,1,0,0,'kalithresh SAY_SLAY2'),
(-1545023,'For her Excellency... for... Vashj!',10397,1,0,0,'kalithresh SAY_DEATH');

-- -1 546 000 THE UNDERBOG

-- -1 547 000 THE SLAVE PENS

-- -1 548 000 SERPENTSHRINE CAVERN
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1548000,'I cannot allow you to interfere!',11289,1,0,0,'hydross SAY_AGGRO'),
(-1548001,'Better, much better.',11290,1,0,0,'hydross SAY_SWITCH_TO_CLEAN'),
(-1548002,'They have forced me to this...',11291,1,0,0,'hydross SAY_CLEAN_SLAY1'),
(-1548003,'I have no choice.',11292,1,0,0,'hydross SAY_CLEAN_SLAY2'),
(-1548004,'I am... released...',11293,1,0,0,'hydross SAY_CLEAN_DEATH'),
(-1548005,'Aaghh, the poison...',11297,1,0,0,'hydross SAY_SWITCH_TO_CORRUPT'),
(-1548006,'I will purge you from this place.',11298,1,0,0,'hydross SAY_CORRUPT_SLAY1'),
(-1548007,'You are no better than they!',11299,1,0,0,'hydross SAY_CORRUPT_SLAY2'),
(-1548008,'You are the disease, not I',11300,1,0,0,'hydross SAY_CORRUPT_DEATH'),

(-1548009,'Finally, my banishment ends!',11312,1,0,0,'leotheras SAY_AGGRO'),
(-1548010,'Be gone, trifling elf.  I am in control now!',11304,1,0,0,'leotheras SAY_SWITCH_TO_DEMON'),
(-1548011,'We all have our demons...',11305,1,0,0,'leotheras SAY_INNER_DEMONS'),
(-1548012,'I have no equal.',11306,1,0,0,'leotheras SAY_DEMON_SLAY1'),
(-1548013,'Perish, mortal.',11307,1,0,0,'leotheras SAY_DEMON_SLAY2'),
(-1548014,'Yes, YES! Ahahah!',11308,1,0,0,'leotheras SAY_DEMON_SLAY3'),
(-1548015,'Kill! KILL!',11314,1,0,0,'leotheras SAY_NIGHTELF_SLAY1'),
(-1548016,'That\'s right! Yes!',11315,1,0,0,'leotheras SAY_NIGHTELF_SLAY2'),
(-1548017,'Who\'s the master now?',11316,1,0,0,'leotheras SAY_NIGHTELF_SLAY3'),
(-1548018,'No... no! What have you done? I am the master! Do you hear me? I am... aaggh! Can\'t... contain him...',11313,1,0,0,'leotheras SAY_FINAL_FORM'),
(-1548019,'At last I am liberated. It has been too long since I have tasted true freedom!',11309,1,0,0,'leotheras SAY_FREE'),
(-1548020,'You cannot kill me! Fools, I\'ll be back! I\'ll... aarghh...',11317,1,0,0,'leotheras SAY_DEATH'),

(-1548021,'Guards, attention! We have visitors...',11277,1,0,0,'karathress SAY_AGGRO'),
(-1548022,'Your overconfidence will be your undoing! Guards, lend me your strength!',11278,1,0,0,'karathress SAY_GAIN_BLESSING'),
(-1548023,'Go on, kill them! I\'ll be the better for it!',11279,1,0,0,'karathress SAY_GAIN_ABILITY1'),
(-1548024,'I am more powerful than ever!',11280,1,0,0,'karathress SAY_GAIN_ABILITY2'),
(-1548025,'More knowledge, more power!',11281,1,0,0,'karathress SAY_GAIN_ABILITY3'),
(-1548026,'Land-dwelling scum!',11282,1,0,0,'karathress SAY_SLAY1'),
(-1548027,'Alana be\'lendor!',11283,1,0,0,'karathress SAY_SLAY2'),
(-1548028,'I am rid of you.',11284,1,0,0,'karathress SAY_SLAY3'),
(-1548029,'Her ... excellency ... awaits!',11285,1,0,0,'karathress SAY_DEATH'),

(-1548030,'Flood of the deep, take you!',11321,1,0,0,'morogrim SAY_AGGRO'),
(-1548031,'By the Tides, kill them at once!',11322,1,0,0,'morogrim SAY_SUMMON1'),
(-1548032,'Destroy them my subjects!',11323,1,0,0,'morogrim SAY_SUMMON2'),
(-1548033,'There is nowhere to hide!',11324,1,0,0,'morogrim SAY_SUMMON_BUBL1'),
(-1548034,'Soon it will be finished!',11325,1,0,0,'morogrim SAY_SUMMON_BUBL2'),
(-1548035,'It is done!',11326,1,0,0,'morogrim SAY_SLAY1'),
(-1548036,'Strugging only makes it worse.',11327,1,0,0,'morogrim SAY_SLAY2'),
(-1548037,'Only the strong survive.',11328,1,0,0,'morogrim SAY_SLAY3'),
(-1548038,'Great... currents of... Ageon.',11329,1,0,0,'morogrim SAY_DEATH'),
(-1548039,'%s sends his enemies to their watery graves!',0,2,0,0,'morogrim EMOTE_WATERY_GRAVE'),
(-1548040,'The violent earthquake has alerted nearby murlocs!',0,3,0,0,'morogrim EMOTE_EARTHQUAKE'),
(-1548041,'%s summons Watery Globules!',0,2,0,0,'morogrim EMOTE_WATERY_GLOBULES'),

(-1548042,'Water is life. It has become a rare commodity here in Outland. A commodity that we alone shall control. We are the Highborne, and the time has come at last for us to retake our rightful place in the world!',11531,1,0,0,'vashj SAY_INTRO'),
(-1548043,'I\'ll split you from stem to stern!',11532,1,0,0,'vashj SAY_AGGRO1'),
(-1548044,'Victory to Lord Illidan!',11533,1,0,0,'vashj SAY_AGGRO2'),
(-1548045,'I spit on you, surface filth!',11534,1,0,0,'vashj SAY_AGGRO3'),
(-1548046,'Death to the outsiders!',11535,1,0,0,'vashj SAY_AGGRO4'),
(-1548047,'I did not wish to lower myself by engaging your kind, but you leave me little choice!',11538,1,0,0,'vashj SAY_PHASE1'),
(-1548048,'The time is now! Leave none standing!',11539,1,0,0,'vashj SAY_PHASE2'),
(-1548049,'You may want to take cover.',11540,1,0,0,'vashj SAY_PHASE3'),
(-1548050,'Straight to the heart!',11536,1,0,0,'vashj SAY_BOWSHOT1'),
(-1548051,'Seek your mark!',11537,1,0,0,'vashj SAY_BOWSHOT2'),
(-1548052,'Your time ends now!',11541,1,0,0,'vashj SAY_SLAY1'),
(-1548053,'You have failed!',11542,1,0,0,'vashj SAY_SLAY2'),
(-1548054,'Be\'lamere an\'delay',11543,1,0,0,'vashj SAY_SLAY3'),
(-1548055,'Lord Illidan, I... I am... sorry.',11544,1,0,0,'vashj SAY_DEATH');

-- -1 550 000 THE EYE
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1550000,'Alert, you are marked for extermination!',11213,1,0,0,'voidreaver SAY_AGGRO'),
(-1550001,'Extermination, successful.',11215,1,0,0,'voidreaver SAY_SLAY1'),
(-1550002,'Imbecile life form, no longer functional.',11216,1,0,0,'voidreaver SAY_SLAY2'),
(-1550003,'Threat neutralized.',11217,1,0,0,'voidreaver SAY_SLAY3'),
(-1550004,'Systems... shutting... down...',11214,1,0,0,'voidreaver SAY_DEATH'),
(-1550005,'Alternative measure commencing...',11218,1,0,0,'voidreaver SAY_POUNDING1'),
(-1550006,'Calculating force parameters...',11219,1,0,0,'voidreaver SAY_POUNDING2'),

(-1550007,'Tal anu\'men no Sin\'dorei!',11134,1,0,0,'solarian SAY_AGGRO'),
(-1550008,'Ha ha ha! You are hopelessly outmatched!',11139,1,0,0,'solarian SAY_SUMMON1'),
(-1550009,'I will crush your delusions of grandeur!',11140,1,0,0,'solarian SAY_SUMMON2'),
(-1550010,'Your soul belongs to the Abyss!',11136,1,0,0,'solarian SAY_KILL1'),
(-1550011,'By the blood of the Highborne!',11137,1,0,0,'solarian SAY_KILL2'),
(-1550012,'For the Sunwell!',11138,1,0,0,'solarian SAY_KILL3'),
(-1550013,'The warmth of the sun... awaits.',11135,1,0,0,'solarian SAY_DEATH'),
(-1550014,'Enough of this! Now I call upon the fury of the cosmos itself.',0,1,0,0,'solarian SAY_VOIDA'),
(-1550015,'I become ONE... with the VOID!',0,1,0,0,'solarian SAY_VOIDB'),

(-1550016,'Energy. Power. My people are addicted to it... a dependence made manifest after the Sunwell was destroyed. Welcome... to the future. A pity you are too late to stop it. No one can stop me now! Selama ashal\'anore!',11256,1,0,0,'kaelthas SAY_INTRO'),
(-1550017,'Capernian will see to it that your stay here is a short one.',11257,1,0,0,'kaelthas SAY_INTRO_CAPERNIAN'),
(-1550018,'Well done, you have proven worthy to test your skills against my master engineer, Telonicus.',11258,1,0,0,'kaelthas SAY_INTRO_TELONICUS'),
(-1550019,'Let us see how your nerves hold up against the Darkener, Thaladred.',11259,1,0,0,'kaelthas SAY_INTRO_THALADRED'),
(-1550020,'You have persevered against some of my best advisors... but none can withstand the might of the Blood Hammer. Behold, Lord Sanguinar!',11260,1,0,0,'kaelthas SAY_INTRO_SANGUINAR'),
(-1550021,'As you see, I have many weapons in my arsenal...',11261,1,0,0,'kaelthas SAY_PHASE2_WEAPON'),
(-1550022,'Perhaps I underestimated you. It would be unfair to make you fight all four advisors at once, but... fair treatment was never shown to my people. I\'m just returning the favor.',11262,1,0,0,'kaelthas SAY_PHASE3_ADVANCE'),
(-1550023,'Alas, sometimes one must take matters into one\'s own hands. Balamore shanal!',11263,1,0,0,'kaelthas SAY_PHASE4_INTRO2'),
(-1550024,'I have not come this far to be stopped! The future I have planned will not be jeopardized! Now you will taste true power!!',11273,1,0,0,'kaelthas SAY_PHASE5_NUTS'),
(-1550025,'You will not prevail.',11270,1,0,0,'kaelthas SAY_SLAY1'),
(-1550026,'You gambled...and lost.',11271,1,0,0,'kaelthas SAY_SLAY2'),
(-1550027,'This was Child\'s play.',11272,1,0,0,'kaelthas SAY_SLAY3'),
(-1550028,'Obey me.',11268,1,0,0,'kaelthas SAY_MINDCONTROL1'),
(-1550029,'Bow to my will.',11269,1,0,0,'kaelthas SAY_MINDCONTROL2'),
(-1550030,'Let us see how you fare when your world is turned upside down.',11264,1,0,0,'kaelthas SAY_GRAVITYLAPSE1'),
(-1550031,'Having trouble staying grounded?',11265,1,0,0,'kaelthas SAY_GRAVITYLAPSE2'),
(-1550032,'Anara\'nel belore!',11267,1,0,0,'kaelthas SAY_SUMMON_PHOENIX1'),
(-1550033,'By the power of the sun!',11266,1,0,0,'kaelthas SAY_SUMMON_PHOENIX2'),
(-1550034,'For...Quel...thalas!',11274,1,0,0,'kaelthas SAY_DEATH'),

(-1550035,'Prepare yourselves!',11203,1,0,0,'thaladred SAY_THALADRED_AGGRO'),
(-1550036,'Forgive me, my prince! I have... failed.',11204,1,0,0,'thaladred SAY_THALADRED_DEATH'),
(-1550037,'%s sets his gaze on $N!',0,2,0,0,'thaladred EMOTE_THALADRED_GAZE'),

(-1550038,'Blood for blood!',11152,1,0,0,'sanguinar SAY_SANGUINAR_AGGRO'),
(-1550039,'NO! I ...will... not...',11153,1,0,0,'sanguinar SAY_SANGUINAR_DEATH'),

(-1550040,'The sin\'dore reign supreme!',11117,1,0,0,'capernian SAY_CAPERNIAN_AGGRO'),
(-1550041,'This is not over!',11118,1,0,0,'capernian SAY_CAPERNIAN_DEATH'),

(-1550042,'Anar\'alah belore!',11157,1,0,0,'telonicus SAY_TELONICUS_AGGRO'),
(-1550043,'More perils... await',11158,1,0,0,'telonicus SAY_TELONICUS_DEATH');

-- -1 552 000 THE ARCATRAZ
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1552000,'It is a small matter to control the mind of the weak... for I bear allegiance to powers untouched by time, unmoved by fate. No force on this world or beyond harbors the strength to bend our knee... not even the mighty Legion!',11122,1,0,0,'skyriss SAY_INTRO'),
(-1552001,'Bear witness to the agent of your demise!',11123,1,0,0,'skyriss SAY_AGGRO'),
(-1552002,'Your fate is written!',11124,1,0,0,'skyriss SAY_KILL_1'),
(-1552003,'The chaos I have sown here is but a taste...',11125,1,0,0,'skyriss SAY_KILL_2'),
(-1552004,'You will do my bidding, weakling.',11127,1,0,0,'skyriss SAY_MIND_1'),
(-1552005,'Your will is no longer your own.',11128,1,0,0,'skyriss SAY_MIND_2'),
(-1552006,'Flee in terror!',11129,1,0,0,'skyriss SAY_FEAR_1'),
(-1552007,'I will show you horrors undreamed of!',11130,1,0,0,'skyriss SAY_FEAR_2'),
(-1552008,'We span the universe, as countless as the stars!',11131,1,0,0,'skyriss SAY_IMAGE'),
(-1552009,'I am merely one of... infinite multitudes.',11126,1,0,0,'skyriss SAY_DEATH'),

(-1552010,'Where in Bonzo\'s brass buttons am I? And who are-- yaaghh, that\'s one mother of a headache!',11171,1,0,0,'millhouse SAY_INTRO_1'),
(-1552011,'\"Lowly\"? I don\'t care who you are friend, no one refers to the mighty Millhouse Manastorm as \"Lowly\"! I have no idea what goes on here, but I will gladly join your fight against this impudent imbecile! Prepare to defend yourself, cretin!',11172,1,0,0,'millhouse SAY_INTRO_2'),
(-1552012,'I just need to get some things ready first. You guys go ahead and get started. I need to summon up some water...',11173,1,0,0,'millhouse SAY_WATER'),
(-1552013,'Fantastic! Next, some protective spells. Yes! Now we\'re cookin\'',11174,1,0,0,'millhouse SAY_BUFFS'),
(-1552014,'And of course i\'ll need some mana. You guys are gonna love this, just wait.',11175,1,0,0,'millhouse SAY_DRINK'),
(-1552015,'Aaalllriiiight!! Who ordered up an extra large can of whoop-ass?',11176,1,0,0,'millhouse SAY_READY'),
(-1552016,'I didn\'t even break a sweat on that one.',11177,1,0,0,'millhouse SAY_KILL_1'),
(-1552017,'You guys, feel free to jump in anytime.',11178,1,0,0,'millhouse SAY_KILL_2'),
(-1552018,'I\'m gonna light you up, sweet cheeks!',11179,1,0,0,'millhouse SAY_PYRO'),
(-1552019,'Ice, ice, baby!',11180,1,0,0,'millhouse SAY_ICEBLOCK'),
(-1552020,'Heal me! Oh, for the love of all that is holy, HEAL me! I\'m dying!',11181,1,0,0,'millhouse SAY_LOWHP'),
(-1552021,'You\'ll be hearing from my lawyer...',11182,1,0,0,'millhouse SAY_DEATH'),
(-1552022,'Who\'s bad? Who\'s bad? That\'s right: we bad!',11183,1,0,0,'millhouse SAY_COMPLETE'),

(-1552023,'I knew the prince would be angry but, I... I have not been myself. I had to let them out! The great one speaks to me, you see. Wait--outsiders. Kael\'thas did not send you! Good... I\'ll just tell the prince you released the prisoners!',11222,1,0,0,'mellichar YELL_INTRO1'),
(-1552024,'The naaru kept some of the most dangerous beings in existence here in these cells. Let me introduce you to another...',11223,1,0,0,'mellichar YELL_INTRO2'),
(-1552025,'Yes, yes... another! Your will is mine!',11224,1,0,0,'mellichar YELL_RELEASE1'),
(-1552026,'Behold another terrifying creature of incomprehensible power!',11225,1,0,0,'mellichar YELL_RELEASE2A'),
(-1552027,'What is this? A lowly gnome? I will do better, O\'great one.',11226,1,0,0,'mellichar YELL_RELEASE2B'),
(-1552028,'Anarchy! Bedlam! Oh, you are so wise! Yes, I see it now, of course!',11227,1,0,0,'mellichar YELL_RELEASE3'),
(-1552029,'One final cell remains. Yes, O\'great one, right away!',11228,1,0,0,'mellichar YELL_RELEASE4'),
(-1552030,'Welcome, O\'great one. I am your humble servant.',11229,1,0,0,'mellichar YELL_WELCOME');

-- -1 553 000 THE BOTANICA
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1553000,'What are you doing? These specimens are very delicate!',11144,1,0,0,'freywinn SAY_AGGRO'),
(-1553001,'Your life cycle is now concluded!',11145,1,0,0,'freywinn SAY_KILL_1'),
(-1553002,'You will feed the worms.',11146,1,0,0,'freywinn SAY_KILL_2'),
(-1553003,'Endorel aluminor!',11147,1,0,0,'freywinn SAY_TREE_1'),
(-1553004,'Nature bends to my will!',11148,1,0,0,'freywinn SAY_TREE_2'),
(-1553005,'The specimens...must be preserved.',11149,1,0,0,'freywinn SAY_DEATH'),

(-1553006,'%s emits a strange noise.',0,2,0,0,'laj EMOTE_SUMMON'),

(-1553007,'Who disturbs this sanctuary?',11230,1,0,0,'warp SAY_AGGRO'),
(-1553008,'You must die! But wait: this does not--No, no... you must die!',11231,1,0,0,'warp SAY_SLAY_1'),
(-1553009,'What am I doing? Why do I...',11232,1,0,0,'warp SAY_SLAY_2'),
(-1553010,'Children, come to me!',11233,1,0,0,'warp SAY_SUMMON_1'),
(-1553011,'Maybe this is not--No, we fight! Come to my aid.',11234,1,0,0,'warp SAY_SUMMON_2'),
(-1553012,'So... confused. Do not... belong here!',11235,1,0,0,'warp SAY_DEATH');

-- -1 554 000 THE MECHANAR
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1554000,'REUSE_ME',0,0,0,0,'REUSE_ME'),
(-1554001,'REUSE_ME',0,0,0,0,'REUSE_ME'),
(-1554002,'REUSE_ME',0,0,0,0,'REUSE_ME'),
(-1554003,'REUSE_ME',0,0,0,0,'REUSE_ME'),
(-1554004,'REUSE_ME',0,0,0,0,'REUSE_ME'),
(-1554005,'REUSE_ME',0,0,0,0,'REUSE_ME'),

(-1554006,'You have approximately five seconds to live.',11109,1,0,0,'ironhand SAY_AGGRO_1'),
(-1554007,'With the precise angle and velocity...',11112,1,0,0,'ironhand SAY_HAMMER_1'),
(-1554008,'Low tech yet quiet effective!',11113,1,0,0,'ironhand SAY_HAMMER_2'),
(-1554009,'A foregone conclusion.',11110,1,0,0,'ironhand SAY_SLAY_1'),
(-1554010,'The processing will continue a schedule!',11111,1,0,0,'ironhand SAY_SLAY_2'),
(-1554011,'My calculations did not...',11114,1,0,0,'ironhand SAY_DEATH_1'),
(-1554012,'%s raises his hammer menacingly...',0,3,0,0,'ironhand EMOTE_HAMMER'),

(-1554013,'Don\'t value your life very much, do you?',11186,1,0,0,'sepethrea SAY_AGGRO'),
(-1554014,'I am not alone.',11191,1,0,0,'sepethrea SAY_SUMMON'),
(-1554015,'Think you can take the heat?',11189,1,0,0,'sepethrea SAY_DRAGONS_BREATH_1'),
(-1554016,'Anar\'endal dracon!',11190,1,0,0,'sepethrea SAY_DRAGONS_BREATH_2'),
(-1554017,'And don\'t come back!',11187,1,0,0,'sepethrea SAY_SLAY1'),
(-1554018,'En\'dala finel el\'dal',11188,1,0,0,'sepethrea SAY_SLAY2'),
(-1554019,'Anu... bala belore...alon.',11192,1,0,0,'sepethrea SAY_DEATH'),

(-1554020,'We are on a strict timetable. You will not interfere!',11193,1,0,0,'pathaleon SAY_AGGRO'),
(-1554021,'I\'m looking for a team player...',11197,1,0,0,'pathaleon SAY_DOMINATION_1'),
(-1554022,'You work for me now!',11198,1,0,0,'pathaleon SAY_DOMINATION_2'),
(-1554023,'Time to supplement my work force.',11196,1,0,0,'pathaleon SAY_SUMMON'),
(-1554024,'I prefeer to be hands-on...',11199,1,0,0,'pathaleon SAY_ENRAGE'),
(-1554025,'A minor inconvenience.',11194,1,0,0,'pathaleon SAY_SLAY_1'),
(-1554026,'Looks like you lose.',11195,1,0,0,'pathaleon SAY_SLAY_2'),
(-1554027,'The project will... continue.',11200,1,0,0,'pathaleon SAY_DEATH');

-- -1 555 000 SHADOW LABYRINTH
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1555000,'Infidels have invaded the sanctuary! Sniveling pests...You have yet to learn the true meaning of agony!',10473,1,0,0,'hellmaw SAY_INTRO'),
(-1555001,'Pathetic mortals! You will pay dearly!',10475,1,0,0,'hellmaw SAY_AGGRO1'),
(-1555002,'I will break you!',10476,1,0,0,'hellmaw SAY_AGGRO2'),
(-1555003,'Finally! Something to relieve the tedium!',10477,1,0,0,'hellmaw SAY_AGGRO3'),
(-1555004,'Aid me, you fools, before it\'s too late!',10474,1,0,0,'hellmaw SAY_HELP'),
(-1555005,'Do you fear death?',10478,1,0,0,'hellmaw SAY_SLAY1'),
(-1555006,'This is the part I enjoy most.',10479,1,0,0,'hellmaw SAY_SLAY2'),
(-1555007,'Do not...grow...overconfident, mortal.',10480,1,0,0,'hellmaw SAY_DEATH'),

(-1555008,'All flesh must burn.',10482,1,0,0,'blackhearth SAY_INTRO1'),
(-1555009,'All creation must be unmade!',10483,1,0,0,'blackhearth SAY_INTRO2'),
(-1555010,'Power will be yours!',10484,1,0,0,'blackhearth SAY_INTRO3'),
(-1555011,'You\'ll be sorry!',10486,1,0,0,'blackhearth SAY_AGGRO1'),
(-1555012,'Time for fun!',10487,1,0,0,'blackhearth SAY_AGGRO2'),
(-1555013,'I see dead people!',10488,1,0,0,'blackhearth SAY_AGGRO3'),
(-1555014,'No comin\' back for you!',10489,1,0,0,'blackhearth SAY_SLAY1'),
(-1555015,'Nice try!',10490,1,0,0,'blackhearth SAY_SLAY2'),
(-1555016,'Help us, hurry!',10485,1,0,0,'blackhearth SAY_HELP'),
(-1555017,'This... no... good...',10491,1,0,0,'blackhearth SAY_DEATH'),

(-1555018,'Be ready for Dark One\'s return.',10492,1,0,0,'blackhearth SAY2_INTRO1'),
(-1555019,'So we have place in new universe.',10493,1,0,0,'blackhearth SAY2_INTRO2'),
(-1555020,'Dark one promise!',10494,1,0,0,'blackhearth SAY2_INTRO3'),
(-1555021,'You\'ll be sorry!',10496,1,0,0,'blackhearth SAY2_AGGRO1'),
(-1555022,'Time to kill!',10497,1,0,0,'blackhearth SAY2_AGGRO2'),
(-1555023,'You be dead people!',10498,1,0,0,'blackhearth SAY2_AGGRO3'),
(-1555024,'Now you gone for good.',10499,1,0,0,'blackhearth SAY2_SLAY1'),
(-1555025,'You failed, haha haha',10500,1,0,0,'blackhearth SAY2_SLAY2'),
(-1555026,'Help us, hurry!',10495,1,0,0,'blackhearth SAY2_HELP'),
(-1555027,'Arrgh, aah...ahhh',10501,1,0,0,'blackhearth SAY2_DEATH'),

(-1555028,'Keep your minds focused for the days of reckoning are close at hand. Soon, the destroyer of worlds will return to make good on his promise. Soon the destruction of all that is will begin!',10522,1,0,0,'vorpil SAY_INTRO'),
(-1555029,'I\'ll make an offering of your blood!',10524,1,0,0,'vorpil SAY_AGGRO1'),
(-1555030,'You\'ll be a fine example, for the others.',10525,1,0,0,'vorpil SAY_AGGRO2'),
(-1555031,'Good, a worthy sacrifice.',10526,1,0,0,'vorpil SAY_AGGRO3'),
(-1555032,'Come to my aid, heed your master now!',10523,1,0,0,'vorpil SAY_HELP'),
(-1555033,'I serve with pride.',10527,1,0,0,'vorpil SAY_SLAY1'),
(-1555034,'Your death is for the greater cause!',10528,1,0,0,'vorpil SAY_SLAY2'),
(-1555035,'I give my life... Gladly.',10529,1,0,0,'vorpil SAY_DEATH'),

(-1555036,'%s draws energy from the air.',0,2,0,0,'murmur EMOTE_SONIC_BOOM');

-- -1 556 000 SETHEKK HALLS
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1556000,'I have pets..<squawk>..of my own!',10502,1,0,0,'syth SAY_SUMMON'),
(-1556001,'Hrrmm.. Time to.. hrrm.. make my move.',10503,1,0,0,'syth SAY_AGGRO_1'),
(-1556002,'Nice pets..hrm.. Yes! <squawking>',10504,1,0,0,'syth SAY_AGGRO_2'),
(-1556003,'Nice pets have.. weapons. No so..<squawk>..nice.',10505,1,0,0,'syth SAY_AGGRO_3'),
(-1556004,'Death.. meeting life is.. <squawking>',10506,1,0,0,'syth SAY_SLAY_1'),
(-1556005,'Uhn.. Be free..<squawk>',10507,1,0,0,'syth SAY_SLAY_2'),
(-1556006,'No more life..hrm. No more pain. <squawks weakly>',10508,1,0,0,'syth SAY_DEATH'),

(-1556007,'<squawk>..Trinkets yes pretty Trinkets..<squawk>..power, great power.<squawk>..power in Trinkets..<squawk>',10557,1,0,0,'ikiss SAY_INTRO'),
(-1556008,'You make war on Ikiss?..<squawk>',10554,1,0,0,'ikiss SAY_AGGRO_1'),
(-1556009,'Ikiss cut you pretty..<squawk>..slice you. Yes!',10555,1,0,0,'ikiss SAY_AGGRO_2'),
(-1556010,'No escape for..<squawk>..for you',10556,1,0,0,'ikiss SAY_AGGRO_3'),
(-1556011,'You die..<squawk>..stay away from Trinkets',10558,1,0,0,'ikiss SAY_SLAY_1'),
(-1556012,'<squawk>',10559,1,0,0,'ikiss SAY_SLAY_2'),
(-1556013,'Ikiss will not..<squawk>..die',10560,1,0,0,'ikiss SAY_DEATH'),
(-1556015,'%s begins to channel arcane energy...',0,3,0,0,'ikiss EMOTE_ARCANE_EXP');

-- -1 557 000 MANA TOMBS
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1557000,'What is this? You must forgive me, but I was not expecting company. As you can see, we are somewhat preoccupied right now. But no matter. As I am a gracious host, I will tend to you... personally.',10539,1,0,0,'shaffar SAY_INTRO'),
(-1557001,'We have not yet been properly introduced.',10541,1,0,0,'shaffar SAY_AGGRO_1'),
(-1557002,'An epic battle. How exciting!',10542,1,0,0,'shaffar SAY_AGGRO_2'),
(-1557003,'I have longed for a good adventure.',10543,1,0,0,'shaffar SAY_AGGRO_3'),
(-1557004,'It has been... entertaining.',10544,1,0,0,'shaffar SAY_SLAY_1'),
(-1557005,'And now we part company.',10545,1,0,0,'shaffar SAY_SLAY_2'),
(-1557006,'I have such fascinating things to show you.',10540,1,0,0,'shaffar SAY_SUMMON'),
(-1557007,'I must bid you... farewell.',10546,1,0,0,'shaffar SAY_DEAD'),

(-1557008,'I will feed on your soul.',10561,1,0,0,'pandemonius SAY_AGGRO_1'),
(-1557009,'So... full of life!',10562,1,0,0,'pandemonius SAY_AGGRO_2'),
(-1557010,'Do not... resist.',10563,1,0,0,'pandemonius SAY_AGGRO_3'),
(-1557011,'Yes! I am... empowered!',10564,1,0,0,'pandemonius SAY_KILL_1'),
(-1557012,'More... I must have more!',10565,1,0,0,'pandemonius SAY_KILL_2'),
(-1557013,'To the void... once... more..',10566,1,0,0,'pandemonius SAY_DEATH'),
(-1557014,'%s shifts into the void...',0,3,0,0,'pandemonius EMOTE_DARK_SHELL');

-- -1 558 000 AUCHENAI CRYPTS
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1558000,'You have defiled the resting place of our ancestors. For this offense, there can be but one punishment. It is fitting that you have come to a place of the dead... for you will soon be joining them.',10509,1,0,0,'maladaar SAY_INTRO'),
(-1558001,'Rise my fallen brothers. Take form and fight!',10512,1,0,0,'maladaar SAY_SUMMON'),
(-1558002,'You will pay with your life!',10513,1,0,0,'maladaar SAY_AGGRO_1'),
(-1558003,'There\'s no turning back now!',10514,1,0,0,'maladaar SAY_AGGRO_2'),
(-1558004,'Serve your penitence!',10515,1,0,0,'maladaar SAY_AGGRO_3'),
(-1558005,'Let your mind be clouded.',10510,1,0,0,'maladaar SAY_ROAR'),
(-1558006,'Stare into the darkness of your soul.',10511,1,0,0,'maladaar SAY_SOUL_CLEAVE'),
(-1558007,'These walls will be your doom.',10516,1,0,0,'maladaar SAY_SLAY_1'),
(-1558008,'<laugh> Now, you\'ll stay for eternity!',10517,1,0,0,'maladaar SAY_SLAY_2'),
(-1558009,'This is... where.. I belong...',10518,1,0,0,'maladaar SAY_DEATH');

-- -1 560 000 ESCAPE FROM DURNHOLDE (OLD HILLSBRAD)
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1560000,'Thrall! You didn\'t really think you would escape did you? You and your allies shall answer to Blackmoore - after I\'ve had my fun!',10406,1,0,0,'skarloc SAY_ENTER'),
(-1560001,'You\'re a slave. That\'s all you\'ll ever be.',10407,1,0,0,'skarloc SAY_TAUNT1'),
(-1560002,'I don\'t know what Blackmoore sees in you. For my money, you\'re just another ignorant savage!',10408,1,0,0,'skarloc SAY_TAUNT2'),
(-1560003,'Thrall will never be free!',10409,1,0,0,'skarloc SAY_SLAY1'),
(-1560004,'Did you really think you would leave here alive?',10410,1,0,0,'skarloc SAY_SLAY2'),
(-1560005,'Guards! Urgh..Guards..!',10411,1,0,0,'skarloc SAY_DEATH'),

(-1560006,'You there, fetch water quickly! Get these flames out before they spread to the rest of the keep! Hurry, damn you!',10428,1,0,0,'lieutenant_drake SAY_ENTER'),
(-1560007,'I know what you\'re up to, and I mean to put an end to it, permanently!',10429,1,0,0,'lieutenant_drake SAY_AGGRO'),
(-1560008,'No more middling for you.',10432,1,0,0,'lieutenant_drake SAY_SLAY1'),
(-1560009,'You will not interfere!',10433,1,0,0,'lieutenant_drake SAY_SLAY2'),
(-1560010,'Time to bleed!',10430,1,0,0,'lieutenant_drake SAY_MORTAL'),
(-1560011,'Run, you blasted cowards!',10431,1,0,0,'lieutenant_drake SAY_SHOUT'),
(-1560012,'Thrall... must not... go free.',10434,1,0,0,'lieutenant_drake SAY_DEATH'),

(-1560013,'Thrall! Come outside and face your fate!',10418,1,0,0,'epoch SAY_ENTER1'),
(-1560014,'Taretha\'s life hangs in the balance. Surely you care for her. Surely you wish to save her...',10419,1,0,0,'epoch SAY_ENTER2'),
(-1560015,'Ah, there you are. I had hoped to accomplish this with a bit of subtlety, but I suppose direct confrontation was inevitable. Your future, Thrall, must not come to pass and so...you and your troublesome friends must die!',10420,1,0,0,'epoch SAY_ENTER3'),
(-1560016,'Enough! I will erase your very existence!',10421,1,0,0,'epoch SAY_AGGRO1'),
(-1560017,'You cannot fight fate!',10422,1,0,0,'epoch SAY_AGGRO2'),
(-1560018,'You are...irrelevant.',10425,1,0,0,'epoch SAY_SLAY1'),
(-1560019,'Thrall will remain a slave. Taretha will die. You have failed.',10426,1,0,0,'epoch SAY_SLAY2'),
(-1560020,'Not so fast!',10423,1,0,0,'epoch SAY_BREATH1'),
(-1560021,'Struggle as much as you like!',10424,1,0,0,'epoch SAY_BREATH2'),
(-1560022,'No!...The master... will not... be pleased.',10427,1,0,0,'epoch SAY_DEATH'),

(-1560023,'Very well then. Let\'s go!',10465,0,0,0,'thrall hillsbrad SAY_TH_START_EVENT_PART1'),
(-1560024,'As long as we\'re going with a new plan, I may aswell pick up a weapon and some armor.',0,0,0,0,'thrall hillsbrad SAY_TH_ARMORY'),
(-1560025,'A rider approaches!',10466,0,0,0,'thrall hillsbrad SAY_TH_SKARLOC_MEET'),
(-1560026,'I\'ll never be chained again!',10467,1,0,0,'thrall hillsbrad SAY_TH_SKARLOC_TAUNT'),
(-1560027,'Very well. Tarren Mill lies just west of here. Since time is of the essence...',10468,1,0,0,'thrall hillsbrad SAY_TH_START_EVENT_PART2'),
(-1560028,'Let\'s ride!',10469,0,0,1,'thrall hillsbrad SAY_TH_MOUNTS_UP'),
(-1560029,'Taretha must be in the inn. Let\'s go.',0,0,0,0,'thrall hillsbrad SAY_TH_CHURCH_END'),
(-1560030,'Taretha! What foul magic is this?',0,0,0,0,'thrall hillsbrad SAY_TH_MEET_TARETHA'),
(-1560031,'Who or what was that?',10470,0,0,1,'thrall hillsbrad SAY_TH_EPOCH_WONDER'),
(-1560032,'No!',10471,0,0,5,'thrall hillsbrad SAY_TH_EPOCH_KILL_TARETHA'),
(-1560033,'Goodbye, Taretha. I will never forget your kindness.',10472,0,0,0,'thrall hillsbrad SAY_TH_EVENT_COMPLETE'),
(-1560034,'Things are looking grim...',10458,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_LOW_HP1'),
(-1560035,'I will fight to the last!',10459,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_LOW_HP2'),
(-1560036,'Taretha...',10460,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_DIE1'),
(-1560037,'A good day...to die...',10461,1,0,0,'thrall hillsbrad SAY_TH_RANDOM_DIE2'),
(-1560038,'I have earned my freedom!',10448,0,0,0,'thrall hillsbrad SAY_TH_RANDOM_AGGRO1'),
(-1560039,'This day is long overdue. Out of my way!',10449,0,0,0,'thrall hillsbrad SAY_TH_RANDOM_AGGRO2'),
(-1560040,'I am a slave no longer!',10450,0,0,0,'thrall hillsbrad SAY_TH_RANDOM_AGGRO3'),
(-1560041,'Blackmoore has much to answer for!',10451,0,0,0,'thrall hillsbrad SAY_TH_RANDOM_AGGRO4'),
(-1560042,'You have forced my hand!',10452,0,0,0,'thrall hillsbrad SAY_TH_RANDOM_KILL1'),
(-1560043,'It should not have come to this!',10453,0,0,0,'thrall hillsbrad SAY_TH_RANDOM_KILL2'),
(-1560044,'I did not ask for this!',10454,0,0,0,'thrall hillsbrad SAY_TH_RANDOM_KILL3'),
(-1560045,'I am truly in your debt, strangers.',10455,0,0,0,'thrall hillsbrad SAY_TH_LEAVE_COMBAT1'),
(-1560046,'Thank you, strangers. You have given me hope.',10456,0,0,0,'thrall hillsbrad SAY_TH_LEAVE_COMBAT2'),
(-1560047,'I will not waste this chance. I will seek out my destiny.',10457,0,0,0,'thrall hillsbrad SAY_TH_LEAVE_COMBAT3'),

(-1560048,'I\'m free! Thank you all!',0,0,0,0,'taretha SAY_TA_FREE'),
(-1560049,'Thrall, you escaped!',0,0,0,0,'taretha SAY_TA_ESCAPED'),

(-1560050,'That\'s enough out of him.',0,0,0,0,'thrall hillsbrad SAY_TH_KILL_ARMORER'),
(-1560051,'That spell should wipe their memories of us and what just happened. All they should remember now is what reality would be like without the attempted temporal interference. Well done. Thrall will journey on to find his destiny, and Taretha...',0,0,0,0,'erozion SAY_WIPE_MEMORY'),
(-1560052,'Her fate is regrettably unavoidable.',0,0,0,0,'erozion SAY_ABOUT_TARETHA'),
(-1560053,'They call you a monster. But they\'re the monsters, not you. Farewell Thrall.',0,0,0,0,'taretha SAY_TA_FAREWELL'),

(-1560054,'I\'m glad you\'re safe, Taretha. None of this would have been possible without your friends. They made all of this happen.',0,0,0,0,'thrall hillsbrad SAY_TR_GLAD_SAFE'),
(-1560055,'Thrall, I\'ve never met these people before in my life.',0,0,0,0,'taretha SAY_TA_NEVER_MET'),
(-1560056,'Then who are these people?',0,0,0,0,'thrall hillsbrad SAY_TR_THEN_WHO'),
(-1560057,'I believe I can explain everything to you two if you give me a moment of your time.',0,0,0,0,'erozion SAY_PRE_WIPE'),
(-1560058,'You have done a great thing. Alas, the young warchief\'s memory of these events must be as they originally were ... Andormu awaits you in the master\'s lair.',0,0,0,0,'erozion SAY_AFTER_WIPE');

-- -1 564 000 BLACK TEMPLE
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1564000,'You will die in the name of Lady Vashj!',11450,1,0,0,'SAY_AGGRO'),
(-1564001,'Stick around!',11451,1,0,0,'SAY_NEEDLE1'),
(-1564002,'I\'ll deal with you later!',11452,1,0,0,'SAY_NEEDLE2'),
(-1564003,'Your success was short lived!',11455,1,0,0,'SAY_SLAY1'),
(-1564004,'Time for you to go!',11456,1,0,0,'SAY_SLAY2'),
(-1564005,'Bel\'anen dal\'lorei!',11453,1,0,0,'SAY_SPECIAL1'),
(-1564006,'Blood will flow!',11454,1,0,0,'SAY_SPECIAL2'),
(-1564007,'Bal\'amer ch\'itah!',11457,1,0,0,'SAY_ENRAGE1'),
(-1564008,'My patience has ran out! Die, DIE!',11458,1,0,0,'SAY_ENRAGE2'),
(-1564009,'Lord Illidan will... crush you.',11459,1,0,0,'SAY_DEATH'),

(-1564010,'%s acquires a new target!',0,3,0,0,'supremus EMOTE_NEW_TARGET'),
(-1564011,'%s punches the ground in anger!',0,3,0,0,'supremus EMOTE_PUNCH_GROUND'),
(-1564012,'The ground begins to crack open!',0,3,0,0,'supremus EMOTE_GROUND_CRACK'),

(-1564013,'No! Not yet...',11385,1,0,0,'akama shade SAY_LOW_HEALTH'),
(-1564014,'I will not last much longer...',11386,1,0,0,'akama shade SAY_DEATH'),
(-1564015,'Come out from the shadows! I\'ve returned to lead you against our true enemy! Shed your chains and raise your weapons against your Illidari masters!',0,1,0,0,'akama shade SAY_FREE'),
(-1564016,'Hail our leader! Hail Akama!',0,1,0,0,'akama shade broken SAY_BROKEN_FREE_01'),
(-1564017,'Hail Akama!',0,1,0,0,'akama shade broken SAY_BROKEN_FREE_02'),

(-1564018,'You play, you pay.',11501,1,0,0,'shahraz SAY_TAUNT1'),
(-1564019,'I\'m not impressed.',11502,1,0,0,'shahraz SAY_TAUNT2'),
(-1564020,'Enjoying yourselves?',11503,1,0,0,'shahraz SAY_TAUNT3'),
(-1564021,'So... business or pleasure?',11504,1,0,0,'shahraz SAY_AGGRO'),
(-1564022,'You seem a little tense.',11505,1,0,0,'shahraz SAY_SPELL1'),
(-1564023,'Don\'t be shy.',11506,1,0,0,'shahraz SAY_SPELL2'),
(-1564024,'I\'m all... yours.',11507,1,0,0,'shahraz SAY_SPELL3'),
(-1564025,'Easy come, easy go.',11508,1,0,0,'shahraz SAY_SLAY1'),
(-1564026,'So much for a happy ending.',11509,1,0,0,'shahraz SAY_SLAY2'),
(-1564027,'Stop toying with my emotions!',11510,1,0,0,'shahraz SAY_ENRAGE'),
(-1564028,'I wasn\'t... finished.',11511,1,0,0,'shahraz SAY_DEATH'),

(-1564029,'Horde will... crush you.',11432,1,0,0,'bloodboil SOUND_AGGRO'),
(-1564030,'Time to feast!',11433,1,0,0,'bloodboil SAY_SLAY1'),
(-1564031,'More! I want more!',11434,1,0,0,'bloodboil SAY_SLAY2'),
(-1564032,'Drink your blood! Eat your flesh!',11435,1,0,0,'bloodboil SAY_SPECIAL1'),
(-1564033,'I hunger!',11436,1,0,0,'bloodboil SAY_SPECIAL2'),
(-1564034,'<babbling>',11437,1,0,0,'bloodboil SAY_ENRAGE1'),
(-1564035,'I\'ll rip the meat from your bones!',11438,1,0,0,'bloodboil SAY_ENRAGE2'),
(-1564036,'Aaaahrg...',11439,1,0,0,'bloodboil SAY_DEATH'),

(-1564037,'I was the first, you know. For me, the wheel of death has spun many times. <laughs> So much time has passed. I have a lot of catching up to do...',11512,1,0,0,'teron SAY_INTRO'),
(-1564038,'Vengeance is mine!',11513,1,0,0,'teron SAY_AGGRO'),
(-1564039,'I have use for you!',11514,1,0,0,'teron SAY_SLAY1'),
(-1564040,'It gets worse...',11515,1,0,0,'teron SAY_SLAY2'),
(-1564041,'What are you afraid of?',11517,1,0,0,'teron SAY_SPELL1'),
(-1564042,'Death... really isn\'t so bad.',11516,1,0,0,'teron SAY_SPELL2'),
(-1564043,'Give in!',11518,1,0,0,'teron SAY_SPECIAL1'),
(-1564044,'I have something for you...',11519,1,0,0,'teron SAY_SPECIAL2'),
(-1564045,'YOU WILL SHOW THE PROPER RESPECT!',11520,1,0,0,'teron SAY_ENRAGE'),
(-1564046,'The wheel...spins...again....',11521,1,0,0,'teron SAY_DEATH'),

(-1564047,'Pain and suffering are all that await you!',11415,1,0,0,'essence SUFF_SAY_FREED'),
(-1564048,'Don\'t leave me alone!',11416,1,0,0,'essence SUFF_SAY_AGGRO'),
(-1564049,'Look at what you make me do!',11417,1,0,0,'essence SUFF_SAY_SLAY1'),
(-1564050,'I didn\'t ask for this!',11418,1,0,0,'essence SUFF_SAY_SLAY2'),
(-1564051,'The pain is only beginning!',11419,1,0,0,'essence SUFF_SAY_SLAY3'),
(-1564052,'I don\'t want to go back!',11420,1,0,0,'essence SUFF_SAY_RECAP'),
(-1564053,'Now what do I do?',11421,1,0,0,'essence SUFF_SAY_AFTER'),
(-1564054,'REUSE_ME',0,0,0,0,'REUSE_ME'),

(-1564055,'You can have anything you desire... for a price.',11408,1,0,0,'essence DESI_SAY_FREED'),
(-1564056,'Fulfilment is at hand!',11409,1,0,0,'essence DESI_SAY_SLAY1'),
(-1564057,'Yes... you\'ll stay with us now...',11410,1,0,0,'essence DESI_SAY_SLAY2'),
(-1564058,'Your reach exceeds your grasp.',11412,1,0,0,'essence DESI_SAY_SLAY3'),
(-1564059,'Be careful what you wish for...',11411,1,0,0,'essence DESI_SAY_SPEC'),
(-1564060,'I\'ll be waiting...',11413,1,0,0,'essence DESI_SAY_RECAP'),
(-1564061,'I won\'t be far...',11414,1,0,0,'essence DESI_SAY_AFTER'),

(-1564062,'Beware: I live!',11399,1,0,0,'essence ANGER_SAY_FREED'),
(-1564063,'So... foolish.',11400,1,0,0,'essence ANGER_SAY_FREED2'),
(-1564064,'<maniacal cackle>',11401,1,0,0,'essence ANGER_SAY_SLAY1'),
(-1564065,'Enough. No more.',11402,1,0,0,'essence ANGER_SAY_SLAY2'),
(-1564066,'On your knees!',11403,1,0,0,'essence ANGER_SAY_SPEC'),
(-1564067,'Beware, coward.',11405,1,0,0,'essence ANGER_SAY_BEFORE'),
(-1564068,'I won\'t... be... ignored.',11404,1,0,0,'essence ANGER_SAY_DEATH'),

(-1564069,'You wish to test me?',11524,1,0,0,'council vera AGGRO'),
(-1564070,'I have better things to do...',11422,1,0,0,'council gath AGGRO'),
(-1564071,'Flee or die!',11482,1,0,0,'council mala AGGRO'),
(-1564072,'Common... such a crude language. Bandal!',11440,1,0,0,'council zere AGGRO'),

(-1564073,'Enough games!',11428,1,0,0,'council gath ENRAGE'),
(-1564074,'You wish to kill me? Hahaha, you first!',11530,1,0,0,'council vera ENRAGE'),
(-1564075,'For Quel\'Thalas! For the Sunwell!',11488,1,0,0,'council mala ENRAGE'),
(-1564076,'Sha\'amoor sine menoor!',11446,1,0,0,'council zere ENRAGE'),

(-1564077,'Enjoy your final moments!',11426,1,0,0,'council gath SPECIAL1'),
(-1564078,'You\'re not caught up for this!',11528,1,0,0,'council vera SPECIAL1'),
(-1564079,'No second chances!',11486,1,0,0,'council mala SPECIAL1'),
(-1564080,'Diel fin\'al',11444,1,0,0,'council zere SPECIAL1'),

(-1564081,'You are mine!',11427,1,0,0,'council gath SPECIAL2'),
(-1564082,'Anar\'alah belore!',11529,1,0,0,'council vera SPECIAL2'),
(-1564083,'I\'m full of surprises!',11487,1,0,0,'council mala SPECIAL2'),
(-1564084,'Sha\'amoor ara mashal?',11445,1,0,0,'council zere SPECIAL2'),

(-1564085,'Selama am\'oronor!',11423,1,0,0,'council gath SLAY'),
(-1564086,'Valiant effort!',11525,1,0,0,'council vera SLAY'),
(-1564087,'My work is done.',11483,1,0,0,'council mala SLAY'),
(-1564088,'Shorel\'aran.',11441,1,0,0,'council zere SLAY'),

(-1564089,'Well done!',11424,1,0,0,'council gath SLAY_COMT'),
(-1564090,'A glorious kill!',11526,1,0,0,'council vera SLAY_COMT'),
(-1564091,'As it should be!',11484,1,0,0,'council mala SLAY_COMT'),
(-1564092,'Belesa menoor!',11442,1,0,0,'council zere SLAY_COMT'),

(-1564093,'Lord Illidan... I...',11425,1,0,0,'council gath DEATH'),
(-1564094,'You got lucky!',11527,1,0,0,'council vera DEATH'),
(-1564095,'Destiny... awaits.',11485,1,0,0,'council mala DEATH'),
(-1564096,'Diel ma\'ahn... oreindel\'o',11443,1,0,0,'council zere DEATH'),

(-1564097,'Akama... your duplicity is hardly surprising. I should have slaughtered you and your malformed brethren long ago.',11463,1,0,0,'illidan SAY_CONVO_1'),
(-1564098,'We\'ve come to end your reign, Illidan. My people and all of Outland shall be free!',11389,1,0,25,'illidan SAY_CONVO_2'),
(-1564099,'Boldly said. But I remain unconvinced.',11464,1,0,396,'illidan SAY_CONVO_3'),
(-1564100,'The time has come! The moment is at hand!',11380,1,0,22,'illidan SAY_CONVO_4'),
(-1564101,'You are not prepared!',11466,1,0,406,'illidan SAY_CONVO_5'),
(-1564102,'Is this it, mortals? Is this all the fury you can muster?',11476,1,0,0,'illidan SAY_CONVO_6'),
(-1564103,'Their fury pales before mine, Illidan. We have some unsettled business between us.',11491,1,0,5,'illidan SAY_CONVO_7'),
(-1564104,'Maiev... How is this even possible?',11477,1,0,1,'illidan SAY_CONVO_8'),
(-1564105,'Ah... my long hunt is finally over. Today, Justice will be done!',11492,1,0,15,'illidan SAY_CONVO_9'),
(-1564106,'Feel the hatred of ten thousand years!',11470,1,0,0,'illidan SAY_CONVO_10'),
(-1564107,'Ahh... It is finished. You are beaten.',11496,1,0,0,'illidan SAY_CONVO_11'),
(-1564108,'You have won... Maiev...but the huntress... is nothing...without the hunt... you... are nothing... without me..',11478,1,0,65,'illidan SAY_CONVO_12'),
(-1564109,'He is right. I feel nothing... I am nothing...',11497,1,0,0,'illidan SAY_CONVO_13'),
(-1564110,'Farewell, champions.',11498,1,0,0,'illidan SAY_CONVO_14'),
(-1564111,'The Light will fill these dismal halls once again. I swear it.',11387,1,0,0,'illidan SAY_CONVO_15'),
(-1564112,'I can feel your hatred.',11467,1,0,0,'illidan SAY_TAUNT_1'),
(-1564113,'Give in to your fear!',11468,1,0,0,'illidan SAY_TAUNT_2'),
(-1564114,'You know nothing of power!',11469,1,0,0,'illidan SAY_TAUNT_3'),
(-1564115,'Such... arrogance!',11471,1,0,0,'illidan SAY_TAUNT_4'),
(-1564116,'That is for Naisha!',11493,1,0,0,'illidan SAY_MAIEV_TAUNT_1'),
(-1564117,'Bleed as I have bled!',11494,1,0,0,'illidan SAY_MAIEV_TAUNT_2'),
(-1564118,'There shall be no prison for you this time!',11495,1,0,0,'illidan SAY_MAIEV_TAUNT_3'),
(-1564119,'Meet your end, demon!',11500,1,0,0,'illidan SAY_MAIEV_TAUNT_4'),
(-1564120,'Be wary friends, The Betrayer meditates in the court just beyond.',11388,1,0,0,'illidan SAY_AKAMA_BEWARE'),
(-1564121,'Come, my minions. Deal with this traitor as he deserves!',11465,1,0,0,'illidan SAY_AKAMA_MINION'),
(-1564122,'I\'ll deal with these mongrels. Strike now, friends! Strike at the betrayer!',11390,1,0,0,'illidan SAY_AKAMA_LEAVE'),
(-1564123,'Who shall be next to taste my blades?!',11473,1,0,0,'illidan SAY_KILL1'),
(-1564124,'This is too easy!',11472,1,0,0,'illidan SAY_KILL2'),
(-1564125,'I will not be touched by rabble such as you!',11479,1,0,254,'illidan SAY_TAKEOFF'),
(-1564126,'Behold the flames of Azzinoth!',11480,1,0,0,'illidan SAY_SUMMONFLAMES'),
(-1564127,'Stare into the eyes of the Betrayer!',11481,1,0,0,'illidan SAY_EYE_BLAST'),
(-1564128,'Behold the power... of the demon within!',11475,1,0,0,'illidan SAY_MORPH'),
(-1564129,'You\'ve wasted too much time mortals, now you shall fall!',11474,1,0,0,'illidan SAY_ENRAGE');

-- -1 565 000 GRUUL'S LAIR
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1565000,'Gronn are the real power in outland.',11367,1,0,0,'maulgar SAY_AGGRO'),
(-1565001,'You will not defeat the hand of Gruul!',11368,1,0,0,'maulgar SAY_ENRAGE'),
(-1565002,'You won\'t kill next one so easy!',11369,1,0,0,'maulgar SAY_OGRE_DEATH1'),
(-1565003,'Pah! Does not prove anything!',11370,1,0,0,'maulgar SAY_OGRE_DEATH2'),
(-1565004,'I\'m not afraid of you.',11371,1,0,0,'maulgar SAY_OGRE_DEATH3'),
(-1565005,'Good, now you fight me!',11372,1,0,0,'maulgar SAY_OGRE_DEATH4'),
(-1565006,'You not so tough afterall!',11373,1,0,0,'maulgar SAY_SLAY1'),
(-1565007,'Aha-ha ha ha!',11374,1,0,0,'maulgar SAY_SLAY2'),
(-1565008,'Mulgar is king!',11375,1,0,0,'maulgar SAY_SLAY3'),
(-1565009,'Gruul... will crush you...',11376,1,0,0,'maulgar SAY_DEATH'),

(-1565010,'Come... and die.',11355,1,0,0,'gruul SAY_AGGRO'),
(-1565011,'Scurry',11356,1,0,0,'gruul SAY_SLAM1'),
(-1565012,'No escape',11357,1,0,0,'gruul SAY_SLAM2'),
(-1565013,'Stay',11358,1,0,0,'gruul SAY_SHATTER1'),
(-1565014,'Beg... for life',11359,1,0,0,'gruul SAY_SHATTER2'),
(-1565015,'No more',11360,1,0,0,'gruul SAY_SLAY1'),
(-1565016,'Unworthy',11361,1,0,0,'gruul SAY_SLAY2'),
(-1565017,'Die',11362,1,0,0,'gruul SAY_SLAY3'),
(-1565018,'Aaargh...',11363,1,0,0,'gruul SAY_DEATH'),
(-1565019,'%s grows in size!',0,2,0,0,'gruul EMOTE_GROW');

-- -1 568 000 ZUL'AMAN
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1568000,'Spirits of da wind be your doom!',12031,1,0,0,'janalai SAY_AGGRO'),
(-1568001,'I burn ya now!',12032,1,0,0,'janalai SAY_FIRE_BOMBS'),
(-1568002,'Where ma hatcha? Get to work on dem eggs!',12033,1,0,0,'janalai SAY_SUMMON_HATCHER'),
(-1568003,'I show you strength... in numbers.',12034,1,0,0,'janalai SAY_ALL_EGGS'),
(-1568004,'You done run outta time!',12035,1,0,0,'janalai SAY_BERSERK'),
(-1568005,'It all be over now, mon!',12036,1,0,0,'janalai SAY_SLAY_1'),
(-1568006,'Tazaga-choo!',12037,1,0,0,'janalai SAY_SLAY_2'),
(-1568007,'Zul\'jin... got a surprise for you...',12038,1,0,0,'janalai SAY_DEATH'),
(-1568008,'Come, strangers. The spirit of the dragonhawk hot be hungry for worthy souls.',12039,1,0,0,'janalai SAY_EVENT_STRANGERS'),
(-1568009,'Come, friends. Your bodies gonna feed ma hatchlings, and your souls are going to feed me with power!',12040,1,0,0,'janalai SAY_EVENT_FRIENDS'),

(-1568010,'Get da move on, guards! It be killin\' time!',12066,1,0,0,'nalorakk SAY_WAVE1_AGGRO'),
(-1568011,'Guards, go already! Who you more afraid of, dem... or me?',12067,1,0,0,'nalorakk SAY_WAVE2_STAIR1'),
(-1568012,'Ride now! Ride out dere and bring me back some heads!',12068,1,0,0,'nalorakk SAY_WAVE3_STAIR2'),
(-1568013,'I be losin\' me patience! Go on: make dem wish dey was never born!',12069,1,0,0,'nalorakk SAY_WAVE4_PLATFORM'),
(-1568014,'What could be better than servin\' da bear spirit for eternity? Come closer now. Bring your souls to me!',12078,1,0,0,'nalorakk SAY_EVENT1_SACRIFICE'),
(-1568015,'Don\'t be delayin\' your fate. Come to me now. I make your sacrifice quick.',12079,1,0,0,'nalorakk SAY_EVENT2_SACRIFICE'),
(-1568016,'You be dead soon enough!',12070,1,0,0,'nalorakk SAY_AGGRO'),
(-1568017,'I bring da pain!',12071,1,0,0,'nalorakk SAY_SURGE'),
(-1568018,'You call on da beast, you gonna get more dan you bargain for!',12072,1,0,0,'nalorakk SAY_TOBEAR'),
(-1568019,'Make way for Nalorakk!',12073,1,0,0,'nalorakk SAY_TOTROLL'),
(-1568020,'You had your chance, now it be too late!',12074,1,0,0,'nalorakk SAY_BERSERK'),
(-1568021,'Mua-ha-ha! Now whatchoo got to say?',12075,1,0,0,'nalorakk SAY_SLAY1'),
(-1568022,'Da Amani gonna rule again!',12076,1,0,0,'nalorakk SAY_SLAY2'),
(-1568023,'I... be waitin\' on da udda side....',12077,1,0,0,'nalorakk SAY_DEATH'),

(-1568024,'Da eagles gonna bear your spirits to me. Your sacrifice is not gonna be in vein!',12122,1,0,0,'akilzon SAY_EVENT1'),
(-1568025,'Your death gonna be quick, strangers. You shoulda never have come to this place...',12123,1,0,0,'akilzon SAY_EVENT2'),
(-1568026,'I be da predator! You da prey...',12013,1,0,0,'akilzon SAY_AGGRO'),
(-1568027,'Feed, me bruddahs!',12014,1,0,0,'akilzon SAY_SUMMON'),
(-1568028,'Come, and join me bruddahs!',12015,1,0,0,'akilzon SAY_SUMMON_ALT'),
(-1568029,'All you be doing is wasting my time!',12016,1,0,0,'akilzon SAY_ENRAGE'),
(-1568030,'Ya got nothin\'!',12017,1,0,0,'akilzon SAY_SLAY1'),
(-1568031,'Stop your cryin\'!',12018,1,0,0,'akilzon SAY_SLAY2'),
(-1568032,'You can\'t... kill... me spirit!',12019,1,0,0,'akilzon SAY_DEATH'),
(-1568033,'An Electrical Storm Appears!',0,2,0,0,'akilzon EMOTE_STORM'),

(-1568034,'Get on ya knees and bow.... to da fang and claw!',12020,1,0,0,'halazzi SAY_AGGRO'),
(-1568035,'I fight wit\' untamed spirit....',12021,1,0,0,'halazzi SAY_SPLIT'),
(-1568036,'Spirit, come back to me!',12022,1,0,0,'halazzi SAY_MERGE'),
(-1568037,'Me gonna carve ya now!',12023,1,0,0,'halazzi SAY_SABERLASH1'),
(-1568038,'You gonna leave in pieces!',12024,1,0,0,'halazzi SAY_SABERLASH2'),
(-1568039,'Whatch you be doing? Pissin\' yourselves...',12025,1,0,0,'halazzi SAY_BERSERK'),
(-1568040,'You cant fight the power!',12026,1,0,0,'halazzi SAY_KILL1'),
(-1568041,'You gonna fail!',12027,1,0,0,'halazzi SAY_KILL2'),
(-1568042,'Chaga... choka\'jinn.',12028,1,0,0,'halazzi SAY_DEATH'),
(-1568043,'Come, fools. Fill ma empty cages...',12029,1,0,0,'halazzi SAY_EVENT1'),
(-1568044,'I be waitin, strangers. Your deaths gonna make me stronger!',12030,1,0,0,'halazzi SAY_EVENT2'),

(-1568045,'Da shadow gonna fall on you...',12041,1,0,0,'malacrass SAY_AGGRO'),
(-1568046,'Ya don\'t kill me yet, ya don\'t get another chance!',12042,1,0,0,'malacrass SAY_ENRAGE'),
(-1568047,'Dis a nightmare ya don\' wake up from!',12043,1,0,0,'malacrass SAY_KILL1'),
(-1568048,'Azzaga choogo zinn!',12044,1,0,0,'malacrass SAY_KILL2'),
(-1568049,'Your will belong ta me now!',12045,1,0,0,'malacrass SAY_SOUL_SIPHON'),
(-1568050,'Darkness comin\' for you...',12046,1,0,0,'malacrass SAY_DRAIN_POWER'),
(-1568051,'Your soul gonna bleed!',12047,1,0,0,'malacrass SAY_SPIRIT_BOLTS'),
(-1568052,'It not gonna make no difference.',12048,1,0,0,'malacrass SAY_ADD_DIED1'),
(-1568053,'You gonna die worse dan him.',12049,1,0,0,'malacrass SAY_ADD_DIED2'),
(-1568054,'Dat no bodda me.',12050,1,0,0,'malacrass SAY_ADD_DIED3'),
(-1568055,'Dis not... da end of me...',12051,1,0,0,'malacrass SAY_DEATH'),

(-1568056,'Everybody always wanna take from us. Now we gonna start takin\' back. Anybody who get in our way...gonna drown in dey own blood! Da Amani empire be back now...seekin\' vengeance. And we gonna start wit\' you.',12090,1,0,0,'zuljin SAY_INTRO'),
(-1568057,'Nobody badduh dan me!',12091,1,0,0,'zuljin SAY_AGGRO'),
(-1568058,'Got me some new tricks... like me brudda bear....',12092,1,0,0,'zuljin SAY_BEAR_TRANSFORM'),
(-1568059,'Dere be no hidin\' from da eagle!',12093,1,0,0,'zuljin SAY_EAGLE_TRANSFORM'),
(-1568060,'Let me introduce you to me new bruddas: fang and claw!',12094,1,0,0,'zuljin SAY_LYNX_TRANSFORM'),
(-1568061,'Ya don\' have to look to da sky to see da dragonhawk!',12095,1,0,0,'zuljin SAY_DRAGONHAWK_TRANSFORM'),
(-1568062,'Fire kill you just as quick!',12096,1,0,0,'zuljin SAY_FIRE_BREATH'),
(-1568063,'You too slow! Me too strong!',12097,1,0,0,'zuljin SAY_BERSERK'),
(-1568064,'Da Amani de chuka!',12098,1,0,0,'zuljin SAY_KILL1'),
(-1568065,'Lot more gonna fall like you!',12099,1,0,0,'zuljin SAY_KILL2'),
(-1568066,'Mebbe me fall...but da Amani empire...never gonna die...',12100,1,0,0,'zuljin SAY_DEATH'),

(-1568067,'Zul\'jin got a surprise for ya...',12052,1,0,0,'zulaman SAY_INST_RELEASE'),
(-1568068,'Da spirits gonna feast today! Begin da ceremonies, sacrifice da prisoners... make room for our new guests!',12053,1,0,0,'zulaman SAY_INST_BEGIN'),
(-1568069,'Take your pick, trespassers! Any of ma priests be happy to accommodate ya.',12054,1,0,0,'zulaman SAY_INST_PROGRESS_1'),
(-1568070,'Don\'t be shy. Thousands have come before you. Ya not be alone in your service.',12055,1,0,0,'zulaman SAY_INST_PROGRESS_2'),
(-1568071,'Ya gonna fail, strangers. Many try before you, but dey only make us stronger!',12056,1,0,0,'zulaman SAY_INST_PROGRESS_3'),
(-1568072,'Your efforts was in vain, trespassers. The rituals nearly be complete.',12057,1,0,0,'zulaman SAY_INST_WARN_1'),
(-1568073,'Soon da cages gonna be empty, da sacrifices be complete, and you gonna take dere places.',12058,1,0,0,'zulaman SAY_INST_WARN_2'),
(-1568074,'Time be running low, strangers. Soon you gonna join da souls of dem ya failed to save.',12059,1,0,0,'zulaman SAY_INST_WARN_3'),
(-1568075,'Make haste, ma priests! Da rituals must not be interrupted!',12060,1,0,0,'zulaman SAY_INST_WARN_4'),
(-1568076,'Ya make a good try... but now you gonna join da ones who already fall.',12061,1,0,0,'zulaman SAY_INST_SACRIF1'),
(-1568077,'Ya not do too bad. Ya efforts [...] for a small time. Come to me now. Ya prove yourself worthy offerings.',12062,1,0,0,'zulaman SAY_INST_SACRIF2'),
(-1568078,'Watch now. Every offering gonna strengthen our ties to da spirit world. Soon, we gonna be unstoppable!',12065,1,0,0,'zulaman SAY_INST_COMPLETE'),

(-1568079,'Suit yourself. At least five of you must assist me if we\'re to get inside. Follow me.',0,1,0,0,'harrison SAY_START'),
(-1568080,'According to my calculations, if enough of us bang the gong at once the seal on these doors will break and we can enter.',0,1,0,0,'harrison SAY_AT_GONG'),
(-1568081,'I\'ve researched this site extensively and I won\'t allow any dim-witted treasure hunters to swoop in and steal what belongs to in a museum. I\'ll lead this charge.',0,1,0,0,'harrison SAY_OPEN_ENTRANCE');

-- -1 574 000 UTGARDE KEEP
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1574000,'Your blood is mine!',13221,1,0,0,'keleseth SAY_AGGRO'),
(-1574001,'Not so fast.',13222,1,0,0,'keleseth SAY_FROSTTOMB'),
(-1574002,'Aranal, lidel! Their fate shall be yours!',13224,1,0,0,'keleseth SAY_SKELETONS'),
(-1574003,'Darkness waits!',13223,1,0,0,'keleseth SAY_KILL'),
(-1574004,'I join... the night.',13225,1,0,0,'keleseth SAY_DEATH'),

(-1574005,'I\'ll paint my face with your blood!',13207,1,0,0,'ingvar SAY_AGGRO_FIRST'),
(-1574006,'I return! A second chance to carve out your skull!',13209,1,0,0,'ingvar SAY_AGGRO_SECOND'),
(-1574007,'My life for the... death god!',13213,1,0,0,'ingvar SAY_DEATH_FIRST'),
(-1574008,'No! I can do... better! I can...',13211,1,0,0,'ingvar SAY_DEATH_SECOND'),
(-1574009,'Mjul orm agn gjor!',13212,1,0,0,'ingvar SAY_KILL_FIRST'),
(-1574010,'I am a warrior born!',13214,1,0,0,'ingvar SAY_KILL_SECOND'),

(-1574011,'Dalronn! See if you can muster the nerve to join my attack!',13229,1,0,0,'skarvald SAY_SKA_AGGRO'),
(-1574012,'Not... over... yet.',13230,1,0,0,'skarvald SAY_SKA_DEATH'),
(-1574013,'A warrior\'s death.',13231,1,0,0,'skarvald SAY_SKA_DEATH_REAL'),
(-1574014,'???',13232,1,0,0,'skarvald SAY_SKA_KILL'),
(-1574015,'Pagh! What sort of necromancer lets death stop him? I knew you were worthless!',13233,1,0,0,'skarvald SAY_SKA_DAL_DIES_REPLY'),

(-1574016,'By all means, don\'t assess the situation, you halfwit! Just jump into the fray!',13199,1,0,0,'dalronn SAY_DAL_AGGRO_REPLY'),
(-1574017,'See... you... soon.',13200,1,0,0,'dalronn SAY_DAL_DEATH'),
(-1574018,'There\'s no... greater... glory.',13201,1,0,0,'dalronn SAY_DAL_DEATH_REAL'),
(-1574019,'You may serve me yet.',13202,1,0,0,'dalronn SAY_DAL_KILL'),
(-1574020,'Skarvald, you incompetent slug! Return and make yourself useful!',13203,1,0,0,'dalronn SAY_DAL_SKA_DIES_REPLY'),

(-1574021,'%s casts Frost Tomb on $N',0,3,0,0,'keleseth EMOTE_FROST_TOMB'),

(-1574022,'%s roars!',0,3,0,0,'ingvar EMOTE_ROAR'),
(-1574023,'Ingvar! Your pathetic failure will serve as a warning to all... you are damned! Arise and carry out the masters will!',13754,1,0,0,'annhylde REZZ');

-- -1 575 000 UTGARDE PINNACLE
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1575000,'My liege! I have done as you asked, and now beseech you for your blessing!',13856,1,0,0,'svala SAY_INTRO_1'),
(-1575001,'Your sacrifice is a testament to your obedience. Indeed you are worthy of this charge. Arise, and forever be known as Svala Sorrowgrave!',14732,1,0,0,'svala SAY_INTRO_2_ARTHAS'),
(-1575002,'The sensation is... beyond my imagining. I am yours to command, my king.',13857,1,0,0,'svala SAY_INTRO_3'),
(-1575003,'Your first test awaits you. Destroy our uninvited guests.',14733,1,0,0,'svala SAY_INTRO_4_ARTHAS'),
(-1575004,'I will be happy to slaughter them in your name! Come, enemies of the Scourge! I will show you the might of the Lich King!',13858,1,0,0,'svala SAY_INTRO_5'),
(-1575005,'I will vanquish your soul!',13842,1,0,0,'svala SAY_AGGRO'),
(-1575006,'You were a fool to challenge the power of the Lich King!',13845,1,0,0,'svala SAY_SLAY_1'),
(-1575007,'Your will is done, my king.',13847,1,0,0,'svala SAY_SLAY_2'),
(-1575008,'Another soul for my master.',13848,1,0,0,'svala SAY_SLAY_3'),
(-1575009,'Your death approaches.',13850,1,0,0,'svala SAY_SACRIFICE_1'),
(-1575010,'Go now to my master.',13851,1,0,0,'svala SAY_SACRIFICE_2'),
(-1575011,'Your end is inevitable.',13852,1,0,0,'svala SAY_SACRIFICE_3'),
(-1575012,'Yor-guul mak!',13853,1,0,0,'svala SAY_SACRIFICE_4'),
(-1575013,'Any last words?',13854,1,0,0,'svala SAY_SACRIFICE_5'),
(-1575014,'Nooo! I did not come this far... to...',13855,1,0,0,'svala SAY_DEATH'),

(-1575015,'What this place? I will destroy you!',13464,1,0,0,'gortok SAY_AGGRO'),
(-1575016,'You die! That what master wants!',13465,1,0,0,'gortok SAY_SLAY_1'),
(-1575017,'An easy task!',13466,1,0,0,'gortok SAY_SLAY_2'),
(-1575018,' ',13467,1,0,0,'gortok SAY_DEATH'),

(-1575019,'What mongrels dare intrude here? Look alive, my brothers! A feast for the one that brings me their heads!',13497,1,0,0,'skadi SAY_AGGRO'),
(-1575020,'Sear them to the bone!',13498,1,0,0,'skadi SAY_DRAKEBREATH_1'),
(-1575021,'Go now! Leave nothing but ash in your wake!',13499,1,0,0,'skadi SAY_DRAKEBREATH_2'),
(-1575022,'Cleanse our sacred halls with flame!',13500,1,0,0,'skadi SAY_DRAKEBREATH_3'),
(-1575023,'I ask for ... to kill them, yet all I get is feeble whelps! By Ye.. SLAUGHTER THEM!',13501,1,0,0,'skadi SAY_DRAKE_HARPOON_1'),
(-1575024,'If one more harpoon touches my drake I\'ll flae my miserable heins.',13502,1,0,0,'skadi SAY_DRAKE_HARPOON_2'),
(-1575025,'Mjor Na Ul Kaval!',13503,1,0,0,'skadi SAY_KILL_1'),
(-1575026,'Not so brash now, are you?',13504,1,0,0,'skadi SAY_KILL_2'),
(-1575027,'I\'ll mount your skull from the highest tower!',13505,1,0,0,'skadi SAY_KILL_3'),
(-1575028,'ARGH! You call that... an attack? I\'ll... show... aghhhh...',13506,1,0,0,'skadi SAY_DEATH'),
(-1575029,'You motherless knaves! Your corpses will make fine morsels for my new drake!',13507,1,0,0,'skadi SAY_DRAKE_DEATH'),
(-1575030,'%s is within range of the harpoon launchers!',0,3,0,0,'skadi EMOTE_HARPOON_RANGE'),

(-1575031,'You invade my home and then dare to challenge me? I will tear the hearts from your chests and offer them as gifts to the death god! Rualg nja gaborr!',13609,1,0,0,'ymiron SAY_AGGRO'),
(-1575032,'Bjorn of the Black Storm! Honor me now with your presence!',13610,1,0,0,'ymiron SAY_SUMMON_BJORN'),
(-1575033,'Haldor of the rocky cliffs, grant me your strength!',13611,1,0,0,'ymiron SAY_SUMMON_HALDOR'),
(-1575034,'Ranulf of the screaming abyss, snuff these maggots with darkest night!',13612,1,0,0,'ymiron SAY_SUMMON_RANULF'),
(-1575035,'Tor of the Brutal Siege! Bestow your might upon me!',13613,1,0,0,'ymiron SAY_SUMMON_TORGYN'),
(-1575036,'Your death is only the beginning!',13614,1,0,0,'ymiron SAY_SLAY_1'),
(-1575037,'You have failed your people!',13615,1,0,0,'ymiron SAY_SLAY_2'),
(-1575038,'There is a reason I am king!',13616,1,0,0,'ymiron SAY_SLAY_3'),
(-1575039,'Bleed no more!',13617,1,0,0,'ymiron SAY_SLAY_4'),
(-1575040,'What... awaits me... now?',13618,1,0,0,'ymiron SAY_DEATH');

-- -1 576 000 NEXUS
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1576000,'You know what they say about curiosity.',13319,1,0,0,'telestra SAY_AGGRO'),
(-1576001,'I\'ll give you more than you can handle.',13321,1,0,0,'telestra SAY_SPLIT_1'),
(-1576002,'There\'s plenty of me to go around.',13322,1,0,0,'telestra SAY_SPLIT_2'),
(-1576003,'Now to finish the job!',13323,1,0,0,'telestra SAY_MERGE'),
(-1576004,'Death becomes you!',13324,1,0,0,'telestra SAY_KILL'),
(-1576005,'Damn the... luck.',13320,1,0,0,'telestra SAY_DEATH'),

(-1576006,'Chaos beckons.',13186,1,0,0,'anomalus SAY_AGGRO'),
(-1576007,'Reality... unwoven.',13188,1,0,0,'anomalus SAY_RIFT'),
(-1576008,'Indestructible.',13189,1,0,0,'anomalus SAY_SHIELD'),
(-1576009,'Expiration... is necesarry.',13274,1,0,0,'anomalus SAY_KILL'),
(-1576010,'Of course.',13187,1,0,0,'anomalus SAY_DEATH'),

(-1576011,'Noo!',13328,1,0,0,'ormorok SAY_AGGRO'),
(-1576012,'???',13329,1,0,0,'ormorok SAY_KILL'),
(-1576013,'Baaack!',13331,1,0,0,'ormorok SAY_REFLECT'),
(-1576014,'Bleeeed!',13332,1,0,0,'ormorok SAY_ICESPIKE'),
(-1576015,'Aaggh!',13330,1,0,0,'ormorok SAY_DEATH'),

(-1576016,'Preserve? Why? There\'s no truth in it. No no no... only in the taking! I see that now!',13450,1,0,0,'keristrasza SAY_AGGRO'),
(-1576017,'Stay. Enjoy your final moments.',13451,1,0,0,'keristrasza SAY_CRYSTAL_NOVA'),
(-1576018,'Finish it! Finish it! Kill me, or I swear by the Dragonqueen you\'ll never see daylight again!',13452,1,0,0,'keristrasza SAY_ENRAGE'),
(-1576019,'Now we\'ve come to the truth!',13453,1,0,0,'keristrasza SAY_KILL'),
(-1576020,'Dragonqueen... Life-Binder... preserve... me.',13454,1,0,0,'keristrasza SAY_DEATH'),

(-1576021,'%s opens a Chaotic Rift!',0,3,0,0,'anomalus EMOTE_OPEN_RIFT'),
(-1576022,'%s shields himself and divert his power to the rifts!',0,3,0,0,'anomalus EMOTE_SHIELD');

-- -1 578 000 OCULUS

-- -1 580 000 SUNWELL PLATEAU
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1580000,'Aggh! No longer will I be a slave to Malygos! Challenge me and you will be destroyed!',12422,1,0,0,'kalecgos SAY_EVIL_AGGRO'),
(-1580001,'I will purge you!',12423,1,0,0,'kalecgos SAY_EVIL_SPELL1'),
(-1580002,'Your pain has only begun!',12424,1,0,0,'kalecgos SAY_EVIL_SPELL2'),
(-1580003,'In the name of Kil\'jaeden!',12425,1,0,0,'kalecgos SAY_EVIL_SLAY1'),
(-1580004,'You were warned!',12426,1,0,0,'kalecgos SAY_EVIL_SLAY2'),
(-1580005,'My awakening is complete! You shall all perish!',12427,1,0,0,'kalecgos SAY_EVIL_ENRAGE'),
(-1580006,'I need... your help... Cannot... resist him... much longer...',12428,1,0,0,'kalecgos humanoid SAY_GOOD_AGGRO'),
(-1580007,'Aaahhh! Help me, before I lose my mind!',12429,1,0,0,'kalecgos humanoid SAY_GOOD_NEAR_DEATH'),
(-1580008,'Hurry! There is not much of me left!',12430,1,0,0,'kalecgos humanoid SAY_GOOD_NEAR_DEATH2'),
(-1580009,'I am forever in your debt. Once we have triumphed over Kil\'jaeden, this entire world will be in your debt as well.',12431,1,0,0,'kalecgos humanoid SAY_GOOD_PLRWIN'),
(-1580010,'There will be no reprieve. My work here is nearly finished.',12451,1,0,0,'sathrovarr SAY_SATH_AGGRO'),
(-1580011,'I\'m... never on... the losing... side...',12452,1,0,0,'sathrovarr SAY_SATH_DEATH'),
(-1580012,'Your misery is my delight!',12453,1,0,0,'sathrovarr SAY_SATH_SPELL1'),
(-1580013,'I will watch you bleed!',12454,1,0,0,'sathrovarr SAY_SATH_SPELL2'),
(-1580014,'Pitious mortal!',12455,1,0,0,'sathrovarr SAY_SATH_SLAY1'),
(-1580015,'Haven\'t you heard? I always win!',12456,1,0,0,'sathrovarr SAY_SATH_SLAY2'),
(-1580016,'I have toyed with you long enough!',12457,1,0,0,'sathrovarr SAY_SATH_ENRAGE'),

(-1580017,'Puny lizard! Death is the only answer you\'ll find here!',12458,1,0,0,'brutallus YELL_INTRO'),
(-1580018,'Grah! Your magic is weak!',12459,1,0,0,'brutallus YELL_INTRO_BREAK_ICE'),
(-1580019,'I will crush you!',12460,1,0,0,'brutallus YELL_INTRO_CHARGE'),
(-1580020,'That was fun.',12461,1,0,0,'brutallus YELL_INTRO_KILL_MADRIGOSA'),
(-1580021,'Come, try your luck!',12462,1,0,0,'brutallus YELL_INTRO_TAUNT'),
(-1580022,'Ahh! More lambs to the slaughter!',12463,1,0,0,'brutallus YELL_AGGRO'),
(-1580023,'Perish, insect!',12464,1,0,0,'brutallus YELL_KILL1'),
(-1580024,'You are meat!',12465,1,0,0,'brutallus YELL_KILL2'),
(-1580025,'Too easy!',12466,1,0,0,'brutallus YELL_KILL3'),
(-1580026,'Bring the fight to me!',12467,1,0,0,'brutallus YELL_LOVE1'),
(-1580027,'Another day, another glorious battle!',12468,1,0,0,'brutallus YELL_LOVE2'),
(-1580028,'I live for this!',12469,1,0,0,'brutallus YELL_LOVE3'),
(-1580029,'So much for a real challenge... Die!',12470,1,0,0,'brutallus YELL_BERSERK'),
(-1580030,'Gah! Well done... Now... this gets... interesting...',12471,1,0,0,'brutallus YELL_DEATH'),

(-1580031,'Hold, friends! There is information to be had before this devil meets his fate!',12472,1,0,0,'madrigosa YELL_MADR_ICE_BARRIER'),
(-1580032,'Where is Anveena, demon? What has become of Kalec?',12473,1,0,0,'madrigosa YELL_MADR_INTRO'),
(-1580033,'You will tell me where they are!',12474,1,0,0,'madrigosa YELL_MADR_ICE_BLOCK'),
(-1580034,'Speak, I grow weary of asking!',12475,1,0,0,'madrigosa YELL_MADR_TRAP'),
(-1580035,'Malygos, my lord! I did my best!',12476,1,0,0,'madrigosa YELL_MADR_DEATH');

-- -1 585 000 MAGISTER'S TERRACE
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1585000,'You only waste my time!',12378,1,0,0,'selin SAY_AGGRO'),
(-1585001,'My hunger knows no bounds!',12381,1,0,0,'selin SAY_ENERGY'),
(-1585002,'Yes! I am a god!',12382,1,0,0,'selin SAY_EMPOWERED'),
(-1585003,'Enough distractions!',12388,1,0,0,'selin SAY_KILL_1'),
(-1585004,'I am invincible!',12385,1,0,0,'selin SAY_KILL_2'),
(-1585005,'No! More... I must have more!',12383,1,0,0,'selin SAY_DEATH'),
(-1585006,'%s begins to channel from the nearby Fel Crystal...',0,3,0,0,'selin EMOTE_CRYSTAL'),

(-1585007,'Drain...life!',12389,1,0,0,'vexallus SAY_AGGRO'),
(-1585008,'Un...con...tainable.',12392,1,0,0,'vexallus SAY_ENERGY'),
(-1585009,'Un...leash...',12390,1,0,0,'vexallus SAY_OVERLOAD'),
(-1585010,'Con...sume.',12393,1,0,0,'vexallus SAY_KILL'),
(-1585011,'%s discharges pure energy!',0,3,0,0,'vexallus EMOTE_DISCHARGE_ENERGY'),

(-1585012,'Annihilate them!',12395,1,0,0,'delrissa SAY_AGGRO'),
(-1585013,'Oh, the horror.',12398,1,0,0,'delrissa LackeyDeath1'),
(-1585014,'Well, aren\'t you lucky?',12400,1,0,0,'delrissa LackeyDeath2'),
(-1585015,'Now I\'m getting annoyed.',12401,1,0,0,'delrissa LackeyDeath3'),
(-1585016,'Lackies be damned! I\'ll finish you myself!',12403,1,0,0,'delrissa LackeyDeath4'),
(-1585017,'I call that a good start.',12405,1,0,0,'delrissa PlayerDeath1'),
(-1585018,'I could have sworn there were more of you.',12407,1,0,0,'delrissa PlayerDeath2'),
(-1585019,'Not really much of a group, anymore, is it?',12409,1,0,0,'delrissa PlayerDeath3'),
(-1585020,'One is such a lonely number.',12410,1,0,0,'delrissa PlayerDeath4'),
(-1585021,'It\'s been a kick, really.',12411,1,0,0,'delrissa PlayerDeath5'),
(-1585022,'Not what I had... planned...',12397,1,0,0,'delrissa SAY_DEATH'),

(-1585023,'Don\'t look so smug! I know what you\'re thinking, but Tempest Keep was merely a set back. Did you honestly believe I would trust the future to some blind, half-night elf mongrel? Oh no, he was merely an instrument, a stepping stone to a much larger plan! It has all led to this, and this time, you will not interfere!',12413,1,0,0,'kaelthas MT SAY_AGGRO'),
(-1585024,'Vengeance burns!',12415,1,0,0,'kaelthas MT SAY_PHOENIX'),
(-1585025,'Felomin ashal!',12417,1,0,0,'kaelthas MT SAY_FLAMESTRIKE'),
(-1585026,'I\'ll turn your world... upside... down...',12418,1,0,0,'kaelthas MT SAY_GRAVITY_LAPSE'),
(-1585027,'Master... grant me strength.',12419,1,0,0,'kaelthas MT SAY_TIRED'),
(-1585028,'Do not... get too comfortable.',12420,1,0,0,'kaelthas MT SAY_RECAST_GRAVITY'),
(-1585029,'My demise accomplishes nothing! The Master will have you! You will drown in your own blood! This world shall burn! Aaaghh!',12421,1,0,0,'kaelthas MT SAY_DEATH');

-- -1 595 000 CULLING OF STRATHOLME

-- -1 599 000 HALLS OF STONE
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1599000,'Soft, vulnerable shells. Brief, fragile lives. You can not escape the curse of flesh!',14180,1,0,0,'sjonnir SAY_AGGRO'),
(-1599001,'???',14181,1,0,0,'sjonnir SAY_SLAY_1'),
(-1599002,'Flesh is no match for iron!',14182,1,0,0,'sjonnir SAY_SLAY_2'),
(-1599003,'Armies of iron will smother the world!',14183,1,0,0,'sjonnir SAY_SLAY_3'),
(-1599004,'Loken will not rest, until the forge is retaken. You changed nothing!',14184,1,0,0,'sjonnir SAY_DEATH'),

(-1599005,'You shouldn\'t have come...now you will die!',13487,1,0,0,'maiden SAY_AGGRO'),
(-1599006,'Why must it be this way?',13488,1,0,0,'maiden SAY_SLAY_1'),
(-1599007,'You had it coming!',13489,1,0,0,'maiden SAY_SLAY_2'),
(-1599008,'My burden grows heavier.',13490,1,0,0,'maiden SAY_SLAY_3'),
(-1599009,'This is your own fault!',13491,1,0,0,'maiden SAY_SLAY_4'),
(-1599010,'So much lost time... that you\'ll never get back!',13492,1,0,0,'maiden SAY_STUN'),
(-1599011,'I hope you all rot! I never...wanted...this.',13493,1,0,0,'maiden SAY_DEATH'),

(-1599012,'Now that\'s owning your supper!',14244,1,0,0,'brann SAY_KILL_1'),
(-1599013,'Press on, that\'s the way!',14245,1,0,0,'brann SAY_KILL_2'),
(-1599014,'Keep it up now. Plenty of death-dealing for everyone!',14246,1,0,0,'brann SAY_KILL_3'),
(-1599015,'I\'m all kinds of busted up. Might not... make it...',14257,1,0,0,'brann SAY_LOW_HEALTH'),
(-1599016,'Not yet, not... yet-',14258,1,0,0,'brann SAY_DEATH'),
(-1599017,'I\'m doing everything I can!',14260,1,0,0,'brann SAY_PLAYER_DEATH_1'),
(-1599018,'Light preserve you!',14261,1,0,0,'brann SAY_PLAYER_DEATH_2'),
(-1599019,'I hope this is all worth it!',14262,1,0,0,'brann SAY_PLAYER_DEATH_3'),
(-1599020,'Time to get some answers! Let\'s get this show on the road!',14259,1,0,0,'brann SAY_ESCORT_START'),

(-1599021,'Don\'t worry. Old Brann has got your back. Keep that metal monstrosity busy and I\'ll see if I can sweet talk this machine into helping you.',14274,1,0,0,'brann SAY_SPAWN_DWARF'),
(-1599022,'This is a wee bit trickier that before... Oh, bloody--incomin\'!',14275,1,0,0,'brann SAY_SPAWN_TROGG'),
(-1599023,'What in the name o\' Madoran did THAT do? Oh! Wait: I just about got it...',14276,1,0,0,'brann SAY_SPAWN_OOZE'),
(-1599024,'Ha, that did it. Help\'s a-coming. Take this you glow-eying brute!',14277,1,0,0,'brann SAY_SPAWN_EARTHEN'),

(-1599025,'Take a moment and relish this with me! Soon all will be revealed! Okay then, let\'s do this!',14247,1,0,0,'brann SAY_EVENT_INTRO_1'),
(-1599026,'Now keep an eye out! I\'ll have this licked in two shakes of a--',14248,1,0,0,'brann SAY_EVENT_INTRO_2'),
(-1599027,'Warning! Life form pattern not recognized. Archival processing terminated. Continued interference will result in targeted response.',13765,1,0,0,'brann SAY_EVENT_INTRO_3_ABED'),

(-1599028,'Oh, that doesn\'t sound good. We might have a complication or two...',14249,1,0,0,'brann SAY_EVENT_A_1'),
(-1599029,'Security breach in progress. Analysis of historical archives transferred to lower priority queue. Countermeasures engaged.',13756,1,0,0,'brann SAY_EVENT_A_2_KADD'),
(-1599030,'Ah, you want to play hardball, eh? That\'s just my game!',14250,1,0,0,'brann SAY_EVENT_A_3'),

(-1599031,'Couple more minutes and I\'ll--',14251,1,0,0,'brann SAY_EVENT_B_1'),
(-1599032,'Threat index threshold exceeded. Celestial archive aborted. Security level heightened.',13761,1,0,0,'brann SAY_EVENT_B_2_MARN'),
(-1599033,'Heightened? What\'s the good news?',14252,1,0,0,'brann SAY_EVENT_B_3'),

(-1599034,'So that was the problem? Now I\'m makin\' progress...',14253,1,0,0,'brann SAY_EVENT_C_1'),
(-1599035,'Critical threat index. Void analysis diverted. Initiating sanitization protocol.',13767,1,0,0,'brann SAY_EVENT_C_2_ABED'),
(-1599036,'Hang on! Nobody\'s gonna\' be sanitized as long as I have a say in it!',14254,1,0,0,'brann SAY_EVENT_C_3'),

(-1599037,'Ha! The old magic fingers finally won through! Now let\'s get down to-',14255,1,0,0,'brann SAY_EVENT_D_1'),
(-1599038,'Alert! Security fail safes deactivated. Beginning memory purge...',13768,1,0,0,'brann SAY_EVENT_D_2_ABED'),
(-1599039,'Purge? No no no no no! Where did I-- Aha, this should do the trick...',14256,1,0,0,'brann SAY_EVENT_D_3'),
(-1599040,'System online. Life form pattern recognized. Welcome Branbronzan. Query?',13769,1,0,0,'brann SAY_EVENT_D_4_ABED'),

(-1599041,'Query? What do you think I\'m here for? Tea and biscuits? Spill the beans already!',14263,1,0,0,'brann SAY_EVENT_END_01'),
(-1599042,'Tell me how that dwarfs came to be! And start at the beginning!',14264,1,0,0,'brann SAY_EVENT_END_02'),
(-1599043,'Accessing prehistoric data. Retrieved. In the beginning Earthen were created to-',13770,1,0,0,'brann SAY_EVENT_END_03_ABED'),
(-1599044,'Right, right! I know that the Earthen were made of stone to shape the deep reaches of the world but what about the anomalies? Matrix non-stabilizing and whatnot.',14265,1,0,0,'brann SAY_EVENT_END_04'),
(-1599045,'Accessing. In the early stages of its development cycle Azeroth suffered infection by parasitic, necrophotic symbiotes.',13771,1,0,0,'brann SAY_EVENT_END_05_ABED'),
(-1599046,'Necro-what? Speak bloody common will ya?',14266,1,0,0,'brann SAY_EVENT_END_06'),
(-1599047,'Designation: Old Gods. Old Gods rendered all systems, including Earthen defenseless in order to facilitate assimilation. This matrix destabilization has been termed the Curse of Flesh. Effects of destabilization increased over time.',13772,1,0,0,'brann SAY_EVENT_END_07_ABED'),
(-1599048,'Old Gods eh? So they zapped the Earthen with this Curse of Flesh. And then what?',14267,1,0,0,'brann SAY_EVENT_END_08'),
(-1599049,'Accessing. Creators arrived to extirpate symbiotic infection. Assessment revealed that Old God infestation had grown malignant. Excising parasites would result in loss of host.',13757,1,0,0,'brann SAY_EVENT_END_09_KADD'),
(-1599050,'If they killed the Old Gods Azeroth would have been destroyed.',14268,1,0,0,'brann SAY_EVENT_END_10'),
(-1599051,'Correct. Creators neutralized parasitic threat and contained it within the host. Forge of Wills and other systems were instituted to create new Earthen. Safeguards were implemented and protectors were appointed.',13758,1,0,0,'brann SAY_EVENT_END_11_KADD'),
(-1599052,'What protectors?',14269,1,0,0,'brann SAY_EVENT_END_12'),
(-1599053,'Designations: Aesir and Vanir or in common nomenclator Storm and Earth Giants. Sentinel Loken designated supreme. Dragon Aspects appointed to monitor evolution of Azeroth.',13759,1,0,0,'brann SAY_EVENT_END_13_KADD'),
(-1599054,'Aesir and Vanir. Okay. So the Forge of Wills started to make new Earthen. But what happened to the old ones?',14270,1,0,0,'brann SAY_EVENT_END_14'),
(-1599055,'Additional background is relevant to your query. Following global combat between-',13762,1,0,0,'brann SAY_EVENT_END_15_MARN'),
(-1599056,'Hold everything! The Aesir and Vanir went to war? Why?',14271,1,0,0,'brann SAY_EVENT_END_16'),
(-1599057,'Unknown. Data suggests that impetus for global combat originated with prime designate Loken who neutralized all remaining Aesir and Vanir affecting termination of conflict. Prime designate Loken then initiated stasis of several seed races including Earthen, Giant and Vrykul at designated holding facilities.',13763,1,0,0,'brann SAY_EVENT_END_17_MARN'),
(-1599058,'This Loken sounds like a nasty character. Glad we don\'t have to worry about the likes of him anymore. So if I\'m understanding you lads the original Earthen eventually woke up from this statis. And by that time this destabily-whatever had turned them into our brother dwarfs. Or at least dwarf ancestors. Hm?',14272,1,0,0,'brann SAY_EVENT_END_18'),
(-1599059,'Essentially that is correct.',13764,1,0,0,'brann SAY_EVENT_END_19_MARN'),
(-1599060,'Well now. That\'s a lot to digest. I\'m gonna need some time to take all of this in. Thank you!',14273,1,0,0,'brann SAY_EVENT_END_20'),
(-1599061,'Acknowledged Branbronzan. Session terminated.',13773,1,0,0,'brann SAY_EVENT_END_21_ABED'),

(-1599062,'Loken?! That\'s downright bothersome... We might\'ve neutralized the iron dwarves, but I\'d lay odds there\'s another machine somewhere else churnin\' out a whole mess o\' these iron vrykul!',14278,1,0,0,'brann SAY_VICTORY_SJONNIR_1'),
(-1599063,'I\'ll use the forge to make badtches o\' earthen to stand guard... But our greatest challenge still remains: find and stop Loken!',14279,1,0,0,'brann SAY_VICTORY_SJONNIR_2'),

(-1599064,'I think it\'s time to see what\'s behind the door near the entrance. I\'m going to sneak over there, nice and quiet. Meet me at the door and I\'ll get us in.',0,1,0,0,'brann SAY_ENTRANCE_MEET');

-- -1 600 000 DRAK'THARON KEEP
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1600000,'More grunts, more glands, more FOOD!',13181,1,0,0,'trollgore SAY_AGGRO'),
(-1600001,'So hungry! Must feed!',13182,1,0,0,'trollgore SAY_CONSUME'),
(-1600002,'Aaaargh...',13183,1,0,0,'trollgore SAY_DEATH'),
(-1600003,'Corpse go boom!',13184,1,0,0,'trollgore SAY_EXPLODE'),
(-1600004,'You have gone, me gonna eat you!',13185,1,0,0,'trollgore SAY_KILL'),

(-1600005,'The chill that you feel is the herald of your doom!',13173,1,0,0,'novos SAY_AGGRO'),
(-1600006,'Your efforts... are in vain.',13174,1,0,0,'novos SAY_DEATH'),
(-1600007,'Such is the fate of all who oppose the Lich King.',13175,1,0,0,'novos SAY_KILL'),
(-1600008,'Bolster my defenses! Hurry, curse you!',13176,1,0,0,'novos SAY_ADDS'),
(-1600009,'Surely you can see the futility of it all!',13177,1,0,0,'novos SAY_BUBBLE_1'),
(-1600010,'Just give up and die already!',13178,1,0,0,'novos SAY_BUBBLE_2'),
(-1600011,'%s calls for assistance.',0,3,0,0,'novos EMOTE_ASSISTANCE'),

(-1600012,'Tharon\'ja sees all! The work of mortals shall not end the eternal dynasty!',13862,1,0,0,'tharonja SAY_AGGRO'),
(-1600013,'As Tharon\'ja predicted.',13863,1,0,0,'tharonja SAY_KILL_1'),
(-1600014,'As it was written.',13864,1,0,0,'tharonja SAY_KILL_2'),
(-1600015,'Your flesh serves Tharon\'ja now!',13865,1,0,0,'tharonja SAY_FLESH_1'),
(-1600016,'Tharon\'ja has a use for your mortal shell!',13866,1,0,0,'tharonja SAY_FLESH_2'),
(-1600017,'No! A taste... all too brief!',13867,1,0,0,'tharonja SAY_SKELETON_1'),
(-1600018,'Tharon\'ja will have more!',13868,1,0,0,'tharonja SAY_SKELETON_2'),
(-1600019,'Im... impossible! Tharon\'ja is eternal! Tharon\'ja... is...',13869,1,0,0,'tharonja SAY_DEATH');

-- -1 601 000 AZJOL-NERUB
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1601000,'This kingdom belongs to the Scourge! Only the dead may enter.',14075,1,0,0,'krikthir SAY_AGGRO'),
(-1601001,'???',14076,1,0,0,'krikthir SAY_KILL_1'),
(-1601002,'You were foolish to come.',14077,1,0,0,'krikthir SAY_KILL_2'),
(-1601003,'As Anub\'Arak commands!',14078,1,0,0,'krikthir SAY_KILL_3'),
(-1601004,'We are besieged. Strike out and bring back their corpses!',14079,1,0,0,'krikthir SAY_SEND_GROUP_1'),
(-1601005,'We must hold the gate. Attack! Tear them limb from limb!',14080,1,0,0,'krikthir SAY_SEND_GROUP_2'),
(-1601006,'The gate must be protected at all costs. Rip them to shreds!',14081,1,0,0,'krikthir SAY_SEND_GROUP_3'),
(-1601007,'Keep an eye on the tunnel. We must not let anyone through!',14082,1,0,0,'krikthir SAY_PREFIGHT_1'),
(-1601008,'I hear footsteps. Be on your guard.',14083,1,0,0,'krikthir SAY_PREFIGHT_2'),
(-1601009,'I sense the living. Be ready.',14084,1,0,0,'krikthir SAY_PREFIGHT_3'),
(-1601010,'They hunger.',14085,1,0,0,'krikthir SAY_SWARM_1'),
(-1601011,'Dinner time, my pets.',14086,1,0,0,'krikthir SAY_SWARM_2'),
(-1601012,'I should be grateful. But I long ago lost the capacity.',14087,1,0,0,'krikthir SAY_DEATH'),
(-1601013,'REUSE ME',0,0,0,0,'REUSE ME'),

(-1601014,'I was king of this empire once, long ago. In life I stood as champion. In death I returned as conqueror. Now I protect the kingdom once more. Ironic, yes?',14053,1,0,0,'anubarak SAY_INTRO'),
(-1601015,'Eternal agony awaits you!',14054,1,0,0,'anubarak SAY_AGGRO'),
(-1601016,'You shall experience my torment, first-hand!',14055,1,0,0,'anubarak SAY_KILL_1'),
(-1601017,'You have made your choice.',14056,1,0,0,'anubarak SAY_KILL_2'),
(-1601018,'Soon, the Master\'s voice will call to you.',14057,1,0,0,'anubarak SAY_KILL_3'),
(-1601019,'Come forth, my brethren. Feast on their flesh!',14058,1,0,0,'anubarak SAY_SUBMERGE_1'),
(-1601020,'Auum na-l ak-k-k-k, isshhh.',14059,1,0,0,'anubarak SAY_SUBMERGE_2'),
(-1601021,'Your armor is useless against my locusts!',14060,1,0,0,'anubarak SAY_LOCUST_1'),
(-1601022,'The pestilence upon you!',14067,1,0,0,'anubarak SAY_LOCUST_2'),
(-1601023,'Uunak-hissss tik-k-k-k-k!',14068,1,0,0,'anubarak SAY_LOCUST_3'),
(-1601024,'Ahhh... RAAAAAGH! Never thought... I would be free of him...',14069,1,0,0,'anubarak SAY_DEATH');

-- -1 602 000 HALLS OF LIGHTNING
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1602000,'I am the greatest of my father\'s sons! Your end has come!',14149,1,0,0,'bjarngrim SAY_AGGRO'),
(-1602001,'So ends your curse!',14153,1,0,0,'bjarngrim SAY_SLAY_1'),
(-1602002,'Flesh... is... weak!',14154,1,0,0,'bjarngrim SAY_SLAY_2'),
(-1602003,'...',14155,1,0,0,'bjarngrim SAY_SLAY_3'),
(-1602004,'How can it be...? Flesh is not... stronger!',14156,1,0,0,'bjarngrim SAY_DEATH'),
(-1602005,'Defend yourself, for all the good it will do!',14151,1,0,0,'bjarngrim SAY_BATTLE_STANCE'),
(-1602006,'%s switches to Battle Stance!',0,3,0,0,'bjarngrim EMOTE_BATTLE_STANCE'),
(-1602007,'GRAAAAAH! Behold the fury of iron and steel!',14152,1,0,0,'bjarngrim SAY_BERSEKER_STANCE'),
(-1602008,'%s switches to Berserker Stance!',0,3,0,0,'bjarngrim EMOTE_BERSEKER_STANCE'),
(-1602009,'Give me your worst!',14150,1,0,0,'bjarngrim SAY_DEFENSIVE_STANCE'),
(-1602010,'%s switches to Defensive Stance!',0,3,0,0,'bjarngrim EMOTE_DEFENSIVE_STANCE'),

(-1602011,'You wish to confront the master? You must weather the storm!',14453,1,0,0,'ionar SAY_AGGRO'),
(-1602012,'Shocking ... I know!',14456,1,0,0,'ionar SAY_SLAY_1'),
(-1602013,'You atempt the unpossible.',14457,1,0,0,'ionar SAY_SLAY_2'),
(-1602014,'Your spark of light is ... extinguish.',14458,1,0,0,'ionar SAY_SLAY_3'),
(-1602015,'Master... you have guests.',14459,1,0,0,'ionar SAY_DEATH'),
(-1602016,'The slightest spark shall be your undoing.',14454,1,0,0,'ionar SAY_SPLIT_1'),
(-1602017,'No one is safe!',14455,1,0,0,'ionar SAY_SPLIT_2'),

(-1602018,'What hope is there for you? None!',14162,1,0,0,'loken SAY_AGGRO0'),
(-1602019,'I have witnessed the rise and fall of empires. The birth and extinction of entire species. Over countless millennia the foolishness of mortals has remained beyond a constant. Your presence here confirms this.',14160,1,0,0,'loken SAY_INTRO_1'),
(-1602020,'My master has shown me the future, and you have no place in it. Azeroth will be reborn in darkness. Yogg-Saron shall be released! The Pantheon shall fall!',14162,1,0,0,'loken SAY_INTRO_2'),
(-1602021,'Only mortal...',14166,1,0,0,'loken SAY_SLAY_1'),
(-1602022,'I... am... FOREVER!',14167,1,0,0,'loken SAY_SLAY_2'),
(-1602023,'What little time you had, you wasted!',14168,1,0,0,'loken SAY_SLAY_3'),
(-1602024,'My death... heralds the end of this world.',14172,1,0,0,'loken SAY_DEATH'),
(-1602025,'You cannot hide from fate!',14163,1,0,0,'loken SAY_NOVA_1'),
(-1602026,'Come closer. I will make it quick.',14164,1,0,0,'loken SAY_NOVA_2'),
(-1602027,'Your flesh cannot hold out for long.',14165,1,0,0,'loken SAY_NOVA_3'),
(-1602028,'You stare blindly into the abyss!',14169,1,0,0,'loken SAY_75HEALTH'),
(-1602029,'Your ignorance is profound. Can you not see where this path leads?',14170,1,0,0,'loken SAY_50HEALTH'),
(-1602030,'You cross the precipice of oblivion!',14171,1,0,0,'loken SAY_25HEALTH'),
(-1602031,'%s begins to cast Lightning Nova!',0,3,0,0,'loken EMOTE_NOVA'),

(-1602032,'It is you who have destroyed my children? You... shall... pay!',13960,1,0,0,'volkhan SAY_AGGRO'),
(-1602033,'The armies of iron will conquer all!',13965, 1,0,0,'volkhan SAY_SLAY_1'),
(-1602034,'Ha, pathetic!',13966,1,0,0,'volkhan SAY_SLAY_2'),
(-1602035,'You have cost me too much work!',13967,1,0,0,'volkhan SAY_SLAY_3'),
(-1602036,'The master was right... to be concerned.',13968,1,0,0,'volkhan SAY_DEATH'),
(-1602037,'I will crush you beneath my boots!',13963,1,0,0,'volkhan SAY_STOMP_1'),
(-1602038,'All my work... undone!',13964,1,0,0,'volkhan SAY_STOMP_2'),
(-1602039,'Life from the lifelessness... death for you.',13961,1,0,0,'volkhan SAY_FORGE_1'),
(-1602040,'Nothing is wasted in the process. You will see....',13962,1,0,0,'volkhan SAY_FORGE_2'),
(-1602041,'%s runs to his anvil!',0,3,0,0,'volkhan EMOTE_TO_ANVIL'),
(-1602042,'%s prepares to shatter his Brittle Golems!',0,3,0,0,'volkhan EMOTE_SHATTER');

-- -1 603 000 ULDUAR
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1603000,'The Conservatory must be protected!',15526,1,0,0,'freya SAY_AGGRO'),
(-1603001,'Elders, grant me your strength!',15527,1,0,0,'freya SAY_AGGRO_HARD'),
(-1603002,'Eonar, your servant requires aid!',15528,1,0,0,'freya SAY_ADDS_CONSERVATOR'),
(-1603003,'Children, assist me!',15533,1,0,0,'freya SAY_ADDS_TRIO'),
(-1603004,'The swarm of the elements shall overtake you!',15534,1,0,0,'freya SAY_ADDS_LASHER'),
(-1603005,'Forgive me.',15529,1,0,0,'freya SAY_SLAY_1'),
(-1603006,'From your death springs life anew!',15530,1,0,0,'freya SAY_SLAY_2'),
(-1603007,'His hold on me dissipates. I can see clearly once more. Thank you, heroes.',15531,1,0,0,'freya SAY_DEATH'),
(-1603008,'You have strayed too far, wasted too much time!',15532,1,0,0,'freya SAY_BERSERK'),
(-1603009,'Eonar, your servant calls for your blessing!',15535,1,0,0,'freya SAY_HELP_YOGG'),

(-1603010,'Allies of Nature have appeared!',0,3,0,0,'freya EMOTE_ALLIES_NATURE'),
(-1603011,'A Lifebinder\'s Gift begins to grow!',0,3,0,0,'freya EMOTE_LIFEBINDER'),
(-1603012,'Freya begins to cast Ground Tremor!',0,3,0,0,'freya EMOTE_TREMOR'),
(-1603013,'Freya casts Strenghtened Iron Roots!',0,3,0,0,'freya EMOTE_IRON_ROOTS'),

(-1603014,'Matron, the Conservatory has been breached!',15483,1,0,0,'brightleaf SAY_AGGRO_BRIGHT'),
(-1603015,'Fertilizer.',15485,1,0,0,'brightleaf SAY_SLAY_1_BRIGHT'),
(-1603016,'Your corpse will nourish the soil!',15486,1,0,0,'brightleaf SAY_SLAY_2_BRIGHT'),
(-1603017,'Matron, one has fallen!',15487,1,0,0,'brightleaf SAY_DEATH_BRIGHT'),

(-1603018,'Mortals have no place here!',15493,1,0,0,'ironbranch SAY_AGGRO_IRON'),
(-1603019,'I return you whence you came!',15494,1,0,0,'ironbranch SAY_SLAY_1_IRON'),
(-1603020,'BEGONE!',15495,1,0,0,'ironbranch SAY_SLAY_2_IRON'),
(-1603021,'Freya! They come for you.',15496,1,0,0,'ironbranch SAY_DEATH_IRON'),

(-1603022,'This place will serve as your graveyard.',15500,1,0,0,'stonebark SAY_AGGRO_STONE'),
(-1603023,'<Angry roar>',15501,1,0,0,'stonebark SAY_SLAY_1_STONE'),
(-1603024,'Such a waste.',15502,1,0,0,'stonebark SAY_SLAY_2_STONE'),
(-1603025,'Matron, flee! They are ruthless....',15503,1,0,0,'stonebark SAY_DEATH_STONE'),

(-1603026,'Insolent whelps! Your blood will temper the weapons used to reclaim this world!',15564,1,0,0,'ignis SAY_AGGRO'),
(-1603027,'Let the inferno consume you!',15567,1,0,0,'ignis SAY_SCORCH_1'),
(-1603028,'BURN! Burn in the makers fire!',15568,1,0,0,'ignis SAY_SCORCH_2'),
(-1603029,'I will burn away your impurities!',15566,1,0,0,'ignis SAY_SLAGPOT'),
(-1603030,'Arise, soldiers of the Iron Crucible! The Makers\' will be done!',15565,1,0,0,'ignis SAY_ADDS'),
(-1603031,'More scraps for the scrapheap!',15569,1,0,0,'ignis SAY_SLAY_1'),
(-1603032,'Your bones will serve as kindling!',15570,1,0,0,'ignis SAY_SLAY_2'),
(-1603033,'Let it be finished!',15571,1,0,0,'ignis SAY_BERSERK'),
(-1603034,'I. Have. Failed.',15572,1,0,0,'ignis SAY_DEATH'),
(-1603035,'Ignis the Furnace Master begins to cast Flame Jets!',0,3,0,0,'ignis EMOTE_FLAME_JETS'),

(-1603036,'Welcome, champions! All of our attempts at grounding her have failed. We could use a hand in bring her down with these harpoon guns.',15647,0,0,0,'razorscale SAY_INTRO_WELCOME'),
(-1603037,'Give us a moment to prepare to build the turrets.',0,1,0,0,'razorscale SAY_INTRO_1'),
(-1603038,'Be on the lookout! Mole machines will be surfacing soon with those nasty Iron dwarves aboard!',0,1,0,0,'razorscale SAY_INTRO_2'),
(-1603039,'Ready to move out, keep those dwarves off of our backs!',0,1,0,0,'razorscale SAY_INTRO_3'),
(-1603040,'Move! Quickly! She won\'t remain grounded for long.',0,1,0,0,'razorscale SAY_GROUNDED'),
(-1603041,'Razorscale takes a deep breath...',0,3,0,0,'razorscale EMOTE_BREATH'),
(-1603042,'Fires out! Let\'s rebuild those turrets!',0,1,0,0,'razorscale SAY_EXTINGUISH_FIRE'),
(-1603043,'Harpoon Turret is ready for use!',0,3,0,0,'razorscale EMOTE_HARPOON_READY'),
(-1603044,'Razorscale grounded permanently!',0,3,0,0,'razorscale EMOTE_GROUNDED'),

(-1603045,'New toys? For me? I promise I won\'t break them this time!',15724,1,0,0,'xt-002 SAY_AGGRO'),
(-1603046,'I... I think I broke it.',15728,1,0,0,'xt-002 SAY_SLAY_1'),
(-1603047,'I guess it doesn\'t bend that way.',15729,1,0,0,'xt-002 SAY_SLAY_2'),
(-1603048,'I\'m tired of these toys. I don\'t want to play anymore!',15730,1,0,0,'xt-002 SAY_BERSERK'),
(-1603049,'Time for a new game! My old toys will fight my new toys!',15732,1,0,0,'xt-002 SAY_ADDS'),
(-1603050,'You are bad... Toys... Very... Baaaaad!',15731,1,0,0,'xt-002 SAY_DEATH'),
(-1603051,'So tired. I will rest for just a moment!',15725,1,0,0,'xt-002 SAY_HEART_OPEN'),
(-1603052,'I\'m ready to play!',15726,1,0,0,'xt-002 SAY_HEART_CLOSE'),
(-1603053,'NO! NO! NO! NO! NO!',15727,1,0,0,'xt-002 SAY_TANCTRUM'),
(-1603054,'XT-002 Deconstructor\'s heart is exposed and leaking energy!',0,3,0,0,'xt-002 EMOTE_EXPOSE_HEART'),
(-1603055,'XT-002 Deconstructor consumes a scrapbot to repair himself.',0,3,0,0,'xt-002 EMOTE_REPAIR'),

(-1603056,'Whether the world\'s greatest gnats or the world\'s greatest heroes, you\'re still only mortal.',15684,1,0,0,'brundir SAY_BRUNDIR_AGGRO'),
(-1603057,'Stand still and stare into the light!',15687,1,0,0,'brundir SAY_BRUNDIR_WHIRL'),
(-1603058,'The power of the storm lives on...',15689,1,0,0,'brundir SAY_BRUNDIR_DEATH_1'),
(-1603059,'You rush headlong into the maw of madness!',15690,1,0,0,'brundir SAY_BRUNDIR_DEATH_2'),
(-1603060,'A merciful kill!',15685,1,0,0,'brundir SAY_BRUNDIR_SLAY_1'),
(-1603061,'HAH!',15686,1,0,0,'brundir SAY_BRUNDIR_SLAY_2'),
(-1603062,'This meeting of the Assembly of Iron is adjourned!',15691,1,0,0,'brundir SAY_BRUNDIR_BERSERK'),
(-1603063,'Let the storm clouds rise and rain down death from above!',15688,1,0,0,'brundir SAY_BRUNDIR_FLY'),

(-1603064,'Nothing short of total decimation will suffice!',15657,1,0,0,'molgeim SAY_MOLGEIM_AGGRO'),
(-1603065,'The legacy of storms shall not be undone...',15662,1,0,0,'molgeim SAY_MOLGEIM_DEATH_1'),
(-1603066,'What have you gained from my defeat? You are no less doomed, mortals...',15663,1,0,0,'molgeim SAY_MOLGEIM_DEATH_2'),
(-1603067,'Decipher this!',15660,1,0,0,'molgeim SAY_MOLGEIM_DEATH_RUNE'),
(-1603068,'Face the lightning surge!',15661,1,0,0,'molgeim SAY_MOLGEIM_SURGE'),
(-1603069,'The world on suffers yet another insignificant loss!',15658,1,0,0,'molgeim SAY_MOLGEIM_SLAY_1'),
(-1603070,'Death is the price of your arrogance.',15659,1,0,0,'molgeim SAY_MOLGEIM_SLAY_2'),
(-1603071,'This meeting of the Assembly of Iron is adjourned!',15664,1,0,0,'molgeim SAY_MOLGEIM_BERSERK'),

(-1603072,'You will not defeat the Assembly of Iron so easily, invaders!',15674,1,0,0,'steelbreaker SAY_STEEL_AGGRO'),
(-1603073,'My death only serves to hasten your demise.',15678,1,0,0,'steelbreaker SAY_STEEL_DEATH_1'),
(-1603074,'Impossible!',15679,1,0,0,'steelbreaker SAY_STEEL_DEATH_2'),
(-1603075,'So fragile and weak!',15675,1,0,0,'steelbreaker SAY_STEEL_SLAY_1'),
(-1603076,'Flesh... such a hindrance.',15676,1,0,0,'steelbreaker SAY_STEEL_SLAY_2'),
(-1603077,'You seek the secrets of Ulduar? Then take them!',15677,1,0,0,'steelbreaker SAY_STEEL_OVERWHELM'),
(-1603078,'This meeting of the Assembly of Iron is adjourned!',15680,1,0,0,'steelbreaker SAY_STEEL_BERSERK'),

(-1603079,'Some things are better left alone!',15473,1,0,0,'auriaya SAY_AGGRO'),
(-1603080,'There is no escape!',15475,1,0,0,'auriaya SAY_SLAY_1'),
(-1603081,'The secret dies with you!',15474,1,0,0,'auriaya SAY_SLAY_2'),
(-1603082,'You waste my time!',15477,1,0,0,'auriaya SAY_BERSERK'),
(-1603083,'Auriaya screams in agony.',15476,2,0,0,'auriaya SAY_DEATH'),
(-1603084,'Auriaya begins to cast Terrifying Screech.',0,3,0,0,'auriaya EMOTE_SCREECH'),
(-1603085,'Auriaya begins to activate the Feral Defender!',0,3,0,0,'auriaya EMOTE_DEFENDER'),

(-1603086,'You will suffer for this trespass!',15552,1,0,0,'hodir SAY_AGGRO'),
(-1603087,'Tragic. To come so far, only to fail.',15553,1,0,0,'hodir SAY_SLAY_1'),
(-1603088,'Welcome to the endless winter.',15554,1,0,0,'hodir SAY_SLAY_2'),
(-1603089,'Winds of the north consume you!',15555,1,0,0,'hodir SAY_FLASH_FREEZE'),
(-1603090,'<Furious Roar>',15556,2,0,0,'hodir SAY_FROZEN_BLOWS'),
(-1603091,'I... I am released from his grasp... at last.',15557,1,0,0,'hodir SAY_DEATH'),
(-1603092,'Enough! This ends now!',15558,1,0,0,'hodir SAY_BERSERK'),
(-1603093,'The veil of winter will protect you, champions!',15559,1,0,0,'hodir SAY_HELP_YOGG'),
(-1603094,'Hodir begins to cast Flash Freeze!',0,3,0,0,'hodir EMOTE_FLASH_FREEZE'),
(-1603095,'Hodir gains Frozen Blows!',0,3,0,0,'hodir EMOTE_FROZEN_BLOWS'),

(-1603096,'Your destruction will herald a new age of suffering!',15542,1,0,0,'vezax SAY_AGGRO'),
(-1603097,'You thought to stand before the legions of death... and survive?',15543,1,0,0,'vezax SAY_SLAY_1'),
(-1603098,'Defiance... a flaw of mortality.',15544,1,0,0,'vezax SAY_SLAY_2'),
(-1603099,'The black blood of Yogg-Saron courses through me! I. AM. UNSTOPPABLE!',15545,1,0,0,'vezaz SAY_SURGE'),
(-1603100,'Oh, what horrors await....',15546,1,0,0,'vezax SAY_DEATH'),
(-1603101,'Your defeat was inevitable!',15547,1,0,0,'vezax SAY_ENRAGE'),
(-1603102,'Behold, now! Terror, absolute!',15548,1,0,0,'vezax SAY_HARD_MODE'),
(-1603103,'A cloud of saronite vapors coalesces nearby!',0,3,0,0,'vezax EMOTE_VAPOR'),
(-1603104,'General Vezax roars and surges with dark might!',0,3,0,0,'vezax EMOTE_SURGE'),
(-1603105,'The saronite vapors mass and swirl violently, merging into a monstrous form!',0,3,0,0,'vezax EMOTE_ANIMUS'),

(-1603106,'Trans-location complete. Commencing planetary analysis of Azeroth.',15405,1,0,0,'algalon SAY_INTRO_1'),
(-1603107,'Stand back, mortals. I am not here to fight you.',15406,1,0,0,'algalon SAY_INTRO_2'),
(-1603108,'It is in the universe\'s best interest to re-originate this planet should my analysis find systemic corruption. Do not interfere.',15407,1,0,0,'algalon SAY_INTRO_3'),

(-1603109,'See your world through my eyes. A universe so vast as to be immeasurable. Incomprehensible even to your greatest minds.',15390,1,0,0,'algalon SAY_ENGAGE'),
(-1603110,'Your actions are illogical. All possible results for this encounter have been calculated. The pantheon will receive the observer\'s message regardless outcome.',15386,1,0,0,'algalon SAY_AGGRO'),
(-1603111,'Loss of life, unavoidable.',15387,1,0,0,'algalon SAY_SLAY_1'),
(-1603112,'I do what I must.',15388,1,0,0,'algalon SAY_SLAY_2'),
(-1603113,'The stars come to my aid.',15392,1,0,0,'algalon SAY_SUMMON_STAR'),
(-1603114,'Witness the fury of cosmos!',15396,1,0,0,'algalon SAY_BIG_BANG_1'),
(-1603115,'Behold the tools of creation!',15397,1,0,0,'algalon SAY_BIG_BANG_2'),
(-1603116,'Beware!',15391,1,0,0,'algalon SAY_PHASE_2'),
(-1603117,'You are... out of time.',15394,1,0,0,'algalon SAY_BERSERK'),

(-1603118,'Analysis complete. There is partial corruption in the plane\'s life-support systems as well as complete corruption in most of the planet\'s defense mechanisms.',15398,1,0,0,'algalon SAY_DESPAWN_1'),
(-1603119,'Begin uplink: Reply Code: \'Omega\'. Planetary re-origination requested.',15399,1,0,0,'algalon SAY_DESPAWN_2'),
(-1603120,'Farewell, mortals. Your bravery is admirable, for such flawed creatures.',15400,1,0,0,'algalon SAY_DESPAWN_3'),

(-1603121,'I have seen worlds bathed in the Makers\' flames. Their denizens fading without so much as a whimper. Entire planetary systems born and raised in the time that it takes your mortal hearts to beat once. Yet all throughout, my own heart, devoid of emotion... of empathy. I... have... felt... NOTHING! A million, million lives wasted. Had they all held within them your tenacity? Had they all loved life as you do?',15393,1,0,0,'algalon SAY_OUTRO_1'),
(-1603122,'Perhaps it is your imperfection that which grants you free will. That allows you to persevere against cosmically calculated odds. You prevailed where the Titans\' own perfect creations have failed.',15401,1,0,0,'algalon SAY_OUTRO_2'),
(-1603123,'I\'ve rearranged the reply code. Your planet will be spared. I cannot be certain of my own calculations anymore.',15402,1,0,0,'algalon SAY_OUTRO_3'),
(-1603124,'I lack the strength to transmit this signal. You must hurry. Find a place of power, close to the skies.',15403,1,0,0,'algalon SAY_OUTRO_4'),
(-1603125,'Do not worry about my fate $n. If the signal is not transmitted in time re-origination will proceed regardless. Save. Your. World.',15404,1,0,0,'algalon SAY_OUTRO_5'),

(-1603126,'None shall pass!',15586,1,0,0,'kologarn SAY_AGGRO'),
(-1603127,'OBLIVION!',15591,1,0,0,'kologarn SAY_SHOCKWAVE'),
(-1603128,'I will squeeze the life from you!',15592,1,0,0,'kologarn SAY_GRAB'),
(-1603129,'Just a scratch!',15589,1,0,0,'kologarn SAY_ARM_LOST_LEFT'),
(-1603130,'Only a flesh wound!',15590,1,0,0,'kologarn SAY_ARM_LOST_RIGHT'),
(-1603131,'KOL-THARISH!',15587,1,0,0,'kologarn SAY_SLAY_1'),
(-1603132,'YOU FAIL!',15588,1,0,0,'kologarn SAY_SLAY_2'),
(-1603133,'I am invincible!',15594,1,0,0,'kologarn SAY_BERSERK'),
(-1603134,'Master, they come...',15593,1,0,0,'kologarn SAY_DEATH'),
(-1603135,'The Right Arm has regrown!',0,3,0,0,'kologarn EMOTE_ARM_RIGHT'),
(-1603136,'The Left Arm has regrown!',0,3,0,0,'kologarn EMOTE_ARM_LEFT'),
(-1603137,'Kologarn casts Stone Grip!',0,3,0,0,'kologarn EMOTE_STONE_GRIP'),

(-1603138,'Interlopers! You mortals who dare to interfere with my sport will pay... Wait--you...',15733,1,0,0,'thorim SAY_AGGRO_1'),
(-1603139,'I remember you... In the mountains... But you... what is this? Where am--',15734,1,0,0,'thorim SAY_AGGRO_2'),

(-1603140,'Behold the power of the storms and despair!',15735,1,0,0,'thorim SAY_SPECIAL_1'),
(-1603141,'Do not hold back! Destroy them!',15736,1,0,0,'thorim SAY_SPECIAL_2'),
(-1603142,'Have you begun to regret your intrusion?',15737,1,0,0,'thorim SAY_SPECIAL_3'),

(-1603143,'Impertinent whelps! You dare challenge me atop my pedestal! I will crush you myself!',15738,1,0,0,'thorim SAY_JUMP'),
(-1603144,'Can\'t you at least put up a fight!?',15739,1,0,0,'thorim SAY_SLAY_1'),
(-1603145,'Pathetic!',15740,1,0,0,'thorim SAY_SLAY_2'),
(-1603146,'My patience has reached its limit!',15741,1,0,0,'thorim SAY_BERSERK'),

(-1603147,'Failures! Weaklings!',15742,1,0,0,'thorim SAY_ARENA_WIPE'),
(-1603148,'Stay your arms! I yield!',15743,1,0,0,'thorim SAY_DEFEATED'),

(-1603149,'I feel as though I am awakening from a nightmare, but the shadows in this place yet linger.',15744,1,0,0,'thorim SAY_OUTRO_1'),
(-1603150,'Sif... was Sif here? Impossible--she died by my brother\'s hand. A dark nightmare indeed....',15745,1,0,0,'thorim SAY_OUTRO_2'),
(-1603151,'I need time to reflect.... I will aid your cause if you should require it. I owe you at least that much. Farewell.',15746,1,0,0,'thorim SAY_OUTRO_3'),

(-1603152,'You! Fiend! You are not my beloved! Be gone!',15747,1,0,0,'thorim SAY_OUTRO_HARD_1'),
(-1603153,'Behold the hand behind all the evil that has befallen Ulduar! Left my kingdom in ruins, corrupted my brother and slain my wife!',15748,1,0,0,'thorim SAY_OUTRO_HARD_2'),
(-1603154,'And now it falls to you, champions, to avenge us all! The task before you is great, but I will lend you my aid as I am able. You must prevail!',15749,1,0,0,'thorim SAY_OUTRO_HARD_3'),

(-1603155,'Golganneth, lend me your strengh! Grant my mortal allies the power of thunder!',15750,1,0,0,'thorim SAY_HELP_YOGG'),

(-1603156,'Thorim, my lord, why else would these invaders have come into your sanctum but to slay you? They must be stopped!',15668,1,0,0,'thorim SAY_SIF_BEGIN'),
(-1603157,'Impossible! Lord Thorim, I will bring your foes a frigid death!',15670,1,0,0,'thorim SAY_SIF_EVENT'),
(-1603158,'These pathetic mortals are harmless, beneath my station. Dispose of them!',15669,1,0,0,'thorim SAY_SIF_DESPAWN'),

(-1603159,'Hostile entities detected. Threat assessment protocol active. Primary target engaged. Time minus thirty seconds to re-evaluation.',15506,1,0,0,'leviathan SAY_AGGRO'),
(-1603160,'Threat assessment routine modified. Current target threat level: zero. Acquiring new target.',15521,1,0,0,'leviathan SAY_SLAY'),
(-1603161,'Total systems failure. Defense protocols breached. Leviathan Unit shutting down.',15520,1,0,0,'leviathan SAY_DEATH'),
(-1603162,'Threat re-evaluated. Target assessment complete. Changing course.',15507,1,0,0,'leviathan SAY_CHANGE_1'),
(-1603163,'Pursuit objective modified. Changing course.',15508,1,0,0,'leviathan SAY_CHANGE_2'),
(-1603164,'Hostile entity stratagem predicted. Rerouting battle function. Changing course.',15509,1,0,0,'leviathan SAY_CHANGE_3'),
(-1603165,'Unauthorized entity attempting circuit overload. Activating anti-personnel countermeasures.',15516,1,0,0,'leviathan SAY_PLAYER_RIDE'),
(-1603166,'System malfunction. Diverting power to support systems.',15517,1,0,0,'leviathan SAY_OVERLOAD_1'),
(-1603167,'Combat matrix overload. Powering do-o-o-own...',15518,1,0,0,'leviathan SAY_OVERLOAD_2'),
(-1603168,'System restart required. Deactivating weapon systems.',15519,1,0,0,'leviathan SAY_OVERLOAD_3'),
(-1603169,'Orbital countermeasures enabled.',15510,1,0,0,'leviathan SAY_HARD_MODE'),
(-1603170,'\'Hodir\'s Fury\' online. Acquiring target.',15512,1,0,0,'leviathan SAY_TOWER_FROST'),
(-1603171,'\'Mimiron\'s Inferno\' online. Acquiring target.',15513,1,0,0,'leviathan SAY_TOWER_FIRE'),
(-1603172,'\'Thorim\'s Hammer\' online. Acquiring target.',15515,1,0,0,'leviathan SAY_TOWER_ENERGY'),
(-1603173,'\'Freya\'s Ward\' online. Acquiring target.',15514,1,0,0,'leviathan SAY_TOWER_NATURE'),
(-1603174,'Alert! Static defense system failure. Orbital countermeasures disabled.',15511,1,0,0,'leviathan SAY_TOWER_DOWN'),
(-1603175,'%s pursues $N',0,3,0,0,'leviathan EMOTE_PURSUE'),

(-1603176,'Oh, my! I wasn\'t expecting company! The workshop is such a mess! How embarrassing!',15611,1,0,0,'mimiron SAY_AGGRO'),
(-1603177,'Now why would you go and do something like that? Didn\'t you see the sign that said \'DO NOT PUSH THIS BUTTON!\'? How will we finish testing with the self-destruct mechanism active?',15629,1,0,0,'mimiron SAY_HARD_MODE'),
(-1603178,'Oh, my! It would seem that we are out of time, my friends!',15628,1,0,0,'mimiron SAY_BERSERK'),

(-1603179,'We haven\'t much time, friends! You\'re going to help me test out my latest and greatest creation. Now, before you change your minds, remember, that you kind of owe it to me after the mess you made with the XT-002.',15612,1,0,0,'mimiron SAY_TANK_ACTIVE'),
(-1603180,'MEDIC!',15613,1,0,0,'mimiron SAY_TANK_SLAY_1'),
(-1603181,'I can fix that... or, maybe not! Sheesh, what a mess...',15614,1,0,0,'mimiron SAY_TANK_SLAY_2'),
(-1603182,'WONDERFUL! Positively marvelous results! Hull integrity at 98.9 percent! Barely a dent! Moving right along.',15615,1,0,0,'mimiron SAY_TANK_DEATH'),

(-1603183,'Behold the VX-001 Anti-personnel Assault Cannon! You might want to take cover.',15616,1,0,0,'mimiron SAY_TORSO_ACTIVE'),
(-1603184,'Fascinating. I think they call that a \'clean kill\'.',15617,1,0,0,'mimiron SAY_TORSO_SLAY_1'),
(-1603185,'Note to self: Cannon highly effective against flesh.',15618,1,0,0,'mimiron SAY_TORSO_SLAY_2'),
(-1603186,'Thank you, friends! Your efforts have yielded some fantastic data! Now, where did I put-- oh, there it is!',15619,1,0,0,'mimiron SAY_TORSO_DEATH'),

(-1603187,'Isn\'t it beautiful? I call it the magnificent aerial command unit!',15620,1,0,0,'mimiron SAY_HEAD_ACTIVE'),
(-1603188,'Outplayed!',15621,1,0,0,'mimiron SAY_HEAD_SLAY_1'),
(-1603189,'You can do better than that!',15622,1,0,0,'mimiron SAY_HEAD_SLAY_2'),
(-1603190,'Preliminary testing phase complete. Now comes the true test!!',15623,1,0,0,'mimiron SAY_HEAD_DEATH'),

(-1603191,'Gaze upon its magnificence! Bask in its glorious, um, glory! I present you... V-07-TR-0N!',15624,1,0,0,'mimiron SAY_ROBOT_ACTIVE'),
(-1603192,'Prognosis: Negative!',15625,1,0,0,'mimiron SAY_ROBOT_SLAY_1'),
(-1603193,'You\'re not going to get up from that one, friend.',15626,1,0,0,'mimiron SAY_ROBOT_SLAY_2'),
(-1603194,'It would appear that I\'ve made a slight miscalculation. I allowed my mind to be corrupted by the fiend in the prison, overriding my primary directive. All systems seem to be functional now. Clear.',15627,1,0,0,'mimiron SAY_ROBOT_DEATH'),

(-1603195,'Combat matrix enhanced. Behold wonderous rapidity!',15630,1,0,0,'mimiron SAY_HELP_YOGG'),
(-1603196,'Leviathan Mk II begins to cast Plasma Blast!',0,3,0,0,'mimiron EMOTE_PLASMA_BLAST'),

(-1603197,'Aaaaaaaaaaaaaaaaa... Help me!!! Please got to help me!',15771,1,0,0,'yogg SAY_SARA_INTRO_1'),
(-1603198,'What do you want from me? Leave me alone!',15772,1,0,0,'yogg SAY_SARA_INTRO_2'),
(-1603199,'The time to strike at the head of the beast will soon be upon us! Focus your anger and hatred on his minions!',15775,1,0,0,'yogg SAY_SARA_AGGRO'),
(-1603201,'Yes! YES! Show them no mercy! Give no pause to your attacks!',15773,1,0,0,'yogg SAY_SARA_HELP_1'),
(-1603202,'Let hatred and rage guide your blows!',15774,1,0,0,'yogg SAY_SARA_HELP_2'),
(-1603203,'Could they have been saved?',15779,1,0,0,'yogg SAY_SARA_SLAY_1'),
(-1603204,'Powerless to act...',15778,1,0,0,'yogg SAY_SARA_SLAY_2'),

(-1603205,'Weak-minded fools!',15780,4,0,0,'yogg SAY_WIPE_PHASE_1'),

(-1603206,'I am the lucid dream. The monster in your nightmares. The fiend of a thousand faces. Cower before my true form. BOW DOWN BEFORE THE GOD OF DEATH!',15754,1,0,0,'yogg SAY_PHASE_2_INTRO'),
(-1603207,'Tremble, mortals, before the coming of the end!',15777,1,0,0,'yogg SAY_SARA_PHASE_2_INTRO_A'),
(-1603208,'Suffocate upon your own hate!',15776,1,0,0,'yogg SAY_SARA_PHASE_2_INTRO_B'),

(-1603209,'MADNESS WILL CONSUME YOU!',15756,1,0,0,'yogg SAY_MADNESS'),
(-1603210,'Look upon the true face of death and know that your end comes soon!',15755,1,0,0,'yogg SAY_PHASE_3'),
(-1603211,'Hoohehehahahaha... AHAHAHAHAHAHA!',15757,1,0,0,'yogg SAY_SLAY_1'),
(-1603212,'Eternal suffering awaits!',15758,1,0,0,'yogg SAY_SLAY_2'),
(-1603213,'Your fate is sealed. The end of days is finally upon you and ALL who inhabit this miserable little seedling. Uulwi ifis halahs gag erh\'ongg w\'ssh.',15761,1,0,0,'yogg SAY_DEATH'),
(-1603214,'Your will is no longer you own...',15759,4,0,0,'yogg SAY_TO_INSANE_1'),
(-1603215,'Destroy them minion, your master commands it!',15760,4,0,0,'yogg SAY_TO_INSANE_2'),

(-1603216,'Your resilience is admirable.',15598,0,0,0,'yogg SAY_LICH_KING_1'),
(-1603217,'Arrrrrrgh!',15470,1,0,0,'yogg SAY_CHAMPION_1'),
(-1603218,'I\'m not afraid of you!',15471,0,0,0,'yogg SAY_CHAMPION_2'),
(-1603219,'I will break you as I broke him.',15599,0,0,0,'yogg SAY_LICH_KING_2'),
(-1603220,'Yrr n\'lyeth... shuul anagg!',15766,0,0,0,'yogg SAY_YOGG_V3_1'),
(-1603221,'He will learn... no king rules forever; only death is eternal!',15767,0,0,0,'yogg SAY_YOGG_V3_2'),

(-1603222,'It is done... All have been given that which must be given. I now seal the Dragon Soul forever...',15631,0,0,0,'yogg SAY_NELTHARION_1'),
(-1603223,'That terrible glow... should that be?',15784,0,0,0,'yogg SAY_YSERA'),
(-1603224,'For it to be as it must, yes.',15632,0,0,0,'yogg SAY_NELTHARION_2'),
(-1603225,'It is a weapon like no other. It must be like no other.',15610,0,0,0,'yogg SAY_MALYGOS'),
(-1603226,'His brood learned their lesson before too long, you shall soon learn yours!',15765,0,0,0,'yogg SAY_YOGG_V2'),

(-1603227,'Bad news sire. The clans are united under Blackhand in this assault. They will stand together until Stormwind has fallen.',15538,0,0,0,'yogg SAY_GARONA_1'),
(-1603228,'Gul\'dan is bringing up his warlocks by nightfall. Until then, the Blackrock clan will be trying to take the Eastern Wall.',15539,0,0,0,'yogg SAY_GARONA_2'),
(-1603229,'A thousand deaths... ',15762,0,0,0,'yogg SAY_YOGG_V1_1'),
(-1603230,'or one murder.',15763,0,0,0,'yogg SAY_YOGG_V1_2'),
(-1603231,'We will hold until the reinforcements come. As long as men with stout hearts are manning the walls and throne Stormwind will hold.',15540,0,0,0,'yogg SAY_GARONA_3'),
(-1603232,'The orc leaders agree with your assessment.',15541,0,0,0,'yogg SAY_GARONA_4'),
(-1603233,'Your petty quarrels only make me stronger!',15764,0,0,0,'yogg SAY_YOGG_V1_3'),

(-1603234,'Portals open into Yogg-Saron\'s mind!',0,3,0,0,'yogg EMOTE_VISION_BLAST'),
(-1603235,'The illusion shatters and a path to the central chamber opens!',0,3,0,0,'yogg EMOTE_SHATTER_BLAST');

-- -1 604 000 GUNDRAK
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1604000,'Drakkari gonna kill anybody who trespass on these lands!',14443,1,0,0,'sladran SAY_AGGRO'),
(-1604001,'Minions of the scale, heed my call!',14444,1,0,0,'sladran SAY_SUMMON_SNAKE'),
(-1604002,'Our thousand fangs gonna rend your flesh! ',14445,1,0,0,'sladran SAY_SUMMON_CONSTRICTOR'),
(-1604003,'Ye not breathin\'! Good.',14446,1,0,0,'sladran SAY_SLAY_1'),
(-1604004,'You scared now?',14447,1,0,0,'sladran SAY_SLAY_2'),
(-1604005,'I\'ll eat you next, mon!',14448,1,0,0,'sladran SAY_SLAY_3'),
(-1604006,'I sssee now... Ssscourge wasss not... our greatessst enemy...',14449,1,0,0,'sladran SAY_DEATH'),
(-1604007,'%s begins to cast Poison Nova!',0,3,0,0,'sladran EMOTE_NOVA'),

(-1604008,'%s surges forward!',0,2,0,0,'colossus EMOTE_SURGE'),
(-1604009,'%s seep into the ground.',0,2,0,0,'colossus EMOTE_SEEP'),
(-1604010,'%s begins to glow faintly.',0,2,0,0,'colossus EMOTE_GLOW'),

(-1604011,'We fought back da Scourge. What chance joo be thinkin\' JOO got?',14721,1,0,0,'moorabi SAY_AGGRO'),
(-1604012,'Da ground gonna swallow you up! ',14723,1,0,0,'moorabi SAY_QUAKE'),
(-1604013,'Get ready for somethin\'... much... BIGGAH!',14722,1,0,0,'moorabi SAY_TRANSFORM'),
(-1604014,'I crush you, cockroaches!',14725,1,0,0,'moorabi SAY_SLAY_1'),
(-1604015,'Who gonna stop me; you?',14726,1,0,0,'moorabi SAY_SLAY_2'),
(-1604016,'Not so tough now.',14727,1,0,0,'moorabi SAY_SLAY_3'),
(-1604017,'If our gods can die... den so can we...',14728,1,0,0,'moorabi SAY_DEATH'),
(-1604018,'%s begins to transform!',0,3,0,0,'moorabi EMOTE_TRANSFORM'),

(-1604019,'I\'m gonna spill your guts, mon!',14430,1,0,0,'galdarah SAY_AGGRO'),
(-1604020,'Ain\'t gonna be nottin\' left after this!',14431,1,0,0,'galdarah SAY_TRANSFORM_1'),
(-1604021,'You wanna see power? I\'m gonna show you power!',14432,1,0,0,'galdarah SAY_TRANSFORM_2'),
(-1604022,'Gut them! Impale them!',14433,1,0,0,'galdarah SAY_SUMMON_1'),
(-1604023,'Kill them all!',14434,1,0,0,'galdarah SAY_SUMMON_2'),
(-1604024,'Say hello to my BIG friend!',14435,1,0,0,'galdarah SAY_SUMMON_3'),
(-1604025,'What a rush!',14436,1,0,0,'galdarah SAY_SLAY_1'),
(-1604026,'Who needs gods, when WE ARE GODS!',14437,1,0,0,'galdarah SAY_SLAY_2'),
(-1604027,'I told ya so!',14438,1,0,0,'galdarah SAY_SLAY_3'),
(-1604028,'Even the mighty... can fall.',14439,1,0,0,'galdarah SAY_DEATH'),

(-1604029,'%s transforms into a Mammoth!',14724,2,0,0,'moorabi EMOTE_TRANSFORMED'),
(-1604030,'%N is impaled!',0,3,0,0,'EMOTE_IMPALED');


-- -1 608 000 VIOLET HOLD
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1608000,'Prison guards, we are leaving! These adventurers are taking over! Go, go, go!',0,1,0,0,'sinclair SAY_BEGIN'),
(-1608001,'I\'m locking the door. Good luck, and thank you for doing this.',0,0,0,0,'sinclair SAY_LOCK_DOOR'),

(-1608002,'Adventurers, the door is beinning to weaken!',0,1,0,0,'sinclair SAY_SEAL_75'),
(-1608003,'Only half of the door seal\'s strength remains! You must fight on!',0,1,0,0,'sinclair SAY_SEAL_50'),
(-1608004,'The door seal is about to collapse! All is lost if the Blue Dragonflight breaks through the door!',0,1,0,0,'sinclair SAY_SEAL_5'),

(-1608005,'A Portal Guardian defends the new portal!',0,3,0,0,'EMOTE_GUARDIAN_PORTAL'),
(-1608006,'An elite Blue Dragonflight squad appears from the portal!',0,3,0,0,'EMOTE_DRAGONFLIGHT_PORTAL'),
(-1608007,'A Guardian Keeper emerges from the portal!',0,3,0,0,'EMOTE_KEEPER_PORTAL');

-- -1 609 000 EBON HOLD (DK START)
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1609000,'You have made a grave error, fiend!',0,0,0,0,'unworthy SAY_START_1'),
(-1609001,'I was a soldier of the Light once... Look at what I have become... ',0,0,0,0,'unworthy SAY_START_2'),
(-1609002,'You are hopelessly outmatched, $R.',0,0,0,0,'unworthy SAY_START_3'),
(-1609003,'They brand me unworthy? I will show them unmorthy!',0,0,0,0,'unworthy SAY_START_4'),
(-1609004,'You will allow me a weapon and armor, yes?',0,0,0,0,'unworthy SAY_START_5'),
(-1609005,'I will win my freedom and leave this cursed place!',0,0,0,0,'unworthy SAY_START_6'),
(-1609006,'I will dismantle this festering hellhole!',0,0,0,0,'unworthy SAY_START_7'),
(-1609007,'There can be only one survivor!',0,0,0,0,'unworthy SAY_START_8'),

(-1609008,'Let your fears consume you!',0,0,0,0,'unworthy SAY_AGGRO_1'),
(-1609009,'HAH! You can barely hold a blade! Yours will be a quick death.',0,0,0,0,'unworthy SAY_AGGRO_2'),
(-1609010,'And now you die',0,0,0,0,'unworthy SAY_AGGRO_3'),
(-1609011,'To battle!',0,0,0,0,'unworthy SAY_AGGRO_4'),
(-1609012,'There is no hope for our future...',0,0,0,0,'unworthy SAY_AGGRO_5'),
(-1609013,'Sate your hunger on cold steel, $R',0,0,0,0,'unworthy SAY_AGGRO_6'),
(-1609014,'It ends here!',0,0,0,0,'unworthy SAY_AGGRO_7'),
(-1609015,'Death is the only cure!',0,0,0,0,'unworthy SAY_AGGRO_8'),

(-1609016,'No potions!',0,0,0,0,'dk_initiate SAY_DUEL_A'),
(-1609017,'Remember this day, $n, for it is the day that you will be thoroughly owned.',0,0,0,0,'dk_initiate SAY_DUEL_B'),
(-1609018,'I\'m going to tear your heart out, cupcake!',0,0,0,0,'dk_initiate SAY_DUEL_C'),
(-1609019,'Don\'t make me laugh.',0,0,0,0,'dk_initiate SAY_DUEL_D'),
(-1609020,'Here come the tears...',0,0,0,0,'dk_initiate SAY_DUEL_E'),
(-1609021,'You have challenged death itself!',0,0,0,0,'dk_initiate SAY_DUEL_F'),
(-1609022,'The Lich King will see his true champion on this day!',0,0,0,0,'dk_initiate SAY_DUEL_G'),
(-1609023,'You\'re going down!',0,0,0,0,'dk_initiate SAY_DUEL_H'),
(-1609024,'You don\'t stand a chance, $n',0,0,0,0,'dk_initiate SAY_DUEL_I'),

(-1609025,'Come to finish the job, have you?',0,0,0,1,'special_surprise SAY_EXEC_START_1'),
(-1609026,'Come to finish the job, have ye?',0,0,0,1,'special_surprise SAY_EXEC_START_2'),
(-1609027,'Come ta finish da job, mon?',0,0,0,1,'special_surprise SAY_EXEC_START_3'),

(-1609028,'You\'ll look me in the eyes when...',0,0,0,25,'special_surprise SAY_EXEC_PROG_1'),
(-1609029,'Well this son o\' Ironforge would like...',0,0,0,25,'special_surprise SAY_EXEC_PROG_2'),
(-1609030,'Ironic, isn\'t it? To be killed...',0,0,0,25,'special_surprise SAY_EXEC_PROG_3'),
(-1609031,'If you\'d allow me just one...',0,0,0,25,'special_surprise SAY_EXEC_PROG_4'),
(-1609032,'I\'d like to stand for...',0,0,0,25,'special_surprise SAY_EXEC_PROG_5'),
(-1609033,'I want to die like an orc...',0,0,0,25,'special_surprise SAY_EXEC_PROG_6'),
(-1609034,'Dis troll gonna stand for da...',0,0,0,25,'special_surprise SAY_EXEC_PROG_7'),

(-1609035,'$N?',0,0,0,1,'special_surprise SAY_EXEC_NAME_1'),
(-1609036,'$N? Mon?',0,0,0,1,'special_surprise SAY_EXEC_NAME_2'),

(-1609037,'$N, I\'d recognize that face anywhere... What... What have they done to you, $N?',0,0,0,1,'special_surprise SAY_EXEC_RECOG_1'),
(-1609038,'$N, I\'d recognize those face tentacles anywhere... What... What have they done to you, $N?',0,0,0,1,'special_surprise SAY_EXEC_RECOG_2'),
(-1609039,'$N, I\'d recognize that face anywhere... What... What have they done to ye, $Glad:lass;?',0,0,0,1,'special_surprise SAY_EXEC_RECOG_3'),
(-1609040,'$N, I\'d recognize that decay anywhere... What... What have they done to you, $N?',0,0,0,1,'special_surprise SAY_EXEC_RECOG_4'),
(-1609041,'$N, I\'d recognize those horns anywhere... What have they done to you, $N?',0,0,0,1,'special_surprise SAY_EXEC_RECOG_5'),
(-1609042,'$N, I\'d recognize dem tusks anywhere... What... What have dey done ta you, mon?',0,0,0,1,'special_surprise SAY_EXEC_RECOG_6'),

(-1609043,'You don\'t remember me, do you? Blasted Scourge... They\'ve tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a draenei!',0,0,0,1,'special_surprise SAY_EXEC_NOREM_1'),
(-1609044,'Ye don\'t remember me, do ye? Blasted Scourge... They\'ve tried to drain ye o\' everything that made ye a righteous force o\' reckoning. Every last ounce o\' good... Everything that made you a $Gson:daughter; of Ironforge!',0,0,0,1,'special_surprise SAY_EXEC_NOREM_2'),
(-1609045,'You don\'t remember me, do you? We were humans once - long, long ago - until Lordaeron fell to the Scourge. Your transformation to a Scourge zombie came shortly after my own. Not long after that, our minds were freed by the Dark Lady.',0,0,0,1,'special_surprise SAY_EXEC_NOREM_3'),
(-1609046,'You don\'t remember me, do you? Blasted Scourge... They\'ve tried to drain you of everything that made you a pint-sized force of reckoning. Every last ounce of good... Everything that made you a gnome!',0,0,0,1,'special_surprise SAY_EXEC_NOREM_4'),
(-1609047,'You don\'t remember me, do you? Blasted Scourge...They\'ve tried to drain of everything that made you a righteous force of reckoning. Every last ounce of good...Everything that made you a human!',0,0,0,1,'special_surprise SAY_EXEC_NOREM_5'),
(-1609048,'You don\'t remember me? When you were a child your mother would leave you in my care while she served at the Temple of the Moon. I held you in my arms and fed you with honey and sheep\'s milk to calm you until she would return. You were my little angel. Blasted Scourge... What have they done to you, $N?',0,0,0,1,'special_surprise SAY_EXEC_NOREM_6'),
(-1609049,'You don\'t recognize me, do you? Blasted Scourge... They\'ve tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you an orc!',0,0,0,1,'special_surprise SAY_EXEC_NOREM_7'),
(-1609050,'You don\'t remember me, do you? Blasted Scourge... They\'ve tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a tauren!',0,0,0,1,'special_surprise SAY_EXEC_NOREM_8'),
(-1609051,'You don\'t remember me, mon? Damn da Scourge! Dey gone ta drain you of everytin dat made ya a mojo masta. Every last ounce of good... Everytin\' dat made ya a troll hero, mon!',0,0,0,1,'special_surprise SAY_EXEC_NOREM_9'),

(-1609052,'A pact was made, $Gbrother:sister;! We vowed vengeance against the Lich King! For what he had done to us! We battled the Scourge as Forsaken, pushing them back into the plaguelands and freeing Tirisfal! You and I were champions of the Forsaken!',0,0,0,1,'special_surprise SAY_EXEC_THINK_1'),
(-1609053,'You must remember the splendor of life, $Gbrother:sister;. You were a champion of the Kaldorei once! This isn\'t you!',0,0,0,1,'special_surprise SAY_EXEC_THINK_2'),
(-1609054,'Think, $N. Think back. Try and remember the majestic halls of Silvermoon City, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the sin\'dorei once! This isn\'t you.',0,0,0,6,'special_surprise SAY_EXEC_THINK_3'),
(-1609055,'Think, $N. Think back. Try and remember the proud mountains of Argus, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the draenei once! This isn\'t you.',0,0,0,6,'special_surprise SAY_EXEC_THINK_4'),
(-1609056,'Think, $N. Think back. Try and remember the snow capped mountains o\' Dun Morogh! Ye were born there, $Glad:lass;. Remember the splendor o\' life, $N! Ye were a champion o\' the dwarves once! This isn\'t ye!',0,0,0,6,'special_surprise SAY_EXEC_THINK_5'),
(-1609057,'Think, $N. Think back. Try and remember Gnomeregan before those damned troggs! Remember the feel of an [arclight spanner] $Gbrother:sister;. You were a champion of gnome-kind once! This isn\'t you.',0,0,0,6,'special_surprise SAY_EXEC_THINK_6'),
(-1609058,'Think, $N. Think back. Try and remember the hills and valleys of Elwynn, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the Alliance once! This isn\'t you.',0,0,0,6,'special_surprise SAY_EXEC_THINK_7'),
(-1609059,'Think, $N. Think back. Try and remember Durotar, $Gbrother:sister;! Remember the sacrifices our heroes made so that we could be free of the blood curse. Harken back to the Valley of Trials, where we were reborn into a world without demonic influence. We found the splendor of life, $N. Together! This isn\'t you. You were a champion of the Horde once!',0,0,0,6,'special_surprise SAY_EXEC_THINK_8'),
(-1609060,'Think, $N. Think back. Try and remember the rolling plains of Mulgore, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the tauren once! This isn\'t you.',0,0,0,6,'special_surprise SAY_EXEC_THINK_9'),
(-1609061,'TINK $N. Tink back, mon! We be Darkspear, mon! Bruddas and sistas! Remember when we fought the Zalazane and done took he head and freed da Echo Isles? MON! TINK! You was a champion of da Darkspear trolls!',0,0,0,6,'special_surprise SAY_EXEC_THINK_10'),

(-1609062,'Listen to me, $N. You must fight against the Lich King\'s control. He is a monster that wants to see this world - our world - in ruin. Don\'t let him use you to accomplish his goals. You were once a hero and you can be again. Fight, damn you! Fight his control!',0,0,0,5,'special_surprise SAY_EXEC_LISTEN_1'),
(-1609063,'Listen to me, $N Ye must fight against the Lich King\'s control. He\'s a monster that wants to see this world - our world - in ruin. Don\'t let him use ye to accomplish his goals. Ye were once a hero and ye can be again. Fight, damn ye! Fight his control!',0,0,0,5,'special_surprise SAY_EXEC_LISTEN_2'),
(-1609064,'Listen to me, $N. You must fight against the Lich King\'s control. He is a monster that wants to see this world - our world - in ruin. Don\'t let him use you to accomplish his goals AGAIN. You were once a hero and you can be again. Fight, damn you! Fight his control!',0,0,0,5,'special_surprise SAY_EXEC_LISTEN_3'),
(-1609065,'Listen ta me, $Gbrudda:sista;. You must fight against da Lich King\'s control. He be a monstar dat want ta see dis world - our world - be ruined. Don\'t let he use you ta accomplish he goals. You be a hero once and you be a hero again! Fight it, mon! Fight he control!',0,0,0,5,'special_surprise SAY_EXEC_LISTEN_4'),

(-1609066,'What\'s going on in there? What\'s taking so long, $N?',0,1,0,0,'special_surprise SAY_PLAGUEFIST'),

(-1609067,'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both. $N... Remember Silvermoon. This world is worth saving!',0,0,0,18,'special_surprise SAY_EXEC_TIME_1'),
(-1609068,'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both. $N... Remember Argus. Don\'t let that happen to this world.',0,0,0,18,'special_surprise SAY_EXEC_TIME_2'),
(-1609069,'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both $N... For KHAAAAAAAAZZZ MODAAAAAANNNNNN!!!',0,0,0,18,'special_surprise SAY_EXEC_TIME_3'),
(-1609070,'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both. $N... Remember Tirisfal! This world is worth saving!',0,0,0,18,'special_surprise SAY_EXEC_TIME_4'),
(-1609071,'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both. $N... Remember Gnomeregan! This world is worth saving.',0,0,0,18,'special_surprise SAY_EXEC_TIME_5'),
(-1609072,'There... There\'s no more time for me. I\'m done for. FInish me off, $N. Do it or they\'ll kill us both. $N...Remember Elwynn. This world is worth saving.',0,0,0,18,'special_surprise SAY_EXEC_TIME_6'),
(-1609073,'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both. $N... Remember Teldrassil, our beloved home. This world is worth saving.',0,0,0,18,'special_surprise SAY_EXEC_TIME_7'),
(-1609074,'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both. $N... For the Horde! This world is worth saving.',0,0,0,18,'special_surprise SAY_EXEC_TIME_8'),
(-1609075,'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both. $N... Remember Mulgore. This world is worth saving.',0,0,0,18,'special_surprise SAY_EXEC_TIME_9'),
(-1609076,'Der... Der\'s no more time for me. I be done for. Finish me off $N. Do it or they\'ll kill us both. $N... Remember Sen\'jin Village, mon! Dis world be worth saving!',0,0,0,18,'special_surprise SAY_EXEC_TIME_10'),

(-1609077,'Do it, $N! Put me out of my misery!',0,0,0,1,'special_surprise SAY_EXEC_WAITING'),
(-1609078,'%s dies from his wounds.',0,2,0,0,'special_surprise EMOTE_DIES'),

(-1609079,'I\'ll need to get my runeblade and armor... Just need a little more time.',0,0,0,399,'koltira SAY_BREAKOUT1'),
(-1609080,'I\'m still weak, but I think I can get an anti-magic barrier up. Stay inside it or you\'ll be destroyed by their spells.',0,0,0,0,'koltira SAY_BREAKOUT2'),
(-1609081,'Maintaining this barrier will require all of my concentration. Kill them all!',0,0,0,16,'koltira SAY_BREAKOUT3'),
(-1609082,'There are more coming. Defend yourself! Don\'t fall out of the anti-magic field! They\'ll tear you apart without its protection!',0,0,0,0,'koltira SAY_BREAKOUT4'),
(-1609083,'I can\'t keep barrier up much longer... Where is that coward?',0,0,0,0,'koltira SAY_BREAKOUT5'),
(-1609084,'The High Inquisitor comes! Be ready, death knight! Do not let him draw you out of the protective bounds of my anti-magic field! Kill him and take his head!',0,0,0,0,'koltira SAY_BREAKOUT6'),
(-1609085,'Stay in the anti-magic field! Make them come to you!',0,0,0,0,'koltira SAY_BREAKOUT7'),
(-1609086,'The death of the High Inquisitor of New Avalon will not go unnoticed. You need to get out of here at once! Go, before more of them show up. I\'ll be fine on my own.',0,0,0,0,'koltira SAY_BREAKOUT8'),
(-1609087,'I\'ll draw their fire, you make your escape behind me.',0,0,0,0,'koltira SAY_BREAKOUT9'),
(-1609088,'Your High Inquisitor is nothing more than a pile of meat, Crusaders! There are none beyond the grasp of the Scourge!',0,1,0,0,'koltira SAY_BREAKOUT10');

-- -1 615 000 OBSIDIAN SANCTUM
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1615000,'I fear nothing! Least of all you!',14111,1,0,0,'shadron SAY_SHADRON_AGGRO'),
(-1615001,'You are insignificant!',14112,1,0,0,'shadron SAY_SHADRON_SLAY_1'),
(-1615002,'Such mediocre resistance!',14113,1,0,0,'shadron SAY_SHADRON_SLAY_2'),
(-1615003,'We...are superior! How could this...be...',14118,1,0,0,'shadron SAY_SHADRON_DEATH'),
(-1615004,'You are easily bested! ',14114,1,0,0,'shadron SAY_SHADRON_BREATH'),
(-1615005,'I will take pity on you Sartharion, just this once.',14117,1,0,0,'shadron SAY_SHADRON_RESPOND'),
(-1615006,'Father tought me well!',14115,1,0,0,'shadron SAY_SHADRON_SPECIAL_1'),
(-1615007,'On your knees!',14116,1,0,0,'shadron SAY_SHADRON_SPECIAL_2'),
(-1615008,'A Shadron Disciple appears in the Twilight!',0,5,0,0,'shadron WHISPER_SHADRON_DICIPLE'),

(-1615009,'You have no place here. Your place is among the departed.',14122,1,0,0,'tenebron SAY_TENEBRON_AGGRO'),
(-1615010,'No contest.',14123,1,0,0,'tenebron SAY_TENEBRON_SLAY_1'),
(-1615011,'Typical... Just as I was having fun.',14124,1,0,0,'tenebron SAY_TENEBRON_SLAY_2'),
(-1615012,'I should not... have held back...', 14129,1,0,0,'tenebron SAY_TENEBRON_DEATH'),
(-1615013,'To darkness I condemn you...',14125,1,0,0,'tenebron SAY_TENEBRON_BREATH'),
(-1615014,'It is amusing to watch you struggle. Very well, witness how it is done.',14128,1,0,0,'tenebron SAY_TENEBRON_RESPOND'),
(-1615015,'Arrogant little creatures! To challenge powers you do not yet understand...',14126,1,0,0,'tenebron SAY_TENEBRON_SPECIAL_1'),
(-1615016,'I am no mere dragon! You will find I am much, much, more...',14127,1,0,0,'tenebron SAY_TENEBRON_SPECIAL_2'),
(-1615017,'%s begins to hatch eggs in the twilight!',0,5,0,0,'tenebron WHISPER_HATCH_EGGS'),

(-1615018,'It is my charge to watch over these eggs. I will see you burn before any harm comes to them!',14093,1,0,0,'sartharion SAY_SARTHARION_AGGRO'),
(-1615019,'This pathetic siege ends NOW!',14103,1,0,0,'sartharion SAY_SARTHARION_BERSERK'),
(-1615020,'Burn, you miserable wretches!',14098, 1,0,0,'sartharion SAY_SARTHARION_BREATH'),
(-1615021,'Shadron! Come to me, all is at risk!',14105,1,0,0,'sartharion SARTHARION_CALL_SHADRON'),
(-1615022,'Tenebron! The eggs are yours to protect as well!',14106,1,0,0,'sartharion SAY_SARTHARION_CALL_TENEBRON'),
(-1615023,'Vesperon! The clutch is in danger! Assist me!',14104,1,0,0,'sartharion SAY_SARTHARION_CALL_VESPERON'),
(-1615024,'Such is the price... of failure...',14107,1,0,0,'sartharion SAY_SARTHARION_DEATH'),
(-1615025,'Such flammable little insects....',14099,1,0,0,'sartharion SAY_SARTHARION_SPECIAL_1'),
(-1615026,'Your charred bones will litter the floor!',14100,1,0,0,'sartharion SAY_SARTHARION_SPECIAL_2'),
(-1615027,'How much heat can you take?',14101,1,0,0,'sartharion SAY_SARTHARION_SPECIAL_3'),
(-1615028,'All will be reduced to ash!',14102,1,0,0,'sartharion SAY_SARTHARION_SPECIAL_4'),
(-1615029,'You will make a fine meal for the hatchlings.',14094,1,0,0,'sartharion SAY_SARTHARION_SLAY_1'),
(-1615030,'You are the grave disadvantage.',14096,1,0,0,'sartharion SAY_SARTHARION_SLAY_2'),
(-1615031,'This is why we call you lesser beeings.',14097,1,0,0,'sartharion SAY_SARTHARION_SLAY_3'),
(-1615032,'The lava surrounding %s churns!',0,5,0,0,'sartharion WHISPER_LAVA_CHURN'),

(-1615033,'You pose no threat, lesser beings...give me your worst!',14133,1,0,0,'vesperon SAY_VESPERON_AGGRO'),
(-1615034,'The least you could do is put up a fight...',14134,1,0,0,'vesperon SAY_VESPERON_SLAY_1'),
(-1615035,'Was that the best you can do?',14135,1,0,0,'vesperon SAY_VESPERON_SLAY_2'),
(-1615036,'I still have some...fight..in...me...', 14140,1,0,0,'vesperon SAY_VESPERON_DEATH'),
(-1615037,'I will pick my teeth with your bones!',14136,1,0,0,'vesperon SAY_VESPERON_BREATH'),
(-1615038,'Father was right about you, Sartharion...You are a weakling!',14139,1,0,0,'vesperon SAY_VESPERON_RESPOND'),
(-1615039,'Aren\'t you tricky...I have a few tricks of my own...',14137,1,0,0,'vesperon SAY_VESPERON_SPECIAL_1'),
(-1615040,'Unlike, I have many talents.',14138,1,0,0,'vesperon SAY_VESPERON_SPECIAL_2'),
(-1615041,'A Vesperon Disciple appears in the Twilight!',0,5,0,0,'shadron WHISPER_VESPERON_DICIPLE'),

(-1615042,'%s begins to open a Twilight Portal!',0,5,0,0,'sartharion drake WHISPER_OPEN_PORTAL');

-- -1 616 000 EYE OF ETERNITY

-- -1 619 000 AHN'KAHET
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1619000,'The secrets of the deep shall remain hidden.',14033,1,0,0,'nadox SAY_AGGRO'),
(-1619001,'The young must not grow hungry...',14034,1,0,0,'nadox SAY_SUMMON_EGG_1'),
(-1619002,'Shhhad ak kereeesshh chak-k-k!',14035,1,0,0,'nadox SAY_SUMMON_EGG_2'),
(-1619003,'Sleep now, in the cold dark.',14036,1,0,0,'nadox SAY_SLAY_1'),
(-1619004,'For the Lich King!',14037,1,0,0,'nadox SAY_SLAY_2'),
(-1619005,'Perhaps we will be allies soon.',14038,1,0,0,'nadox SAY_SLAY_3'),
(-1619006,'Master, is my service complete?',14039,1,0,0,'nadox SAY_DEATH'),
(-1619007,'An Ahn\'kahar Guardian hatches!',0,3,0,0,'nadox EMOTE_HATCH'),

(-1619008,'I will feast on your remains.',14360,1,0,0,'taldaram SAY_AGGRO'),
(-1619009,'Your heartbeat is music to my ears.',14361,1,0,0,'taldaram SAY_VANISH_1'),
(-1619010,'I am nowhere. I am everywhere. I am the watcher, unseen.',14362,1,0,0,'taldaram SAY_VANISH_2'),
(-1619011,'So appetizing.',14363,1,0,0,'taldaram SAY_FEED_1'),
(-1619012,'Fresh, warm blood. It has been too long.',14364,1,0,0,'taldaram SAY_FEED_2'),
(-1619013,'Bin-dor\'el',14365,1,0,0,'taldaram SAY_SLAY_1'),
(-1619014,'I will drink no blood before it\'s time.',14366,1,0,0,'taldaram SAY_SLAY_2'),
(-1619015,'One final embrace.',14367,1,0,0,'taldaram SAY_SLAY_3'),
(-1619016,'Still I hunger, still I thirst.',14368,1,0,0,'taldaram SAY_DEATH'),

(-1619017,'These are sacred halls! Your intrusion will be met with death.',14343,1,0,0,'jedoga SAY_AGGRO'),
(-1619018,'Who among you is devoted?',14344,1,0,0,'jedoga SAY_CALL_SACRIFICE_1'),
(-1619019,'You there! Step forward!',14345,1,0,0,'jedoga SAY_CALL_SACRIFICE_2'),
(-1619020,'Yogg-Saron, grant me your power!',14346,1,0,0,'jedoga SAY_SACRIFICE_1'),
(-1619021,'Master, a gift for you!',14347,1,0,0,'jedoga SAY_SACRIFICE_2'),
(-1619022,'Glory to Yogg-Saron!',14348,1,0,0,'jedoga SAY_SLAY_1'),
(-1619023,'You are unworthy!',14349,1,0,0,'jedoga SAY_SLAY_2'),
(-1619024,'Get up! You haven\'t suffered enough.',14350,1,0,0,'jedoga SAY_SLAY_3'),
(-1619025,'Do not expect your sacrilege... to go unpunished.',14351,1,0,0,'jedoga SAY_DEATH'),
(-1619026,'The elements themselves will rise up against the civilized world! Only the faithful will be spared!',14352,1,0,0,'jedoga SAY_PREACHING_1'),
(-1619027,'Immortality can be yours. But only if you pledge yourself fully to Yogg-Saron!',14353,1,0,0,'jedoga SAY_PREACHING_2'),
(-1619028,'Here on the very borders of his domain. You will experience powers you would never have imagined! ',14354,1,0,0,'jedoga SAY_PREACHING_3'),
(-1619029,'You have traveled long and risked much to be here. Your devotion shall be rewarded.',14355,1,0,0,'jedoga SAY_PREACHING_4'),
(-1619030,'The faithful shall be exalted! But there is more work to be done. We will press on until all of Azeroth lies beneath his shadow!',14356,1,0,0,'jedoga SAY_PREACHING_5'),
(-1619031,'I have been chosen!',0,1,0,0,'jedoga SAY_VOLUNTEER_1'),
(-1619032,'I give myself to the master!',0,1,0,0,'jedoga SAY_VOLUNTEER_2'),

(-1619033,'Shgla\'yos plahf mh\'naus.',14043,1,0,0,'volazj SAY_AGGRO'),
(-1619034,' ',14044,1,0,0,'volazj SAY_INSANITY'),
(-1619035,' ',14045,1,0,0,'volazj SAY_SLAY_1'),
(-1619036,' ',14046,1,0,0,'volazj SAY_SLAY_2'),
(-1619037,' ',14047,1,0,0,'volazj SAY_SLAY_3'),
(-1619038,' ',14048,1,0,0,'volazj SAY_DEATH_1'),
(-1619039,' ',14049,1,0,0,'volazj SAY_DEATH_2');

-- -1 631 000 ICC: ICECROWN CITADEL

-- -1 632 000 ICC: FORGE OF SOULS
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1632000,'More souls to power the engine!',0,1,0,0,'boss_bronjahm SAY_AGGRO_1'),
(-1632001,'Finally...a captive audience!',16595,1,0,0,'boss_bronjahm SAY_AGGRO_2'),
(-1632002,'Fodder for the engine!',16596,1,0,0,'boss_bronjahm SAY_SLAY_1'),
(-1632003,'Another soul to strengthen the host!',16597,1,0,0,'boss_bronjahm SAY_SLAY_2'),
(-1632004,'My soul for you, master.',16598,1,0,0,'boss_bronjahm SAY_DEATH'),
(-1632005,'The vortex of the harvested calls to you!',16599,1,0,0,'boss_bronjahm SAY_SOULSTORM'),
(-1632006,'I will sever the soul from your body!',16600,1,0,0,'boss_bronjahm SAY_CORRUPT_SOUL'),

(-1632007,'You dare look upon the host of souls?! I SHALL DEVOUR YOU WHOLE!',16884,1,0,0,'boss_devourer SAY_MALE_1_AGGRO'),
(-1632008,'You dare look upon the host of souls?! I SHALL DEVOUR YOU WHOLE!',16890,1,0,0,'boss_devourer SAY_FEMALE_AGGRO'),
(-1632009,'Damnation!',16885,1,0,0,'boss_devourer SAY_MALE_1_SLAY_1'),
(-1632010,'Damnation!',16891,1,0,0,'boss_devourer SAY_FEMALE_SLAY_1'),
(-1632011,'Damnation!',16896,1,0,0,'boss_devourer SAY_MALE_2_SLAY_1'),
(-1632012,'Doomed for eternity!',16886,1,0,0,'boss_devourer SAY_MALE_1_SLAY_2'),
(-1632013,'Doomed for eternity!',16892,1,0,0,'boss_devourer SAY_FEMALE_SLAY_2'),
(-1632014,'Doomed for eternity!',16897,1,0,0,'boss_devourer SAY_MALE_2_SLAY_2'),
(-1632015,'The swell of souls will not be abated! You only delay the inevitable!',16887,1,0,0,'boss_devourer SAY_MALE_1_DEATH'),
(-1632016,'The swell of souls will not be abated! You only delay the inevitable!',16893,1,0,0,'boss_devourer SAY_FEMALE_DEATH'),
(-1632017,'The swell of souls will not be abated! You only delay the inevitable!',16898,1,0,0,'boss_devourer SAY_MALE_2_DEATH'),
(-1632018,'SUFFERING! ANGUISH! CHAOS! RISE AND FEED!',16888,1,0,0,'boss_devourer SAY_MALE_1_SOUL_ATTACK'),
(-1632019,'SUFFERING! ANGUISH! CHAOS! RISE AND FEED!',16894,1,0,0,'boss_devourer SAY_FEMALE_SOUL_ATTACK'),
(-1632020,'SUFFERING! ANGUISH! CHAOS! RISE AND FEED!',16899,1,0,0,'boss_devourer SAY_MALE_2_SOUL_ATTACK'),
(-1632021,'Stare into the abyss, and see your end!',16889,1,0,0,'boss_devourer SAY_MALE_1_DARK_GLARE'),
(-1632022,'Stare into the abyss, and see your end!',16895,1,0,0,'boss_devourer SAY_FEMALE_DARK_GLARE'),
(-1632023,'%s begins to cast Mirrored Soul!',0,3,0,0,'boss_devourer EMOTE_MIRRORED_SOUL'),
(-1632024,'%s begins to Unleash Souls!',0,3,0,0,'boss_devourer EMOTE_UNLEASH_SOULS'),
(-1632025,'%s begins to cast Wailing Souls!',0,3,0,0,'boss_devourer EMOTE_WAILING_SOULS');

-- -1 649 000 TRIAL OF THE CRUSADER
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1649000,'Welcome champions, you have heard the call of the argent crusade and you have boldly answered. It is here in the crusaders coliseum that you will face your greatest challenges. Those of you who survive the rigors of the coliseum will join the Argent Crusade on it''s marsh to ice crown citadel.',16036,1,0,0,'tirion SAY_TIRION_RAID_INTRO_LONG'),
(-1649001,'Welcome to the trials of the crusader. Only the most powerful combatants of azeroth are allowed to undergo these trials. You are among the worthy few.',16053,1,0,0,'tirion SAY_RAID_TRIALS_INTRO'),

(-1649002,'Hailing from the deepest, darkest carverns of the storm peaks, Gormok the Impaler! Battle on, heroes!',16038,1,0,0,'tirion SAY_TIRION_BEAST_1'),
(-1649003,'Your beast will be no match for my champions Tirion.',16069,1,0,0,'varian SAY_VARIAN_BEAST_1'),
(-1649004,'I have seen more worthy challenges in the ring of blood, you waste our time paladin.',16026,1,0,0,'garrosh SAY_GARROSH_BEAST_1'),
(-1649005,'Steel yourselves, heroes, for the twin terrors Acidmaw and Dreadscale. Enter the arena!',16039,1,0,0,'tirion SAY_TIRION_BEAST_2'),
(-1649006,'The air freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions!',16040,1,0,0,'tirion SAY_TIRION_BEAST_3'),
(-1649007,'The monstrous menagerie has been vanquished!',16041,1,0,0,'tirion SAY_TIRION_BEAST_SLAY'),
(-1649008,'Tragic... They fought valiantly, but the beasts of Northrend triumphed. Let us observe a moment of silence for our fallen heroes.',16042,1,0,0,'tirion SAY_TIRION_BEAST_WIPE'),

(-1649009,'Grand Warlock Wilfred Fizzlebang will summon forth your next challenge. Stand by for his entry!',16043,1,0,0,'tirion SAY_TIRION_JARAXXUS_INTRO_1'),
(-1649010,'Thank you, Highlord! Now challengers, I will begin the ritual of summoning! When I am done, a fearsome Doomguard will appear!',16268,1,0,0,'wilfred SAY_WILFRED_JARAXXUS_INTRO_1'),
(-1649011,'Prepare for oblivion!',16269,1,0,0,'wilfred SAY_WILFRED_JARAXXUS_INTRO_2'),
(-1649012,'Ah ha! Behold the absolute power of Wilfred Fizzlebang, master summoner! You are bound to ME, demon!',16270,1,0,0,'wilfred SAY_WILFRED_JARAXXUS_INTRO_3'),
(-1649013,'Trifling gnome, your arrogance will be your undoing!',16143,1,0,0,'jaraxxus SAY_JARAXXUS_JARAXXAS_INTRO_1'),
(-1649014,'But I''m in charge her-',16271,1,0,0,'wilfred SAY_WILFRED_DEATH'),
(-1649015,'Quickly, heroes! Destroy the demon lord before it can open a portal to its twisted demonic realm!',16044,1,0,0,'tirion SAY_TIRION_JARAXXUS_INTRO_2'),
(-1649016,'The loss of Wilfred Fizzlebang, while unfortunate, should be a lesson to those that dare dabble in dark magic. Alas, you are victorious and must now face the next challenge.',16045,1,0,0,'tirion SAY_TIRION_JARAXXUS_EXIT_1'),
(-1649017,'Treacherous Alliance dogs! You summon a demon lord against warriors of the Horde!? Your deaths will be swift!',16021,1,0,0,'garrosh SAY_GARROSH_JARAXXUS_EXIT_1'),
(-1649018,'The Alliance doesn''t need the help of a demon lord to deal with Horde filth. Come, pig!',16064,1,0,0,'varian SAY_VARIAN_JARAXXUS_SLAY'),
(-1649019,'Everyone, calm down! Compose yourselves! There is no conspiracy at play here. The warlock acted on his own volition - outside of influences from the Alliance. The tournament must go on!',16046,1,0,0,'tirion SAY_TIRION_JARAXXUS_EXIT_2'),

(-1649020,'The next battle will be against the Argent Crusade''s most powerful knights! Only by defeating them will you be deemed worthy...',16047,1,0,0,'tirion SAY_TIRION_PVP_INTRO_1'),
(-1649021,'The Horde demands justice! We challenge the Alliance. Allow us to battle in place of your knights, paladin. We will show these dogs what it means to insult the Horde!',16023,1,0,0,'garrosh SAY_GARROSH_PVP_A_INTRO_1'),
(-1649022,'Our honor has been besmirched! They make wild claims and false accusations against us. I demand justice! Allow my champions to fight in place of your knights, Tirion. We challenge the Horde!',16066,1,0,0,'varian SAY_VARIAN_PVP_H_INTRO_1'),
(-1649023,'Very well, I will allow it. Fight with honor!',16048,1,0,0,'tirion SAY_TIRION_PVP_INTRO_2'),
(-1649024,'Fight for the glory of the Alliance, heroes! Honor your king and your people!',16065,1,0,0,'varian SAY_VARIAN_PVP_A_INTRO_2'),
(-1649025,'Show them no mercy, Horde champions! LOK''TAR OGAR!',16022,1,0,0,'garrosh SAY_GARROSH_PVP_H_INTRO_2'),
(-1649026,'Glory to the alliance.',16067,1,0,0,'varian SAY_VARIAN_PVP_A_WIN'),
(-1649027,'That was just a taste of what the future brings. FOR THE HORDE!',16024,1,0,0,'garrosh SAY_GARROSH_PVP_H_WIN'),
(-1649028,'A shallow and tragic victory. We are weaker as a whole from the losses suffered today. Who but the Lich King could benefit from such foolishness? Great warriors have lost their lives. And for what? The true threat looms ahead - the Lich King awaits us all in death.',16049,1,0,0,'tirion SAY_TIRION_PVP_WIN'),

(-1649029,'Only by working together will you overcome the final challenge. From the depths of Icecrown come two of the Scourge''s most powerful lieutenants: fearsome val''kyr, winged harbingers of the Lich King!',16050,1,0,0,'tirion SAY_TIRION_TWINS_INTRO'),
(-1649030,'Let the games begin!',16037,1,0,0,'tirion SAY_RAID_INTRO_SHORT'),
(-1649031,'Not even the lich king''s most powerful minions could stand against the alliance. All hail our victors.',16068,1,0,0,'varian SAY_VARIAN_TWINS_A_WIN'),
(-1649032,'Do you still question the might of the Horde, paladin? We will take on all comers!',16025,1,0,0,'garrosh SAY_GARROSH_TWINS_H_WIN'),
(-1649033,'A mighty blow has been dealt to the Lich King! You have proven yourselves able bodied champions of the Argent Crusade. Together we will strike at Icecrown Citadel and destroy what remains of the Scourge! There is no challenge that we cannot face united!',16051,1,0,0,'tirion SAY_TIRION_TWINS_WIN'),

(-1649034,'You will have your challenge, Fordring.',16321,1,0,0,'lich_king SAY_LKING_ANUB_INTRO_1'),
(-1649035,'Arthas! You are hopelessly outnumbered! Lay down Frostmourne and I will grant you a just death.',16052,1,0,0,'tirion SAY_TIRION_ABUN_INTRO_1'),
(-1649036,'The Nerubians built an empire beneath the frozen wastes of Northrend. An empire that you so foolishly built your structures upon. MY EMPIRE.',16322,1,0,0,'lich_king SAY_LKING_ANUB_INTRO_2'),
(-1649037,'The souls of your fallen champions will be mine, Fordring.',16323,1,0,0,'lich_king SAY_LKING_ANUB_INTRO_3'),
(-1649038,'Ahhh... Our guests arrived, just as the master promised.',16235,1,0,0,'anubarak SAY_ANUB_ANUB_INTRO_1'),

(-1649039,'%s glares at $N and lets out a bellowing roar!',0,3,0,0,'icehowl EMOTE_MASSIVE_CRASH'),

(-1649040,'You face Jaraxxus, eredar lord of the Burning Legion!',16144,1,0,0,'jaraxxus SAY_AGGRO'),
(-1649041,'Insignificant gnat!',16145,1,0,0,'jaraxxus SAY_SLAY_1'),
(-1649042,'Banished to the Nether!',16146,1,0,0,'jaraxxus SAY_SLAY_2'),
(-1649043,'Another will take my place. Your world is doomed.',16147,1,0,0,'jaraxxus SAY_DEATH'),
(-1649044,'<SD2 Text missing>',16148,1,0,0,'jaraxxus SAY_BERSERK'), -- TODO, just some laughing
(-1649045,'Flesh from bone!',16149,1,0,0,'jaraxxus SAY_INCINERATE'),
(-1649046,'Come forth, sister! Your master calls!',16150,1,0,0,'jaraxxus SAY_MISTRESS'),
(-1649047,'Inferno!',16151,1,0,0,'jaraxxus SAY_INFERNO'),

(-1649048,'Weakling!',16017,1,0,0,'garrosh SAY_GARROSH_PVP_A_SLAY_1'),
(-1649049,'Pathetic!',16018,1,0,0,'garrosh SAY_GARROSH_PVP_A_SLAY_2'),
(-1649050,'Overpowered.',16019,1,0,0,'garrosh SAY_GARROSH_PVP_A_SLAY_3'),
(-1649051,'Lok''tar!',16020,1,0,0,'garrosh SAY_GARROSH_PVP_A_SLAY_4'),
(-1649052,'Hah!',16060,1,0,0,'varian SAY_VARIAN_PVP_H_SLAY_1'),
(-1649053,'Hardly a challenge!',16061,1,0,0,'varian SAY_VARIAN_PVP_H_SLAY_2'),
(-1649054,'Worthless scrub.',16062,1,0,0,'varian SAY_VARIAN_PVP_H_SLAY_3'),
(-1649055,'Is this the best the Horde has to offer?',16063,1,0,0,'varian SAY_VARIAN_PVP_H_SLAY_4'),

(-1649056,'In the name of our dark master. For the Lich King. You. Will. Die.',16272,1,0,0,'twin_valkyr SAY_AGGRO'),
(-1649057,'You are finished!',16273,1,0,0,'twin_valkyr SAY_BERSERK'),
(-1649058,'Chaos!',16274,1,0,0,'twin_valkyr SAY_COLORSWITCH'),
(-1649059,'The Scourge cannot be stopped...',16275,1,0,0,'twin_valkyr SAY_DEATH'),
(-1649060,'You have been measured, and found wanting!',16276,1,0,0,'twin_valkyr SAY_SLAY_1'),
(-1649061,'Unworthy!',16277,1,0,0,'twin_valkyr SAY_SLAY_2'),
(-1649062,'Let the dark consume you!',16278,1,0,0,'twin_valkyr SAY_TO_BLACK'),
(-1649063,'Let the light consume you!',16279,1,0,0,'twin_valkyr SAY_TO_WHITE'),

(-1649064,'This place will serve as your tomb!',16234,1,0,0,'anubarak SAY_AGGRO'),
(-1649065,'F-lakkh shir!',16236,1,0,0,'anubarak SAY_SLAY_1'),
(-1649066,'Another soul to sate the host.',16237,1,0,0,'anubarak SAY_SLAY_2'),
(-1649067,'I have failed you, master...',16238,1,0,0,'anubarak SAY_DEATH'),
(-1649068,'<SD2 Text missing>',16239,1,0,0,'anubarak SAY_BERSERK'),
(-1649069,'Auum na-l ak-k-k-k, isshhh. Rise, minions. Devour...',16240,1,0,0,'anubarak SAY_SUBMERGE'),
(-1649070,'The swarm shall overtake you!',16241,1,0,0,'anubarak SAY_LEECHING_SWARM');

-- -1 650 000 TRIAL OF THE CHAMPION

-- -1 658 000 ICC: PIT OF SARON
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1658001,'Intruders have entered the masters domain. Signal the alarms!',16747,1,0,0,'tyrannus SAY_TYRANNUS_INTRO_1'),
(-1658002,'Heroes of the Alliance, attack!',16626,1,0,0,'jaina SAY_JAINA_INTRO_1'),
(-1658003,'Soldiers of the Horde, attack!',17045,1,0,0,'sylvanas SAY_SYLVANAS_INTRO_1'),
(-1658004,'Hrmph, fodder. Not even fit to labor in the quarry. Relish these final moments for soon you will be nothing more than mindless undead.',16748,1,0,0,'tyrannus SAY_TYRANNUS_INTRO_2'),
(-1658005,'Your last waking memory will be of agonizing pain.',16749,1,0,0,'tyrannus SAY_TYRANNUS_INTRO_3'),
(-1658006,'No! You monster!',16627,1,0,0,'jaina SAY_JAINA_INTRO_2'),
(-1658007,'Pathetic weaklings!',17046,1,0,0,'sylvanas SAY_SYLVANAS_INTRO_2'),
(-1658008,'Minions, destroy these interlopers!',16751,1,0,0,'tyrannus SAY_TYRANNUS_INTRO_4'),
(-1658009,'I do what I must. Please forgive me, noble soldiers.',16628,1,0,0,'jaina SAY_JAINA_INTRO_3'),
(-1658010,'You will have to make your way across this quarry on your own.',16629,0,0,0,'jaina SAY_JAINA_INTRO_4'),
(-1658011,'You will have to battle your way through this cesspit on your own.',17047,0,0,0,'sylvanas SAY_SYLVANAS_INTRO_3'),
(-1658012,'Free any Alliance slaves that you come across. We will most certainly need their assistance in battling Tyrannus. I will gather reinforcements and join you on the other side of the quarry.',16630,0,0,0,'jaina SAY_JAINA_INTRO_5'),
(-1658013,'Free any Horde slaves that you come across. We will most certainly need their assistance in battling Tyrannus. I will gather reinforcements and join you on the other side of the quarry.',17048,0,0,0,'sylvanas SAY_SYLVANAS_INTRO_4'),

(-1658014,'Tiny creatures under feet, you bring Garfrost something good to eat!',16912,1,0,0,'garfrost SAY_AGGRO'),
(-1658015,'Will save for snack. For later.',16913,1,0,0,'garfrost SAY_SLAY_1'),
(-1658016,'That one maybe not so good to eat now. Stupid Garfrost! BAD! BAD!',16914,1,0,0,'garfrost SAY_BOULDER_HIT'),
(-1658017,'Garfrost hope giant underpants clean. Save boss great shame. For later.',16915,1,0,0,'garfrost SAY_DEATH'),
(-1658018,'Axe too weak. Garfrost make better and CRUSH YOU!',16916,1,0,0,'garfrost SAY_FORGE_1'),
(-1658019,'That one maybe not so good to eat now. Stupid Garfrost! BAD! BAD!',16917,1,0,0,'garfrost SAY_FORGE_2'),
(-1658020,'Another shall take his place. You waste your time.',16752,1,0,0,'tyrannus SAY_TYRANNUS_GARFROST'),
(-1658021,'The forgemaster is dead! Get geared up men, we have a Scourgelord to kill.',0,1,0,0,'victus_or_ironskull SAY_GENERAL_GARFROST'),
(-1658022,'%s hurls a massive saronite boulder at you!',0,5,0,0,'garfrost EMOTE_THROW_SARONITE'), -- TODO emote only displayed to target
(-1658023,'%s casts Deep Freeze at $N.',0,3,0,0,'garfrost EMOTE_DEEP_FREEZE'),

(-1658024,'Our work must not be interrupted! Ick! Take care of them!',16926,1,0,0,'krick SAY_AGGRO'),
(-1658025,'Ooh...We could probably use these parts!',16927,1,0,0,'krick SAY_SLAY_1'),
(-1658026,'Arms and legs are in short supply...Thanks for your contribution!',16928,1,0,0,'krick SAY_SLAY_2'),
(-1658027,'Enough moving around! Hold still while I blow them all up!',16929,1,0,0,'krick SAY_ORDER_STOP'),
(-1658028,'Quickly! Poison them all while they\'re still close!',16930,1,0,0,'krick SAY_ORDER_BLOW'),
(-1658029,'No! That one! That one! Get that one!',16931,1,0,0,'krick SAY_TARGET_1'),
(-1658030,'I\'ve changed my mind...go get that one instead!',16932,1,0,0,'krick SAY_TARGET_2'),
(-1658031,'What are you attacking him for? The dangerous one is over there,fool!',16933,1,0,0,'krick SAY_TARGET_3'),
(-1658032,'%s begins rapidly conjuring explosive mines!',0,3,0,0,'krick EMOTE_KRICK_MINES'),
(-1658033,'%s begins to unleash a toxic poison cloud!',0,3,0,0,'ick EMOTE_ICK_POISON'),
(-1658034,'%s is chasing you!',0,5,0,0,'ick EMOTE_ICK_CHASING'), -- TODO emote type?

(-1658035,'Wait! Stop! Don\'t kill me, please! I\'ll tell you everything!',16934,1,0,0,'krick SAY_OUTRO_1'),
(-1658036,'I\'m not so naive as to believe your appeal for clemency, but I will listen.',16611,1,0,0,'jaina SAY_JAINA_KRICK_1'),
(-1658037,'Why should the Banshee Queen spare your miserable life?',17033,1,0,0,'sylvanas SAY_SYLVANAS_KRICK_1'),
(-1658038,'What you seek is in the master\'s lair, but you must destroy Tyrannus to gain entry. Within the Halls of Reflection you will find Frostmourne. It... it holds the truth.',16935,1,0,0,'krick SAY_OUTRO_2'),
(-1658039,'Frostmourne lies unguarded? Impossible!',16612,1,0,0,'jaina SAY_JAINA_KRICK_2'),
(-1658040,'Frostmourne? The Lich King is never without his blade! If you are lying to me...',17034,1,0,0,'sylvanas SAY_SYLVANAS_KRICK_2'),
(-1658041,'I swear it is true! Please, don\'t kill me!!',16936,1,0,0,'krick SAY_OUTRO_3'),
(-1658042,'Worthless gnat! Death is all that awaits you!',16753,1,0,0,'tyrannus SAY_TYRANNUS_KRICK_1'),
(-1658043,'Urg... no!!',16937,1,0,0,'krick SAY_OUTRO_4'),
(-1658044,'Do not think that I shall permit you entry into my master\'s sanctum so easily. Pursue me if you dare.',16754,1,0,0,'tyrannus SAY_TYRANNUS_KRICK_2'),
(-1658045,'What a cruel end. Come, heroes. We must see if the gnome\'s story is true. If we can separate Arthas from Frostmourne, we might have a chance at stopping him.',16613,1,0,0,'jaina SAY_JAINA_KRICK_3'),
(-1658046,'A fitting end for a traitor. Come, we must free the slaves and see what is within the Lich King\'s chamber for ourselves.',17035,1,0,0,'sylvanas SAY_SYLVANAS_KRICK_3'),

(-1658047,'Your pursuit shall be in vain, adventurers, for the Lich King has placed an army of undead at my command! Behold!',16755,1,0,0,'tyrannus SAY_TYRANNUS_AMBUSH_1'),
(-1658048,'Persistent whelps! You will not reach the entrance of my lord\'s lair! Soldiers, destroy them!',16756,1,0,0,'tyrannus SAY_TYRANNUS_AMBUSH_2'),
(-1658049,'Rimefang! Trap them within the tunnel! Bury them alive!',16757,1,0,0,'tyrannus SAY_GAUNTLET'),

(-1658050,'Alas, brave, brave adventurers, your meddling has reached its end. Do you hear the clatter of bone and steel coming up the tunnel behind you? That is the sound of your impending demise.',16758,1,0,0,'tyrannus SAY_PREFIGHT_1'),
(-1658051,'Heroes! We will hold off the undead as long as we can, even to our dying breath. Deal with the Scourgelord!',0,1,0,0,'victus_or_ironskull SAY_GENERAL_TRASH'),
(-1658052,'Ha, such an amusing gesture from the rabble. When I have finished with you, my master\'s blade will feast upon your souls. Die!',16759,1,0,0,'tyrannus SAY_PREFIGHT_2'),
(-1658053,'I shall not fail The Lich King! Come and meet your end!',16760,1,0,0,'tyrannus SAY_AGGRO'),
(-1658054,'Such a shameful display...',16761,1,0,0,'tyrannus SAY_SLAY_1'),
(-1658055,'Perhaps you should have stayed in the mountains!',16762,1,0,0,'tyrannus SAY_SLAY_2'),
(-1658056,'Impossible! Rimefang...Warn...',16763,1,0,0,'tyrannus SAY_DEATH'),
(-1658057,'Rimefang, destroy this fool!',16764,1,0,0,'tyrannus SAY_MARK'),
(-1658058,'Power... overwhelming!',16765,1,0,0,'tyrannus SAY_SMASH'),
(-1658059,'The frostwyrm %s gazes at $N and readies an icy attack!',0,3,0,0,'rimefang EMOTE_RIMEFANG_ICEBOLT'),
(-1658060,'%s roars and swells with dark might!',0,3,0,0,'tyrannus EMOTE_SMASH'),

(-1658061,'Brave champions, we owe you our lives, our freedom... Though it be a tiny gesture in the face of this enormous debt, I pledge that from this day forth, all will know of your deeds, and the blazing path of light you cut through the shadow of this dark citadel.',0,1,0,0,'victus_or_ironskull SAY_GENERAL_OUTRO_1'),
(-1658062,'This day will stand as a testament not only to your valor, but to the fact that no foe, not even the Lich King himself, can stand when Alliance and Horde set aside their differences and ---',0,1,0,0,'victus_or_ironskull SAY_GENERAL_OUTRO_2'),
(-1658063,'Heroes, to me!',16614,0,0,0,'jaina SAY_JAINA_OUTRO_1'),
(-1658064,'Take cover behind me! Quickly!',17037,0,0,0,'sylvanas SAY_SYLVANAS_OUTRO_1'),
(-1658065,'The Frost Queen is gone. We must keep moving - our objective is near.',16615,0,0,0,'jaina SAY_JAINA_OUTRO_2'),
(-1658066,'I... I could not save them... Damn you, Arthas! DAMN YOU!',16616,0,0,0,'jaina SAY_JAINA_OUTRO_3'),
(-1658067,'I thought he\'d never shut up. At last, Sindragosa silenced that long-winded fool. To the Halls of Reflection, champions! Our objective is near... I can sense it.',17036,0,0,0,'sylvanas SAY_SYLVANAS_OUTRO_2');

-- -1 668 000 ICC: HALLS OF REFLECTION

-- -1 724 000 RUBY SANCTUM


-- -1 999 900 EXAMPLE TEXT
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1999900,'Let the games begin.',8280,1,0,0,'example_creature SAY_AGGRO'),
(-1999901,'I see endless suffering. I see torment. I see rage. I see everything.',8831,1,0,0,'example_creature SAY_RANDOM_0'),
(-1999902,'Muahahahaha',8818,1,0,0,'example_creature SAY_RANDOM_1'),
(-1999903,'These mortal infedels my lord, they have invaded your sanctum and seek to steal your secrets.',8041,1,0,0,'example_creature SAY_RANDOM_2'),
(-1999904,'You are already dead.',8581,1,0,0,'example_creature SAY_RANDOM_3'),
(-1999905,'Where to go? What to do? So many choices that all end in pain, end in death.',8791,1,0,0,'example_creature SAY_RANDOM_4'),
(-1999906,'$N, I sentance you to death!',8588,1,0,0,'example_creature SAY_BESERK'),
(-1999907,'The suffering has just begun!',0,1,0,0,'example_creature SAY_PHASE'),
(-1999908,'I always thought I was a good dancer.',0,0,0,0,'example_creature SAY_DANCE'),
(-1999909,'Move out Soldier!',0,0,0,0,'example_creature SAY_SALUTE'),

(-1999910,'Help $N! I\'m under attack!',0,0,0,0,'example_escort SAY_AGGRO1'),
(-1999911,'Die scum!',0,0,0,0,'example_escort SAY_AGGRO2'),
(-1999912,'Hmm a nice day for a walk alright',0,0,0,0,'example_escort SAY_WP_1'),
(-1999913,'Wild Felboar attack!',0,0,0,0,'example_escort SAY_WP_2'),
(-1999914,'Time for me to go! See ya around $N!',0,0,0,3,'example_escort SAY_WP_3'),
(-1999915,'Bye Bye!',0,0,0,3,'example_escort SAY_WP_4'),
(-1999916,'How dare you leave me like that! I hate you! =*(',0,3,0,0,'example_escort SAY_DEATH_1'),
(-1999917,'...no...how could you let me die $N',0,0,0,0,'example_escort SAY_DEATH_2'),
(-1999918,'ugh...',0,0,0,0,'example_escort SAY_DEATH_3'),
(-1999919,'Taste death!',0,0,0,0,'example_escort SAY_SPELL'),
(-1999920,'Fireworks!',0,0,0,0,'example_escort SAY_RAND_1'),
(-1999921,'Hmm, I think I could use a buff.',0,0,0,0,'example_escort SAY_RAND_2'),

(-1999922,'Normal select, guess you\'re not interested.',0,0,0,0,'example_gossip_codebox SAY_NOT_INTERESTED'),
(-1999923,'Wrong!',0,0,0,0,'example_gossip_codebox SAY_WRONG'),
(-1999924,'You\'re right, you are allowed to see my inner secrets.',0,0,0,0,'example_gossip_codebox SAY_CORRECT'),

(-1999925,'Hi!',0,0,0,0,'example_areatrigger SAY_HI');

--
-- GOSSIP TEXTS
--

--
-- Below contains data for table `gossip_texts`
-- valid entries for table are between -3000000 and -3999999
--

TRUNCATE gossip_texts;

-- -3 000 000 RESERVED (up to 100)
INSERT INTO gossip_texts (entry,content_default,comment) VALUES
(-3000000,'[PH] SD2 unknown text','GOSSIP_ID_UNKNOWN_TEXT');

-- -3 000 100 GENERAL MAPS (not instance maps)
INSERT INTO gossip_texts (entry,content_default,comment) VALUES
(-3000101,'Taruk send me to collect what you owe.','silvermoon harry GOSSIP_ITEM_GAMBLING_DEBT'),
(-3000102,'Pay up, Harry!','silvermoon harry GOSSIP_ITEM_PAYING'),
(-3000103,'I am ready to travel to you village now.','rainspeaker GOSSIP_ITEM_READY'),
(-3000104,'<Check for pulse...>','mosswalker victim GOSSIP_ITEM_PULSE'),
(-3000105,'Ezekiel said that you might have a certain book...','dirty larry GOSSIP_ITEM_BOOK'),
(-3000106,'Show me where I can fly.','greer orehammer GOSSIP_ITEM_TAXI'),
(-3000107,'[PH] Get Presicion Bombs','greer orehammer GOSSIP_ITEM_GET_BOMBS'),
(-3000108,'[PH] Start bombing mission','greer orehammer GOSSIP_ITEM_FLIGHT');

-- -3 090 000 GNOMEREGAN
INSERT INTO gossip_texts (entry,content_default,comment) VALUES
(-3090000,'I am ready to begin.','emi shortfuse GOSSIP_ITEM_START');

-- -3 043 000 WAILING CAVERNS
INSERT INTO gossip_texts (entry,content_default,comment) VALUES
(-3043000,'Let the event begin!','Disciple of Naralex - GOSSIP_ITEM_BEGIN');

-- -3 560 000 ESCAPE FROM DURNHOLDE (OLD HILLSBRAD)
INSERT INTO gossip_texts (entry,content_default,comment) VALUES
(-3560000,'I am ready to go to Durnholde Keep.','brazen GOSSIP_ITEM_READY'),
(-3560001,'I need a pack of Incendiary Bombs.','erozion GOSSIP_ITEM_NEED_BOMBS'),
(-3560002,'Taretha cannot see you, Thrall.','thrall GOSSIP_ITEM_SKARLOC1'),
(-3560003,'The situation is rather complicated, Thrall. It would be best for you to head into the mountains now, before more of Blackmoore\'s men show up. We\'ll make sure Taretha is safe.','thrall GOSSIP_ITEM_SKARLOC2'),
(-3560004,'We\'re ready, Thrall.','thrall GOSSIP_ITEM_TARREN'),
(-3560005,'Strange wizard?','taretha GOSSIP_ITEM_EPOCH1'),
(-3560006,'We\'ll get you out. Taretha. Don\'t worry. I doubt the wizard would wander too far away.','taretha GOSSIP_ITEM_EPOCH2');

-- -3 595 000 CULLING OF STRATHOLME
INSERT INTO gossip_texts (entry,content_default,comment) VALUES
(-3595000,'What do you think they\'re up to?','chromie GOSSIP_ITEM_ENTRANCE_1'),
(-3595001,'You want me to do what?','chromie GOSSIP_ITEM_ENTRANCE_2'),
(-3595002,'Very well, Chromie.','chromie GOSSIP_ITEM_ENTRANCE_3'),
(-3595003,'Why have I been sent back to this particular place and time?','chromie GOSSIP_ITEM_INN_1'),
(-3595004,'What was this decision?','chromie GOSSIP_ITEM_INN_2'),
(-3595005,'So how does the Infinite Dragonflight plan to interfere?','chromie GOSSIP_ITEM_INN_3');

-- -3 603 000 ULDUAR
INSERT INTO gossip_texts (entry,content_default,comment) VALUES
(-3603000,'Teleport to the Expedition Base Camp.','GOSSIP_ITEM_TELE_BASE_CAMP'),
(-3603001,'Teleport to the Formation Grounds.','GOSSIP_ITEM_TELE_FORMATION_GROUNDS'),
(-3603002,'Teleport to the Colossal Forge.','GOSSIP_ITEM_TELE_COLOSSAR_FORGE'),
(-3603003,'Teleport to the Scrapyard.','GOSSIP_ITEM_TELE_SCRAPYARD'),
(-3603004,'Teleport to the Antechamber of Ulduar.','GOSSIP_ITEM_TELE_ANTECHAMBER'),
(-3603005,'Teleport to the Shattered Walkway.','GOSSIP_ITEM_TELE_WALKWAY'),
(-3603006,'Teleport to the Conservatory of Life.','GOSSIP_ITEM_TELE_CONSERVATORY'),
(-3603007,'Teleport to the Spark of Imagination.','GOSSIP_ITEM_TELE_SPARK_IMAGINATION'),
(-3603008,'Teleport to the Prison of Yogg-Saron.','GOSSIP_ITEM_TELE_YOGG_SARON');

-- -3 608 000 VIOLET HOLD
INSERT INTO gossip_texts (entry,content_default,comment) VALUES
(-3608000,'Activate the crystals when we get in trouble, right?','sinclari GOSSIP_ITEM_INTRO'),
(-3608001,'Get your people to safety, we\'ll keep the Blue Dragonflight\'s forces at bay.','sinclari GOSSIP_ITEM_START');

-- -3 649 000 TRIAL OF CRUSADER
INSERT INTO gossip_texts (entry,content_default,comment) VALUES
(-3649000,'Yes. We are prepared for the challenges ahead of us.','barrett GOSSIP_ITEM_START_EVENT1');

--
-- Below just for beautiful view in table, run at own desire
--

-- ALTER TABLE script_texts ORDER BY entry desc;
-- ALTER TABLE gossip_texts ORDER BY entry desc;

-- EOF

