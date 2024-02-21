
USE ConSoleGame

INSERT INTO Brand 
VALUES 
	(N'Super Mario'),
	(N'The Legend of Zelda'),
	(N'Pokémon'),
	(N'Metroid'),
	(N'Kirby'),
	(N'Animal Crossing')
SELECT * FROM Brand


INSERT INTO Category VALUES (N'Game'),(N'Nintendo'), (N'Accessory'), (N'Playstation')
SELECT * FROM Category




INSERT INTO Supplier 
VALUES 
	(N'Foxconn Technology Group', N'Đài Loan',N'Số 2, Đường số 2 Đông Hoàn, Quận Long Hoa, Thành phố Thâm Quyến, Tỉnh Quảng Đông, Trung Quốc' ,'07552812958'),
	(N'Panasonic Corporation', N'Nhật Bản',N'Lô J1-J2 Khu công nghiệp Thăng Long, Xã Kim Chung, Huyện Đông Anh, Hà Nội, Việt Nam' ,'02439550111'),
	(N'Samsung Electronics', N'Hàn Quốc',N'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh' ,'28391573109'),
	(N'Broadcom Corporation', N'Mỹ',N'3421 Hillview Ave Palo Alto California, 94304 United States' ,'65042766000')
SELECT * FROM Supplier

INSERT INTO Employee
VALUES
	(N'Nguyễn Văn',N' A','2003-06-20' ,N'Nhân viên bán hàng', N'123 Đường A, Quận 1, TP HCM', N'Việt Nam', '0225588999'),
	(N'Trần Thị',N' B','2003-06-20', N'Nhân viên kho', N'456 Đường B, Quận 2, TP HCM', N'Việt Nam', '0225588999'),
	(N'Lê Văn',N' C','2003-06-20', N'Nhân viên giao hàng', N'789 Đường C, Quận 3, TP HCM', N'Việt Nam', '0225588777'),
	( N'Nguyễn Thị',N' D','2003-06-20', N'Nhân viên tư vấn', N'321 Đường D, Quận 4, Hà Nội', N'Việt Nam', '0225588666'),
	(N'Trần Văn',N' E','2003-06-20', N'Nhân viên kỹ thuật', N'654 Đường E, Quận 5, Hà Nội', N'Việt Nam', '0225588555'),
	(N'Hoàng Thị',N' F','2003-06-20', N'Nhân viên marketing', N'987 Đường F, Quận 6, Đà Nẵng', N'Việt Nam', '0225588444'),
	(N'Nguyễn Văn',N' G','2003-06-20', N'Nhân viên bảo hành', N'258 Đường G, Quận 7, Cần Thơ', N'Việt Nam', '0225588333'),
	( N'Lý Thị',N' H','2003-06-20', N'Nhân viên thu ngân', N'369 Đường H, Quận 8, Bình Dương', N'Việt Nam', '0225588222'),
	(N'Hoàng Văn',N' I','2003-06-20', N'Giám đốc điều hành', N'789 Đường I, Quận 9, Bình Phước', N'Việt Nam', '0225588111'),
	( N'Phạm Thị',N' J','2003-06-20', N'Giám đốc nhân sự', N'357 Đường J, Quận Gò Vấp, TP HCM', N'Việt Nam', '0225588000')
SELECT * FROM Employee


INSERT INTO Product 
VALUES 
	(N'Apollo Justice Ace Attorney Trilogy', 1226254, 1, 1, N'Ngày phát hành: Apollo Justice: Ace Attorney Trilogy được phát hành vào ngày 21 tháng 2 năm 2019.
Hãng: Capcom là nhà sản xuất và phát hành Apollo Justice: Ace Attorney Trilogy.
Mô tả: Apollo Justice: Ace Attorney Trilogy là một bộ sưu tập gồm ba tựa game trong series Ace Attorney, bao gồm Ace Attorney: Apollo Justice, Phoenix Wright: Ace Attorney - Justice for All, và Phoenix Wright: Ace Attorney - Trials and Tribulations. Trò chơi này là một tựa game phiêu lưu điều tra và giải đố, nơi người chơi sẽ vào vai các luật sư để bảo vệ khách hàng của họ trong các phiên tòa. Trong vai trò của Apollo Justice, người chơi sẽ phải khám phá các tình tiết, tìm kiếm bằng chứng và chấp nhận thách thức từ các bản án khó khăn.
Thông số tối thiểu:
Hệ điều hành: Windows 7, 8, 10 (64-bit)
Bộ xử lý: Intel Core i3 2.00 GHz hoặc tương đương
Bộ nhớ: 2 GB RAM
Đồ họa: Intel HD Graphics 3000 hoặc tương đương
Lưu trữ: 1.8 GB dung lượng trống có sẵn
P/S: một tựa game không còn xa lạ với những gamers một thời. Với cốt truyện lôi cuốn chắc chắn sẽ khiến bạn không cảm thấy phí bất kì 1 giây nào bên màn ảnh.'),
(N'Celeste', 980000, 1, 2, N'Ngày phát hành: Celeste được phát hành vào ngày 25 tháng 1 năm 2018.

Hãng: Celeste được phát triển và xuất bản bởi công ty game indie "Matt Makes Games Inc.".

Mô tả: Celeste là một tựa game nền tảng hành động phiêu lưu độc lập. Trong game, người chơi điều khiển một nhân vật tên là Madeline trên hành trình leo núi Celeste. Trò chơi kết hợp giữa gameplay điều khiển với tốc độ cao và các yếu tố giải đố trong môi trường núi non đầy thách thức. Celeste cũng mang một câu chuyện cảm động về sự vượt qua khó khăn và tự chấp nhận.

Thông số tối thiểu:

Hệ điều hành: Windows 7 hoặc mới hơn
Bộ xử lý: Intel Core i3 M380
Bộ nhớ: 2 GB RAM
Đồ họa: Intel HD 4000
Lưu trữ: 1.2 GB dung lượng trống có sẵn

P/S: admin đã có một khoảng thời gian tuyệt vợi với tựa game này, rất nhiều bài học đã được game ngầm vẽ ra nơi Celeste. Good game indeed!'),
(N'DeadCells_ReturntoCastlevaniaEdition', 245054, 1, 3, N'Ngày phát hành: Dead Cells: Return to Castlevania Edition đã được phát hành vào ngày 6 tháng 3 năm 2023. Phiên bản vật lý của trò chơi đã được phát hành vào ngày 11 tháng 8 năm 2023.

Hãng: Trò chơi này được phát triển bởi Motion Twin và Evil Empire.

Mô tả: Dead Cells: Return to Castlevania Edition là một sự hợp tác chưa từng có giữa Dead Cells và Castlevania, mang lại trải nghiệm hành động 2D nhanh chóng và gây nghiện. Một cánh cổng đến một lâu đài nổi bật đã đột ngột xuất hiện, và một chiến binh gây ấn tượng tên Richter yêu cầu bạn giúp anh ta tiêu diệt cái ác lớn bên trong. Bạn sẽ tiến vào các khu vực và hành lang của lâu đài gothic để tìm và giết Dracula bí ẩn. Trò chơi này bao gồm hai cấp độ, ba boss và một cốt truyện mới.

Thông số tối thiểu: Dead Cells: Return to Castlevania Edition yêu cầu CPU Intel i5+, tốc độ CPU không rõ, RAM 2 GB, card đồ họa Nvidia 450 GTS / Radeon HD 5750 hoặc tốt hơn, và VRAM dédicacée 512 MB

P/S: tuyệt vời, hơn cả kì vọng.'),
(N'Disney Illusion Island', 850000, 1, 3, N'Ngày phát hành: Disney Illusion Island đã được phát hành vào ngày 28 tháng 7 năm 2023.

Hãng: Trò chơi này được phát triển bởi Dlala Studios và được xuất bản bởi Disney Electronic Content.

Mô tả: Disney Illusion Island là một trò chơi nền tảng 2D với cấu trúc giống Metroidvania. Sau khi chọn một trong bốn nhân vật - Mickey Mouse, Minnie Mouse, Donald Duck hoặc Goofy - người chơi đi qua các khu vực sử dụng bản đồ mở rộng của đảo Monoth. Trò chơi không có cơ chế chiến đấu trực tiếp, vì vậy người chơi phải tránh các cuộc tấn công từ kẻ thù gặp phải trong suốt hành trình. Trò chơi đôi khi có các khu vực nơi người chơi tham gia vào các trận đánh boss, trong đó họ phải tránh các cuộc tấn công, nhấn nút hoặc thực hiện các hoạt động nền tảng khác để gây hại gián tiếp cho boss. Trò chơi cung cấp một chế độ chơi đa người cục bộ, cho phép người chơi ôm người khác để khôi phục cả hai cuộc sống của họ và thả dây để giúp người chơi khác leo qua chướng ngại vật.

Thông số tối thiểu: Hiện tại, không có thông tin về các yêu cầu tối thiểu để chơi Disney Illusion Island. Tuy nhiên, trò chơi được phát hành độc quyền cho Nintendo Switch, vì vậy bạn sẽ cần một Nintendo Switch để chơi trò chơi.

P/S: Nope, chưa chơi, nhưng phản hồi khá tích cực. Ai chơi rồi review giúp admin nhaa.'),
(N'Double Dragon Collection', 980954, 1, 2, N'Ngày phát hành: Double Dragon Collection được phát hành vào ngày 29 tháng 1 năm 2020.

Hãng: Double Dragon Collection được phát triển và xuất bản bởi công ty game "Arc System Works".

Mô tả: Double Dragon Collection là một bộ sưu tập gồm các tựa game trong series kinh điển Double Dragon. Bộ sưu tập này bao gồm các phiên bản gốc và phiên bản cải tiến của các trò chơi Double Dragon, cho phép người chơi trải nghiệm lại những trận đấu đầy hấp dẫn và hành động gay cấn nhưng đã được cải thiện đồ họa và âm thanh.

Thông số tối thiểu:

Hệ điều hành: Windows 7 hoặc mới hơn
Bộ xử lý: Intel Core i3 2.00 GHz hoặc tương đương
Bộ nhớ: 2 GB RAM
Đồ họa: Intel HD Graphics 3000 hoặc tương đương
Lưu trữ: 1 GB dung lượng trống có sẵn

P/S: bất ngờ, chỉ có thể nói như thế.'),
(N'Double Dragon Gaiden_Rise Of The Dragons', 613004, 1, 2, N'Ngày phát hành: Double Dragon Gaiden: Rise of the Dragons đã được phát hành vào ngày 27 tháng 7 năm 2023.

Hãng: Trò chơi này được phát triển bởi Secret Base và được xuất bản bởi Maximum Entertainment và Joystick.

Mô tả: Double Dragon Gaiden: Rise of the Dragons là một trò chơi đánh nhau roguelike, một phần ngoại truyện của loạt trò chơi Double Dragon, được phát triển bởi Secret Base. Vào năm 199X, chiến tranh hạt nhân đã tàn phá thành phố New York khiến người dân phải chiến đấu để sống sót khi bạo loạn và tội phạm bao vây các con phố. Thành phố đã bị các băng đảng tội phạm chiếm đóng khi họ khủng bố các tàn tích của nó khi họ chiến đấu để chiếm đoạt toàn bộ quyền lực. Không chịu đựng những điều kiện này nữa, hai anh em Billy và Jimmy Lee tự mình đẩy các băng đảng ra khỏi thành phố của họ. Trò chơi này bao gồm một cấu trúc cấp độ độc đáo và động, độ khó của các nhiệm vụ bạn thực hiện sẽ thay đổi tùy thuộc vào thứ tự bạn đã chọn chúng.

Thông số tối thiểu: Double Dragon Gaiden: Rise of the Dragons yêu cầu hệ điều hành Windows 10, CPU Intel Core i5 9300H 2.4 GHz, card đồ họa Nvidia GTX 1050 4 GB.

P/S: không ấn tượng mấy, nhưng nếu bạn là fan của serie này thì không nên bỏ lỡ nhé.'),
(N'Double Dragon IV.', 171464, 1, 2, N'Ngày phát hành: Double Dragon Gaiden IV đã được phát hành vào ngày 27 tháng 7 năm 2023.

Hãng: Trò chơi này được phát triển bởi Secret Base và được xuất bản bởi Maximum Entertainment và Joystick.

Mô tả: Double Dragon Gaiden IV, còn được gọi là Double Dragon Gaiden: Rise of the Dragons, là một trò chơi đánh nhau roguelike, một phần ngoại truyện của loạt trò chơi Double Dragon, được phát triển bởi Secret Base. Vào năm 199X, chiến tranh hạt nhân đã tàn phá thành phố New York khiến người dân phải chiến đấu để sống sót khi bạo loạn và tội phạm bao vây các con phố. Thành phố đã bị các băng đảng tội phạm chiếm đóng khi họ khủng bố các tàn tích của nó khi họ chiến đấu để chiếm đoạt toàn bộ quyền lực. Không chịu đựng những điều kiện này nữa, hai anh em Billy và Jimmy Lee tự mình đẩy các băng đảng ra khỏi thành phố của họ. Trò chơi này bao gồm một cấu trúc cấp độ độc đáo và động, độ khó của các nhiệm vụ bạn thực hiện sẽ thay đổi tùy thuộc vào thứ tự bạn đã chọn chúng.'),
(N'HogwartsLegacy', 1471554, 1, 4, N'Ngày phát hành: Hogwarts Legacy đã được phát hành vào ngày 10 tháng 2 năm 2023.

Hãng: Trò chơi này được phát triển bởi Avalanche Software và được xuất bản bởi Warner Bros. Games dưới nhãn Portkey Games.

Mô tả: Hogwarts Legacy là một trò chơi nhập vai hành động mở thế giới, lần đầu tiên cho phép bạn trải nghiệm Hogwarts vào thế kỷ 1958. Nhân vật của bạn là một học sinh giữ chìa khóa để khám phá một bí mật cổ xưa đe dọa thế giới phù thủy. Bạn sẽ kết bạn, chiến đấu với phù thủy Đen tối và quyết định số phận của thế giới phù thủy.

Thông số tối thiểu: Hogwarts Legacy yêu cầu hệ điều hành Windows 10, CPU Intel Core i5-6600, RAM 16 GB, card đồ họa Nvidia GeForce GTX 960 4GB.

P/S: siêu phẩm, change my mind.'),
(N'Pokémon Scarlet The Hidden Treasure of Area Zero DLC', 1380000, 1, 6, N'Ngày phát hành: Pokémon Scarlet + The Hidden Treasure of Area Zero DLC được phát hành vào ngày 14 tháng 12 năm 2023.

Hãng: Trò chơi được phát triển bởi Game Freak và được xuất bản bởi The Pokémon Company và Nintendo.

Mô tả: Pokémon Scarlet + The Hidden Treasure of Area Zero DLC là một bản mở rộng hai phần của Pokémon Scarlet. Phần 1, The Teal Mask, diễn ra tại Kitakami, nơi bạn tham gia một chuyến đi học đặc biệt và tìm hiểu về truyền thuyết địa phương về ba Pokémon trung thành. Phần 2, The Indigo Disk, diễn ra tại Blueberry Academy, nơi chương trình học tập nhấn mạnh vào việc chiến đấu Pokémon. Tại đây, bạn sẽ khám phá Terarium dưới biển, một cơ sở với các môi trường nhân tạo đầy Pokémon. Mỗi khu vực trong bốn khu vực của Terarium có một khí hậu, hệ sinh thái và Pokémon riêng biệt để tìm kiếm. Bạn sẽ gặp Pokémon huyền thoại mới được phát hiện là Terapagos khi bạn mở rộng chân trời của mình ra khỏi Naranja hoặc Uva Academy.

Thông số tối thiểu: Để chơi Pokémon Scarlet + The Hidden Treasure of Area Zero DLC, bạn cần có:

Một máy Nintendo Switch.
Phiên bản đầy đủ của trò chơi Pokémon Scarlet.'),
(N'Pokémon Violet The Hidden Treasure of Area Zero DLC', 2150000, 1, 1, N'Ngày phát hành: Pokémon Violet + The Hidden Treasure of Area Zero DLC được phát hành vào ngày 14 tháng 12 năm 2023.

Hãng: Trò chơi được phát triển bởi Game Freak và được xuất bản bởi The Pokémon Company và Nintendo.

Mô tả: Pokémon Violet + The Hidden Treasure of Area Zero DLC là một bản mở rộng hai phần của Pokémon Violet. Phần 1, The Teal Mask, diễn ra tại Kitakami, nơi bạn tham gia một chuyến đi học đặc biệt và tìm hiểu về truyền thuyết địa phương về ba Pokémon trung thành. Phần 2, The Indigo Disk, diễn ra tại Blueberry Academy, nơi chương trình học tập nhấn mạnh vào việc chiến đấu Pokémon. Tại đây, bạn sẽ khám phá Terarium dưới biển, một cơ sở với các môi trường nhân tạo đầy Pokémon. Mỗi khu vực trong bốn khu vực của Terarium có một khí hậu, hệ sinh thái và Pokémon riêng biệt để tìm kiếm. Bạn sẽ gặp Pokémon huyền thoại mới được phát hiện là Terapagos khi bạn mở rộng chân trời của mình ra khỏi Naranja hoặc Uva Academy.

Thông số tối thiểu: Để chơi Pokémon Violet + The Hidden Treasure of Area Zero DLC, bạn cần có:

Một máy Nintendo Switch.
Phiên bản đầy đủ của trò chơi Pokémon Violet.'),
(N'Prince Of Persia_The Lost Crown', 1300000, 1, 3, N'Ngày phát hành: Prince of Persia: The Lost Crown được phát hành vào ngày 18 tháng 1 năm 2024.

Hãng: Trò chơi được phát triển bởi Ubisoft Montpellier và được xuất bản bởi Ubisoft.

Mô tả: Prince of Persia: The Lost Crown là một trò chơi hành động phiêu lưu 2.5D. Người chơi điều khiển Sargon, một chiến binh thuộc bộ tộc The Immortals, phải đi đến thành phố bị nguyền rủa Mount Qaf để giải cứu hoàng tử Ghassan bị bắt cóc. Sargon có thể nhảy, trượt, và dash trong không khí để di chuyển giữa các nền tảng. Anh ta cầm một cặp lưỡi gươm mà anh ta sử dụng để đánh bại kẻ thù. Sargon có quyền truy cập vào một số sức mạnh dựa trên thời gian, có thể được sử dụng trong cả chiến đấu và platforming. The Lost Crown có các yếu tố Metroidvania, vì thế giới trò chơi được kết nối và đầy đủ lối tắt và phòng bí mật, và người chơi phải giải quyết các câu đố để tiến bộ.

Thông số tối thiểu:

Hệ điều hành: Windows 10 (64 bit only)
Bộ xử lý: Intel Core i5-4460 3.4 GHz, AMD Ryzen3 1200 3.1 GHz
Bộ nhớ: 8 GB (Dual-channel setup)
Card đồ họa: NVIDIA GeForce GTX 950 (2GB VRAM) hoặc AMD Radeon RX 5500 XT (4GB VRAM)
Dung lượng lưu trữ: 30 GB'),
(N'Red Dead Redemption 1', 1230000, 1, 3, N'Ngày phát hành: Red Dead Redemption 1 được phát hành vào ngày 18 tháng 5 năm 2010.

Hãng: Trò chơi được phát triển bởi Rockstar San Diego và được xuất bản bởi Rockstar Games.

Mô tả: Red Dead Redemption 1 là một trò chơi hành động phiêu lưu được thiết lập vào năm 1911, trong đó người chơi điều khiển John Marston, một tên cướp biển đã từ bỏ cuộc sống tội phạm khi các nhân viên liên bang đe dọa gia đình anh ta. Trò chơi diễn ra trong một thế giới mở tương tác, một phiên bản tưởng tượng của Tây Hoa Kỳ và Bắc Mexico, chủ yếu di chuyển bằng ngựa và đi bộ. Trò chơi nhấn mạnh vào các cuộc đấu súng với cơ chế chơi game "Dead Eye" cho phép người chơi đánh dấu nhiều mục tiêu bắn vào kẻ thù trong chế độ chậm.

Thông số tối thiểu:

Hệ điều hành: Xbox 360 hoặc PlayStation 3
Bộ xử lý: Intel Core 2 Duo E4400 2.0GHz hoặc AMD Athlon 64 X2 Dual Core 4000+
Bộ nhớ: 1 GB RAM (Xbox 360) hoặc 512 MB RAM (PlayStation 3)
Đồ họa: NVIDIA GeForce 6100 hoặc AMD Radeon HD 2400 Pro
Lưu trữ: 8 GB không gian trống trên ổ cứng'),
(N'Sonic Original Plus', 1080000, 1, 2, N'Ngày phát hành: Sonic Origins Plus được phát hành vào ngày 23 tháng 6 năm 2023.

Hãng: Trò chơi được phát triển bởi Sonic Team và Headcannon, và được xuất bản bởi SEGA.

Mô tả: Sonic Origins Plus là một phiên bản mở rộng của Sonic Origins. Trò chơi bao gồm bốn tựa game cổ điển được yêu thích trong Sonic Origins - Sonic the Hedgehog, Sonic 2, Sonic 3 & Knuckles, và Sonic CD với đồ họa được làm mới, nhân vật bổ sung, chế độ chơi mới, thử thách, nội dung hậu trường và nhiều hơn nữa, đồng thời thêm vào nhiều cải tiến đáng kể. Gói này cũng bao gồm 12 tựa game Sonic Game Gear, nội dung bổ sung đã phát hành trước đó, Knuckles có thể chơi trong Sonic CD, và lần đầu tiên, Amy Rose là một nhân vật có thể chơi trong Sonic the Hedgehog 1, 2, Sonic 3 & Knuckles, và Sonic CD! Với nhiều nội dung hơn bao giờ hết, đây là cách trải nghiệm tuyệt đối những trò chơi cổ điển này.

Thông số tối thiểu:

Hệ điều hành: Windows 10
Bộ xử lý: Intel Core i5-2400, 3.1 GHz hoặc AMD FX-8350, 4.2 GHz
Bộ nhớ: 6 GB'),
(N'Sonic Super Stars', 1471554, 1, 5, N'Ngày phát hành: Sonic Superstars đã được phát hành vào ngày 17 tháng 10 năm 2023.

Hãng: Trò chơi này được phát triển bởi Arzest và Sonic Team và được xuất bản bởi Sega.

Mô tả: Sonic Superstars là một trò chơi hành động phiêu lưu isometric với một con cáo nhỏ trong một cuộc phiêu lưu lớn. Người chơi sẽ đối mặt với các quái vật khổng lồ, thu thập các vật phẩm kỳ lạ và mạnh mẽ, và khám phá những bí mật đã mất từ lâu.

Thông số tối thiểu:

Hệ điều hành: Windows 10
Bộ xử lý: Intel Core i5-2300 hoặc AMD FX-4350
Bộ nhớ: 6 GB RAM
Đồ họa: NVIDIA GeForce GTS 450 1 GB hoặc AMD Radeon HD 5770 1 GB'),
(N'Star Wars Heritage Pack', 1500000, 1, 4, N'Ngày phát hành: Star Wars Heritage Pack đã được phát hành vào ngày 27 tháng 4 năm 2023. Phiên bản vật lý của trò chơi đã được phát hành vào ngày 8 tháng 12 năm 2034.

Hãng: Trò chơi này được phát triển và xuất bản bởi Aspyr.

Mô tả: Star Wars Heritage Pack là một bộ sưu tập gồm bảy trò chơi Star Wars kinh điển. Bạn sẽ học cách sử dụng Lực từ Jedi Master Luke Skywalker, điều khiển một Podracer đang tăng tốc, lãnh đạo một đội quân clone ưu tú… và nhiều hơn nữa với Star Wars Heritage Pack. Bộ sưu tập này bao gồm bảy trò chơi Star Wars kinh điển sau:

STAR WARS™ Jedi Knight II: Jedi Outcast
STAR WARS™ Jedi Knight: Jedi Academy
STAR WARS™ Episode I Racer
STAR WARS™ Republic Commando™
STAR WARS™: The Force Unleashed™
STAR WARS™: Knights of the Old Republic™
STAR WARS™: Knights of the Old Republic™ II: The Sith Lords'),
(N'Tunic', 1050000, 1, 4, N'Ngày phát hành: Tunic đã được phát hành vào ngày 16 tháng 3 năm 2022.

Hãng: Trò chơi này được phát triển bởi Andrew Shouldice và được xuất bản bởi Finji.

Mô tả: Tunic là một trò chơi hành động phiêu lưu isometric về một con cáo nhỏ trong một cuộc phiêu lưu lớn. Người chơi sẽ đối mặt với các quái vật khổng lồ, thu thập các vật phẩm kỳ lạ và mạnh mẽ, và khám phá những bí mật đã mất từ lâu. Trò chơi này cung cấp một cấu trúc cấp độ độc đáo và động, độ khó của các nhiệm vụ bạn thực hiện sẽ thay đổi tùy thuộc vào thứ tự bạn đã chọn chúng.


Thông số tối thiểu:

Hệ điều hành: Windows 10
Bộ xử lý: Intel Core i5-6400
Bộ nhớ: 8 GB RAM
Đồ họa: Nvidia GeForce GTX 660 / AMD Radeon RX 460
Lưu trữ: 2 GB dung lượng ổ cứng')
--
SELECT * FROM Product
