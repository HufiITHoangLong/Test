CREATE DATABASE [QLCoffe]
GO
USE [QLCoffe]
GO
/****** Object:  UserDefinedFunction [dbo].[LayMaBanMoi]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[LayMaBanMoi]()
RETURNS  INT
AS BEGIN
	DECLARE @MaBan INT;
	SELECT @MaBan =  MAX(MaBan)
	FROM BAN;
	RETURN @MaBan + 1 ;

END
GO
/****** Object:  UserDefinedFunction [dbo].[LayMaHoaDonMoi]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--------------------------------------------------------------
CREATE FUNCTION [dbo].[LayMaHoaDonMoi]()
RETURNS  INT
AS BEGIN
	DECLARE @MaHD INT;
	SELECT @MaHD = MAX(MaHD)
	FROM HOADON;
	RETURN @MaHD+1;

END
GO
/****** Object:  UserDefinedFunction [dbo].[LayMaLoaiMonMoi]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[LayMaLoaiMonMoi]()
RETURNS  INT
AS BEGIN
	DECLARE @MaLoaiMon INT;
	SELECT @MaLoaiMon =  MAX(MaLoaiMon)
	FROM LOAIMON;
	RETURN @MaLoaiMon + 1 ;

END
GO
/****** Object:  UserDefinedFunction [dbo].[LayMaMonMoi]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[LayMaMonMoi]()
RETURNS  INT
AS BEGIN
	DECLARE @MaMon INT;
	SELECT @MaMon =  MAX(MaMon)
	FROM MON;
	RETURN @MaMon+1 ;

END
GO
/****** Object:  UserDefinedFunction [dbo].[LayMaNhanVienMoi]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[LayMaNhanVienMoi]()
RETURNS  INT
AS BEGIN
	DECLARE @MaNV INT;
	SELECT @MaNV =  MAX(MaNV)
	FROM NHANVIEN;
	RETURN @MaNV + 1 ;

END
GO
/****** Object:  UserDefinedFunction [dbo].[LayMaPhieuDatBanMoi]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[LayMaPhieuDatBanMoi]()
RETURNS  INT
AS BEGIN
	DECLARE @MaPDB INT;
	SELECT @MaPDB = MAX(MaPDB)
	FROM PHIEUDATBAN;
	RETURN @MaPDB+1;

END
GO
/****** Object:  Table [dbo].[BAN]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAN](
	[MaBan] [int] NOT NULL,
	[TenBan] [nvarchar](50) NULL,
	[SoChoNgoi] [int] NULL,
	[MaKV] [varchar](10) NULL,
	[TrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_HOADON]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HOADON](
	[MaHD] [int] NOT NULL,
	[MaMon] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [money] NULL,
 CONSTRAINT [PK_CTHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PHIEUNHAP]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PHIEUNHAP](
	[MaPN] [int] NOT NULL,
	[MaNL] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [money] NULL,
 CONSTRAINT [PK_CTPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [date] NULL,
	[MaNV] [int] NULL,
	[MaBan] [int] NULL,
	[TongTien] [money] NULL,
	[TrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUVUC]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUVUC](
	[MaKV] [varchar](10) NOT NULL,
	[TenKV] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIMON]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIMON](
	[MaLoaiMon] [int] NOT NULL,
	[TenLoaiMon] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MON]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MON](
	[MaMon] [int] NOT NULL,
	[TenMon] [nvarchar](50) NULL,
	[DonGia] [money] NULL,
	[MaLoaiMon] [int] NULL,
	[TrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[TaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NULL,
	[MaNV] [int] NULL,
	[TrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUYENLIEU]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUYENLIEU](
	[MaNL] [int] NOT NULL,
	[TenNL] [nvarchar](50) NULL,
	[DonGiaNhap] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [int] NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [date] NULL,
	[SDT] [varchar](20) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[Luong] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUDATBAN]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUDATBAN](
	[MaPDB] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [datetime] NULL,
	[NgayDat] [datetime] NULL,
	[TenKH] [nvarchar](50) NULL,
	[SDT] [varchar](20) NULL,
	[SoNguoiNgoi] [int] NULL,
	[TienCoc] [money] NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [date] NULL,
	[MaNV] [int] NULL,
	[TongTien] [money] NULL,
	[TrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (1, N'Bàn 01', 2, N'TT', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (2, N'Bàn 02', 2, N'TT', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (3, N'Bàn 03', 2, N'TT', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (4, N'Bàn 04', 2, N'TT', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (5, N'Bàn 05', 2, N'TT', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (6, N'Bàn 06', 2, N'TT', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (7, N'Bàn 07', 2, N'TT', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (8, N'Bàn 08', 2, N'TT', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (9, N'Bàn 09', 2, N'TT', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (10, N'Bàn 10', 2, N'TT', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (11, N'Bàn 11', 4, N'PL', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (12, N'Bàn 12', 4, N'PL', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (13, N'Bàn 13', 4, N'PL', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (14, N'Bàn 14', 4, N'PL', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (15, N'Bàn 15', 4, N'PL', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (16, N'Bàn 16', 2, N'L1', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (17, N'Bàn 17', 2, N'L1', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (18, N'Bàn 18', 2, N'L1', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (19, N'Bàn 19', 2, N'L1', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (20, N'Bàn 20', 2, N'L1', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (21, N'Bàn 21', 2, N'L1', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (22, N'Bàn 22', 2, N'L1', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (23, N'Bàn 23', 2, N'L1', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (24, N'Bàn 24', 2, N'L1', N'Trống')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [SoChoNgoi], [MaKV], [TrangThai]) VALUES (25, N'Bàn 25', 2, N'L1', N'Trống')
GO
INSERT [dbo].[CT_HOADON] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (1, 1, 1, 20000.0000)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (1, 2, 2, 50000.0000)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaMon], [SoLuong], [ThanhTien]) VALUES (1, 3, 1, 25000.0000)
GO
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([MaHD], [NgayLap], [MaNV], [MaBan], [TongTien], [TrangThai]) VALUES (1, CAST(N'2021-06-07' AS Date), 1, 1, 95000.0000, N'Đã thanh toán')
SET IDENTITY_INSERT [dbo].[HOADON] OFF
GO
INSERT [dbo].[KHUVUC] ([MaKV], [TenKV]) VALUES (N'L1', N'Lầu')
INSERT [dbo].[KHUVUC] ([MaKV], [TenKV]) VALUES (N'PL', N'Phòng lạnh')
INSERT [dbo].[KHUVUC] ([MaKV], [TenKV]) VALUES (N'TT', N'Tầng Trệt')
GO
INSERT [dbo].[LOAIMON] ([MaLoaiMon], [TenLoaiMon]) VALUES (1, N'Cafe')
INSERT [dbo].[LOAIMON] ([MaLoaiMon], [TenLoaiMon]) VALUES (2, N'Nước ngọt')
INSERT [dbo].[LOAIMON] ([MaLoaiMon], [TenLoaiMon]) VALUES (3, N'Nước ép')
INSERT [dbo].[LOAIMON] ([MaLoaiMon], [TenLoaiMon]) VALUES (4, N'Sinh tố')
INSERT [dbo].[LOAIMON] ([MaLoaiMon], [TenLoaiMon]) VALUES (5, N'Trà')
INSERT [dbo].[LOAIMON] ([MaLoaiMon], [TenLoaiMon]) VALUES (6, N'Đá xoay')
GO
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (1, N'Cafe Đá', 20000.0000, 1, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (2, N'Cafe Sữa', 25000.0000, 1, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (3, N'Bạc Xỉu', 25000.0000, 1, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (4, N'Pepsi', 15000.0000, 2, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (5, N'Sting', 15000.0000, 2, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (6, N'Redbull', 20000.0000, 2, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (7, N'Mirinda Cam', 15000.0000, 2, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (8, N'Mirinda Soda Kem', 20000.0000, 2, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (9, N'Cam ép', 20000.0000, 3, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (10, N'Ổi ép', 20000.0000, 3, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (11, N'Chanh dây', 20000.0000, 3, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (12, N'Cà rốt', 20000.0000, 3, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (13, N'ST Bơ', 25000.0000, 4, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (14, N'ST Mãng Cầu', 25000.0000, 4, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (15, N'ST Dưa Ngang', 25000.0000, 4, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (16, N'ST Thơm', 15000.0000, 4, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (17, N'ST Sampo', 15000.0000, 4, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (18, N'Trà Vải', 20000.0000, 5, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (19, N'Trà Đào', 25000.0000, 5, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (20, N'Trà Chanh', 20000.0000, 5, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (21, N'Trà Olong', 20000.0000, 5, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (22, N'Cacao Đá Xay', 30000.0000, 6, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (23, N'Milo Đá Xay', 30000.0000, 6, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (24, N'Yaout Dâu', 30000.0000, 6, N'Còn')
INSERT [dbo].[MON] ([MaMon], [TenMon], [DonGia], [MaLoaiMon], [TrangThai]) VALUES (25, N'Yaout Kiwi', 30000.0000, 6, N'Còn')
GO
INSERT [dbo].[NGUOIDUNG] ([TaiKhoan], [MatKhau], [MaNV], [TrangThai]) VALUES (N'123', N'123', 4, N'Đang hoạt động')
INSERT [dbo].[NGUOIDUNG] ([TaiKhoan], [MatKhau], [MaNV], [TrangThai]) VALUES (N'2001180107', N'long123', 2, N'Đang hoạt động')
INSERT [dbo].[NGUOIDUNG] ([TaiKhoan], [MatKhau], [MaNV], [TrangThai]) VALUES (N'2001180472', N'loc123', 1, N'Đang hoạt động')
INSERT [dbo].[NGUOIDUNG] ([TaiKhoan], [MatKhau], [MaNV], [TrangThai]) VALUES (N'2001181311', N'tan123', 3, N'Đang hoạt động')
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [ChucVu], [Luong]) VALUES (1, N'Trần Tấn Lộc', N'Nam', CAST(N'2000-10-05' AS Date), N'0337369439', N'655/49,Lê Trọng Tấn,Bình Tân', N'Nhân Viên', 10000000.0000)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [ChucVu], [Luong]) VALUES (2, N'Phạm Hoàng Long', N'Nam', CAST(N'2000-01-01' AS Date), N'123456789', N'140,Lê Trọng Tấn,Tân Phú', N'Nhân Viên', 10000000.0000)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [ChucVu], [Luong]) VALUES (3, N'Nguyễn Lê Quốc Tấn', N'Nam', CAST(N'2000-01-01' AS Date), N'123456789', N'140,Lê Trọng Tấn,Tân Phú', N'Nhân Viên', 10000000.0000)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [ChucVu], [Luong]) VALUES (4, N'Nhân Viên Quản Lí', N'Nữ', CAST(N'2000-01-01' AS Date), N'123456789', N'140,Lê Trọng Tấn,Tân Phú', N'Quản Lí', 10000000.0000)
GO
SET IDENTITY_INSERT [dbo].[PHIEUDATBAN] ON 

INSERT [dbo].[PHIEUDATBAN] ([MaPDB], [NgayLap], [NgayDat], [TenKH], [SDT], [SoNguoiNgoi], [TienCoc], [GhiChu]) VALUES (1, CAST(N'2021-07-06T21:12:34.000' AS DateTime), CAST(N'2021-10-06T18:30:00.000' AS DateTime), N'Khách hàng Test', N'0337369439', 20, 100000.0000, N'Tổ chức sinh nhật!')
SET IDENTITY_INSERT [dbo].[PHIEUDATBAN] OFF
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [Default_NgayLap]  DEFAULT (getdate()) FOR [NgayLap]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [Default_TongTien]  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [Default_TrangThai]  DEFAULT (N'Chưa thanh toán') FOR [TrangThai]
GO
ALTER TABLE [dbo].[BAN]  WITH CHECK ADD  CONSTRAINT [FK_Ban_MaKV] FOREIGN KEY([MaKV])
REFERENCES [dbo].[KHUVUC] ([MaKV])
GO
ALTER TABLE [dbo].[BAN] CHECK CONSTRAINT [FK_Ban_MaKV]
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_CTHoaDon_MaHD] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[CT_HOADON] CHECK CONSTRAINT [FK_CTHoaDon_MaHD]
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_CTHoaDon_MaMonABC] FOREIGN KEY([MaMon])
REFERENCES [dbo].[MON] ([MaMon])
GO
ALTER TABLE [dbo].[CT_HOADON] CHECK CONSTRAINT [FK_CTHoaDon_MaMonABC]
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuNhap_MaNL] FOREIGN KEY([MaNL])
REFERENCES [dbo].[NGUYENLIEU] ([MaNL])
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP] CHECK CONSTRAINT [FK_CTPhieuNhap_MaNL]
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuNhap_MaPN] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PHIEUNHAP] ([MaPN])
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP] CHECK CONSTRAINT [FK_CTPhieuNhap_MaPN]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_MaBan] FOREIGN KEY([MaBan])
REFERENCES [dbo].[BAN] ([MaBan])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HoaDon_MaBan]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HoaDon_MaNV]
GO
ALTER TABLE [dbo].[MON]  WITH CHECK ADD  CONSTRAINT [FK_Mon_MaLoaiMon] FOREIGN KEY([MaLoaiMon])
REFERENCES [dbo].[LOAIMON] ([MaLoaiMon])
GO
ALTER TABLE [dbo].[MON] CHECK CONSTRAINT [FK_Mon_MaLoaiMon]
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[NGUOIDUNG] CHECK CONSTRAINT [FK_NguoiDung_MaNV]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PhieuNhap_MaNV]
GO
/****** Object:  StoredProcedure [dbo].[CapNhatCTHoaDon]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[CapNhatCTHoaDon] @MaHD int, @MaMon int, @SoLuong int
AS BEGIN
	UPDATE CT_HOADON
	SET SoLuong = @SoLuong,ThanhTien = @SoLuong*MON.DonGia
	FROM MON
	WHERE CT_HOADON.MaMon = MON.MaMon
	AND CT_HOADON.MaHD = @MaHD
	AND CT_HOADON.MaMon = @MaMon;
END
GO
/****** Object:  StoredProcedure [dbo].[CapNhatTaiKhoan]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[CapNhatTaiKhoan] @TaiKhoan varchar(50),@MatKhau varchar(50),@TrangThai nvarchar(50)
AS BEGIN
	UPDATE NGUOIDUNG
	SET MatKhau = @MatKhau,TrangThai = @TrangThai
	WHERE TaiKhoan = @TaiKhoan
END
GO
/****** Object:  StoredProcedure [dbo].[CapNhatThongTinBan]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CapNhatThongTinBan] @MaBan int,@TenBan nvarchar(50),@SoChoNgoi int,@MaKV varchar(10)
AS BEGIN 
	UPDATE BAN
	SET TenBan = @TenBan,SoChoNgoi = @SoChoNgoi,MaKV = @MaKV
	WHERE MaBan = @MaBan
END
GO
/****** Object:  StoredProcedure [dbo].[CapNhatThongTinMon]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CapNhatThongTinMon] @MaMon INT,@TenMon nvarchar(50),@DonGia money,@MaLoaiMon INT,@TrangThai nvarchar(50)
AS BEGIN
	UPDATE MON
	SET TenMon = @TenMon,DonGia = @DonGia,MaLoaiMon = @MaLoaiMon,TrangThai = @TrangThai
	WHERE MaMon = @MaMon
END
GO
/****** Object:  StoredProcedure [dbo].[CapNhatThongTinNhanVien]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CapNhatThongTinNhanVien] @MaNV int,@TenNV nvarchar(50),@GioiTinh nvarchar(10),@NgaySinh Date,@SDT varchar(20),@DiaChi nvarchar(100),@ChucVu nvarchar(50),@Luong money
AS BEGIN 
	UPDATE NHANVIEN
	SET TenNV = @TenNV,GioiTinh=@GioiTinh,NgaySinh = @NgaySinh,SDT = @SDT,DiaChi = @DiaChi,ChucVu = @ChucVu, Luong = @Luong
	WHERE MaNV = @MaNV
END
GO
/****** Object:  StoredProcedure [dbo].[CapNhatTongTienHoaDon]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[CapNhatTongTienHoaDon] @MaHD int
AS BEGIN
	UPDATE HOADON
	SET TongTien = (SELECT SUM(ThanhTien) FROM CT_HOADON WHERE CT_HOADON.MaHD = @MaHD)
	WHERE HOADON.MaHD = @MaHD
END
GO
/****** Object:  StoredProcedure [dbo].[InHoaDon]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InHoaDon] @MaHD INT
AS BEGIN
	select hd.MaHD,hd.NgayLap,b.TenBan,m.TenMon,cthd.SoLuong,m.DonGia,cthd.ThanhTien,hd.TongTien
	from hoadon hd, ct_hoadon cthd , mon m , ban b
	where hd.MaHD = cthd.MaHD 
	and hd.MaBan = b.MaBan
	and m.MaMon = cthd.MaMon
	and hd.MaHD = @MaHD
END
GO
/****** Object:  StoredProcedure [dbo].[InPhieuDatBan]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[InPhieuDatBan] @MaPDB INT
AS BEGIN
	select * from PHIEUDATBAN WHERE MaPDB = @MaPDB 
END
GO
/****** Object:  StoredProcedure [dbo].[LayHoaDonBan]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LayHoaDonBan] @MaBan INT
AS BEGIN
	SELECT MaHD,NgayLap,MaNV,TongTien
	FROM HOADON
	WHERE HOADON.MaBan = @MaBan
	AND HOADON.TrangThai LIKE N'Chưa thanh toán';
END
GO
/****** Object:  StoredProcedure [dbo].[LayThongTinCTHoaDon]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LayThongTinCTHoaDon] @MaHD INT
AS BEGIN
	SELECT CT_HOADON.MaMon,Mon.TenMon,CT_HOADON.SoLuong,MON.DonGia,CT_HOADON.ThanhTien
	FROM CT_HOADON,MON
	WHERE CT_HOADON.MaMon = MON.MaMon
	AND CT_HOADON.MaHD = @MaHD
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKeDoanhThuTheoNgay]    Script Date: 07/06/2021 22:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[ThongKeDoanhThuTheoNgay] @Ngay varchar(50)
AS BEGIN
	set dateformat dmy
	select HD.MaHD,HD.NgayLap,NV.TenNV,HD.TongTien 
	from HOADON HD,NHANVIEN NV
	where HD.MaNV = NV.MaNV
	AND HD.NgayLap = @Ngay
END
GO
