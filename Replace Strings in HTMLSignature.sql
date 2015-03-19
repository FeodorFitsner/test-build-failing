UPDATE [dbo].[Signatures]
   SET [HtmlString] = replace([HtmlString], '{CompanyString}', '{CompanyName}')
GO

UPDATE [dbo].[Signatures]
   SET [HtmlString] = replace([HtmlString], '{Ext}', '{PhoneExtension}')
GO


