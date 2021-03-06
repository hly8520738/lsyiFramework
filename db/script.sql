USE [dbCore]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 2017/6/20 20:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuthorId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[DelFlag] [int] NOT NULL,
	[LastEditTime] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[ViewCount] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 2017/6/20 20:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 2017/6/20 20:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SystemLog]    Script Date: 2017/6/20 20:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Operate] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tag]    Script Date: 2017/6/20 20:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 2017/6/20 20:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[LastEditTime] [datetime2](7) NOT NULL,
	[DelFlag] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_T_CMS_CONTENTTAG] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Article] ON 

INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (1, 0, 4, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x070000000000000000 AS DateTime2), 0, CAST(0x074EF5B74235EE3C0B AS DateTime2), 2, N'阿里云专有网络公网ip打不开的办法', 0)
INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (3, 0, 2, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x070000000000000000 AS DateTime2), 0, CAST(0x07CE44E99235EE3C0B AS DateTime2), 2, N'阿里云专有网络公网ip打不开的办法', 0)
INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (4, 0, 2, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x0780CD86C6AFEB3C0B AS DateTime2), 0, CAST(0x07C202AF9535EE3C0B AS DateTime2), 2, N'阿里云专有网络公网ip打不开的办法', 0)
INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (5, 0, 2, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x07006F949B06EC3C0B AS DateTime2), 0, CAST(0x07A5C7389835EE3C0B AS DateTime2), 2, N'阿里云专有网络公网ip打不开的办法', 0)
INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (6, 0, 2, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x0700508AA106EC3C0B AS DateTime2), 0, CAST(0x0707B86C9A35EE3C0B AS DateTime2), 2, N'阿里云专有网络公网ip打不开的办法', 0)
INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (7, 0, 2, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x0700AAECA306EC3C0B AS DateTime2), 0, CAST(0x072326FC9C35EE3C0B AS DateTime2), 2, N'阿里云专有网络公网ip打不开的办法', 0)
INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (9, 0, 2, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x07804EACAB06EC3C0B AS DateTime2), 0, CAST(0x0722D0459F35EE3C0B AS DateTime2), 2, N'阿里云专有网络公网ip打不开的办法', 0)
INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (10, 0, 1, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x07804725F117EC3C0B AS DateTime2), 0, CAST(0x0762B68EA135EE3C0B AS DateTime2), 1, N'阿里云专有网络公网ip打不开的办法', 0)
INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (11, 0, 2, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x070035640818EC3C0B AS DateTime2), 0, CAST(0x07FEA3AFA435EE3C0B AS DateTime2), 2, N'阿里云专有网络公网ip打不开的办法', 0)
INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (12, 0, 2, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x0700E9280D18EC3C0B AS DateTime2), 0, CAST(0x07E2A1B0A635EE3C0B AS DateTime2), 2, N'阿里云专有网络公网ip打不开的办法', 0)
INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (13, 0, 2, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x07001FE8331AEC3C0B AS DateTime2), 0, CAST(0x0771CFABA835EE3C0B AS DateTime2), 2, N'阿里云专有网络公网ip打不开的办法', 0)
INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (14, 0, 2, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x07803C14381AEC3C0B AS DateTime2), 0, CAST(0x07B1CE63B635EE3C0B AS DateTime2), 2, N'阿里云专有网络公网ip打不开的办法', 0)
INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (15, 0, 2, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x078096763A1AEC3C0B AS DateTime2), 0, CAST(0x072FCC9FAA35EE3C0B AS DateTime2), 2, N'阿里云专有网络公网ip打不开的办法', 0)
INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (16, 0, 2, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x070000000000000000 AS DateTime2), 0, CAST(0x07AAC9BCAC35EE3C0B AS DateTime2), 2, N'阿里云专有网络公网ip打不开的办法', 0)
INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (17, 0, 2, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x070019DBA10FED3C0B AS DateTime2), 0, CAST(0x07EB1555B335EE3C0B AS DateTime2), 2, N'阿里云专有网络公网ip打不开的办法', 0)
INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (18, 0, 2, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x07803EDFC591ED3C0B AS DateTime2), 0, CAST(0x073D6DDC8A35EE3C0B AS DateTime2), 2, N'阿里云专有网络公网ip打不开的办法', 0)
INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (19, 0, 1, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x07805771E891ED3C0B AS DateTime2), 0, CAST(0x07F88AF08C35EE3C0B AS DateTime2), 1, N'阿里云专有网络公网ip打不开的办法', 0)
INSERT [dbo].[Article] ([Id], [AuthorId], [CategoryId], [Content], [CreateTime], [DelFlag], [LastEditTime], [Status], [Title], [ViewCount]) VALUES (20, 0, 1, N'最近不少人因为最新活动，买了优惠的服务器。但是在配置解析后发现不能通过外网访问服务器。

那是因为现在买的最新优惠的服务器是专有网络，而非经典网络。
至于专有网络和经典网络的区别阿里云官方有解释，但对于小白来说还是看的一知半解！

如果你现在买的最新优惠服务器，是专用网络，而解析后打不开，请按照以下方法解决：
第一步：登陆www.aliyun.com
第二步：选择-云服务器ECS-网络安全-安全组
第三步：在安全组选择-配置规则-添加安全组规则

规则方向：入方向
授权策略：允许
协议类型：自定义tcp
端口范围：80/80
授权对象：0.0.0.0/0
同样端口为22的SSH登录不了的话，继续添加一条新规则，跟上面一样，只不过是给端口范围改为：22/22。

然后点击确定,你输入域名或外网ip就可以看到已经可以用了。

原文地址：https://bbs.aliyun.com/read/315758.html?spm=5176.bbsr315754.0.0.aM7Q36&displayMode=1', CAST(0x0700DD26F691ED3C0B AS DateTime2), 0, CAST(0x0731F9D98E35EE3C0B AS DateTime2), 1, N'阿里云专有网络公网ip打不开的办法', 0)
SET IDENTITY_INSERT [dbo].[Article] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'科技')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'生活')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'编程')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'管理员')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'普通用户')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (4, N'啊啊')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[SystemLog] ON 

INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1449, CAST(0x07FA72FFB912ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1450, CAST(0x07DEA8861813ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1451, CAST(0x076699895313ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1452, CAST(0x070BA623A013ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1456, CAST(0x07F714090A82ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1457, CAST(0x07674FF25282ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1458, CAST(0x07C139AAFC82ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1459, CAST(0x070C3B395583ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1460, CAST(0x07170EC08D83ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1461, CAST(0x0701672B3084ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1462, CAST(0x07DA318C7584ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1463, CAST(0x076DF7552285ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1464, CAST(0x074F2A157485ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1465, CAST(0x0774B9FACD85ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1466, CAST(0x079166AB0086ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1467, CAST(0x07AF85E58786ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1468, CAST(0x076EA6F71887ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1469, CAST(0x07A18CE7C887ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1470, CAST(0x078E85A16E88ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1471, CAST(0x07B815783589ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1472, CAST(0x077CBFE9F489ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1473, CAST(0x07499BD0F58AED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1474, CAST(0x07E9C403678BED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1475, CAST(0x07188B710E8CED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1476, CAST(0x070A05BD528CED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1477, CAST(0x07315859D58CED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1478, CAST(0x072862DF308DED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1479, CAST(0x075DAD6EFB8DED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1480, CAST(0x0722E5182F8EED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1481, CAST(0x07EFEA897C8EED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1482, CAST(0x0746BC65C48EED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1483, CAST(0x07950F8B028FED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1484, CAST(0x0773817D358FED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1485, CAST(0x07CCA99D6A8FED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1486, CAST(0x07F53875B090ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1487, CAST(0x07016D118791ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1488, CAST(0x07636BFA3135EE3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1489, CAST(0x07DCB37DCF36EE3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1490, CAST(0x07A09B1E2A42EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1491, CAST(0x0737177B6442EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1492, CAST(0x07AE7115F042EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1493, CAST(0x07551931DA43EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1494, CAST(0x071C0C7B3D44EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1508, CAST(0x07CA28FE324CEF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1510, CAST(0x0751CB5AC4A6F33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1453, CAST(0x07E294E9FB13ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1454, CAST(0x073748EC2914ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1455, CAST(0x078E0FF8CA14ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1495, CAST(0x0710D7B9CA44EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1496, CAST(0x076943A13445EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1497, CAST(0x0740A5F39345EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1498, CAST(0x0778B5841246EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1499, CAST(0x07EF4D7C4046EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1500, CAST(0x07D5F4077B46EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1501, CAST(0x071F98F56247EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1502, CAST(0x0748C843A947EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1503, CAST(0x07213E86D347EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1504, CAST(0x0752C5D98448EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1505, CAST(0x07293DF3CC48EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1506, CAST(0x07E7C9401249EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1507, CAST(0x071F17A67849EF3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1, CAST(0x07975BA0403BE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (2, CAST(0x075EBACB663CE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (3, CAST(0x076E23A7833CE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (4, CAST(0x07081356043DE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (5, CAST(0x070524B89D3DE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (6, CAST(0x073F3027D53DE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (7, CAST(0x0768C25BFE3DE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (8, CAST(0x07C64AD00D3EE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (9, CAST(0x079AF08F237BE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (10, CAST(0x0792A02B5A7BE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (11, CAST(0x07F3DED2F47BE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (12, CAST(0x0783D5265B7CE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (13, CAST(0x0736E0898B7CE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (14, CAST(0x072A78C9957DE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (15, CAST(0x07011CB2DD7DE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (16, CAST(0x07699501047EE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (17, CAST(0x072C5194347EE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (18, CAST(0x07C83B221C7FE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (19, CAST(0x07889C34CD7FE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (20, CAST(0x0777476B1E83E33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (21, CAST(0x07BD1EC17183E33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (22, CAST(0x07CBC5D5668AE33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (23, CAST(0x077A45D2CAA5E33C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (24, CAST(0x07D97EC3D1A7E53C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (25, CAST(0x07D7DEAAD9A7E53C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (26, CAST(0x0751EEFFDFA7E53C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (27, CAST(0x07408B957128E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (28, CAST(0x07CEAA739781E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (29, CAST(0x07A06FF96682E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (30, CAST(0x07CC56A96F82E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (31, CAST(0x07420B328282E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (32, CAST(0x070BD19E6583E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (33, CAST(0x07A1D8E28183E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (34, CAST(0x07C325410184E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (35, CAST(0x078694702784E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (36, CAST(0x0735B2E7E684E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (37, CAST(0x070739FD9C85E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (38, CAST(0x07934359AA86E73C0B AS DateTime2), N'登陆', N'lishuyiba')
GO
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (39, CAST(0x078BC5A55287E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (40, CAST(0x07035774DC87E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (41, CAST(0x07D43049FA89E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (42, CAST(0x07CE7D1C968AE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (43, CAST(0x07B4E1F52B8BE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (44, CAST(0x072039F55A8BE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (45, CAST(0x07B8692D0F8DE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (46, CAST(0x073F5DAB488EE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (47, CAST(0x078F88A9878EE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (48, CAST(0x076C0516BF8EE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (49, CAST(0x073C695F058FE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (50, CAST(0x07B1F999318FE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (51, CAST(0x0758A23DA18FE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (52, CAST(0x073082F12D90E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (53, CAST(0x07843794B490E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (54, CAST(0x0723C536ADA1E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (55, CAST(0x07AE9CF967A6E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (56, CAST(0x07F6C8CBDBA6E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (57, CAST(0x073FA3F824A7E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (58, CAST(0x07E8FBC2C2A7E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (59, CAST(0x0704B51240A8E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (60, CAST(0x07AD86C791A8E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (61, CAST(0x07E19D00A3A9E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (62, CAST(0x0745E1FC14ABE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (63, CAST(0x073230BDE7ABE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (64, CAST(0x0798E3592DACE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (65, CAST(0x0736489431ACE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (66, CAST(0x0708FF60B3ACE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (67, CAST(0x07DB02BC25ADE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (68, CAST(0x07A2B2016FADE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (69, CAST(0x07CA87F30AAEE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (70, CAST(0x07E4EF1E59AEE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (71, CAST(0x0783D27338B7E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (72, CAST(0x07C2F728F7B8E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (73, CAST(0x07AC31490BBAE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (74, CAST(0x07D76E4E1CBAE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (75, CAST(0x07544F4046BAE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (76, CAST(0x07807A1F92BAE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (77, CAST(0x070842D60FBBE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (78, CAST(0x0773BF153ABBE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (79, CAST(0x07FD62D3BABBE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (80, CAST(0x072EF45DF9BBE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (81, CAST(0x072B94CC4FBCE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (82, CAST(0x073C096833BDE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (83, CAST(0x0735AC31FABDE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (84, CAST(0x075CFCF428BEE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (85, CAST(0x07CA9DA647BFE73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (86, CAST(0x07045479F2C0E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (87, CAST(0x0786FEE7FDC0E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (88, CAST(0x07BC66A52CC1E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (89, CAST(0x07BB71C647C1E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (90, CAST(0x07AE1B41BFC1E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (91, CAST(0x07509D5DC7C1E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (92, CAST(0x07CBED1028C2E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (93, CAST(0x07133759AEC2E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (94, CAST(0x07714272E1C2E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (95, CAST(0x0749B03E5AC3E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (96, CAST(0x07DFEE69C6C3E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (97, CAST(0x077FFF4845C4E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (98, CAST(0x07E611C16EC4E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (99, CAST(0x0755A49831C5E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (100, CAST(0x070F61E8C3C5E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (101, CAST(0x07EE1963D7C6E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (102, CAST(0x07B0340FEFC6E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (103, CAST(0x079FDA5DF2C6E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (104, CAST(0x079466FA33C7E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (105, CAST(0x0713707C6EC7E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (106, CAST(0x0752DDC7CBC7E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (107, CAST(0x071FC74E63C8E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (108, CAST(0x079B1CD4DBC8E73C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (109, CAST(0x07371BDF1F00E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (110, CAST(0x07D59BC5BB00E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (111, CAST(0x07C8E8920201E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (112, CAST(0x073770D52D01E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (113, CAST(0x07007D1F9201E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (114, CAST(0x07C4BCC8BC01E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (115, CAST(0x07C3F1891F02E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (116, CAST(0x072C220F2A03E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (117, CAST(0x07709948CF03E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (118, CAST(0x07307A9F0604E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (119, CAST(0x0703FD1AE204E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (120, CAST(0x0737073D0C05E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (121, CAST(0x07B817FD8605E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (122, CAST(0x0767E42AB605E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (123, CAST(0x07BA03663406E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (124, CAST(0x07C09AF77C06E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (125, CAST(0x079B02C9F407E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (126, CAST(0x079EED975408E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (127, CAST(0x07FA134FF908E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (128, CAST(0x0773D7EBB509E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (129, CAST(0x07F945450417E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (130, CAST(0x071282B64617E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (131, CAST(0x071A45239417E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (132, CAST(0x07E5B4E01E18E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (133, CAST(0x070B0392EF18E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (134, CAST(0x07C9FFD06819E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (135, CAST(0x0792CD75A61AE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (136, CAST(0x077B8B95BC1BE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (137, CAST(0x074370486A1DE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (138, CAST(0x075B4459C11EE83C0B AS DateTime2), N'登陆', N'lishuyiba')
GO
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (139, CAST(0x078AA3825A1FE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (140, CAST(0x071647F8831FE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (141, CAST(0x077BC96BC51FE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (142, CAST(0x07757B8EB420E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (143, CAST(0x07345D515521E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (144, CAST(0x071154AAF521E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (145, CAST(0x0774CF0E7A22E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (146, CAST(0x07059388B922E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (147, CAST(0x0789BB244423E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (148, CAST(0x07EB5F647B23E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (149, CAST(0x07735ACF9923E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (150, CAST(0x07FF74341724E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (151, CAST(0x07513832A324E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (152, CAST(0x074E15EAA425E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (153, CAST(0x07B99F967626E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (154, CAST(0x07BE53747383E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (155, CAST(0x07B124A5C383E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (156, CAST(0x07BECE7F1784E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (157, CAST(0x07CB706C4284E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (158, CAST(0x078FCB32C987E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (159, CAST(0x07FE87900188E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (160, CAST(0x07E92847D48AE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (161, CAST(0x07B5F0847C8BE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (162, CAST(0x07C2F4F5C68BE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (163, CAST(0x07783412428CE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (164, CAST(0x0757D6A66C8CE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (165, CAST(0x07E0632C9B8CE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (166, CAST(0x07AB9AF04F8DE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (167, CAST(0x07ACCEFB248EE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (168, CAST(0x0740F928788EE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (169, CAST(0x07693FFF0C8FE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (170, CAST(0x077DC7185B8FE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (171, CAST(0x070CA6B3AC8FE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (172, CAST(0x0790EF240690E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (173, CAST(0x072ED3204490E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (174, CAST(0x078983C3D791E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (175, CAST(0x07ABC9637F92E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (176, CAST(0x0752B17FE692E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (177, CAST(0x07A63BE19F93E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (178, CAST(0x074FFBEB0094E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (179, CAST(0x076E4CE42F94E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (180, CAST(0x07FAE2767C94E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (181, CAST(0x072D65AC2695E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (182, CAST(0x07BBD590A395E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (183, CAST(0x07731EE5E795E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (184, CAST(0x07EB23F5FA96E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (185, CAST(0x07FD18924997E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (186, CAST(0x07464E99DD97E83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (187, CAST(0x072AD64573AAE83C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (188, CAST(0x07692675B112E93C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (189, CAST(0x07EA4A68F412E93C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (190, CAST(0x073669228C13E93C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (191, CAST(0x0749EA5CE813E93C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (192, CAST(0x07AF17BB1714E93C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (193, CAST(0x070720D26814E93C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (194, CAST(0x07616D04E814E93C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (195, CAST(0x07EDB6A83115E93C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (196, CAST(0x0759FF90AB15E93C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (197, CAST(0x0714662D8316E93C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (198, CAST(0x0778C17DC916E93C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (199, CAST(0x07A6B7D40E17E93C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1188, CAST(0x077FE0880316EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1189, CAST(0x076DF593F416EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1190, CAST(0x0712CB529B17EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1191, CAST(0x0785B8251618EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1192, CAST(0x078252976318EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1193, CAST(0x077A25EBE818EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1194, CAST(0x07E493963619EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1195, CAST(0x071D925BAD19EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1196, CAST(0x070932E34D1AEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1197, CAST(0x07199DB6241BEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1198, CAST(0x07C097C7C81BEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1199, CAST(0x074CC442AE1CEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1200, CAST(0x07D53267001DEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1201, CAST(0x0795C0D7CE1DEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1202, CAST(0x071A9656A91EEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1203, CAST(0x0713CAB61120EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1204, CAST(0x073357FD7C20EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1205, CAST(0x070080530A21EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1206, CAST(0x0711B76F6321EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1207, CAST(0x070BF7BEA422EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1208, CAST(0x07FDAC4AFC22EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1209, CAST(0x07C4200ABE23EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1210, CAST(0x074A5F452927EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1211, CAST(0x07F150E65428EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1212, CAST(0x0765925E1B29EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1213, CAST(0x07D282D6582AEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1214, CAST(0x07062E96CA2AEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1215, CAST(0x077A71AA512BEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1216, CAST(0x07A8C3856E2BEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1217, CAST(0x079F5758542CEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1218, CAST(0x079A1B6CD92CEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1219, CAST(0x077C20F8882EEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1220, CAST(0x07D21C3AD82EEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1221, CAST(0x0799534C542FEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1222, CAST(0x07F137C7CE2FEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1223, CAST(0x075952CF7B30EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1224, CAST(0x071C89F2B930EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1225, CAST(0x076BD3F03431EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1226, CAST(0x071E4EEC3A31EA3C0B AS DateTime2), N'登陆', N'sa66')
GO
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1227, CAST(0x073106633F31EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1228, CAST(0x0721373EBC35EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1229, CAST(0x07CA93CB0538EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1230, CAST(0x07B0A1FF5E38EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1231, CAST(0x07375219DC38EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1232, CAST(0x07078FE04839EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1233, CAST(0x0763B8CF5B39EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1234, CAST(0x07F4E32EA539EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1235, CAST(0x07E4C1D3A939EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1236, CAST(0x07131A79E339EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1237, CAST(0x073BDE1D533AEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1238, CAST(0x07ACDF03793AEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1239, CAST(0x07942680513BEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1240, CAST(0x07BA9D198D3BEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1241, CAST(0x07361964B93BEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1242, CAST(0x0704B4B9663CEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1243, CAST(0x070AA790393DEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1244, CAST(0x073AEFA29D3DEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1245, CAST(0x077292B3DB3DEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1246, CAST(0x07BA5B98B73EEA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1247, CAST(0x07B5EC4FEB40EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1248, CAST(0x07E50DC56441EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1249, CAST(0x07D976BA2942EA3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1250, CAST(0x0799924A0885EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1251, CAST(0x07C1AA7D6985EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1252, CAST(0x0758B47E7386EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1253, CAST(0x07C162BED186EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1254, CAST(0x077ABE9E6B87EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1255, CAST(0x07DB607EA187EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1256, CAST(0x07A175FA2489EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1257, CAST(0x07F1E9E4138AEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1258, CAST(0x07110291A98AEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1259, CAST(0x07F9EECCED8AEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1260, CAST(0x07DDD4FD378BEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1261, CAST(0x07721AD7A98BEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1262, CAST(0x07BD2734FB8BEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1263, CAST(0x0700FE92468CEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1264, CAST(0x07FD1F73418EEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1265, CAST(0x071E3FD7718FEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1266, CAST(0x07BBB49B998FEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1267, CAST(0x07AC97297090EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1268, CAST(0x07E26387D290EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1269, CAST(0x076B80185B91EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1270, CAST(0x07C2637F5692EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1271, CAST(0x07FE6C98EF92EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1272, CAST(0x078EAD015893EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1273, CAST(0x0787782BA993EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1274, CAST(0x07F03457DC93EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1275, CAST(0x07D5FBD73C94EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1276, CAST(0x07ACC8058E94EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1277, CAST(0x0776F972CA94EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1278, CAST(0x07B97BC3E794EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1279, CAST(0x07F964CE1196EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1280, CAST(0x07E71ECB8F96EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1281, CAST(0x07A92776FF96EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1282, CAST(0x0754F07FA497EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1283, CAST(0x07329A191798EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1284, CAST(0x07A6E2896998EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1285, CAST(0x07213E88A198EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1286, CAST(0x07DD3E38E198EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1287, CAST(0x073C36D58999EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1288, CAST(0x07C961ADDA99EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1289, CAST(0x070C1612949AEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1290, CAST(0x07BEF36C369BEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1291, CAST(0x07D6C6D0A09BEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1292, CAST(0x07BE1F0BA19BEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1293, CAST(0x07D8C0EA069CEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1294, CAST(0x07C96934A79CEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1295, CAST(0x07CE6AF0B49DEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1296, CAST(0x070EC291EA9DEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1297, CAST(0x07E40709CEA0EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1298, CAST(0x079A639109A1EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1299, CAST(0x076970E997A1EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1300, CAST(0x0776E3A5F5A1EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1301, CAST(0x07BF51946CA2EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1302, CAST(0x07BD0C5AE2A2EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1303, CAST(0x07DBD3AD67A4EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1304, CAST(0x07135850B2A4EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1305, CAST(0x073412ECB8A5EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1306, CAST(0x076FC07484A6EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1307, CAST(0x07C054F26BA7EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1308, CAST(0x074353EDCCA7EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1309, CAST(0x07A84F3562A8EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1310, CAST(0x076C0234C1A8EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1311, CAST(0x07A6C5F5DAA9EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1312, CAST(0x0793FDBC6EAAEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1313, CAST(0x07D1E97396AAEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1314, CAST(0x0713BDCAAEACEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1315, CAST(0x0733B406E0ACEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1316, CAST(0x07F78B2639ADEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1317, CAST(0x0769FA4E86ADEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1318, CAST(0x07D46187B4ADEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1319, CAST(0x072CB0FE00AEEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1320, CAST(0x07A4DA0E30AEEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1321, CAST(0x07EEF4CB99AEEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1322, CAST(0x07157AA5B7AEEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1323, CAST(0x07DCBC0FCAAEEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1324, CAST(0x07C0285616AFEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1325, CAST(0x07D655F041AFEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1326, CAST(0x07098ECF5BAFEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
GO
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1327, CAST(0x07FC0EF7ABAFEB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1328, CAST(0x0775C9D3AEB0EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1329, CAST(0x07EC88DC66B1EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1330, CAST(0x07FFD0CEF0B1EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1331, CAST(0x072B78443CB5EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1332, CAST(0x0715A0A979C2EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1333, CAST(0x074457D98DC2EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1334, CAST(0x07A2AC57E0C2EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1335, CAST(0x07FAA7CC3CC3EB3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1336, CAST(0x07A18DC29F01EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1337, CAST(0x070D2083E701EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1338, CAST(0x07305D640F02EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1339, CAST(0x07BBBEB76802EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1340, CAST(0x07F950F6E302EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1341, CAST(0x0752D6906E03EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1342, CAST(0x0705B7E9E803EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1343, CAST(0x070BF1FD6B04EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1344, CAST(0x07EE1211D204EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1345, CAST(0x077708062505EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1346, CAST(0x076363BE8B05EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1347, CAST(0x072650E4CF05EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1348, CAST(0x077C894BF505EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1349, CAST(0x07D4F6445D07EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1350, CAST(0x071E5D2C8907EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1351, CAST(0x074A5C88EA07EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1352, CAST(0x07DA08D37D08EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1353, CAST(0x07D7295B4709EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1354, CAST(0x07FDD7947209EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1355, CAST(0x07E91E7ACB09EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1356, CAST(0x07D33728360AEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1357, CAST(0x07D4C975730AEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1358, CAST(0x07F8FF86D30AEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1359, CAST(0x070E0C6E2F0BEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1360, CAST(0x07F24858630BEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1361, CAST(0x0701CA95B60BEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1362, CAST(0x07A7F4A5BC0CEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1363, CAST(0x0729E3D9060DEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1364, CAST(0x072C2716310DEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1365, CAST(0x07313101940DEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1366, CAST(0x07D35F847D0EEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1367, CAST(0x07FF5197CE0FEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1368, CAST(0x0723C0C31C10EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1369, CAST(0x0790908DDC10EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1370, CAST(0x0774FB044011EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1371, CAST(0x07D451D86111EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1372, CAST(0x070D3170A711EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1373, CAST(0x07543F4EC611EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1374, CAST(0x07EBCBAEED11EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1375, CAST(0x07D66CB11612EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1376, CAST(0x079C0768AF12EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1377, CAST(0x07092545CE12EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1378, CAST(0x073C88420F13EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1379, CAST(0x0764BC454D13EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1380, CAST(0x0718357A9F13EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1381, CAST(0x077C69AFDD13EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1382, CAST(0x07C4D89D2E14EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1383, CAST(0x074A44D38A14EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1384, CAST(0x074474393915EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1385, CAST(0x07B9FEF16615EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1386, CAST(0x079C344B3B16EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1387, CAST(0x07F5EAC8AB16EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1388, CAST(0x07FD258AF016EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1389, CAST(0x073F97757517EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1390, CAST(0x074E6DEFE117EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1391, CAST(0x07414DBDBB18EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1392, CAST(0x073C49D37E19EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1393, CAST(0x07F753C6D11BEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1394, CAST(0x073959E74F1CEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1395, CAST(0x07FE298EA01CEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1396, CAST(0x0743B932DC1CEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1397, CAST(0x07973449121DEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1398, CAST(0x078485C5701DEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1399, CAST(0x0717C094031EEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1400, CAST(0x0736724F5A3FEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1401, CAST(0x0767F6E19C3FEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1402, CAST(0x07E82BEDD643EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1403, CAST(0x07301922D944EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1404, CAST(0x07F52E628B45EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1405, CAST(0x07BF064AAD45EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1406, CAST(0x0748FE641646EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1407, CAST(0x07063CE33E46EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1408, CAST(0x0758903AA747EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1409, CAST(0x0770594DEE47EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1410, CAST(0x07CDF24C2348EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1411, CAST(0x07B989FE5048EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1412, CAST(0x07703DF9A648EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1413, CAST(0x07085E06E848EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1414, CAST(0x0723B1542F49EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1415, CAST(0x078010824249EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1416, CAST(0x073FBC444D49EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1417, CAST(0x074707DBBD49EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1418, CAST(0x0799A86C834BEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1419, CAST(0x07141A1B72B1EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1420, CAST(0x0767001095B1EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1421, CAST(0x07EDD235B0B1EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1422, CAST(0x07904A8AA7B6EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1423, CAST(0x0784D47A4CB9EC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1424, CAST(0x07DCD71A70BAEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1425, CAST(0x07442736BBBBEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1426, CAST(0x07111DD473BCEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
GO
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1427, CAST(0x07DC5B4C9EBDEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1428, CAST(0x07A2A3A7DFBDEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1429, CAST(0x079D7D5F64BEEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1430, CAST(0x07696C270ABFEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1431, CAST(0x07E9A33898BFEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1432, CAST(0x07C1B373C4BFEC3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1433, CAST(0x076B17D3EE08ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1434, CAST(0x07477EC85809ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1435, CAST(0x0790A0A6C80AED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1436, CAST(0x070CBB18180BED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1437, CAST(0x07A4C6898B0DED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1438, CAST(0x079DC393130EED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1439, CAST(0x070F365C370EED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1440, CAST(0x07CCA5C2820EED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1441, CAST(0x07DE237BCC0EED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1442, CAST(0x07F1B1B5FE0EED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1443, CAST(0x07E6C91F180FED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1444, CAST(0x073518B04B0FED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1445, CAST(0x075EA0706F0FED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1446, CAST(0x076711E02110ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1447, CAST(0x0724D34FBE10ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1448, CAST(0x07171D0D4912ED3C0B AS DateTime2), N'登陆', N'lishuyiba')
INSERT [dbo].[SystemLog] ([Id], [Date], [Operate], [UserName]) VALUES (1509, CAST(0x076EF12CCE4EEF3C0B AS DateTime2), N'登陆', N'lishuyiba')
SET IDENTITY_INSERT [dbo].[SystemLog] OFF
SET IDENTITY_INSERT [dbo].[Tag] ON 

INSERT [dbo].[Tag] ([Id], [Name]) VALUES (1, N'博客')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (2, N'开发')
SET IDENTITY_INSERT [dbo].[Tag] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (2562, N'lishuyiba', N'sql', CAST(0x0791DEB8FD23E83C0B AS DateTime2), CAST(0x0791DEB8FD23E83C0B AS DateTime2), 0, 1, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51955, N'sa631', N'1', CAST(0x07BA48C8ADB1EC3C0B AS DateTime2), CAST(0x07BA48C8ADB1EC3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51956, N'sa942', N'1', CAST(0x075BB9C2A6B6EC3C0B AS DateTime2), CAST(0x075BB9C2A6B6EC3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51957, N'sa180', N'sql180', CAST(0x0702475C43B9EC3C0B AS DateTime2), CAST(0x0702475C43B9EC3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51958, N'sa575', N'sql575', CAST(0x0754FAC86CBAEC3C0B AS DateTime2), CAST(0x0754FAC86CBAEC3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51959, N'sa820', N'sql820', CAST(0x07F316B1B0BBEC3C0B AS DateTime2), CAST(0x07F316B1B0BBEC3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51960, N'sa689', N'sql689', CAST(0x07B2C61D73BCEC3C0B AS DateTime2), CAST(0x07B2C61D73BCEC3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51961, N'sa754', N'sql754', CAST(0x079A6D8B96BDEC3C0B AS DateTime2), CAST(0x079A6D8B96BDEC3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51962, N'sa897', N'sql897', CAST(0x07337907DFBDEC3C0B AS DateTime2), CAST(0x07337907DFBDEC3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51963, N'sa28', N'sql28', CAST(0x07E348BF63BEEC3C0B AS DateTime2), CAST(0x07E348BF63BEEC3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51964, N'sa610', N'sql610', CAST(0x07C453B7FEBEEC3C0B AS DateTime2), CAST(0x07C453B7FEBEEC3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51965, N'sa838', N'sql838', CAST(0x073EC6F295BFEC3C0B AS DateTime2), CAST(0x073EC6F295BFEC3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51966, N'sa677', N'sql677', CAST(0x07870D9EC3BFEC3C0B AS DateTime2), CAST(0x07870D9EC3BFEC3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51967, N'sa424', N'sql424', CAST(0x07993F05EE08ED3C0B AS DateTime2), CAST(0x07993F05EE08ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51968, N'sa874', N'sql874', CAST(0x07BF37B35509ED3C0B AS DateTime2), CAST(0x07BF37B35509ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51969, N'sa309', N'sql309', CAST(0x07C68EBCBF0AED3C0B AS DateTime2), CAST(0x07C68EBCBF0AED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51970, N'sa171', N'sql171', CAST(0x0752CE16170BED3C0B AS DateTime2), CAST(0x0752CE16170BED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51971, N'sa595', N'sql595', CAST(0x07BF65F0800DED3C0B AS DateTime2), CAST(0x07BF65F0800DED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51972, N'sa326', N'sql326', CAST(0x0797CF55880DED3C0B AS DateTime2), CAST(0x07C2F655880DED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51973, N'sa100', N'sql100', CAST(0x07251F398A0DED3C0B AS DateTime2), CAST(0x07251F398A0DED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51974, N'sa462', N'sql462', CAST(0x07BFE9DE120EED3C0B AS DateTime2), CAST(0x07BFE9DE120EED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51975, N'sa673', N'sql673', CAST(0x07E6B819340EED3C0B AS DateTime2), CAST(0x07E6B819340EED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51976, N'sa167', N'sql167', CAST(0x073DF89B790EED3C0B AS DateTime2), CAST(0x073DF89B790EED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51977, N'sa700', N'sql700', CAST(0x075413B0CB0EED3C0B AS DateTime2), CAST(0x075413B0CB0EED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51978, N'sa28', N'sql28', CAST(0x07708A70FB0EED3C0B AS DateTime2), CAST(0x07708A70FB0EED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51979, N'sa336', N'sql336', CAST(0x07AB04F9FD0EED3C0B AS DateTime2), CAST(0x07AB04F9FD0EED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51980, N'sa89', N'sql89', CAST(0x0772C3F2100FED3C0B AS DateTime2), CAST(0x0772C3F2100FED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51981, N'sa945', N'sql945', CAST(0x07483B0D110FED3C0B AS DateTime2), CAST(0x07483B0D110FED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51982, N'sa428', N'sql428', CAST(0x0789CA11420FED3C0B AS DateTime2), CAST(0x0789CA11420FED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51983, N'sa41', N'sql41', CAST(0x07137EAF4A0FED3C0B AS DateTime2), CAST(0x07137EAF4A0FED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51984, N'sa859', N'sql859', CAST(0x07959528650FED3C0B AS DateTime2), CAST(0x07959528650FED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51985, N'sa922', N'sql922', CAST(0x07FBEF091E10ED3C0B AS DateTime2), CAST(0x07FBEF091E10ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51986, N'sa283', N'sql283', CAST(0x0747CF5ABD10ED3C0B AS DateTime2), CAST(0x0747CF5ABD10ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51987, N'sa142', N'sql142', CAST(0x07D21C014212ED3C0B AS DateTime2), CAST(0x07D21C014212ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51988, N'sa64', N'sql64', CAST(0x07AD82C3B512ED3C0B AS DateTime2), CAST(0x07AD82C3B512ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51989, N'sa780', N'sql780', CAST(0x0771E1670D13ED3C0B AS DateTime2), CAST(0x0771E1670D13ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51990, N'sa14', N'sql14', CAST(0x07185BA21613ED3C0B AS DateTime2), CAST(0x07185BA21613ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51991, N'sa211', N'sql211', CAST(0x07FB486C5113ED3C0B AS DateTime2), CAST(0x07FB486C5113ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51992, N'sa598', N'sql598', CAST(0x0780DB145313ED3C0B AS DateTime2), CAST(0x0780DB145313ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51993, N'sa571', N'sql571', CAST(0x07F0514E9F13ED3C0B AS DateTime2), CAST(0x07F0514E9F13ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51994, N'sa865', N'sql865', CAST(0x07B6032AF613ED3C0B AS DateTime2), CAST(0x07B6032AF613ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51995, N'sa985', N'sql985', CAST(0x070C05142814ED3C0B AS DateTime2), CAST(0x070C05142814ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51996, N'sa53', N'sql53', CAST(0x07385E612914ED3C0B AS DateTime2), CAST(0x07385E612914ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51997, N'sa185', N'sql185', CAST(0x07370704BB14ED3C0B AS DateTime2), CAST(0x07370704BB14ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51998, N'sa848', N'sql848', CAST(0x071393F5E681ED3C0B AS DateTime2), CAST(0x071393F5E681ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (51999, N'sa411', N'sql411', CAST(0x076D41725082ED3C0B AS DateTime2), CAST(0x076D41725082ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52000, N'sa137', N'sql137', CAST(0x077C09045282ED3C0B AS DateTime2), CAST(0x077C09045282ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52001, N'sa93', N'sql93', CAST(0x07B16961FA82ED3C0B AS DateTime2), CAST(0x07B16961FA82ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52002, N'sa940', N'sql940', CAST(0x0778A4C3FB82ED3C0B AS DateTime2), CAST(0x0778A4C3FB82ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52003, N'sa655', N'sql655', CAST(0x073637334783ED3C0B AS DateTime2), CAST(0x073637334783ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52004, N'sa238', N'sql238', CAST(0x0700B3D58983ED3C0B AS DateTime2), CAST(0x0700B3D58983ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52005, N'sa736', N'sql736', CAST(0x07E0E47E2D84ED3C0B AS DateTime2), CAST(0x07E0E47E2D84ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52006, N'sa799', N'sql799', CAST(0x070FE9F06F84ED3C0B AS DateTime2), CAST(0x070FE9F06F84ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52007, N'sa352', N'sql352', CAST(0x076922857384ED3C0B AS DateTime2), CAST(0x076922857384ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52008, N'sa363', N'sql363', CAST(0x0732C4E37484ED3C0B AS DateTime2), CAST(0x0732C4E37484ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52009, N'sa263', N'sql263', CAST(0x07D3E4350A85ED3C0B AS DateTime2), CAST(0x07D3E4350A85ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52010, N'sa880', N'sql880', CAST(0x070CA6D51E85ED3C0B AS DateTime2), CAST(0x070CA6D51E85ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52011, N'sa640', N'sql640', CAST(0x076723657285ED3C0B AS DateTime2), CAST(0x076723657285ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52012, N'sa167', N'sql167', CAST(0x07B6A56B7385ED3C0B AS DateTime2), CAST(0x07B6A56B7385ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52013, N'sa629', N'sql629', CAST(0x07D0FD02CC85ED3C0B AS DateTime2), CAST(0x07D0FD02CC85ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52014, N'sa500', N'sql500', CAST(0x0735D54ACD85ED3C0B AS DateTime2), CAST(0x0735D54ACD85ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52015, N'sa46', N'sql46', CAST(0x07DE2717FF85ED3C0B AS DateTime2), CAST(0x07DE2717FF85ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52016, N'sa791', N'sql791', CAST(0x07E0C00A0086ED3C0B AS DateTime2), CAST(0x07E0C00A0086ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52017, N'sa338', N'sql338', CAST(0x07269D588786ED3C0B AS DateTime2), CAST(0x07269D588786ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52018, N'sa45', N'sql45', CAST(0x07E9F1601887ED3C0B AS DateTime2), CAST(0x07E9F1601887ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52019, N'sa620', N'sql620', CAST(0x07218745C887ED3C0B AS DateTime2), CAST(0x07218745C887ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52020, N'sa468', N'sql468', CAST(0x07E3D2EE6D88ED3C0B AS DateTime2), CAST(0x07E3D2EE6D88ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52021, N'sa756', N'sql756', CAST(0x07B296AE3489ED3C0B AS DateTime2), CAST(0x07B296AE3489ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52022, N'sa962', N'sql962', CAST(0x07C70190E689ED3C0B AS DateTime2), CAST(0x07C70190E689ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52023, N'sa388', N'sql388', CAST(0x070F2A275C8AED3C0B AS DateTime2), CAST(0x073551275C8AED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52024, N'sa386', N'sql386', CAST(0x0730BBC6588BED3C0B AS DateTime2), CAST(0x0730BBC6588BED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52025, N'sa789', N'sql789', CAST(0x0713774F0D8CED3C0B AS DateTime2), CAST(0x0713774F0D8CED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52026, N'sa769', N'sql769', CAST(0x074258EF0D8CED3C0B AS DateTime2), CAST(0x074258EF0D8CED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52027, N'sa109', N'sql109', CAST(0x07B11A2C528CED3C0B AS DateTime2), CAST(0x07B11A2C528CED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52028, N'sa806', N'sql806', CAST(0x07DBE6BDD48CED3C0B AS DateTime2), CAST(0x07DBE6BDD48CED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52029, N'sa862', N'sql862', CAST(0x077CA15F308DED3C0B AS DateTime2), CAST(0x077CA15F308DED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52030, N'sa504', N'sql504', CAST(0x076179DFFA8DED3C0B AS DateTime2), CAST(0x076179DFFA8DED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52031, N'sa402', N'sql402', CAST(0x0738DF7B2E8EED3C0B AS DateTime2), CAST(0x0738DF7B2E8EED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52032, N'sa692', N'sql692', CAST(0x07AB92F87B8EED3C0B AS DateTime2), CAST(0x07AB92F87B8EED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52033, N'sa497', N'sql497', CAST(0x070892D1C38EED3C0B AS DateTime2), CAST(0x070892D1C38EED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52034, N'sa868', N'sql868', CAST(0x0766D6E3018FED3C0B AS DateTime2), CAST(0x0766D6E3018FED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52035, N'sa735', N'sql735', CAST(0x0748C2C2348FED3C0B AS DateTime2), CAST(0x0748C2C2348FED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52036, N'sa497', N'sql497', CAST(0x07F71A096A8FED3C0B AS DateTime2), CAST(0x07F71A096A8FED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52037, N'sa478', N'sql478', CAST(0x07BAAF3EAE90ED3C0B AS DateTime2), CAST(0x07BAAF3EAE90ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52038, N'sa238', N'sql238', CAST(0x07A1D2A9AF90ED3C0B AS DateTime2), CAST(0x07A1D2A9AF90ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52039, N'sa494', N'sql494', CAST(0x07D922228691ED3C0B AS DateTime2), CAST(0x07D922228691ED3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52040, N'sa565', N'sql565', CAST(0x077BDECD1926EE3C0B AS DateTime2), CAST(0x077BDECD1926EE3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52041, N'sa857', N'sql857', CAST(0x07A5777B9B32EE3C0B AS DateTime2), CAST(0x07A5777B9B32EE3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52042, N'sa376', N'sql376', CAST(0x072E313A1A33EE3C0B AS DateTime2), CAST(0x072E313A1A33EE3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52043, N'sa207', N'sql207', CAST(0x07F5460D3135EE3C0B AS DateTime2), CAST(0x07F5460D3135EE3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52044, N'sa530', N'sql530', CAST(0x075CB50EC936EE3C0B AS DateTime2), CAST(0x075CB50EC936EE3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52045, N'sa350', N'sql350', CAST(0x0777D527CC36EE3C0B AS DateTime2), CAST(0x0777D527CC36EE3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52046, N'sa437', N'sql437', CAST(0x07A790D4CC36EE3C0B AS DateTime2), CAST(0x07A790D4CC36EE3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52047, N'sa17', N'sql17', CAST(0x07B1FDB0CE36EE3C0B AS DateTime2), CAST(0x07B1FDB0CE36EE3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52048, N'sa507', N'sql507', CAST(0x07F25CD92842EF3C0B AS DateTime2), CAST(0x071D84D92842EF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52049, N'sa383', N'sql383', CAST(0x076EF3466342EF3C0B AS DateTime2), CAST(0x076EF3466342EF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52050, N'sa851', N'sql851', CAST(0x078FF7D2EE42EF3C0B AS DateTime2), CAST(0x078FF7D2EE42EF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52051, N'sa717', N'sql717', CAST(0x07DE2C16D943EF3C0B AS DateTime2), CAST(0x07DE2C16D943EF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52052, N'sa922', N'sql922', CAST(0x07CBB65C3C44EF3C0B AS DateTime2), CAST(0x07CBB65C3C44EF3C0B AS DateTime2), 0, 2, 0)
GO
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52053, N'sa509', N'sql509', CAST(0x07F17E53C944EF3C0B AS DateTime2), CAST(0x07F17E53C944EF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52054, N'sa804', N'sql804', CAST(0x074F084B3345EF3C0B AS DateTime2), CAST(0x074F084B3345EF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52055, N'sa551', N'sql551', CAST(0x071F2B979245EF3C0B AS DateTime2), CAST(0x071F2B979245EF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52056, N'sa648', N'sql648', CAST(0x07B43F441146EF3C0B AS DateTime2), CAST(0x07B43F441146EF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52057, N'sa39', N'sql39', CAST(0x073F63283F46EF3C0B AS DateTime2), CAST(0x073F63283F46EF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52058, N'sa287', N'sql287', CAST(0x07A3620E7A46EF3C0B AS DateTime2), CAST(0x07A3620E7A46EF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52059, N'sa577', N'sql577', CAST(0x07DC0A906147EF3C0B AS DateTime2), CAST(0x07DC0A906147EF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52060, N'sa743', N'sql743', CAST(0x074E49CCA747EF3C0B AS DateTime2), CAST(0x074E49CCA747EF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52061, N'sa662', N'sql662', CAST(0x077F333BD147EF3C0B AS DateTime2), CAST(0x077F333BD147EF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52062, N'sa211', N'sql211', CAST(0x07BC16D58248EF3C0B AS DateTime2), CAST(0x07482AD58248EF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52063, N'sa701', N'sql701', CAST(0x07BA7CE3CB48EF3C0B AS DateTime2), CAST(0x07BA7CE3CB48EF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52064, N'sa404', N'sql404', CAST(0x07AB02F40F49EF3C0B AS DateTime2), CAST(0x07AB02F40F49EF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52065, N'sa603', N'sql603', CAST(0x07D78DAD7749EF3C0B AS DateTime2), CAST(0x07D78DAD7749EF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52066, N'sa698', N'sql698', CAST(0x0757D8C5314CEF3C0B AS DateTime2), CAST(0x0757D8C5314CEF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52067, N'sa841', N'sql841', CAST(0x073002DDCC4EEF3C0B AS DateTime2), CAST(0x073002DDCC4EEF3C0B AS DateTime2), 0, 2, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52068, N'sa781', N'sql781', CAST(0x078BF4A2BBA6F33C0B AS DateTime2), CAST(0x078BF4A2BBA6F33C0B AS DateTime2), 0, 0, 0)
INSERT [dbo].[Users] ([Id], [Account], [Password], [CreateTime], [LastEditTime], [DelFlag], [RoleID], [Status]) VALUES (52069, N'sa228', N'sql228', CAST(0x07563E8448A7F33C0B AS DateTime2), CAST(0x07563E8448A7F33C0B AS DateTime2), 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
