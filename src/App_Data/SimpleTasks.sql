/* INITIALIZE */਍ഀഀ
SET DATEFORMAT ymd਍䜀伀ഀഀ
਍甀猀攀 ∀匀椀洀瀀氀攀吀愀猀欀猀∀ഀഀ
go਍ഀഀ
਍⼀⨀ 䐀刀伀倀 伀䈀䨀䔀䌀吀匀 ⨀⼀ഀഀ
਍椀昀 攀砀椀猀琀猀 ⠀猀攀氀攀挀琀 ⨀ 昀爀漀洀 猀礀猀⸀漀戀樀攀挀琀猀 眀栀攀爀攀 渀愀洀攀 㴀 ✀吀愀猀欀✀⤀ഀഀ
	drop table "Task"	਍䜀伀ഀഀ
਍椀昀 攀砀椀猀琀猀 ⠀猀攀氀攀挀琀 ⨀ 昀爀漀洀 猀礀猀⸀漀戀樀攀挀琀猀 眀栀攀爀攀 渀愀洀攀 㴀 ✀䌀愀琀攀最漀爀礀✀⤀ഀഀ
	drop table "Category"਍䜀伀ഀഀ
਍椀昀 攀砀椀猀琀猀 ⠀猀攀氀攀挀琀 ⨀ 昀爀漀洀 猀礀猀⸀漀戀樀攀挀琀猀 眀栀攀爀攀 渀愀洀攀 㴀 ✀䤀猀䰀椀猀琀倀愀爀攀渀琀✀⤀ഀഀ
	drop function "IsListParent"਍䜀伀ഀഀ
਍ഀഀ
/* CREATE TABLES */਍ഀഀ
CREATE TABLE "Category" (਍ऀ∀䤀䐀∀ ∀椀渀琀∀ 䤀䐀䔀一吀䤀吀夀 ⠀㄀Ⰰ ㄀⤀ 一伀吀 一唀䰀䰀 Ⰰഀഀ
	"ParentID" "int" NULL,਍ऀ∀一愀洀攀∀ 渀瘀愀爀挀栀愀爀 ⠀䴀䄀堀⤀ 一伀吀 一唀䰀䰀 Ⰰഀഀ
	"IsFolder" bit NOT NULL,਍ऀ䌀伀一匀吀刀䄀䤀一吀 ∀倀䬀开䌀愀琀攀最漀爀礀∀ 倀刀䤀䴀䄀刀夀 䬀䔀夀 䌀䰀唀匀吀䔀刀䔀䐀 ഀഀ
	(਍ऀऀ∀䤀䐀∀ഀഀ
	),਍ऀ䌀伀一匀吀刀䄀䤀一吀 ∀䘀䬀开䌀愀琀攀最漀爀礀开䌀愀琀攀最漀爀礀∀ 䘀伀刀䔀䤀䜀一 䬀䔀夀 ഀഀ
	(਍ऀऀ∀倀愀爀攀渀琀䤀䐀∀ഀഀ
	) REFERENCES "Category" (਍ऀऀ∀䤀䐀∀ഀഀ
	)਍⤀ഀഀ
GO਍ഀഀ
CREATE TABLE "Task" (਍ऀ∀䤀䐀∀ ∀椀渀琀∀ 䤀䐀䔀一吀䤀吀夀 ⠀㄀Ⰰ ㄀⤀ 一伀吀 一唀䰀䰀 Ⰰഀഀ
	"CategoryID" "int" NOT NULL,਍ऀ∀吀椀琀氀攀∀ 渀瘀愀爀挀栀愀爀 ⠀䴀䄀堀⤀ 一伀吀 一唀䰀䰀 Ⰰഀഀ
	"Description" nvarchar (MAX) NULL ,਍ऀ∀䐀甀攀䐀愀琀攀∀ ∀搀愀琀攀琀椀洀攀∀ 一伀吀 一唀䰀䰀 Ⰰഀഀ
	"CompletedDate" "datetime" NULL ,਍ऀ∀刀攀洀椀渀搀攀爀∀ ∀搀愀琀攀琀椀洀攀∀ 一唀䰀䰀Ⰰഀഀ
	"Completed" bit NOT NULL,਍ऀ䌀伀一匀吀刀䄀䤀一吀 ∀倀䬀开吀愀猀欀∀ 倀刀䤀䴀䄀刀夀 䬀䔀夀 䌀䰀唀匀吀䔀刀䔀䐀 ഀഀ
	(਍ऀऀ∀䤀䐀∀ഀഀ
	),਍ऀ䌀伀一匀吀刀䄀䤀一吀 ∀䘀䬀开吀愀猀欀开䌀愀琀攀最漀爀礀∀ 䘀伀刀䔀䤀䜀一 䬀䔀夀 ഀഀ
	(਍ऀऀ∀䌀愀琀攀最漀爀礀䤀䐀∀ഀഀ
	) REFERENCES "Category" (਍ऀऀ∀䤀䐀∀ഀഀ
	)਍⤀ഀഀ
GO਍ഀഀ
਍⼀⨀ 䄀䐀䐀 䐀䄀吀䄀 ⨀⼀ഀഀ
਍猀攀琀 焀甀漀琀攀搀开椀搀攀渀琀椀昀椀攀爀 漀渀ഀഀ
go਍ഀഀ
set identity_insert "Category" on਍最漀ഀഀ
਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 ∀䌀愀琀攀最漀爀礀∀ 一伀䌀䠀䔀䌀䬀 䌀伀一匀吀刀䄀䤀一吀 䄀䰀䰀ഀഀ
go਍ഀഀ
INSERT "Category"("ID", "ParentID", "Name", "IsFolder") VALUES(1, null, 'All Lists', 1)਍䤀一匀䔀刀吀 ∀䌀愀琀攀最漀爀礀∀⠀∀䤀䐀∀Ⰰ ∀倀愀爀攀渀琀䤀䐀∀Ⰰ ∀一愀洀攀∀Ⰰ ∀䤀猀䘀漀氀搀攀爀∀⤀ 嘀䄀䰀唀䔀匀⠀㈀Ⰰ ㄀Ⰰ ✀圀漀爀欀✀Ⰰ ㄀⤀ഀഀ
INSERT "Category"("ID", "ParentID", "Name", "IsFolder") VALUES(3, 1, 'Home', 1)਍䤀一匀䔀刀吀 ∀䌀愀琀攀最漀爀礀∀⠀∀䤀䐀∀Ⰰ ∀倀愀爀攀渀琀䤀䐀∀Ⰰ ∀一愀洀攀∀Ⰰ ∀䤀猀䘀漀氀搀攀爀∀⤀ 嘀䄀䰀唀䔀匀⠀㐀Ⰰ ㄀Ⰰ ✀䴀椀猀挀✀Ⰰ ㄀⤀ഀഀ
go਍ഀഀ
set identity_insert "Category" off਍最漀ഀഀ
਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 ∀䌀愀琀攀最漀爀礀∀ 䌀䠀䔀䌀䬀 䌀伀一匀吀刀䄀䤀一吀 䄀䰀䰀ഀഀ
go਍ഀഀ
਍猀攀琀 椀搀攀渀琀椀琀礀开椀渀猀攀爀琀 ∀吀愀猀欀∀ 漀渀ഀഀ
go਍ഀഀ
ALTER TABLE "Task" NOCHECK CONSTRAINT ALL਍最漀ഀഀ
਍䐀䔀䌀䰀䄀刀䔀 䀀䐀愀琀攀 䐀䄀吀䔀吀䤀䴀䔀 㴀 䜀䔀吀䐀䄀吀䔀⠀⤀ഀഀ
Declare @DayOfMonth TinyInt Set @DayOfMonth = DAY(@Date) - 1਍䐀攀挀氀愀爀攀 䀀䴀漀渀琀栀 吀椀渀礀䤀渀琀 匀攀琀 䀀䴀漀渀琀栀 㴀 䴀伀一吀䠀⠀䀀䐀愀琀攀⤀ ⴀ ㄀ഀഀ
Declare @Year Integer Set @Year = YEAR(@Date)਍匀䔀吀 䀀䐀愀琀攀 㴀 䐀愀琀攀䄀搀搀⠀搀愀礀Ⰰ 䀀䐀愀礀伀昀䴀漀渀琀栀Ⰰ ഀഀ
				DateAdd(month, @Month, ਍ऀऀऀऀऀऀ   䐀愀琀攀䄀搀搀⠀夀攀愀爀Ⰰ 䀀夀攀愀爀ⴀ㄀㤀　　Ⰰ 　⤀⤀⤀ഀഀ
						   ਍⼀⨀ 匀唀䈀吀刀䄀䌀吀 ㌀ 䐀䄀夀匀 ⨀⼀ഀഀ
INSERT "Task"("ID", "CategoryID", "Title", "Description", "DueDate", "CompletedDate", "Reminder", "Completed") ਍ऀ嘀䄀䰀唀䔀匀⠀㄀Ⰰ 㐀Ⰰ ✀䜀爀漀挀攀爀椀攀猀✀Ⰰ ✀䴀椀氀欀 愀渀搀 䔀最最猀✀Ⰰ 䐀䄀吀䔀䄀䐀䐀⠀䐀䄀夀Ⰰ ⴀ㌀Ⰰ 䀀䐀愀琀攀⤀Ⰰ 䐀䄀吀䔀䄀䐀䐀⠀䐀䄀夀Ⰰ ⴀ㌀Ⰰ 䀀䐀愀琀攀⤀Ⰰ 渀甀氀氀Ⰰ ㄀⤀ഀഀ
	਍⼀⨀ 匀唀䈀吀刀䄀䌀吀 ㈀ 䐀䄀夀匀 ⨀⼀ऀऀഀഀ
INSERT "Task"("ID", "CategoryID", "Title", "Description", "DueDate", "CompletedDate", "Reminder", "Completed") ਍ऀ嘀䄀䰀唀䔀匀⠀㈀Ⰰ ㌀Ⰰ ✀䈀椀欀攀 吀甀渀攀ⴀ甀瀀✀Ⰰ ✀䐀爀漀瀀 漀昀昀 戀椀欀攀 昀漀爀 琀甀渀攀ⴀ甀瀀✀Ⰰ 䐀䄀吀䔀䄀䐀䐀⠀䐀䄀夀Ⰰ ⴀ㈀Ⰰ 䀀䐀愀琀攀⤀Ⰰ 䐀䄀吀䔀䄀䐀䐀⠀䐀䄀夀Ⰰ ⴀ㈀Ⰰ 䀀䐀愀琀攀⤀Ⰰ 渀甀氀氀Ⰰ ㄀⤀ഀഀ
਍⼀⨀ 吀伀䐀䄀夀 ⨀⼀ഀഀ
INSERT "Task"("ID", "CategoryID", "Title", "Description", "DueDate", "CompletedDate", "Reminder", "Completed") ਍ऀ嘀䄀䰀唀䔀匀⠀㌀Ⰰ ㈀Ⰰ ✀䘀椀渀椀猀栀 搀攀洀漀 愀瀀瀀氀椀挀愀琀椀漀渀✀Ⰰ 渀甀氀氀Ⰰ 䀀䐀愀琀攀Ⰰ 渀甀氀氀Ⰰ 渀甀氀氀Ⰰ 　⤀ഀഀ
INSERT "Task"("ID", "CategoryID", "Title", "Description", "DueDate", "CompletedDate", "Reminder", "Completed") ਍ऀ嘀䄀䰀唀䔀匀⠀㐀Ⰰ ㌀Ⰰ ✀䴀漀瘀椀攀 一椀最栀琀✀Ⰰ ✀刀攀渀琀 䘀愀洀椀氀礀 䴀漀瘀椀攀✀Ⰰ 䀀䐀愀琀攀Ⰰ 渀甀氀氀Ⰰ 渀甀氀氀Ⰰ 　⤀ഀഀ
	਍⼀⨀ 倀䰀唀匀 ㈀　 䐀䄀夀匀 ⨀⼀ഀഀ
INSERT "Task"("ID", "CategoryID", "Title", "Description", "DueDate", "CompletedDate", "Reminder", "Completed") ਍ऀ嘀䄀䰀唀䔀匀⠀㔀Ⰰ ㈀Ⰰ ✀䐀漀挀甀洀攀渀琀愀琀椀漀渀 䬀椀挀欀 伀昀昀✀Ⰰ ✀䴀攀攀琀椀渀最 琀漀 搀椀猀挀甀猀猀 搀漀挀甀洀攀渀琀愀琀椀漀渀 瀀爀漀樀攀挀琀✀Ⰰ 䐀䄀吀䔀䄀䐀䐀⠀䐀䄀夀Ⰰ ㈀　Ⰰ 䀀䐀愀琀攀⤀Ⰰ 渀甀氀氀Ⰰ 渀甀氀氀Ⰰ 　⤀ഀഀ
go਍ഀഀ
set identity_insert "Task" off਍最漀ഀഀ
਍䄀䰀吀䔀刀 吀䄀䈀䰀䔀 ∀吀愀猀欀∀ 䌀䠀䔀䌀䬀 䌀伀一匀吀刀䄀䤀一吀 䄀䰀䰀ഀഀ
go਍ഀഀ
/* CREATE FUNCTIONS */਍ഀഀ
CREATE FUNCTION IsListParent਍ऀ⠀ഀഀ
		@targetNode int,਍ऀऀ䀀搀爀漀瀀一漀搀攀 椀渀琀ഀഀ
	)਍ഀഀ
	RETURNS bit਍ऀ䄀匀ഀഀ
	BEGIN਍ऀऀ圀䠀䤀䰀䔀 ⠀䔀堀䤀匀吀匀⠀匀䔀䰀䔀䌀吀 ⨀ 䘀刀伀䴀 䌀愀琀攀最漀爀礀 圀䠀䔀刀䔀 倀愀爀攀渀琀䤀䐀 㴀 䀀搀爀漀瀀一漀搀攀 ⤀⤀ഀഀ
			BEGIN਍ऀऀऀ  匀䔀䰀䔀䌀吀 䀀搀爀漀瀀一漀搀攀 㴀 䤀䐀 䘀刀伀䴀 䌀愀琀攀最漀爀礀  圀䠀䔀刀䔀 倀愀爀攀渀琀䤀䐀 㴀 䀀搀爀漀瀀一漀搀攀ഀഀ
			  IF @dropNode = @targetNode਍ऀऀऀ  䈀䔀䜀䤀一ഀഀ
				 RETURN 1਍ऀऀऀ  䔀一䐀ഀഀ
			END਍ऀऀ刀䔀吀唀刀一 　ഀഀ
	END਍䜀伀ऀ�