USE [DBSA]
GO
/****** Object:  Trigger [dbo].[tbCellBulkInser]    Script Date: 2017/7/8 20:54:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[tbCellBulkInser] 
   ON  [dbo].[tbCellNew]
   INSTEAD OF INSERT	
AS 
BEGIN
	--找出导入数据中需要Update操作的全部元组，并暂时存放在#UpdateTemp
	select * into #UpdateTemp
	from inserted
	where [SECTOR_ID] in (select [SECTOR_ID] from [tbCellNew])


	--tbInserted与#UpdateTemp做集合差操作
	select A.* into #InsertTemp
	from ((select * from inserted) EXCEPT (select * from #UpdateTemp)) as A

	--将新的内容插入cell表
	INSERT INTO [dbo].[tbCellNew]
	SELECT * FROM #InsertTemp

	--对已有的内容先删除后插入
	DELETE FROM [dbo].[tbCellNew]
	WHERE [SECTOR_ID] in (SELECT [SECTOR_ID] FROM #UpdateTemp)

	INSERT INTO [dbo].[tbCellNew]
	SELECT * FROM #UpdateTemp
END
