

USE ConSoleGame
SELECT * FROM Product

INSERT INTO Category VALUES (N'Game'),(N'Nintendo'), (N'Accessory'), (N'Playstation')
SELECT * FROM Category



INSERT INTO Account 
VALUES
	(N'admin',			N'admin',	'admin@gmail.com',		 '1', 'admin'   ,'2003-06-20', N'Việt Nam'					 , N'Việt Nam', '99999999999',0),
	(N'Phong',			N'Dep Trai','phongdeptrai@gmail.com','2', 'customer','2003-06-22', N'123 Đường A, Quận 1, TP HCM', N'Việt Nam', '1111111111',0),
	(N'Nguyễn Văn',		N' A',		'nguyenvana@gmail.com',	 '3', 'employee','2003-06-20', N'123 Đường A, Quận 1, TP HCM', N'Việt Nam', '0225588999',0)
update account set Password= '6B86B273FF34FCE19D6B804EFF5A3F5747ADA4EAA22F1D49C01E52DDB7875B4B' where accid = 1

update account set Password= 'D4735E3A265E16EEE03F59718B9B5D03019C07D8B6C51F90DA3A666EEC13AB35' where accid = 2

update account set Password= '4E07408562BEDB8B60CE05C1DECFE3AD16B72230967DE01F640B7E4729B49FCE' where accid = 3
SELECT * FROM Account

INSERT INTO Employee
VALUES
		(N'Nhân viên bán hàng', 3)

SELECT * FROM Employee


INSERT INTO Product 
VALUES 
	(N'Apollo Justice Ace Attorney Trilogy', 1226254,0.1,10, 1,  N'Ngày phát hành: Apollo Justice: Ace Attorney Trilogy được phát hành vào ngày 21 tháng 2 năm 2019.
Hãng: Capcom là nhà sản xuất và phát hành Apollo Justice: Ace Attorney Trilogy.
Mô tả: Apollo Justice: Ace Attorney Trilogy là một bộ sưu tập gồm ba tựa game trong series Ace Attorney, bao gồm Ace Attorney: Apollo Justice, Phoenix Wright: Ace Attorney - Justice for All, và Phoenix Wright: Ace Attorney - Trials and Tribulations. Trò chơi này là một tựa game phiêu lưu điều tra và giải đố, nơi người chơi sẽ vào vai các luật sư để bảo vệ khách hàng của họ trong các phiên tòa. Trong vai trò của Apollo Justice, người chơi sẽ phải khám phá các tình tiết, tìm kiếm bằng chứng và chấp nhận thách thức từ các bản án khó khăn.
Thông số tối thiểu:
Hệ điều hành: Windows 7, 8, 10 (64-bit)
Bộ xử lý: Intel Core i3 2.00 GHz hoặc tương đương
Bộ nhớ: 2 GB RAM
Đồ họa: Intel HD Graphics 3000 hoặc tương đương
Lưu trữ: 1.8 GB dung lượng trống có sẵn
P/S: một tựa game không còn xa lạ với những gamers một thời. Với cốt truyện lôi cuốn chắc chắn sẽ khiến bạn không cảm thấy phí bất kì 1 giây nào bên màn ảnh.'),
(N'Celeste', 980000,0.1,10, 1,  N'Ngày phát hành: Celeste được phát hành vào ngày 25 tháng 1 năm 2018.

Hãng: Celeste được phát triển và xuất bản bởi công ty game indie "Matt Makes Games Inc.".

Mô tả: Celeste là một tựa game nền tảng hành động phiêu lưu độc lập. Trong game, người chơi điều khiển một nhân vật tên là Madeline trên hành trình leo núi Celeste. Trò chơi kết hợp giữa gameplay điều khiển với tốc độ cao và các yếu tố giải đố trong môi trường núi non đầy thách thức. Celeste cũng mang một câu chuyện cảm động về sự vượt qua khó khăn và tự chấp nhận.

Thông số tối thiểu:

Hệ điều hành: Windows 7 hoặc mới hơn
Bộ xử lý: Intel Core i3 M380
Bộ nhớ: 2 GB RAM
Đồ họa: Intel HD 4000
Lưu trữ: 1.2 GB dung lượng trống có sẵn

P/S: admin đã có một khoảng thời gian tuyệt vợi với tựa game này, rất nhiều bài học đã được game ngầm vẽ ra nơi Celeste. Good game indeed!'),
(N'DeadCells_ReturntoCastlevaniaEdition', 245054,0.1,10, 1,  N'Ngày phát hành: Dead Cells: Return to Castlevania Edition đã được phát hành vào ngày 6 tháng 3 năm 2023. Phiên bản vật lý của trò chơi đã được phát hành vào ngày 11 tháng 8 năm 2023.

Hãng: Trò chơi này được phát triển bởi Motion Twin và Evil Empire.

Mô tả: Dead Cells: Return to Castlevania Edition là một sự hợp tác chưa từng có giữa Dead Cells và Castlevania, mang lại trải nghiệm hành động 2D nhanh chóng và gây nghiện. Một cánh cổng đến một lâu đài nổi bật đã đột ngột xuất hiện, và một chiến binh gây ấn tượng tên Richter yêu cầu bạn giúp anh ta tiêu diệt cái ác lớn bên trong. Bạn sẽ tiến vào các khu vực và hành lang của lâu đài gothic để tìm và giết Dracula bí ẩn. Trò chơi này bao gồm hai cấp độ, ba boss và một cốt truyện mới.

Thông số tối thiểu: Dead Cells: Return to Castlevania Edition yêu cầu CPU Intel i5+, tốc độ CPU không rõ, RAM 2 GB, card đồ họa Nvidia 450 GTS / Radeon HD 5750 hoặc tốt hơn, và VRAM dédicacée 512 MB

P/S: tuyệt vời, hơn cả kì vọng.'),
(N'Disney Illusion Island', 850000,0.1,10, 1, N'Ngày phát hành: Disney Illusion Island đã được phát hành vào ngày 28 tháng 7 năm 2023.

Hãng: Trò chơi này được phát triển bởi Dlala Studios và được xuất bản bởi Disney Electronic Content.

Mô tả: Disney Illusion Island là một trò chơi nền tảng 2D với cấu trúc giống Metroidvania. Sau khi chọn một trong bốn nhân vật - Mickey Mouse, Minnie Mouse, Donald Duck hoặc Goofy - người chơi đi qua các khu vực sử dụng bản đồ mở rộng của đảo Monoth. Trò chơi không có cơ chế chiến đấu trực tiếp, vì vậy người chơi phải tránh các cuộc tấn công từ kẻ thù gặp phải trong suốt hành trình. Trò chơi đôi khi có các khu vực nơi người chơi tham gia vào các trận đánh boss, trong đó họ phải tránh các cuộc tấn công, nhấn nút hoặc thực hiện các hoạt động nền tảng khác để gây hại gián tiếp cho boss. Trò chơi cung cấp một chế độ chơi đa người cục bộ, cho phép người chơi ôm người khác để khôi phục cả hai cuộc sống của họ và thả dây để giúp người chơi khác leo qua chướng ngại vật.

Thông số tối thiểu: Hiện tại, không có thông tin về các yêu cầu tối thiểu để chơi Disney Illusion Island. Tuy nhiên, trò chơi được phát hành độc quyền cho Nintendo Switch, vì vậy bạn sẽ cần một Nintendo Switch để chơi trò chơi.

P/S: Nope, chưa chơi, nhưng phản hồi khá tích cực. Ai chơi rồi review giúp admin nhaa.'),
(N'Double Dragon Collection', 980954,0.1,10, 1,  N'Ngày phát hành: Double Dragon Collection được phát hành vào ngày 29 tháng 1 năm 2020.

Hãng: Double Dragon Collection được phát triển và xuất bản bởi công ty game "Arc System Works".

Mô tả: Double Dragon Collection là một bộ sưu tập gồm các tựa game trong series kinh điển Double Dragon. Bộ sưu tập này bao gồm các phiên bản gốc và phiên bản cải tiến của các trò chơi Double Dragon, cho phép người chơi trải nghiệm lại những trận đấu đầy hấp dẫn và hành động gay cấn nhưng đã được cải thiện đồ họa và âm thanh.

Thông số tối thiểu:

Hệ điều hành: Windows 7 hoặc mới hơn
Bộ xử lý: Intel Core i3 2.00 GHz hoặc tương đương
Bộ nhớ: 2 GB RAM
Đồ họa: Intel HD Graphics 3000 hoặc tương đương
Lưu trữ: 1 GB dung lượng trống có sẵn

P/S: bất ngờ, chỉ có thể nói như thế.'),
(N'Double Dragon Gaiden_Rise Of The Dragons', 613004,0.1,10, 1,  N'Ngày phát hành: Double Dragon Gaiden: Rise of the Dragons đã được phát hành vào ngày 27 tháng 7 năm 2023.

Hãng: Trò chơi này được phát triển bởi Secret Base và được xuất bản bởi Maximum Entertainment và Joystick.

Mô tả: Double Dragon Gaiden: Rise of the Dragons là một trò chơi đánh nhau roguelike, một phần ngoại truyện của loạt trò chơi Double Dragon, được phát triển bởi Secret Base. Vào năm 199X, chiến tranh hạt nhân đã tàn phá thành phố New York khiến người dân phải chiến đấu để sống sót khi bạo loạn và tội phạm bao vây các con phố. Thành phố đã bị các băng đảng tội phạm chiếm đóng khi họ khủng bố các tàn tích của nó khi họ chiến đấu để chiếm đoạt toàn bộ quyền lực. Không chịu đựng những điều kiện này nữa, hai anh em Billy và Jimmy Lee tự mình đẩy các băng đảng ra khỏi thành phố của họ. Trò chơi này bao gồm một cấu trúc cấp độ độc đáo và động, độ khó của các nhiệm vụ bạn thực hiện sẽ thay đổi tùy thuộc vào thứ tự bạn đã chọn chúng.

Thông số tối thiểu: Double Dragon Gaiden: Rise of the Dragons yêu cầu hệ điều hành Windows 10, CPU Intel Core i5 9300H 2.4 GHz, card đồ họa Nvidia GTX 1050 4 GB.

P/S: không ấn tượng mấy, nhưng nếu bạn là fan của serie này thì không nên bỏ lỡ nhé.'),
(N'Double Dragon IV.', 171464,0.1,10, 1,  N'Ngày phát hành: Double Dragon Gaiden IV đã được phát hành vào ngày 27 tháng 7 năm 2023.

Hãng: Trò chơi này được phát triển bởi Secret Base và được xuất bản bởi Maximum Entertainment và Joystick.

Mô tả: Double Dragon Gaiden IV, còn được gọi là Double Dragon Gaiden: Rise of the Dragons, là một trò chơi đánh nhau roguelike, một phần ngoại truyện của loạt trò chơi Double Dragon, được phát triển bởi Secret Base. Vào năm 199X, chiến tranh hạt nhân đã tàn phá thành phố New York khiến người dân phải chiến đấu để sống sót khi bạo loạn và tội phạm bao vây các con phố. Thành phố đã bị các băng đảng tội phạm chiếm đóng khi họ khủng bố các tàn tích của nó khi họ chiến đấu để chiếm đoạt toàn bộ quyền lực. Không chịu đựng những điều kiện này nữa, hai anh em Billy và Jimmy Lee tự mình đẩy các băng đảng ra khỏi thành phố của họ. Trò chơi này bao gồm một cấu trúc cấp độ độc đáo và động, độ khó của các nhiệm vụ bạn thực hiện sẽ thay đổi tùy thuộc vào thứ tự bạn đã chọn chúng.'),
(N'HogwartsLegacy', 1471554,0.1,10, 1,  N'Ngày phát hành: Hogwarts Legacy đã được phát hành vào ngày 10 tháng 2 năm 2023.

Hãng: Trò chơi này được phát triển bởi Avalanche Software và được xuất bản bởi Warner Bros. Games dưới nhãn Portkey Games.

Mô tả: Hogwarts Legacy là một trò chơi nhập vai hành động mở thế giới, lần đầu tiên cho phép bạn trải nghiệm Hogwarts vào thế kỷ 1958. Nhân vật của bạn là một học sinh giữ chìa khóa để khám phá một bí mật cổ xưa đe dọa thế giới phù thủy. Bạn sẽ kết bạn, chiến đấu với phù thủy Đen tối và quyết định số phận của thế giới phù thủy.

Thông số tối thiểu: Hogwarts Legacy yêu cầu hệ điều hành Windows 10, CPU Intel Core i5-6600, RAM 16 GB, card đồ họa Nvidia GeForce GTX 960 4GB.

P/S: siêu phẩm, change my mind.'),
(N'Pokémon Scarlet The Hidden Treasure of Area Zero DLC', 1380000,0.1,10, 1,  N'Ngày phát hành: Pokémon Scarlet + The Hidden Treasure of Area Zero DLC được phát hành vào ngày 14 tháng 12 năm 2023.

Hãng: Trò chơi được phát triển bởi Game Freak và được xuất bản bởi The Pokémon Company và Nintendo.

Mô tả: Pokémon Scarlet + The Hidden Treasure of Area Zero DLC là một bản mở rộng hai phần của Pokémon Scarlet. Phần 1, The Teal Mask, diễn ra tại Kitakami, nơi bạn tham gia một chuyến đi học đặc biệt và tìm hiểu về truyền thuyết địa phương về ba Pokémon trung thành. Phần 2, The Indigo Disk, diễn ra tại Blueberry Academy, nơi chương trình học tập nhấn mạnh vào việc chiến đấu Pokémon. Tại đây, bạn sẽ khám phá Terarium dưới biển, một cơ sở với các môi trường nhân tạo đầy Pokémon. Mỗi khu vực trong bốn khu vực của Terarium có một khí hậu, hệ sinh thái và Pokémon riêng biệt để tìm kiếm. Bạn sẽ gặp Pokémon huyền thoại mới được phát hiện là Terapagos khi bạn mở rộng chân trời của mình ra khỏi Naranja hoặc Uva Academy.

Thông số tối thiểu: Để chơi Pokémon Scarlet + The Hidden Treasure of Area Zero DLC, bạn cần có:

Một máy Nintendo Switch.
Phiên bản đầy đủ của trò chơi Pokémon Scarlet.'),
(N'Pokémon Violet The Hidden Treasure of Area Zero DLC', 2150000,0.1,10, 1,  N'Ngày phát hành: Pokémon Violet + The Hidden Treasure of Area Zero DLC được phát hành vào ngày 14 tháng 12 năm 2023.

Hãng: Trò chơi được phát triển bởi Game Freak và được xuất bản bởi The Pokémon Company và Nintendo.

Mô tả: Pokémon Violet + The Hidden Treasure of Area Zero DLC là một bản mở rộng hai phần của Pokémon Violet. Phần 1, The Teal Mask, diễn ra tại Kitakami, nơi bạn tham gia một chuyến đi học đặc biệt và tìm hiểu về truyền thuyết địa phương về ba Pokémon trung thành. Phần 2, The Indigo Disk, diễn ra tại Blueberry Academy, nơi chương trình học tập nhấn mạnh vào việc chiến đấu Pokémon. Tại đây, bạn sẽ khám phá Terarium dưới biển, một cơ sở với các môi trường nhân tạo đầy Pokémon. Mỗi khu vực trong bốn khu vực của Terarium có một khí hậu, hệ sinh thái và Pokémon riêng biệt để tìm kiếm. Bạn sẽ gặp Pokémon huyền thoại mới được phát hiện là Terapagos khi bạn mở rộng chân trời của mình ra khỏi Naranja hoặc Uva Academy.

Thông số tối thiểu: Để chơi Pokémon Violet + The Hidden Treasure of Area Zero DLC, bạn cần có:

Một máy Nintendo Switch.
Phiên bản đầy đủ của trò chơi Pokémon Violet.'),
(N'Prince Of Persia_The Lost Crown', 1300000,0.1,10, 1,  N'Ngày phát hành: Prince of Persia: The Lost Crown được phát hành vào ngày 18 tháng 1 năm 2024.

Hãng: Trò chơi được phát triển bởi Ubisoft Montpellier và được xuất bản bởi Ubisoft.

Mô tả: Prince of Persia: The Lost Crown là một trò chơi hành động phiêu lưu 2.5D. Người chơi điều khiển Sargon, một chiến binh thuộc bộ tộc The Immortals, phải đi đến thành phố bị nguyền rủa Mount Qaf để giải cứu hoàng tử Ghassan bị bắt cóc. Sargon có thể nhảy, trượt, và dash trong không khí để di chuyển giữa các nền tảng. Anh ta cầm một cặp lưỡi gươm mà anh ta sử dụng để đánh bại kẻ thù. Sargon có quyền truy cập vào một số sức mạnh dựa trên thời gian, có thể được sử dụng trong cả chiến đấu và platforming. The Lost Crown có các yếu tố Metroidvania, vì thế giới trò chơi được kết nối và đầy đủ lối tắt và phòng bí mật, và người chơi phải giải quyết các câu đố để tiến bộ.

Thông số tối thiểu:

Hệ điều hành: Windows 10 (64 bit only)
Bộ xử lý: Intel Core i5-4460 3.4 GHz, AMD Ryzen3 1200 3.1 GHz
Bộ nhớ: 8 GB (Dual-channel setup)
Card đồ họa: NVIDIA GeForce GTX 950 (2GB VRAM) hoặc AMD Radeon RX 5500 XT (4GB VRAM)
Dung lượng lưu trữ: 30 GB'),
(N'Red Dead Redemption 1', 1230000,0.1,10, 1,  N'Ngày phát hành: Red Dead Redemption 1 được phát hành vào ngày 18 tháng 5 năm 2010.

Hãng: Trò chơi được phát triển bởi Rockstar San Diego và được xuất bản bởi Rockstar Games.

Mô tả: Red Dead Redemption 1 là một trò chơi hành động phiêu lưu được thiết lập vào năm 1911, trong đó người chơi điều khiển John Marston, một tên cướp biển đã từ bỏ cuộc sống tội phạm khi các nhân viên liên bang đe dọa gia đình anh ta. Trò chơi diễn ra trong một thế giới mở tương tác, một phiên bản tưởng tượng của Tây Hoa Kỳ và Bắc Mexico, chủ yếu di chuyển bằng ngựa và đi bộ. Trò chơi nhấn mạnh vào các cuộc đấu súng với cơ chế chơi game "Dead Eye" cho phép người chơi đánh dấu nhiều mục tiêu bắn vào kẻ thù trong chế độ chậm.

Thông số tối thiểu:

Hệ điều hành: Xbox 360 hoặc PlayStation 3
Bộ xử lý: Intel Core 2 Duo E4400 2.0GHz hoặc AMD Athlon 64 X2 Dual Core 4000+
Bộ nhớ: 1 GB RAM (Xbox 360) hoặc 512 MB RAM (PlayStation 3)
Đồ họa: NVIDIA GeForce 6100 hoặc AMD Radeon HD 2400 Pro
Lưu trữ: 8 GB không gian trống trên ổ cứng'),
(N'Sonic Original Plus', 1080000,0.1,10, 1,  N'Ngày phát hành: Sonic Origins Plus được phát hành vào ngày 23 tháng 6 năm 2023.

Hãng: Trò chơi được phát triển bởi Sonic Team và Headcannon, và được xuất bản bởi SEGA.

Mô tả: Sonic Origins Plus là một phiên bản mở rộng của Sonic Origins. Trò chơi bao gồm bốn tựa game cổ điển được yêu thích trong Sonic Origins - Sonic the Hedgehog, Sonic 2, Sonic 3 & Knuckles, và Sonic CD với đồ họa được làm mới, nhân vật bổ sung, chế độ chơi mới, thử thách, nội dung hậu trường và nhiều hơn nữa, đồng thời thêm vào nhiều cải tiến đáng kể. Gói này cũng bao gồm 12 tựa game Sonic Game Gear, nội dung bổ sung đã phát hành trước đó, Knuckles có thể chơi trong Sonic CD, và lần đầu tiên, Amy Rose là một nhân vật có thể chơi trong Sonic the Hedgehog 1, 2, Sonic 3 & Knuckles, và Sonic CD! Với nhiều nội dung hơn bao giờ hết, đây là cách trải nghiệm tuyệt đối những trò chơi cổ điển này.

Thông số tối thiểu:

Hệ điều hành: Windows 10
Bộ xử lý: Intel Core i5-2400, 3.1 GHz hoặc AMD FX-8350, 4.2 GHz
Bộ nhớ: 6 GB'),
(N'Sonic Super Stars', 1471554,0.1,10, 1,  N'Ngày phát hành: Sonic Superstars đã được phát hành vào ngày 17 tháng 10 năm 2023.

Hãng: Trò chơi này được phát triển bởi Arzest và Sonic Team và được xuất bản bởi Sega.

Mô tả: Sonic Superstars là một trò chơi hành động phiêu lưu isometric với một con cáo nhỏ trong một cuộc phiêu lưu lớn. Người chơi sẽ đối mặt với các quái vật khổng lồ, thu thập các vật phẩm kỳ lạ và mạnh mẽ, và khám phá những bí mật đã mất từ lâu.

Thông số tối thiểu:

Hệ điều hành: Windows 10
Bộ xử lý: Intel Core i5-2300 hoặc AMD FX-4350
Bộ nhớ: 6 GB RAM
Đồ họa: NVIDIA GeForce GTS 450 1 GB hoặc AMD Radeon HD 5770 1 GB'),
(N'Star Wars Heritage Pack', 1500000,0.1,10, 1, N'Ngày phát hành: Star Wars Heritage Pack đã được phát hành vào ngày 27 tháng 4 năm 2023. Phiên bản vật lý của trò chơi đã được phát hành vào ngày 8 tháng 12 năm 2034.

Hãng: Trò chơi này được phát triển và xuất bản bởi Aspyr.

Mô tả: Star Wars Heritage Pack là một bộ sưu tập gồm bảy trò chơi Star Wars kinh điển. Bạn sẽ học cách sử dụng Lực từ Jedi Master Luke Skywalker, điều khiển một Podracer đang tăng tốc, lãnh đạo một đội quân clone ưu tú… và nhiều hơn nữa với Star Wars Heritage Pack. Bộ sưu tập này bao gồm bảy trò chơi Star Wars kinh điển sau:

STAR WARS™ Jedi Knight II: Jedi Outcast
STAR WARS™ Jedi Knight: Jedi Academy
STAR WARS™ Episode I Racer
STAR WARS™ Republic Commando™
STAR WARS™: The Force Unleashed™
STAR WARS™: Knights of the Old Republic™
STAR WARS™: Knights of the Old Republic™ II: The Sith Lords'),
(N'Tunic', 1050000,0.1,10, 1,  N'Ngày phát hành: Tunic đã được phát hành vào ngày 16 tháng 3 năm 2022.

Hãng: Trò chơi này được phát triển bởi Andrew Shouldice và được xuất bản bởi Finji.

Mô tả: Tunic là một trò chơi hành động phiêu lưu isometric về một con cáo nhỏ trong một cuộc phiêu lưu lớn. Người chơi sẽ đối mặt với các quái vật khổng lồ, thu thập các vật phẩm kỳ lạ và mạnh mẽ, và khám phá những bí mật đã mất từ lâu. Trò chơi này cung cấp một cấu trúc cấp độ độc đáo và động, độ khó của các nhiệm vụ bạn thực hiện sẽ thay đổi tùy thuộc vào thứ tự bạn đã chọn chúng.


Thông số tối thiểu:

Hệ điều hành: Windows 10
Bộ xử lý: Intel Core i5-6400
Bộ nhớ: 8 GB RAM
Đồ họa: Nvidia GeForce GTX 660 / AMD Radeon RX 460
Lưu trữ: 2 GB dung lượng ổ cứng')
--=========================================================================================================================================================================================

INSERT INTO Product 
VALUES 
	(N'AEW_Fight Forever',8734320,0.1,10,1,N'Ngày phát hành: AEW Fight Forever được phát hành vào ngày 29 tháng 6 năm 2023.

Hãng: Trò chơi được phát triển bởi Yuke’s và xuất bản bởi THQ Nordic.

Mô tả: AEW Fight Forever là một trò chơi đấu vật chuyên nghiệp lấy cảm hứng từ các thế hệ trước của trò chơi đấu vật, như WWF No Mercy cho Nintendo 64, mang lại trải nghiệm kiểu arcade với hình ảnh đấu vật phóng đại và trình bày. Trò chơi đã được phát hành trên nhiều hệ máy, như PlayStation 4, PlayStation 5, Microsoft Windows, Xbox One, Xbox Series X/S, và Nintendo Switch.

Thông số tối thiểu:

CPU: Intel Core i5-3550 hoặc AMD FX 8150 (hỗ trợ AVX)
RAM: 8 GB
Card đồ họa: GeForce GTX 1060 hoặc Radeon RX 480
Hệ điều hành: Windows 10 64 bit
Dung lượng ổ cứng trống: 25 GB

P/S: Tuy được khen ngợi vì phong cách chơi game kiểu arcade quay lại, nhưng bị chỉ trích vì giới hạn trong việc trình bày, chế độ, và tùy chỉnh.'),
	(N'Afterimage_Deluxe Edition',14954644,0.1,10,1,N'Ngày phát hành: Afterimage Deluxe Edition được phát hành vào ngày 25 tháng 4 năm 2023.

Hãng: Trò chơi được phát triển bởi Aurogon Shanghai và xuất bản bởi Modus Games.

Mô tả: Afterimage Deluxe Edition là một trò chơi hành động phiêu lưu 2D vẽ tay. Trò chơi tập trung vào chiến đấu nhanh chóng với các cấu hình nhân vật đa dạng, các cấp độ không tuyến tính và một câu chuyện hấp dẫn được đặt trong các tàn tích của một thế giới giả tưởng. Người chơi sẽ điều khiển Renee, một cô gái trẻ mất trí nhớ và là học sinh của Aros, người sống sót duy nhất sau cuộc tấn công vào làng của cô. Renee quyết tâm khôi phục lại những ký ức đã mất và tìm kiếm người hướng dẫn đã mất của mình, bắt đầu một hành trình đầy khám phá và nguy hiểm.

Thông số tối thiểu:

Hệ điều hành: Windows 10 (64 bit)
Bộ xử lý: Intel Core i5 hoặc AMD Ryzen 3
Bộ nhớ: 8GB RAM
Card đồ họa: GeForce GTX 560 hoặc Radeon HD 6870
DirectX: Phiên bản 11

P/S: là một người thích combat và wibu thì đây là một trải nghiệm rất thú vị của admin (O w O).'),
	(N'Alice Gear AegisCS_Concertoof Simulatrix',14954644,0.11,10,1,N'Ngày phát hành: Alice Gear Aegis CS_Concerto of Simulatrix được phát hành vào ngày 7 tháng 9 năm 2022.

Hãng: Trò chơi được phát triển bởi Pyramid và xuất bản bởi MAGES. và PQube.

Mô tả: Alice Gear Aegis CS_Concerto of Simulatrix là một trò chơi hành động chiến đấu 3D và là phiên bản nâng cấp của trò chơi di động Alice Gear Aegis với các trường 3D hoàn toàn thực hiện. Trò chơi này mang lại những trận chiến giữa các diễn viên chưa từng có. Với chế độ chơi trực tuyến, lên đến sáu người chơi có thể chơi cùng nhau cùng một lúc.

Thông số tối thiểu:

Một máy Nintendo Switch.
Phiên bản đầy đủ của trò chơi Alice Gear Aegis CS_Concerto of Simulatrix.'),
	(N'Bramble_The Mountain King',14954644,0.12,10,1,N'Ngày phát hành: Bramble: The Mountain King được phát hành vào ngày 27 tháng 4 năm 2023.

Hãng: Trò chơi được phát triển bởi DimfrostStudio và được xuất bản bởi MergeGames.

Mô tả: Bramble: The Mountain King là một trò chơi hành động phiêu lưu được phát triển dựa trên văn hóa dân gian Bắc Âu. Người chơi sẽ điều khiển một cậu bé tên Olle, người đang cố gắng giải cứu chị gái Lillemor của mình khỏi những sinh vật thần thoại. Trò chơi được chơi từ góc nhìn thứ ba và có các yếu tố của trò chơi kinh dị. Olle phải đi qua các địa điểm quen thuộc với truyện cổ tích. Di chuyển thường là theo chiều dọc, và để tiếp tục, người chơi đôi khi phải giải quyết các câu đố hoặc nhảy qua các nền tảng, như trong trò chơi nền tảng. Cũng có những trận chiến hành động đôi khi nơi người chơi phải đối mặt với những con quái vật đáng sợ trong các trận đấu boss.

Thông số tối thiểu:

Hệ điều hành: Windows 10
Bộ xử lý: Intel Core i5-2300 hoặc AMD FX-4350
Bộ nhớ: 4 GB RAM
Card đồ họa: Nvidia GeForce GTX 570, 1 GB hoặc AMD Radeon HD 7850, 2 GB
DirectX: Phiên bản 11
Dung lượng lưu trữ: 8 GB'),
	(N'Call Of Duty_Modern Warface III',6839839,0.13,10,1,N'Ngày phát hành: Call of Duty: Modern Warfare III được phát hành vào ngày 10 tháng 11 năm 2023.

Hãng: Trò chơi được phát triển bởi Sledgehammer Games và được xuất bản bởi Activision.

Mô tả: Call of Duty: Modern Warfare III là một trò chơi bắn súng góc nhìn thứ nhất phát triển bởi Sledgehammer Games và được xuất bản bởi Activision. Đây là phần tiếp theo của Modern Warfare II năm 2022, phục vụ như là mục nhập thứ ba trong loạt phần Modern Warfare được khởi động lại và phần cài đặt thứ hai mươi trong loạt tổng thể Call of Duty. Câu chuyện theo sau đơn vị hoạt động đặc biệt đa quốc gia Task Force 141 theo dõi Vladimir Makarov, một quốc gia cực đoan Nga và kẻ khủng bố đang lên kế hoạch kích hoạch một cuộc Chiến tranh Thế giới thứ ba. Chế độ chơi nhiều người của trò chơi bao gồm mười sáu bản đồ được làm mới từ Modern Warfare 2 năm 2009, với ít nhất mười hai bản đồ mới được lên kế hoạch để bao gồm sau khi phát hành. Một chế độ Zombies, được tạo ra bởi nhà phát triển loạt phần Black Ops Treyarch và được xây dựng xung quanh một trải nghiệm môi trường người chơi chống lại môi trường, cũng được bao gồm.

Thông số tối thiểu: Để chơi Call of Duty: Modern Warfare III, bạn cần có:

Hệ điều hành: Windows 10 64 Bit (cập nhật mới nhất)
CPU: Intel Core i5-6600 hoặc AMD Ryzen 5 1400
RAM: 8 GB
Dung lượng lưu trữ: SSD với 149 GB
Card đồ họa: NVIDIA GeForce GTX 960 hoặc Radeon RX 470
Bộ nhớ video: 2 GB'),
	(N'Clash_Artifactsof Chaos-Zeno Edition',1515470,0.14,10,1,N'Ngày phát hành: Clash: Artifacts of Chaos - Zeno Edition được phát hành vào ngày 9 tháng 3 năm 2023.

Hãng: Trò chơi được phát triển bởi ACE Team và được xuất bản bởi Nacon.

Mô tả: Clash: Artifacts of Chaos - Zeno Edition là một trò chơi hành động phiêu lưu 3D. Trò chơi diễn ra trong cùng một vũ trụ với Zeno Clash và Zeno Clash II, nhưng trò chơi hoàn toàn độc lập. Bạn sẽ nhập vai Pseudo, một thầy giáo võ thuật sống ẩn dật trong vùng đất kỳ lạ của Zenozoik. Khi bạn gặp Boy, một sinh vật nhỏ có những sức mạnh bí ẩn đã thu hút sự chú ý của Gemini, Nữ hoàng của các Di tích, bạn quyết định bảo vệ anh ta, không biết rằng có những lực lượng lớn hơn đang tham gia.

Thông số tối thiểu:

Hệ điều hành: Windows 10
Bộ xử lý: Intel i3 4130 (2.9 GHz) hoặc AMD FX 8120 (3.1 GHz)
Bộ nhớ: 8 GB RAM
Card đồ họa: NVIDIA GeForce GTX 780 (3 GB) hoặc AMD Radeon R7 260X (2 GB)
DirectX: Phiên bản 12
Dung lượng lưu trữ: 12 GB'),
	(N'EA_SPORTS FC24',1925815,0.15,10,1,N'Ngày phát hành: EA SPORTS FC 24 được phát hành vào ngày 29 tháng 9 năm 2023.

Hãng: Trò chơi được phát triển bởi EA Vancouver và EA Romania và được xuất bản bởi EA Sports.

Mô tả: EA SPORTS FC 24 là một trò chơi mô phỏng bóng đá với góc nhìn thứ nhất. Trò chơi này là phần đầu tiên trong loạt EA Sports FC, kế thừa loạt trò chơi FIFA sau khi hợp tác của Electronic Arts với FIFA kết thúc với FIFA 23. EA SPORTS FC 24 mang đến cho bạn trải nghiệm bóng đá thực sự hơn bao giờ hết, được cung cấp bởi ba công nghệ tạo ra sự chân thực trong gameplay ở mỗi trận đấu. EA SPORTS FC 24 khởi động một kỷ nguyên mới của The World’s Game. Gặp gỡ thương hiệu mới và ba công nghệ tạo ra trải nghiệm bóng đá thực sự.

Thông số tối thiểu: Để chơi EA SPORTS FC 24, bạn cần có:

Hệ điều hành: Windows 10 64-bit
Bộ xử lý: Intel Core i5-6600K @ 3.50GHz hoặc AMD Ryzen 5 1600 @ 3.2 GHZ
Bộ nhớ: 8 GB RAM
Card đồ họa: NVIDIA GeForce GTX 1050 Ti 4GB hoặc AMD Radeon RX 570 4GB
Dung lượng lưu trữ: 100 GB
DirectX: Phiên bản 12
Kết nối Internet: Tốc độ internet tối thiểu 512kbps. Yêu cầu kết nối internet để cài đặt và chơi.'),
	(N'Grandblue Fantasy_Relink',1215260,0.16,10,1,N'Ngày phát hành: Granblue Fantasy: Relink được phát hành vào ngày 1 tháng 2 năm 2024.

Hãng: Trò chơi được phát triển bởi Cygames.

Mô tả: Granblue Fantasy: Relink là một trò chơi hành động nhập vai 3D. Trò chơi này là một phần của loạt Granblue Fantasy và là một cuộc phiêu lưu lớn trong bầu trời. Bạn sẽ hình thành một nhóm gồm bốn người từ một danh sách đa dạng của các skyfarer và cắt, bắn hoặc hex đường bạn đến chiến thắng chống lại kẻ thù gian ác trong trò chơi nhập vai hành động này. Thực hiện các nhiệm vụ một mình hoặc với sự giúp đỡ của người khác trong chế độ chơi cộng tác lên đến 4 người.

Thông số tối thiểu: Để chơi Granblue Fantasy: Relink, bạn cần có:

Hệ điều hành: Windows 10 (64-bit)
Bộ xử lý: Intel® Core™ i3-9100 hoặc AMD Ryzen™ 3 3200G
Bộ nhớ: 16 GB RAM
Card đồ họa: NVIDIA® GeForce GTX™ 1060 6GB hoặc AMD Radeon™ RX 580 8GB
Dung lượng lưu trữ: 90 GB
DirectX: Phiên bản 11'),
	(N'Hogwarts Legacy',8861477,0.17,10,1,N'Ngày phát hành: Hogwarts Legacy đã được phát hành vào ngày 10 tháng 2 năm 2023.

Hãng: Trò chơi này được phát triển bởi Avalanche Software và được xuất bản bởi Warner Bros. Games dưới nhãn Portkey Games.

Mô tả: Hogwarts Legacy là một trò chơi nhập vai hành động mở thế giới, lần đầu tiên cho phép bạn trải nghiệm Hogwarts vào thế kỷ 1958. Nhân vật của bạn là một học sinh giữ chìa khóa để khám phá một bí mật cổ xưa đe dọa thế giới phù thủy. Bạn sẽ kết bạn, chiến đấu với phù thủy Đen tối và quyết định số phận của thế giới phù thủy.

Thông số tối thiểu: Hogwarts Legacy yêu cầu hệ điều hành Windows 10, CPU Intel Core i5-6600, RAM 16 GB, card đồ họa Nvidia GeForce GTX 960 4GB.

P/S: siêu phẩm, change my mind.'),
	(N'Like A Dragon Gaiden_The Man Who Erased His Name',10853734,0.18,10,1,N'Ngày phát hành: Like A Dragon Gaiden: The Man Who Erased His Name được phát hành vào ngày 9 tháng 11 năm 2023.

Hãng: Trò chơi được phát triển bởi Ryu Ga Gotoku Studio và được xuất bản bởi Sega.

Mô tả: Like A Dragon Gaiden: The Man Who Erased His Name là một trò chơi hành động phiêu lưu một người chơi. Trò chơi này là một phần của loạt Like a Dragon và diễn ra sau các sự kiện của Yakuza: Like a Dragon (2020). Trong Like A Dragon Gaiden, người chơi điều khiển Kazuma Kiryu khi họ khám phá quận Sotenbori của Osaka. Quận Isezaki Ijincho của Yokohama, một địa điểm nổi bật trong Yakuza: Like a Dragon và Lost Judgment, cũng có sẵn một phần trong chương đầu tiên của câu chuyện.

Thông số tối thiểu: Để chơi Like A Dragon Gaiden: The Man Who Erased His Name, bạn cần có:

CPU: Intel Core i5-3470, 3.2 GHz hoặc AMD Ryzen 3 1200, 3.1 GHz
RAM: 8 GB
Card đồ họa: NVIDIA GeForce GTX 960, 2 GB hoặc AMD Radeon RX 460, 2 GB hoặc Intel Arc A380, 6 GB
Dung lượng RAM video: 2048 MB'),
	(N'Marve lron Man VR',4258754,0.19,10,1,N'Ngày phát hành: Marvel Iron Man VR được phát hành vào ngày 3 tháng 7 năm 2020 cho PlayStation VR và sau đó được phát hành cho Meta Quest 2 vào ngày 3 tháng 11 năm 2022.

Hãng: Trò chơi được phát triển bởi Camouflaj.

Mô tả: Marvel Iron Man VR là một trò chơi bắn súng thực tế ảo. Trong trò chơi, người chơi sẽ nhập vai Tony Stark, còn được biết đến với tên gọi Iron Man, và đối mặt với những bóng ma từ quá khứ của mình. Những kẻ thù mạnh mẽ này đang tìm cách phá hủy anh và tất cả những gì anh đại diện. Trò chơi được trình bày từ góc nhìn người đầu tiên, yêu cầu người chơi điều hướng không gian ảo của trò chơi bằng cách sử dụng cơ chế bay và hệ thống vũ khí của bộ giáp Iron Man để tấn công kẻ thù chủ yếu trong các cuộc chiến không kích qua nhiều môi trường.

Thông số tối thiểu: Để chơi Marvel Iron Man VR, bạn cần có:

PlayStation VR.
Ít nhất hai PS Move controllers.
Dung lượng lưu trữ tối thiểu: 50 GB.'),
	(N'Naruto X Boruto Ultimate Ninja Storm Connections',10465667,0.11,10,1,N'Ngày phát hành: Naruto X Boruto Ultimate Ninja Storm Connections được phát hành vào ngày 17 tháng 11 năm 2023.

Hãng: Trò chơi được phát triển bởi CyberConnect2 Co., Ltd.

Mô tả: Naruto X Boruto Ultimate Ninja Storm Connections là một trò chơi hành động đối kháng với các trận chiến ninja nhanh chóng và hai chế độ câu chuyện khác nhau. Trò chơi này là một phần tiếp theo trong loạt trò chơi Ultimate Ninja Storm, kỷ niệm 20 năm ngày ra mắt anime Naruto. Trò chơi có hơn 130 nhân vật có thể chơi, bao gồm cả những nhân vật từ loạt trò chơi trước và những nhân vật mới như Ashura và Indra Otsutsuki, cũng như các nhân vật từ BORUTO như Boruto Uzumaki (Karma), Kawaki và Jigen. Trò chơi cung cấp một chế độ câu chuyện đặc biệt được thiết kế riêng cho trò chơi, tập trung vào Boruto.

Thông số tối thiểu: Để chơi Naruto X Boruto Ultimate Ninja Storm Connections, bạn cần có:

Hệ điều hành: Windows 10, 64-bit.
Bộ xử lý: Intel Core i7-8700 / AMD Ryzen 7 2700X.
Bộ nhớ: 8 GB RAM.
Card đồ họa: Nvidia GeForce GTX 660 Ti / Radeon R9 270X / Intel Arc A380.
Dung lượng lưu trữ: 30.36 GB.
DirectX: Phiên bản 11.'),
	(N'Persona 3 Reload',9869695,0.12,10,1,N'Ngày phát hành: Persona 3 Reload được phát hành vào ngày 2 tháng 2 năm 2024.

Hãng: Trò chơi được phát triển bởi P-Studio và được xuất bản bởi Atlus.

Mô tả: Persona 3 Reload là một trò chơi nhập vai. Trò chơi này là một phiên bản làm lại của Persona 3, phần thứ tư chính của loạt Persona, một phần của thương hiệu Megami Tensei lớn hơn. Như với trò chơi gốc, nhân vật chính là một học sinh trung học trở về thành phố nhà của mình một thập kỷ sau khi cha mẹ anh bị giết trong một tai nạn xe hơi chết người. Anh sớm có khả năng triệu hồi Persona - biểu hiện vật lý của tinh thần bên trong anh, và tham gia vào Specialized Extracurricular Execution Squad (S.E.E.S.), một nhóm người dùng Persona có cùng suy nghĩ. Cùng nhau, họ được giao nhiệm vụ đánh bại Shadows và khám phá bí ẩn của Dark Hour. Persona 3 Reload đã được làm lại từ đầu để phù hợp với quy mô của Persona 5.

Thông số tối thiểu: Để chơi Persona 3 Reload, bạn cần có:

Hệ điều hành: Windows 10, 64-bit.
Bộ xử lý: Intel Core i7-4790, 3.4 GHz.
Bộ nhớ: 8 GB RAM.
Card đồ họa: Nvidia GeForce GTX 650 Ti, 2 GB.
Dung lượng lưu trữ: 30 GB.
DirectX: Phiên bản 12.'),
	(N'Prince Of Persia_The Lost Crown',2023908,0.13,10,1,N'Ngày phát hành: Prince of Persia: The Lost Crown được phát hành vào ngày 18 tháng 1 năm 2024.

Hãng: Trò chơi được phát triển bởi Ubisoft Montpellier và được xuất bản bởi Ubisoft.

Mô tả: Prince of Persia: The Lost Crown là một trò chơi hành động phiêu lưu 2.5D. Người chơi điều khiển Sargon, một chiến binh thuộc bộ tộc The Immortals, phải đi đến thành phố bị nguyền rủa Mount Qaf để giải cứu hoàng tử Ghassan bị bắt cóc. Sargon có thể nhảy, trượt, và dash trong không khí để di chuyển giữa các nền tảng. Anh ta cầm một cặp lưỡi gươm mà anh ta sử dụng để đánh bại kẻ thù. Sargon có quyền truy cập vào một số sức mạnh dựa trên thời gian, có thể được sử dụng trong cả chiến đấu và platforming. The Lost Crown có các yếu tố Metroidvania, vì thế giới trò chơi được kết nối và đầy đủ lối tắt và phòng bí mật, và người chơi phải giải quyết các câu đố để tiến bộ.

Thông số tối thiểu:

Hệ điều hành: Windows 10 (64 bit only)
Bộ xử lý: Intel Core i5-4460 3.4 GHz, AMD Ryzen3 1200 3.1 GHz
Bộ nhớ: 8 GB (Dual-channel setup)
Card đồ họa: NVIDIA GeForce GTX 950 (2GB VRAM) hoặc AMD Radeon RX 5500 XT (4GB VRAM)
Dung lượng lưu trữ: 30 GB'),
	(N'Red Dead Redemption 1',10010639,0.14,10,1,N'Ngày phát hành: Red Dead Redemption 1 được phát hành vào ngày 18 tháng 5 năm 2010.

Hãng: Trò chơi được phát triển bởi Rockstar San Diego và được xuất bản bởi Rockstar Games.

Mô tả: Red Dead Redemption 1 là một trò chơi hành động phiêu lưu được thiết lập vào năm 1911, trong đó người chơi điều khiển John Marston, một tên cướp biển đã từ bỏ cuộc sống tội phạm khi các nhân viên liên bang đe dọa gia đình anh ta. Trò chơi diễn ra trong một thế giới mở tương tác, một phiên bản tưởng tượng của Tây Hoa Kỳ và Bắc Mexico, chủ yếu di chuyển bằng ngựa và đi bộ. Trò chơi nhấn mạnh vào các cuộc đấu súng với cơ chế chơi game "Dead Eye" cho phép người chơi đánh dấu nhiều mục tiêu bắn vào kẻ thù trong chế độ chậm.

Thông số tối thiểu:

Hệ điều hành: Xbox 360 hoặc PlayStation 3
Bộ xử lý: Intel Core 2 Duo E4400 2.0GHz hoặc AMD Athlon 64 X2 Dual Core 4000+
Bộ nhớ: 1 GB RAM (Xbox 360) hoặc 512 MB RAM (PlayStation 3)
Đồ họa: NVIDIA GeForce 6100 hoặc AMD Radeon HD 2400 Pro
Lưu trữ: 8 GB không gian trống trên ổ cứng'),
	(N'Sonic Original Plus',7100740,0.15,10,1,N'Ngày phát hành: Sonic Origins Plus được phát hành vào ngày 23 tháng 6 năm 2023.

Hãng: Trò chơi được phát triển bởi Sonic Team và Headcannon, và được xuất bản bởi SEGA.

Mô tả: Sonic Origins Plus là một phiên bản mở rộng của Sonic Origins. Trò chơi bao gồm bốn tựa game cổ điển được yêu thích trong Sonic Origins - Sonic the Hedgehog, Sonic 2, Sonic 3 & Knuckles, và Sonic CD với đồ họa được làm mới, nhân vật bổ sung, chế độ chơi mới, thử thách, nội dung hậu trường và nhiều hơn nữa, đồng thời thêm vào nhiều cải tiến đáng kể. Gói này cũng bao gồm 12 tựa game Sonic Game Gear, nội dung bổ sung đã phát hành trước đó, Knuckles có thể chơi trong Sonic CD, và lần đầu tiên, Amy Rose là một nhân vật có thể chơi trong Sonic the Hedgehog 1, 2, Sonic 3 & Knuckles, và Sonic CD! Với nhiều nội dung hơn bao giờ hết, đây là cách trải nghiệm tuyệt đối những trò chơi cổ điển này.

Thông số tối thiểu:

Hệ điều hành: Windows 10
Bộ xử lý: Intel Core i5-2400, 3.1 GHz hoặc AMD FX-8350, 4.2 GHz
Bộ nhớ: 6 GB'),
	(N'Sonic Super Stars',7220366,0.17,10,1,N'Ngày phát hành: Sonic Superstars đã được phát hành vào ngày 17 tháng 10 năm 2023.

Hãng: Trò chơi này được phát triển bởi Arzest và Sonic Team và được xuất bản bởi Sega.

Mô tả: Sonic Superstars là một trò chơi hành động phiêu lưu isometric với một con cáo nhỏ trong một cuộc phiêu lưu lớn. Người chơi sẽ đối mặt với các quái vật khổng lồ, thu thập các vật phẩm kỳ lạ và mạnh mẽ, và khám phá những bí mật đã mất từ lâu.

Thông số tối thiểu:

Hệ điều hành: Windows 10
Bộ xử lý: Intel Core i5-2300 hoặc AMD FX-4350
Bộ nhớ: 6 GB RAM
Đồ họa: NVIDIA GeForce GTS 450 1 GB hoặc AMD Radeon HD 5770 1 GB'),
	(N'Street Fighter 6',2313288,0.16,10,1,N'Ngày phát hành: Street Fighter 6 được phát hành vào ngày 2 tháng 6 năm 2023.

Hãng: Trò chơi được phát triển bởi Capcom.

Mô tả: Street Fighter 6 là một trò chơi đối kháng. Trò chơi này là phần thứ bảy chính trong loạt Street Fighter, và đã được phát hành cho PlayStation 4, PlayStation 5, Windows và Xbox Series X/S vào ngày 2 tháng 6 năm 2023. Street Fighter 6 hỗ trợ chơi chéo nền tảng và rollback netcode. Nó cung cấp ba chế độ chơi tổng quát và ba tùy chọn điều khiển. Trò chơi cũng có hệ thống bình luận thời gian thực, mang lại cảm giác giải đấu và tùy chọn cổ vũ cho người chơi.

Thông số tối thiểu: Để chơi Street Fighter 6, bạn cần có:

Hệ điều hành: Windows 10, 64-bit.
Bộ xử lý: Intel Core i5-7500 hoặc AMD Ryzen 3 1200.
Bộ nhớ: 8 GB RAM.
Card đồ họa: NVIDIA GeForce GTX 1060 hoặc Radeon RX 580.
Dung lượng lưu trữ: 60 GB.'),
	(N'WoLong_Fallen Dynasty',9466184,0.18,10,1,N'Ngày phát hành: We Long: Fallen Dynasty được phát hành vào ngày 6 tháng 2 năm 2024.

Hãng: Trò chơi được phát triển bởi Team Ninja và được xuất bản bởi KOEI TECMO GAMES CO., LTD.

Mô tả: We Long: Fallen Dynasty là một trò chơi nhập vai hành động lấy bối cảnh thế giới Tam Quốc chuyển thể theo phong cách dark fantasy. Trò chơi diễn ra vào năm 184 sau Công nguyên, trong cuộc Nổi dậy của Vạn Dân màu vàng, do ba anh em Zhang dẫn dắt, họ sử dụng một loại Elixir mạnh mẽ do một nhà Đạo giáo bí ẩn tên là Yu Ji trao cho họ để lật đổ triều đại Han đang cai trị. Trong một cuộc tấn công của phe nổi dậy vào một ngôi làng nông thôn, người chơi, một chiến binh quân đội không tên, cứu một cậu bé bị bịt mắt khỏi một số kẻ nổi dậy.

Thông số tối thiểu: Để chơi We Long: Fallen Dynasty, bạn cần có:

Hệ điều hành: Windows 10/11.
Bộ xử lý: Intel Core i5-8400 hoặc AMD Ryzen 5 3400G.
Bộ nhớ: 8 GB RAM.
Card đồ họa: NVIDIA GeForce GTX 1650 hoặc AMD Radeon RX 570.
Dung lượng lưu trữ: 60 GB.'),
	(N'WWE2K23 Deluxe Edition',4777950,0.1,10,1,N'Ngày phát hành: WWE 2K23 Deluxe Edition được phát hành vào ngày 14 tháng 3 năm 2023.

Hãng: Trò chơi được phát triển bởi Visual Concepts.

Mô tả: WWE 2K23 Deluxe Edition bao gồm trò chơi cơ bản, cùng với các bổ sung sau:

Truy cập sớm 3 ngày.
Season Pass: Bao gồm tất cả 5 gói nhân vật DLC sau khi phát hành, gói MyRISE Mega-Boost, với 200 điểm thuộc tính bổ sung, và gói Supercharger mở khóa tất cả các huyền thoại WWE và các sân vận động quay lại trong trò chơi cơ bản.
Gói bổ sung Deluxe Edition: Bao gồm thẻ EVO John Cena, Bianca Belair cấp Emerald, và thẻ Asuka và Edge cấp Gold, cùng với 3 gói thẻ MyFACTION cơ bản ngày 1.
Thông số tối thiểu: Để chơi WWE 2K23 Deluxe Edition, bạn cần có:

Hệ điều hành: Windows 10, 64-bit.
Bộ xử lý: Intel Core i5-3550 / AMD FX 8150.
Bộ nhớ: 8 GB RAM.
Card đồ họa: GeForce GTX 1060 / Radeon RX 480.
Dung lượng lưu trữ: 80 GB.'),
	(N'Avatar_Frontiersof Pandora',7465208,0.11,10,1,N'Ngày phát hành: Avatar: Frontiers of Pandora được phát hành vào ngày 7 tháng 12 năm 2023.

Hãng: Trò chơi được phát triển bởi Massive Entertainment.

Mô tả: Avatar: Frontiers of Pandora là một trò chơi hành động phiêu lưu thế giới mở. Trò chơi diễn ra trong cuộc Chiến tranh Pandoran thứ hai, trong khoảng thời gian một năm không xuất hiện trong Avatar: The Way of Water, sau khi RDA trở lại. Trò chơi được chơi từ góc nhìn người đầu tiên, người chơi điều khiển một cô nhi Na’vi được nuôi dưỡng và đào tạo như một chiến binh bởi Cơ quan Phát triển Tài nguyên (RDA), trước khi được đưa vào trạng thái ngủ đông và thức dậy mười sáu năm sau trong một cơ sở bị bỏ hoang. Câu chuyện của trò chơi được cho là một phần liên quan đến các bộ phim, trong khi vẫn tồn tại độc lập. Trò chơi cũng hỗ trợ chế độ chơi đa người cộng tác 2 người. Người chơi phải bắt đầu một hành trình qua Biên giới phía Tây, một khu vực chưa từng thấy của Pandora, khám phá nguồn gốc của họ và tổ chức các bộ tộc Na’vi địa phương để chống lại RDA khi họ cố gắng khai thác các nguồn tài nguyên tự nhiên của Biên giới phía Tây.

Thông số tối thiểu: Để chơi Avatar: Frontiers of Pandora, bạn cần có:

Hệ điều hành: Windows 10/11, 64-bit.
Bộ xử lý: AMD Ryzen 5 3600 @ 3.6 GHz hoặc Intel Core i7-8700k @ 3.70 GHz.
Bộ nhớ: 16 GB RAM.
Card đồ họa: AMD RX 5700 8GB, Intel Arc A750 8 GB với ReBAR on, NVIDIA GeForce GTX 1070 8GB.'),
	(N'Call Of Duty_Modern Warface III',13538296,0.21,10,1,N'Ngày phát hành: Call of Duty: Modern Warfare III được phát hành vào ngày 10 tháng 11 năm 2023.
	
Hãng: Trò chơi được phát triển bởi Sledgehammer Games và được xuất bản bởi Activision.

Mô tả: Call of Duty: Modern Warfare III là một trò chơi bắn súng góc nhìn thứ nhất phát triển bởi Sledgehammer Games và được xuất bản bởi Activision. Đây là phần tiếp theo của Modern Warfare II năm 2022, phục vụ như là mục nhập thứ ba trong loạt phần Modern Warfare được khởi động lại và phần cài đặt thứ hai mươi trong loạt tổng thể Call of Duty. Câu chuyện theo sau đơn vị hoạt động đặc biệt đa quốc gia Task Force 141 theo dõi Vladimir Makarov, một quốc gia cực đoan Nga và kẻ khủng bố đang lên kế hoạch kích hoạch một cuộc Chiến tranh Thế giới thứ ba. Chế độ chơi nhiều người của trò chơi bao gồm mười sáu bản đồ được làm mới từ Modern Warfare 2 năm 2009, với ít nhất mười hai bản đồ mới được lên kế hoạch để bao gồm sau khi phát hành. Một chế độ Zombies, được tạo ra bởi nhà phát triển loạt phần Black Ops Treyarch và được xây dựng xung quanh một trải nghiệm môi trường người chơi chống lại môi trường, cũng được bao gồm.

Thông số tối thiểu: Để chơi Call of Duty: Modern Warfare III, bạn cần có:

Hệ điều hành: Windows 10 64 Bit (cập nhật mới nhất)
CPU: Intel Core i5-6600 hoặc AMD Ryzen 5 1400
RAM: 8 GB
Dung lượng lưu trữ: SSD với 149 GB
Card đồ họa: NVIDIA GeForce GTX 960 hoặc Radeon RX 470
Bộ nhớ video: 2 GB'),
	(N'EA_SPORTS FC24',12114921,0.21,10,1,N' Ngày phát hành: EA SPORTS FC 24 được phát hành vào ngày 29 tháng 9 năm 2023.

Hãng: Trò chơi được phát triển bởi EA Vancouver và EA Romania và được xuất bản bởi EA Sports.

Mô tả: EA SPORTS FC 24 là một trò chơi mô phỏng bóng đá với góc nhìn thứ nhất. Trò chơi này là phần đầu tiên trong loạt EA Sports FC, kế thừa loạt trò chơi FIFA sau khi hợp tác của Electronic Arts với FIFA kết thúc với FIFA 23. EA SPORTS FC 24 mang đến cho bạn trải nghiệm bóng đá thực sự hơn bao giờ hết, được cung cấp bởi ba công nghệ tạo ra sự chân thực trong gameplay ở mỗi trận đấu. EA SPORTS FC 24 khởi động một kỷ nguyên mới của The World’s Game. Gặp gỡ thương hiệu mới và ba công nghệ tạo ra trải nghiệm bóng đá thực sự.

Thông số tối thiểu: Để chơi EA SPORTS FC 24, bạn cần có:

Hệ điều hành: Windows 10 64-bit
Bộ xử lý: Intel Core i5-6600K @ 3.50GHz hoặc AMD Ryzen 5 1600 @ 3.2 GHZ
Bộ nhớ: 8 GB RAM
Card đồ họa: NVIDIA GeForce GTX 1050 Ti 4GB hoặc AMD Radeon RX 570 4GB
Dung lượng lưu trữ: 100 GB
DirectX: Phiên bản 12
Kết nối Internet: Tốc độ internet tối thiểu 512kbps. Yêu cầu kết nối internet để cài đặt và chơi.'),
	(N'EA SPORTS F123',6597636,0.31,10,1,N'Ngày phát hành: EA SPORTS F1 23 được phát hành vào ngày 16 tháng 6 năm 2023.

Hãng: Trò chơi được phát triển bởi Codemasters.

Mô tả: EA SPORTS F1 23 là trò chơi đua xe chính thức của Giải vô địch F1 2023. Trò chơi giới thiệu một chương mới trong chế độ câu chuyện hấp dẫn, "Braking Point". Trò chơi cung cấp các đường đua mới tại Las Vegas và Qatar. Trò chơi cũng có một trung tâm trong trò chơi F1 23 để khám phá các thách thức mới, cải thiện kỹ năng lái xe của bạn, mở khóa phần thưởng hàng tuần và nội dung liên quan đến GP.

Thông số tối thiểu: Để chơi EA SPORTS F1 23, bạn cần có:

Hệ điều hành: Windows 10, 64-bit.
Bộ xử lý: Intel Core i3-2130 hoặc AMD FX 4300.
Bộ nhớ: 8 GB RAM.
Card đồ họa: NVIDIA GTX 1050 Ti hoặc AMD RX 470.
Dung lượng lưu trữ: 80 GB.'),
	(N'EA SPORTS WRC23',2823863,0.11,10,1,N'Ngày phát hành: EA SPORTS WRC 23 được phát hành vào ngày 3 tháng 11 năm 2023.

Hãng: Trò chơi được phát triển bởi Codemasters.

Mô tả: EA SPORTS WRC 23 là một trò chơi đua xe chính thức của Giải vô địch WRC. Trò chơi giới thiệu một chế độ câu chuyện hấp dẫn, "Braking Point". Trò chơi cung cấp các đường đua mới tại Las Vegas và Qatar. Trò chơi cũng có một trung tâm trong trò chơi để khám phá các thách thức mới, cải thiện kỹ năng lái xe của bạn, mở khóa phần thưởng hàng tuần và nội dung liên quan đến GP.

Thông số tối thiểu: Để chơi EA SPORTS WRC 23, bạn cần có:

Hệ điều hành: Windows 10.
Bộ xử lý: AMD Ryzen 5 2600X hoặc Intel i5 9600K.
Bộ nhớ: 8 GB RAM.
Card đồ họa: Nvidia GTX 1060 hoặc Radeon RX Vega 56.
Dung lượng lưu trữ: 80 GB.
Sound Card: DirectX Compatible.'),
	(N'F1 Manager 2023',11664146,0.13,10,1,N'Ngày phát hành: F1 Manager 2023 được phát hành vào ngày 31 tháng 7 năm 2023.

Hãng: Trò chơi được phát triển bởi Frontier Developments.

Mô tả: F1 Manager 2023 là một trò chơi quản lý thể thao. Trò chơi là trò chơi mô phỏng quản lý đua xe chính thức của Giải vô địch F1, F2 và F3 năm 2023. Trong trò chơi này, bạn sẽ thách thức bản thân bằng cách quản lý đội F1 của mình, bắt đầu sự nghiệp của mình làm Giám đốc đội tại một trong 10 đội F1 hiện tại và quản lý mọi khía cạnh từ nhà máy đến garage, đến hàng đầu. Bạn sẽ quản lý nhân viên và cơ sở của mình, xây dựng và tinh chỉnh xe của bạn, lập kế hoạch và thực hiện chiến lược đua của bạn. Các quyết định của bạn sẽ quyết định cách mùa giải của bạn diễn ra.

Thông số tối thiểu: Để chơi F1 Manager 2023, bạn cần có:

Hệ điều hành: Windows 10, 64-bit.
Bộ xử lý: Intel Core i5-4590 hoặc AMD FX-8370.
Bộ nhớ: 8 GB RAM.
Card đồ họa: Nvidia GeForce GTX 960 hoặc AMD R9 280x (3GB VRAM).
Dung lượng lưu trữ: 30 GB.'),
	(N'God of Rock',11480597,0.12,10,1,N'Ngày phát hành: God of Rock được phát hành vào ngày 17 tháng 4 năm 2023.

Hãng: Trò chơi được phát triển bởi Modus Studios Brazil.

Mô tả: God of Rock là một trò chơi kết hợp giữa thể loại rhythm và đối kháng. Trong trò chơi này, người chơi sẽ điều khiển các nhân vật tham gia vào các giải đấu, giống như trong các trò chơi đối kháng. Thay vì phải ghi nhớ các động tác phức tạp, người chơi phải điều chỉnh thời gian của các lệnh nhập vào theo nhạc, giống như trong các trò chơi rhythm. Nếu cả hai người chơi đều nhập lệnh đúng thời gian, họ sẽ chặn được các đòn tấn công của nhau. Họ cũng có thể thực hiện các đòn đặc biệt, cho phép họ hồi phục sức khỏe hoặc thay đổi nhạc của đối thủ. Những đòn tấn công đặc biệt này có thể bị phản đòn bằng các đòn đặc biệt của chính mình. Phần rhythm sẽ trở nên khó khăn hơn theo thời gian. God of Rock có chế độ chơi đa người trực tuyến.

Thông số tối thiểu:

Bộ xử lý: Intel i5-7500 / AMD Ryzen 5 2600.
Bộ nhớ: 8 GB RAM.
Card đồ họa: GeForce GTX 970 / Radeon RX 570.
Dung lượng lưu trữ: Yêu cầu một hệ điều hành và bộ xử lý 64-bit.'),
	(N'Horizon Forbidden West Complete Edition',7784310,0.17,10,1,N'Ngày phát hành trên PS5: 6 tháng 10 năm 2023.

Ngày phát hành trên PC: 21 tháng 3 năm 2024.

Hãng phát triển: Guerrilla Games.

Mô tả: "Horizon Forbidden West Complete Edition" cho phép bạn trải nghiệm toàn bộ trò chơi "Horizon Forbidden West" đã được đánh giá cao với nội dung bổ sung, bao gồm mở rộng câu chuyện "Burning Shores" sau trò chơi chính. Trong trò chơi, bạn sẽ tham gia cùng Aloy khi cô đối mặt với Forbidden West - một biên giới hùng vĩ nhưng nguy hiểm che giấu những mối đe dọa mới bí ẩn. Trò chơi cho phép bạn khám phá những vùng đất xa xôi, chiến đấu với những cỗ máy lớn hơn và gây ấn tượng hơn, và gặp gỡ những bộ lạc mới đáng kinh ngạc khi bạn trở lại thế giới sau thảm họa của tương lai xa.

Thông số tối thiểu:

Hệ điều hành: Windows 10, 64-bit.
Bộ xử lý: Intel Core i7-6900K / AMD Ryzen 5 1500X.
Bộ nhớ: 8 GB RAM.
Card đồ họa: NVIDIA GeForce GTX 1050 Ti hoặc AMD Radeon RX 470.
Dung lượng lưu trữ: 60 GB.'),
	(N'Killer Frequency',6597636,0.18,10,1,N'Ngày phát hành: 1 tháng 6 năm 2023.

Hãng phát triển: Team17.

Mô tả: "Killer Frequency" là một trò chơi kinh dị phiêu lưu góc nhìn người đầu tiên. Trò chơi diễn ra trong một thị trấn nhỏ vào năm 1987, nơi người chơi điều khiển một DJ hoạt động như một người điều hành radio tạm thời khi một kẻ giết người hàng loạt trở lại để khủng bố cư dân thị trấn. Người chơi phải nhận cuộc gọi từ những người sống sót và giải quyết các câu đố khác nhau để giúp họ thoát khỏi kẻ giết người.

Thông số tối thiểu:

Hệ điều hành: Windows 10, 64-bit.
Bộ xử lý: Intel Core i3-540 hoặc AMD Phenom II X4 965.
Bộ nhớ: 4 GB RAM.
Card đồ họa: NVIDIA GeForce GT 730, 2 GB hoặc AMD Radeon HD 6670, 1 GB.
Dung lượng lưu trữ: 2 GB.'),
	(N'Like A Dragon Gaiden_The Man Who Erased His Name',12796523,0.1,10,1,N'Ngày phát hành: Like A Dragon Gaiden: The Man Who Erased His Name được phát hành vào ngày 9 tháng 11 năm 2023.

Hãng: Trò chơi được phát triển bởi Ryu Ga Gotoku Studio và được xuất bản bởi Sega.

Mô tả: Like A Dragon Gaiden: The Man Who Erased His Name là một trò chơi hành động phiêu lưu một người chơi. Trò chơi này là một phần của loạt Like a Dragon và diễn ra sau các sự kiện của Yakuza: Like a Dragon (2020). Trong Like A Dragon Gaiden, người chơi điều khiển Kazuma Kiryu khi họ khám phá quận Sotenbori của Osaka. Quận Isezaki Ijincho của Yokohama, một địa điểm nổi bật trong Yakuza: Like a Dragon và Lost Judgment, cũng có sẵn một phần trong chương đầu tiên của câu chuyện.

Thông số tối thiểu: Để chơi Like A Dragon Gaiden: The Man Who Erased His Name, bạn cần có:

CPU: Intel Core i5-3470, 3.2 GHz hoặc AMD Ryzen 3 1200, 3.1 GHz
RAM: 8 GB
Card đồ họa: NVIDIA GeForce GTX 960, 2 GB hoặc AMD Radeon RX 460, 2 GB hoặc Intel Arc A380, 6 GB
Dung lượng RAM video: 2048 MB'),
	(N'Lords Of The Fallen',978919,0.1,10,1,N'Ngày phát hành: 13 tháng 10 năm 2023.

Hãng phát triển: Hexworks.

Mô tả: "Lords of the Fallen" là một trò chơi nhập vai hành động. Trò chơi diễn ra trong một thế giới rộng lớn, hơn năm lần so với trò chơi gốc. Trò chơi được chia thành hai thế giới song song, thế giới của người sống và thế giới của người chết. Bạn mang theo một cây đèn có thể cho bạn nhìn thấy thế giới khác, nơi bạn có thể tìm thấy kho báu hoặc kẻ thù.

Thông số tối thiểu:

Hệ điều hành: Windows 10, 64-bit.
Bộ xử lý: Intel Core i5 8400 hoặc AMD Ryzen 5 2600.
Bộ nhớ: 12 GB RAM.
Card đồ họa: Nvidia GTX 1060 6 GB hoặc AMD Radeon RX 590 6 GB.
Dung lượng lưu trữ: 45 GB.'),
	(N'Prince Of Persia_The Lost Crown',6597636,0.19,10,1,N'Ngày phát hành: Prince of Persia: The Lost Crown được phát hành vào ngày 18 tháng 1 năm 2024.

Hãng: Trò chơi được phát triển bởi Ubisoft Montpellier và được xuất bản bởi Ubisoft.

Mô tả: Prince of Persia: The Lost Crown là một trò chơi hành động phiêu lưu 2.5D. Người chơi điều khiển Sargon, một chiến binh thuộc bộ tộc The Immortals, phải đi đến thành phố bị nguyền rủa Mount Qaf để giải cứu hoàng tử Ghassan bị bắt cóc. Sargon có thể nhảy, trượt, và dash trong không khí để di chuyển giữa các nền tảng. Anh ta cầm một cặp lưỡi gươm mà anh ta sử dụng để đánh bại kẻ thù. Sargon có quyền truy cập vào một số sức mạnh dựa trên thời gian, có thể được sử dụng trong cả chiến đấu và platforming. The Lost Crown có các yếu tố Metroidvania, vì thế giới trò chơi được kết nối và đầy đủ lối tắt và phòng bí mật, và người chơi phải giải quyết các câu đố để tiến bộ.

Thông số tối thiểu:

Hệ điều hành: Windows 10 (64 bit only)
Bộ xử lý: Intel Core i5-4460 3.4 GHz, AMD Ryzen3 1200 3.1 GHz
Bộ nhớ: 8 GB (Dual-channel setup)
Card đồ họa: NVIDIA GeForce GTX 950 (2GB VRAM) hoặc AMD Radeon RX 5500 XT (4GB VRAM)
Dung lượng lưu trữ: 30 GB'),
	(N'Remnant 2',11815984,0.1,10,1,N'Ngày phát hành: 25 tháng 7 năm 2023.
Hãng: Trò chơi được phát triển bởi Gunfire Games và được xuất bản bởi Gearbox Publishing.
Mô tả: "Remnant 2" là một trò chơi bắn súng góc nhìn thứ ba, hành động nhập vai. Trò chơi đặt người chơi vào vai những người sống sót của nhân loại đối mặt với những sinh vật chết người mới và các boss giống như thần trên các thế giới kinh hoàng. Người chơi có thể chơi một mình hoặc cùng hai người bạn khác để khám phá những điều chưa biết để ngăn chặn một thế lực xấu xa phá hủy chính thực tế.
Thông số tối thiểu:
Hệ điều hành: Windows 10.
Bộ xử lý: Intel Core i5-7600.
RAM: 16 GB.
Card đồ họa: NVIDIA GeForce GTX 1650.
Dung lượng lưu trữ: 80 GB.'),
	(N'Robo Cop_Rouge City',6597636,0.11,10,1,N'Ngày phát hành: 2 tháng 11 năm 2023.

Hãng: Trò chơi được phát triển bởi Teyon và được xuất bản bởi Nacon.

Mô tả: "Robo Cop_Rouge City" là một trò chơi bắn súng góc nhìn thứ nhất, diễn ra giữa hai phần phim RoboCop 2 và RoboCop 3. Trong game, người chơi sẽ vào vai RoboCop, một nhân vật huyền thoại, nửa người nửa máy, tất cả đều là cảnh sát, để mang lại công lý cho Old Detroit. Người chơi phải làm sạch thành phố khỏi tội phạm, tiến hành điều tra và cũng có thể phát vé đỗ xe. Người chơi được giao nhiều nhiệm vụ phụ trong suốt trò chơi và có thể chọn cách giải quyết chúng, ví dụ như chọn giữa các tùy chọn đối thoại khác nhau. Kết quả của những nhiệm vụ này thay đổi tùy thuộc vào lựa chọn của người chơi.

Thông số tối thiểu:

Hệ điều hành: Windows 10.
Bộ xử lý: Intel Core i7-4790 hoặc Ryzen 5 2600.
RAM: 16 GB.
Card đồ họa: NVIDIA GeForce GTX 1650 hoặc AMD Radeon RX 480.
Dung lượng lưu trữ: 51 GB.'),
	(N'Tekken 8',13701391,0.12,10,1,N'Ngày phát hành: 26 tháng 1 năm 2024.

Hãng: Trò chơi được phát triển bởi Bandai Namco Studios và Arika, và được xuất bản bởi Bandai Namco Entertainment cho PlayStation 5, Windows và Xbox Series X/S.

Mô tả: "Tekken 8" là một game đối kháng 3D, tiếp nối sau trận chiến khốc liệt kết thúc trong Tekken 7. Trò chơi tập trung vào một cuộc đối đầu mới giữa cha con Kazuya Mishima và Jin Kazama khi Jin Kazama đứng lên chống lại cha mình, Kazuya Mishima, gây ra chiến tranh và hủy diệt trên toàn cầu. Game có chế độ chơi câu chuyện có tên là "The Dark Awakens", diễn ra sau sáu tháng kể từ sự kiện của người tiền nhiệm và tập trung vào cuộc đối đầu cuối cùng giữa các nhân vật chính. Cốt truyện của game bao gồm 32 nhân vật cũ và mới, mỗi người có câu chuyện riêng của họ góp phần vào câu chuyện chung. "Tekken 8" cũng giới thiệu các cơ chế hoàn toàn mới, chẳng hạn như hệ thống "Heat" và "Tornado" hits.

Thông số tối thiểu:

Hệ điều hành: Windows 10 64-Bit.
Bộ xử lý: Intel Core i5-6600K hoặc AMD Ryzen 5 1600.
RAM: 8 GB.
Card đồ họa: NVIDIA GeForce GTX 1050 Ti hoặc AMD Radeon R9 380X.
Dung lượng lưu trữ: 100 GB.'),
	(N'The Last Of Us_Part II Remastered',9742513,0.13,10,1,N'Ngày phát hành: 19 tháng 1 năm 2024.

Hãng: Trò chơi được phát triển bởi Naughty Dog và được xuất bản bởi Sony Interactive Entertainment.

Mô tả: "The Last of Us Part II Remastered" là một game hành động phiêu lưu kinh dị sinh tồn góc nhìn thứ ba. Đây là phiên bản remastered của game "The Last of Us Part II" ban đầu phát hành vào năm 2020, bao gồm các cải tiến về mặt hình ảnh và công nghệ, các chế độ và nội dung mới, các cấp độ bị loại bỏ, bình luận của nhà phát triển, tùy chọn truy cập mở rộng, và nhiều hơn nữa. Trò chơi giới thiệu một số chế độ mới, bao gồm No Return, một chế độ sinh tồn roguelike với các cuộc gặp gỡ ngẫu nhiên cho phép người chơi trải nghiệm chiến đấu trong The Last of Us Part II theo những cách mới.

Thông số tối thiểu (cho PlayStation 5):

CPU: AMD Ryzen 5 1500X hoặc Intel Core i7-4770K.
RAM: 16 GB.
Card đồ họa: AMD Radeon RX 470 (4 GB), AMD Radeon RX 6500 XT (4 GB), NVIDIA GeForce GTX 970 (4 GB), NVIDIA GeForce 1050 Ti (4 GB).
Dung lượng lưu trữ: 100 GB.')
--=======================================================================================================================================================

INSERT INTO Product
VALUES
	(N'Nintendo Lite Blue',4490000, 0.1,10,2,N'Nintendo Switch Lite là một hệ thống nhỏ gọn, nhẹ nhàng, tập trung vào việc chơi game di động. Với thiết kế đơn khối thanh lịch, bộ điều khiển được tích hợp ngay vào hệ thống, Nintendo Switch Lite rất phù hợp cho việc chơi game di động.

Thông tin: Nintendo Switch Lite màu xanh đã được phát hành vào ngày 21 tháng 5 năm 2021. Hiện tại, không có thông tin về ngày ngừng phát hành.

Ngoại hình: Nintendo Switch Lite có thiết kế nhỏ gọn, nhẹ nhàng, sẵn sàng để bạn mang đi bất cứ đâu. Bộ điều khiển được tích hợp ngay vào hệ thống cho trải nghiệm chơi game di động, và phía bên trái có một +Control Pad.

Game hỗ trợ: Nintendo Switch Lite tương thích với các game phổ biến như Super Mario Odyssey™, Mario Kart™ 8 Deluxe, Super Smash Bros.™ Ultimate, The Legend of Zelda™: Breath of the Wild, và nhiều hơn nữa.

Thông số kỹ thuật:

Kích thước: Cao 3.6", dài 8.2", sâu .55"
Trọng lượng: Khoảng .61 lbs
Màn hình: Màn hình cảm ứng 5.5" với độ phân giải 1280x720
CPU/GPU: Bộ xử lý Nvidia Tegra tùy chỉnh
Bộ nhớ trong: 32 GB, có thể mở rộng bằng thẻ microSD lên đến 2TB
Pin: Từ 3 đến 7 giờ tùy thuộc vào game bạn chơi'),
	(N'Nintendo Lite Coral',4490000,0.17,10,2,N'Nintendo Switch Lite màu san hô là một hệ thống nhỏ gọn, nhẹ nhàng, tập trung vào việc chơi game di động. Với thiết kế đơn khối thanh lịch, bộ điều khiển được tích hợp ngay vào hệ thống, Nintendo Switch Lite rất phù hợp cho việc chơi game di động.

Thông tin: Nintendo Switch Lite màu san hô đã được phát hành vào ngày 3 tháng 4 năm 2020.

Ngoại hình: Nintendo Switch Lite có thiết kế nhỏ gọn, nhẹ nhàng, sẵn sàng để bạn mang đi bất cứ đâu. Bộ điều khiển được tích hợp ngay vào hệ thống cho trải nghiệm chơi game di động, và phía bên trái có một +Control Pad.

Game hỗ trợ: Nintendo Switch Lite tương thích với các game phổ biến như Super Mario Odyssey, Mario Kart 8 Deluxe, Super Smash Bros. Ultimate, The Legend of Zelda: Breath of the Wild, và nhiều hơn nữa.

Thông số kỹ thuật:

Kích thước: Cao 91.1mm, dài 208mm, sâu 13.9mm
Trọng lượng: Khoảng 275g
Màn hình: Màn hình cảm ứng 5.5" với độ phân giải 1280x720
CPU/GPU: Bộ xử lý Nvidia Tegra tùy chỉnh
Bộ nhớ trong: 32 GB, có thể mở rộng bằng thẻ microSD lên đến 2TB
Pin: Từ 3 đến 7 giờ tùy thuộc vào game bạn chơi
'),
	(N'Nintendo Lite Gray',4490000,0.1,15,2,N'Nintendo Switch Lite màu xám là một hệ thống nhỏ gọn, nhẹ nhàng, tập trung vào việc chơi game di động. Với thiết kế đơn khối thanh lịch, bộ điều khiển được tích hợp ngay vào hệ thống, Nintendo Switch Lite rất phù hợp cho việc chơi game di động.

Thông tin: Nintendo Switch Lite màu xám đã được phát hành vào ngày 20 tháng 9 năm 2019.

Ngoại hình: Nintendo Switch Lite có thiết kế nhỏ gọn, nhẹ nhàng, sẵn sàng để bạn mang đi bất cứ đâu. Bộ điều khiển được tích hợp ngay vào hệ thống cho trải nghiệm chơi game di động, và phía bên trái có một +Control Pad.

Game hỗ trợ: Nintendo Switch Lite tương thích với các game phổ biến như Super Mario Odyssey, Mario Kart 8 Deluxe, Super Smash Bros. Ultimate, The Legend of Zelda: Breath of the Wild, và nhiều hơn nữa.

Thông số kỹ thuật:

Kích thước: Cao 3.6", dài 8.2", sâu .55"
Trọng lượng: Khoảng .61 lbs
Màn hình: Màn hình cảm ứng 5.5" với độ phân giải 1280x720
CPU/GPU: Bộ xử lý Nvidia Tegra tùy chỉnh
Bộ nhớ trong: 32 GB, có thể mở rộng bằng thẻ microSD lên đến 2TB
Pin: Từ 3 đến 7 giờ tùy thuộc vào game bạn chơi'),
	(N'Nintendo Lite Isablle Aloha',4500000,0.1,10,2,N'Nintendo Switch Lite Isabelle Aloha Edition là một hệ thống nhỏ gọn, nhẹ nhàng, tập trung vào việc chơi game di động. Với thiết kế đơn khối thanh lịch, bộ điều khiển được tích hợp ngay vào hệ thống, Nintendo Switch Lite rất phù hợp cho việc chơi game di động. Hệ thống có màu san hô đáng yêu, một họa tiết lá trắng ở phía sau, và một thiết kế lá dễ thương ở phía trước, lấy cảm hứng từ series Animal Crossing™.

Thông tin: Nintendo Switch Lite Isabelle Aloha Edition đã được phát hành vào ngày 20 tháng 10 năm 2023.

Ngoại hình: Nintendo Switch Lite có thiết kế nhỏ gọn, nhẹ nhàng, sẵn sàng để bạn mang đi bất cứ đâu. Bộ điều khiển được tích hợp ngay vào hệ thống cho trải nghiệm chơi game di động, và phía bên trái có một +Control Pad.

Game hỗ trợ: Nintendo Switch Lite tương thích với hầu hết các game hiện có của Nintendo Switch.

Thông số kỹ thuật:

Kích thước: Cao 3.6", dài 8.2", sâu .55"
Trọng lượng: Khoảng .61 lbs
Màn hình: Màn hình cảm ứng 5.5" với độ phân giải 1280x720
CPU/GPU: Bộ xử lý Nvidia Tegra tùy chỉnh
Bộ nhớ trong: 32 GB, có thể mở rộng bằng thẻ microSD lên đến 2TB
Pin: Từ 3 đến 7 giờ tùy thuộc vào game bạn chơi
'),
	(N'Nintendo Lite Pokemon Diagla And Palkia',4500000,0.1,3,2,N'Nintendo Switch Lite Dialga & Palkia Edition là một hệ thống nhỏ gọn, nhẹ nhàng, tập trung vào việc chơi game di động. Hệ thống này là phiên bản đầu tiên có thân máy màu xám kim loại với các nút màu đen. Mặt sau có hình vẽ nghệ thuật ấn tượng của Pokémon huyền thoại Dialga và Palkia từ các game Pokémon Brilliant Diamond và Pokémon Shining Pearl trong một hoàn thiện màu bạc và vàng.

Thông tin: Nintendo Switch Lite Dialga & Palkia Edition đã được phát hành vào ngày 5 tháng 11 năm 2021.

Ngoại hình: Nintendo Switch Lite có thiết kế nhỏ gọn, nhẹ nhàng, sẵn sàng để bạn mang đi bất cứ đâu. Bộ điều khiển được tích hợp ngay vào hệ thống cho trải nghiệm chơi game di động, và phía bên trái có một +Control Pad.

Game hỗ trợ: Nintendo Switch Lite tương thích với thư viện rộng lớn của các game Nintendo Switch hỗ trợ chế độ chơi di động.

Thông số kỹ thuật:

Kích thước: Cao 7.87", dài 5.12", sâu 4.72"
Trọng lượng: Khoảng 1.1 lbs
Màn hình: Màn hình cảm ứng 5.5" với độ phân giải 1280x720
CPU/GPU: Bộ xử lý Nvidia Tegra tùy chỉnh
Bộ nhớ trong: 32 GB, có thể mở rộng bằng thẻ microSD lên đến 2TB
Pin: Từ 3 đến 7 giờ tùy thuộc vào game bạn chơi'),
	(N'Nintendo Lite Timmy And Tommy Aloha',4600000,0.1,10,2,N'Nintendo Switch Lite Timmy & Tommy’s Aloha Edition là một hệ thống nhỏ gọn, nhẹ nhàng, tập trung vào việc chơi game di động. Hệ thống này có màu xanh ngọc thạch, với một họa tiết lá trắng ở phía sau và một họa tiết lá nâu ở phía trước, gần nút Home. Hệ thống này đi kèm với một bản sao số hoá đầy đủ của game Animal Crossing: New Horizons.

Thông tin: Nintendo Switch Lite Timmy & Tommy’s Aloha Edition đã được phát hành vào ngày 24 tháng 11 năm 2023.

Ngoại hình: Nintendo Switch Lite có thiết kế nhỏ gọn, nhẹ nhàng, sẵn sàng để bạn mang đi bất cứ đâu. Bộ điều khiển được tích hợp ngay vào hệ thống cho trải nghiệm chơi game di động, và phía bên trái có một +Control Pad.

Game hỗ trợ: Nintendo Switch Lite hỗ trợ thư viện rộng lớn của các game Nintendo Switch có thể chơi ở chế độ di động.

Thông số kỹ thuật:

Kích thước: Rộng 91.1mm× Dài 208mm x Cao 13.9mm
Trọng lượng: Khoảng 275g
Màn hình: Màn hình cảm ứng 5.5" với độ phân giải 1280×720 pixels
CPU/GPU: Bộ xử lý Tegra tùy chỉnh được sản xuất bởi NVIDIA
Bộ nhớ trong: 32 GB, có thể mở rộng bằng thẻ microSD lên đến 2TB
Pin: Từ 3 đến 7 giờ tùy thuộc vào game bạn chơi'),
	(N'Nintendo Lite Turquoise',4490000,0.1,10,2,N'Nintendo Switch Lite Turquoise là một hệ thống nhỏ gọn, nhẹ nhàng, tập trung vào việc chơi game di động. Với thiết kế đơn khối thanh lịch, bộ điều khiển được tích hợp ngay vào hệ thống, Nintendo Switch Lite rất phù hợp cho việc chơi game di động.

Thông tin: Nintendo Switch Lite Turquoise đã được phát hành vào ngày 20 tháng 9 năm 2019.

Ngoại hình: Nintendo Switch Lite có thiết kế nhỏ gọn, nhẹ nhàng, sẵn sàng để bạn mang đi bất cứ đâu. Bộ điều khiển được tích hợp ngay vào hệ thống cho trải nghiệm chơi game di động, và phía bên trái có một +Control Pad.

Game hỗ trợ: Nintendo Switch Lite tương thích với hầu hết các game hiện có của Nintendo Switch.

Thông số kỹ thuật:

CPU: Bộ xử lý Nvidia Tegra tùy chỉnh.
RAM: 4GB.
Bộ nhớ trong: 32 GB.'),
	(N'Nintendo Lite Yellow',4490000,0.15,5,2,N'Nintendo Switch Lite Yellow là một hệ thống nhỏ gọn, nhẹ nhàng, tập trung vào việc chơi game di động. Với thiết kế đơn khối thanh lịch, bộ điều khiển được tích hợp ngay vào hệ thống, Nintendo Switch Lite rất phù hợp cho việc chơi game di động.

Thông tin: Nintendo Switch Lite Yellow đã được phát hành vào ngày 20 tháng 9 năm 2019.

Ngoại hình: Nintendo Switch Lite có thiết kế nhỏ gọn, nhẹ nhàng, sẵn sàng để bạn mang đi bất cứ đâu. Bộ điều khiển được tích hợp ngay vào hệ thống cho trải nghiệm chơi game di động, và phía bên trái có một +Control Pad.

Game hỗ trợ: Nintendo Switch Lite tương thích với hầu hết các game hiện có của Nintendo Switch.

Thông số kỹ thuật:

CPU: Bộ xử lý Nvidia Tegra tùy chỉnh.
RAM: 4GB.
Bộ nhớ trong: 32 GB.
Màn hình: Màn hình cảm ứng 5.5" với độ phân giải 1280x720.
Pin: Từ 3 đến 7 giờ tùy thuộc vào game bạn chơi.'),
	(N'Nintendo Oled Legend Of Zelda',7990000,0.15,18,2,N'Mô tả: Nintendo Switch OLED Model - The Legend of Zelda: Tears of the Kingdom Edition có thiết kế đặc biệt từ game The Legend of Zelda: Tears of the Kingdom, bao gồm huy hiệu Hylian quen thuộc từ series The Legend of Zelda ở phía trước của dock. Hệ thống này sẽ ra mắt vào ngày 28 tháng 4.

Ngoại hình: Hệ thống này có màn hình OLED 7 inch sống động, chân đế rộng có thể điều chỉnh, dock có cổng LAN có dây, 64 GB bộ nhớ trong, và âm thanh nâng cao khi chơi ở chế độ cầm tay và bàn.

Game hỗ trợ: Hệ thống này hỗ trợ các game của Nintendo Switch.

Thông số kỹ thuật:

Màn hình: Màn hình cảm ứng đa điểm / Màn hình OLED 7.0 inch / 1280x720.
CPU/GPU: Bộ xử lý Tegra tùy chỉnh của NVIDIA.
Bộ nhớ trong: 64 GB.
Kết nối không dây: Wi-Fi (IEEE 802.11 a/b/g/n/ac tương thích) / Bluetooth 4.1.
Pin: Khoảng từ 4.5 đến 9 giờ, tùy thuộc vào game bạn chơi.
Ngày phát hành: Hệ thống này sẽ ra mắt vào ngày 28 tháng 4 năm 2023.

Ghi chú: Game The Legend of Zelda: Tears of the Kingdom không được bao gồm.'),
	(N'Nintendo Oled Mario',7290000,0,10,2,N'Mô tả: Nintendo Switch OLED Model - Mario Red Edition có thiết kế đặc biệt từ game Super Mario. Hệ thống này có màu đỏ rực rỡ, với hình ảnh của Mario được in trên phía sau của dock.

Ngày phát hành: Hệ thống này đã được phát hành vào ngày 6 tháng 10 năm 2023.

Ngoại hình: Hệ thống này có màn hình OLED 7 inch sống động, chân đế rộng có thể điều chỉnh, dock có cổng LAN có dây, 64 GB bộ nhớ trong, và âm thanh nâng cao khi chơi ở chế độ cầm tay và bàn.

Game hỗ trợ: Hệ thống này hỗ trợ các game của Nintendo Switch.

Thông số kỹ thuật:

Màn hình: Màn hình cảm ứng đa điểm / Màn hình OLED 7.0 inch / 1280x720.
CPU/GPU: Bộ xử lý Tegra tùy chỉnh của NVIDIA.
Bộ nhớ trong: 64 GB.
Kết nối không dây: Wi-Fi (IEEE 802.11 a/b/g/n/ac tương thích) / Bluetooth 4.1.
Pin: Khoảng từ 4.5 đến 9 giờ, tùy thuộc vào game bạn chơi.'),
	(N'Nintendo Oled Neon',7290000,0.1,10,2,N'Mô tả: Nintendo Switch OLED Model - Neon Blue/Neon Red Edition có màn hình OLED 7 inch sống động, chân đế rộng có thể điều chỉnh, dock có cổng LAN có dây, 64 GB bộ nhớ trong, và âm thanh nâng cao.

Ngày phát hành: Hệ thống này đã được phát hành vào ngày 8 tháng 10 năm 2021

Ngoại hình: Hệ thống này có màu xanh dương và đỏ neon, với một đơn vị chính màu đen và một dock màu đen.

Game hỗ trợ: Hệ thống này tương thích với toàn bộ thư viện game của Nintendo Switch.

Thông số kỹ thuật:

Màn hình: Màn hình cảm ứng đa điểm / Màn hình OLED 7.0 inch / 1280x720.
CPU/GPU: Bộ xử lý Tegra tùy chỉnh của NVIDIA.
Bộ nhớ trong: 64 GB.
Kết nối không dây: Wi-Fi (IEEE 802.11 a/b/g/n/ac tương thích) / Bluetooth 4.1.
Pin: Khoảng từ 4.5 đến 9 giờ, tùy thuộc vào game bạn chơi.'),
	(N'Nintendo Oled Pokemon',7790000,0.05,15,2,N'Mô tả: Nintendo Switch OLED Model - Pokémon Scarlet & Violet Edition có thiết kế đặc biệt từ game Pokémon Scarlet và Pokémon Violet. Hệ thống này có màu trắng bóng, với hình ảnh của Pokémon huyền thoại Koraidon và Miraidon được in trên phía trước của dock. Hệ thống này đã được phát hành vào ngày 4 tháng 11 năm 2022.

Ngày phát hành: Hệ thống này đã được phát hành vào ngày 4 tháng 11 năm 2022

Ngoại hình: Hệ thống này có màn hình OLED 7 inch sống động, chân đế rộng có thể điều chỉnh, dock có cổng LAN có dây, 64 GB bộ nhớ trong, và âm thanh nâng cao khi chơi ở chế độ cầm tay và bàn.

Game hỗ trợ: Hệ thống này hỗ trợ các game của Nintendo Switch.

Thông số kỹ thuật:

Màn hình: Màn hình cảm ứng đa điểm / Màn hình OLED 7.0 inch / 1280x720.
CPU/GPU: Bộ xử lý Tegra tùy chỉnh của NVIDIA.
Bộ nhớ trong: 64 GB.
Kết nối không dây: Wi-Fi (IEEE 802.11 a/b/g/n/ac tương thích) / Bluetooth 4.1.
Pin: Khoảng từ 4.5 đến 9 giờ, tùy thuộc vào game bạn chơi.'),
	(N'Nintendo Oled Splatoon',7790000,0.05,10,2,N'Mô tả: Nintendo Switch OLED Model - Splatoon 3 Edition có thiết kế đặc biệt từ game Splatoon 3. Hệ thống này có màu xanh dương và vàng gradient, với hình ảnh của Splatoon được in trên phía sau của dock. 

Ngày phát hành: Hệ thống này đã được phát hành vào ngày 26 tháng 8 năm 2022.

Ngoại hình: Hệ thống này có màn hình OLED 7 inch sống động, chân đế rộng có thể điều chỉnh, dock có cổng LAN có dây, 64 GB bộ nhớ trong, và âm thanh nâng cao.

Game hỗ trợ: Hệ thống này hỗ trợ các game của Nintendo Switch.

Thông số kỹ thuật:

Màn hình: Màn hình cảm ứng đa điểm / Màn hình OLED 7.0 inch / 1280x720.
CPU/GPU: Bộ xử lý Tegra tùy chỉnh của NVIDIA.
Bộ nhớ trong: 64 GB.
Kết nối không dây: Wi-Fi (IEEE 802.11 a/b/g/n/ac tương thích) / Bluetooth 4.1.
Pin: Khoảng từ 4.5 đến 9 giờ, tùy thuộc vào game bạn chơi.'),
	(N'Nintendo Oled White',7000000,0.1,10,2,N'Mô tả: Nintendo Switch OLED Model - White là phiên bản Nintendo Switch mới nhất với màn hình OLED 7 inch sống động, chân đế rộng có thể điều chỉnh, dock có cổng LAN có dây, 64 GB bộ nhớ trong, và âm thanh nâng cao.

Ngày phát hành: Hệ thống này đã được phát hành vào ngày 8 tháng 10 năm 2021.

Ngoại hình: Hệ thống này có màu trắng, tạo cảm giác sáng sủa và tinh tế.

Game hỗ trợ: Hệ thống này hỗ trợ toàn bộ thư viện game của Nintendo Switch.

Thông số kỹ thuật:

Màn hình: Màn hình cảm ứng đa điểm / Màn hình OLED 7.0 inch / Độ phân giải 1280x720.
CPU/GPU: Bộ xử lý Tegra tùy chỉnh của NVIDIA.
Bộ nhớ trong: 64 GB.
Kết nối không dây: Wi-Fi (IEEE 802.11 a/b/g/n/ac tương thích) / Bluetooth 4.1.
Pin: Khoảng từ 4.5 đến 9 giờ, tùy thuộc vào game bạn chơi.'),
	(N'Nintendo V2 Gray',6200000,0.1,10,2,N'Mô tả: Nintendo Switch V2 Gray là phiên bản cải tiến của Nintendo Switch, với màn hình 6.2 inch cho phép bạn chơi game ở chế độ TV, bàn hoặc cầm tay. Hệ thống này bao gồm Nintendo Switch console và Nintendo Switch dock màu đen, và bộ điều khiển Joy‑Con trái và phải màu xám.

Ngày phát hành: Hệ thống này đã được phát hành vào tháng 8 năm 2019.

Ngoại hình: Hệ thống này có màu xám, tạo cảm giác bền bỉ và chuyên nghiệp.

Game hỗ trợ: Hệ thống này hỗ trợ toàn bộ thư viện game của Nintendo Switch.

Thông số kỹ thuật:

Màn hình: Màn hình cảm ứng đa điểm / Màn hình 6.2 inch / Độ phân giải 1280x720.
CPU/GPU: Bộ xử lý Tegra tùy chỉnh của NVIDIA.
Bộ nhớ trong: 32 GB.
Kết nối không dây: Wi-Fi (IEEE 802.11 a/b/g/n/ac tương thích) / Bluetooth 4.1.
Pin: Khoảng từ 4.5 đến 9 giờ, tùy thuộc vào game bạn chơi.'),
	(N'Nintendo V2 Neon Red/Neon Blue',6800000,0.05,10,2,N'Mô tả: Nintendo Switch V2 Neon Red/Neon Blue có màn hình 6.2 inch, cho phép bạn chơi game ở chế độ TV, bàn hoặc cầm tay. Hệ thống này bao gồm Nintendo Switch console và Nintendo Switch dock màu đen, và bộ điều khiển Joy‑Con trái và phải màu đỏ neon và xanh dương neon.

Ngoại hình: Hệ thống này có màu đỏ neon và xanh dương neon.

Game hỗ trợ: Hệ thống này hỗ trợ toàn bộ thư viện game của Nintendo Switch.

Thông số kỹ thuật:

Màn hình: Màn hình cảm ứng đa điểm / Màn hình 6.2 inch / Độ phân giải 1280x720.
CPU/GPU: Bộ xử lý Tegra tùy chỉnh của NVIDIA.
Bộ nhớ trong: 32 GB.
Kết nối không dây: Wi-Fi (IEEE 802.11 a/b/g/n/ac tương thích) / Bluetooth 4.1.
Pin: Khoảng từ 4.5 đến 9 giờ, tùy thuộc vào game bạn chơi.
Ngày phát hành: Hệ thống này đã được phát hành vào tháng 8 năm 2019.'),
	(N'Nintendo V2 Neon Red/Neon Blue Nobox (Hộp không được bao gồm)',6000000,0.1,10,2,N'Mô tả: Nintendo Switch V2 Neon Red/Neon Blue có màn hình 6.2 inch, cho phép bạn chơi game ở chế độ TV, bàn hoặc cầm tay. Hệ thống này bao gồm Nintendo Switch console và Nintendo Switch dock màu đen, và bộ điều khiển Joy‑Con trái và phải màu đỏ neon và xanh dương neon.

Ngày phát hành: Hệ thống này đã được phát hành vào tháng 8 năm 2019.

Ngoại hình: Hệ thống này có màu đỏ neon và xanh dương neon.

Game hỗ trợ: Hệ thống này hỗ trợ toàn bộ thư viện game của Nintendo Switch.

Thông số kỹ thuật:

Màn hình: Màn hình cảm ứng đa điểm / Màn hình 6.2 inch / Độ phân giải 1280x720.
CPU/GPU: Bộ xử lý Tegra tùy chỉnh của NVIDIA.
Bộ nhớ trong: 32 GB.
Kết nối không dây: Wi-Fi (IEEE 802.11 a/b/g/n/ac tương thích) / Bluetooth 4.1.
Pin: Khoảng từ 4.5 đến 9 giờ, tùy thuộc vào game bạn chơi.

Ghi chú: Hộp không được bao gồm.'),
	(N'PS2_fat',11275656,0.1,10,4,N'Mô tả:
PlayStation 2 "Fat", còn được gọi là PS2 gốc, là một chiếc máy chơi game tại gia được phát triển và tiếp thị bởi Sony Interactive Entertainment. Dưới đây là mô tả về PS2 "Fat":

Thông tin:
- Ngày phát hành: PS2 "Fat" được phát hành lần đầu tiên tại Nhật Bản vào ngày 4 tháng 3 năm 2000, tại Bắc Mỹ vào ngày 26 tháng 10 năm 2000, tại Châu Âu vào ngày 24 tháng 11 năm 2000, và tại Úc vào ngày 30 tháng 11 năm 2000.

- Ngày ngừng sản xuất: Các mô hình PlayStation 2 được sản xuất từ năm 2000 đến năm 2013.

- Ngoại hình: PS2 "Fat" có thiết kế vững chắc và to lớn hơn so với phiên bản PS2 Slimline. Nó có ổ đĩa đĩa DVD-ROM ở phía trước và hỗ trợ ổ cứng. Điều này tạo ra một lợi thế lớn cho mô hình "Fat" gốc.

- Game: Giống như PS2 Slimline, PS2 "Fat" cũng có một loạt các loại game trên nhiều thể loại. Nó được biết đến với các tựa game phổ biến như "Grand Theft Auto: San Andreas", "Final Fantasy XI", và nhiều game khác.

- Thông số kĩ thuật: PS2 hoạt động với một bộ xử lý RISC tùy chỉnh được gọi là Emotion Engine, hoạt động ở 294.912 MHz (299 MHz trong các console sau). CPU phụ thuộc nhiều vào sự tích hợp của nó với hai đơn vị xử lý vector, được gọi là VPU0 và VPU1, Graphics Synthesizer, và một đơn vị tính toán dấu phẩy động (FPU) để render đồ họa 3D.


P/S: PlayStation 2 "Fat" còn được gọi là "anh trai" trong gia đình PlayStation 2, vì nó to lớn và mạnh mẽ hơn nhiều so với "em bé" Slimline. Nhưng đừng để vẻ ngoài cứng cáp của "anh trai" này làm bạn sợ hãi, bởi vì "anh trai" này cũng rất dễ thương và thân thiện đấy!'),
	(N'PS2_slim',12984802,0.1,10,4,N'Mô tả:
PlayStation 2 Slimline, phiên bản cải tiến của PlayStation 2 gốc, được thiết kế nhỏ gọn và mỏng manh hơn. Nó nổi tiếng với kích thước giảm, hoạt động yên tĩnh hơn và tiêu thụ năng lượng thấp hơn. Mẫu này, trong khi duy trì chức năng giống như bản gốc, đã trở thành một hit trong số game thủ vì tính di động và thiết kế hiện đại của nó.

Thông tin:

Ngày phát hành: PlayStation 2 Slimline ra mắt lần đầu tiên ở Châu Âu vào ngày 29 tháng 10 năm 2004, tại Nhật Bản vào ngày 3 tháng 11 năm 2004, tại Bắc Mỹ vào ngày 25 tháng 11 năm 2004, và tại Úc vào ngày 2 tháng 12 năm 2004.

Ngày ngừng sản xuất: Các mô hình PlayStation 2 được sản xuất từ năm 2000 đến năm 2013.

Ngoại hình: PlayStation 2 Slimline đáng kể nhỏ hơn so với PlayStation 2 “fat” gốc. Nó có thiết kế nhỏ gọn và nhẹ nhàng, làm cho nó dễ dàng di chuyển hơn so với người tiền nhiệm của nó.

Game: PS2 có một loạt các loại game trên nhiều thể loại. Nó được biết đến với các tựa game phổ biến như “Grand Theft Auto: San Andreas”, “Final Fantasy XI”, và nhiều game khác.
Thông số kĩ thuật: PS2 hoạt động với một bộ xử lý RISC tùy chỉnh được gọi là Emotion Engine, hoạt động ở 294.912 MHz (299 MHz trong các console sau). CPU phụ thuộc nhiều vào sự tích hợp của nó với hai đơn vị xử lý vector, được gọi là VPU0 và VPU1, Graphics Synthesizer, và một đơn vị tính toán dấu phẩy động (FPU) để render đồ họa 3D.

P/S: Bạn biết không, PlayStation 2 Slimline còn được gọi là “em bé” của dòng PlayStation 2, vì nó nhỏ nhắn và xinh xắn hơn nhiều so với “anh trai” của mình. Nhưng đừng để vẻ ngoài đáng yêu đó lừa dối bạn, “em bé” này vẫn sở hữu sức mạnh không kém gì “anh trai” đâu nhé!'),
	(N'PS3_fat',10094108,0.1,10,4,N'Mô tả: PlayStation 3 (PS3) là một hệ thống chơi game video được sản xuất trong nhiều mô hình khác nhau trong suốt chu kỳ đời của nó. Mô hình PS3 “Fat” ban đầu có sẵn với ổ cứng 20 hoặc 60 GB.

Ngày sản xuất và ngày ngưng sản xuất: PS3 “Fat” được phát hành lần đầu tiên vào ngày 11 tháng 11 năm 2006. Sản xuất chính thức kết thúc sau 11 năm và 3 mô hình thiết kế lại.
Ngoại hình: PS3 “Fat” có màu đen, với các cạnh bo tròn và logo “PlayStation 3” màu bạc trên mặt trước. Mô hình này có một cổng USB phía trước và các cổng kết nối khác như HDMI, Ethernet, và Optical Audio Out ở phía sau.
Game hỗ trợ: PS3 “Fat” hỗ trợ một loạt các trò chơi, bao gồm các tựa game nổi tiếng như “The Last of Us”, “Uncharted 2: Among Thieves”, và "Metal Gear Solid 4: Guns of the Patriots".
Thông số kĩ thuật: PS3 “Fat” sử dụng vi xử lý Cell, bao gồm một “Power Processing Element” (PPE) dựa trên PowerPC 3.2 GHz và sáu “Synergistic Processing Elements” (SPEs) có thể truy cập. Nó có 256 MB RAM Rambus XDR, được đồng bộ hóa với tốc độ CPU. GPU của PS3 “Fat” là RSX “Reality Synthesizer” của Nvidia, được đồng hồ ở 500 MHz và sử dụng 256 MB RAM GDDR3.
Giá tiền: $225.
P/S: “Bạn biết không, PS3 ‘Fat’ không chỉ là một chiếc máy chơi game, mà còn là một máy tập thể dục tuyệt vời - nó nặng hơn bạn nghĩ!”'),
	(N'PS3_slim',8475753,0.1,10,4,N'Mô tả: PS3 Slim là một phiên bản thu nhỏ của PlayStation 3, với kích thước nhỏ hơn, nhẹ hơn và tiêu thụ ít năng lượng hơn so với mô hình gốc. Máy có khả năng nâng cấp ổ cứng với dung lượng từ 120 GB đến 320 GB.

Ngày sản xuất và ngày ngưng sản xuất: PS3 Slim được phát hành chính thức vào ngày 1 tháng 9 năm 2009 tại Bắc Mỹ và Châu Âu. Phiên bản 120GB đã ngừng sản xuất vào tháng 8 năm 2010.

Ngoại hình: PS3 Slim có thiết kế mỏng hơn (chỉ rộng 2,5 inch, so với 3,86 inch), nhẹ hơn (giảm xuống 7 pounds từ 12) và ngắn hơn một chút so với mô hình gốc. Mặt ngoài của máy có màu đen than mờ.

Game hỗ trợ: Tất cả các mô hình PS3 đều có khả năng chơi game PS1, dù là trên đĩa hay tải xuống từ PSN. Tuy nhiên, chỉ một số mô hình PS3 gốc mới có thể chơi game PS2 dựa trên đĩa.

Thông số kỹ thuật: PS3 Slim sử dụng bộ vi xử lý Cell, bao gồm một “Power Processing Element” (PPE) dựa trên PowerPC 3.2 GHz và sáu “Synergistic Processing Elements” (SPEs) có thể truy cập. Máy có 256 MB bộ nhớ DRAM XDR. GPU của PS3 Slim là RSX, dựa trên kiến trúc NVIDIA G70, với tốc độ xung nhịp 500 MHz và sử dụng 256 MB RAM GDDR3.


P/S: Bạn biết không, PS3 Slim không chỉ là một máy chơi game, mà còn là một máy tập thể dục tuyệt vời - nó giúp bạn giảm cân bằng cách khiến bạn quên ăn uống khi đang chơi game!'),
	(N'PS3_slimWhite',10094108,0.1,10,4,N'Mô tả: PS3 Slim là một máy chơi game của Sony, được thiết kế nhỏ gọn hơn và tiết kiệm năng lượng hơn so với phiên bản PS3 gốc. Một phiên bản đặc biệt của PS3 Slim có dung lượng 250 GB, màu trắng với các họa tiết màu hồng, đã được công bố chính thức tại Tokyo Game Show như một phần của gói sản phẩm cho Final Fantasy XIII.

Ngày sản xuất và ngày ngưng sản xuất: PS3 Slim được công bố chính thức vào ngày 18 tháng 8 năm 2009. Phiên bản màu trắng của PS3 Slim được phát hành vào ngày 27 tháng 1 năm 2013. Tôi không tìm thấy thông tin chính xác về ngày ngưng sản xuất của sản phẩm này.

Ngoại hình: PS3 Slim có thiết kế nhỏ gọn, mỏng hơn và yên tĩnh hơn so với phiên bản PS3 gốc. Phiên bản màu trắng của PS3 Slim có họa tiết màu hồng.
Game hỗ trợ: PS3 Slim hỗ trợ các trò chơi PS3 và PS1.

Thông số kỹ thuật: PS3 Slim sử dụng vi xử lý Cell, bao gồm một “Power Processing Element” (PPE) dựa trên PowerPC 3.2 GHz và sáu “Synergistic Processing Elements” (SPEs) có thể truy cập được. Nó có 256 MB RAM Rambus XDR. GPU của PS3 Slim, RSX, dựa trên kiến trúc NVIDIA G70, được đồng hồ ở 500 MHz và sử dụng 256 MB RAM GDDR3.


P/S: Bạn biết không, PS3 Slim màu trắng không chỉ là một chiếc máy chơi game, mà còn là một phần của trang trí nhà cửa với thiết kế đẹp mắt của nó! '),
	(N'PS3_superSlim',11801546,0.1,10,4,N'Mô tả: PS3 Super Slim là một hệ thống giải trí gia đình trong một thiết bị nhỏ gọn và thanh lịch, cho phép bạn chơi đĩa Blu-Ray, DVD, CD âm nhạc và xem TV qua BBC, ITV và Channel 4 iPlayer. Nó là một máy chơi game mạnh mẽ được thu nhỏ vào một gói càng nhỏ hơn trong khi duy trì các tính năng giống như các phiên bản trước: một thư viện game tuyệt vời và một loạt các dịch vụ streaming mạnh mẽ, bao gồm Netflix, Amazon, Vudu và NFL Sunday Ticket.

Ngày sản xuất và ngày ngưng sản xuất: PS3 Super Slim được công bố vào tháng 9 năm 2012. Mô hình màu đen được phát hành tại Nhật Bản vào ngày 4 tháng 10, 2012; và mô hình màu trắng được phát hành vào ngày 22 tháng 11, 2012. Sản xuất PS3 đã ngừng vào năm 2017.

Ngoại hình: PS3 Super Slim có hình dáng giống một sự kết hợp giữa PS3 Slim và PlayStation 3 gốc được phát hành vào năm 2006. Tuy nhiên, nó nhỏ hơn nhiều, với kích thước là 11,4 inch rộng, 2,36 inch cao và 9,05 inch sâu. Nó có một khung cong mượt mà, kích thước nhỏ và trọng lượng nhẹ.

Game hỗ trợ: Tất cả các mô hình PS3 đều có khả năng chơi game PS1, dù chúng là trên đĩa hay được tải xuống từ PSN. Tuy nhiên, chỉ một số mô hình PS3 gốc mới có thể chơi game PS2 dựa trên đĩa.

Thông số kĩ thuật: PS3 Super Slim có 8 lõi CPU, 512MB RAM, hỗ trợ Wifi và USB, hỗ trợ 3D nhưng không hỗ trợ HDR. Nó có tốc độ CPU là 3.2 GHz và tốc độ đồ họa GPU là 550 MHz. Nó hỗ trợ tương thích ngược.



P/S: Bạn biết không, PS3 Super Slim có thể nhỏ gọn hơn, nhưng nó vẫn giữ được sức mạnh “siêu” của mình trong mỗi trò chơi!'),
	(N'PS4_days Of Play',5310171,0.1,10,4,N'Mô tả: PS4 Days of Play là một phiên bản giới hạn của PlayStation 4, được phát hành như một phần của sự kiện Days of Play của Sony. Sự kiện này là một cách để Sony kỷ niệm và tri ân cộng đồng PlayStation trên toàn thế giới.

Ngày sản xuất và ngày ngưng sản xuất: PS4 Days of Play thường được phát hành hàng năm trong sự kiện Days of Play của Sony (vào năm 2022, sự kiện này diễn ra từ ngày 25 tháng 5 đến ngày 8 tháng 6).

Ngoại hình: PS4 Days of Play có màu xanh dương đặc biệt, với biểu tượng PlayStation màu vàng được in nổi lên bề mặt trên cùng của máy. Máy đi kèm với một tay cầm DualShock 4 không dây phù hợp, cũng có các hình dạng PlayStation màu vàng nhỏ trên touchpad.

Game hỗ trợ: PS4 Days of Play hỗ trợ một loạt các trò chơi PS4 và PS5, bao gồm nhưng không giới hạn ở “God of War Ragnarök”, “Call of Duty®: Modern Warfare® II”, “WWE 2K23”, “Marvel’s Spider-Man: Miles Morales”, “MLB® The Show™ 23”, và “Grand Theft Auto V”.

Thông số kĩ thuật: PS4 Days of Play có một ổ cứng 1TB, cung cấp nhiều không gian cho các trò chơi và ứng dụng. Máy cung cấp đồ họa mạnh mẽ và tốc độ nhanh, tích hợp sâu các khả năng xã hội, chơi game kết nối, cá nhân hóa thông minh, các tính năng màn hình thứ hai sáng tạo và nhiều hơn nữa.


P/S: Cùng PS4 Days of Play, mỗi ngày đều là một ngày vui vẻ với game!, admin đã được trải nghiệm và cảm giác rất sướng (có thể là do bản giới hạn nhưng kệ đi).'),
	(N'PS4_pro',9951741,0.1,10,4,N'Mô tả: PS4 Pro là một phiên bản mạnh mẽ hơn của PlayStation 4, được thiết kế để chơi game ở độ phân giải cao hơn (4K) và thường xuyên trong High Dynamic Range (HDR). PS4 Pro cung cấp trải nghiệm chơi game tuyệt vời hơn và hiển thị chi tiết hơn so với máy PS4 tiêu chuẩn.

Ngày sản xuất và ngày ngưng sản xuất: PS4 Pro được phát hành vào ngày 10 tháng 11 năm 2016. Sony đã xác nhận việc ngừng sản xuất PS4 Pro vào ngày 5 tháng 1 năm 2021.

Ngoại hình: PS4 Pro có vẻ ngoài giống như một phiên bản PS4 Slim mạnh mẽ hơn. Kích thước của nó hơi lớn hơn nhưng không nhiều hơn so với PS4 gốc năm 2013. Máy PS4 Pro có màu đen tuyền, với logo PlayStation được vẽ màu đen bóng ở giữa máy.
Game hỗ trợ: PS4 Pro hỗ trợ tất cả các trò chơi PS4 và PS5.

Thông số kĩ thuật: PS4 Pro có bộ xử lý chính là một chip tùy chỉnh CPU: x86-64 AMD “Jaguar”, 8 cores. GPU của nó là 4.2 TFLOPS, dựa trên đồ họa AMD Radeon với 36 đơn vị tính toán. Bộ nhớ của máy là GDDR5 8GB + 1GB DRAM. Kích thước lưu trữ là 1TB.


P/S: chữ Pro đã nói lên tất cả, không thể phủ nhận được.'),
	(N'PS4_slim',2589889,0.1,10,4,N'Mô tả: PlayStation 4 Slim, còn được gọi là PS4 Slim, là một phiên bản nhỏ gọn hơn của PlayStation 4 gốc. Nó hỗ trợ toàn bộ thư viện game của PS4, bao gồm cả PS VR. Thiết bị này có thiết kế nhỏ gọn, thanh lịch hơn và có dung lượng lưu trữ lên đến 1TB.

Ngày sản xuất và ngày ngưng sản xuất: PS4 Slim được phát hành vào ngày 16 tháng 9 năm 2016. Sony đã dừng sản xuất tất cả các mô hình PlayStation 4 ngoại trừ phiên bản Slim tại Nhật Bản vào tháng 1 năm 2021. Tuy nhiên, theo một báo cáo từ Bloomberg, Sony đã quyết định tiếp tục sản xuất PS4 Slim cho đến cuối năm 2022.

Ngoại hình: PS4 Slim có thiết kế nhỏ gọn hơn so với PS4 gốc. Kích thước của nó là 265×39×288 mm, nhẹ hơn 1,6 pound, nặng tổng cộng 4,6 pound. Mặt trên của máy chơi game được đánh dấu bằng logo PlayStation.

Game hỗ trợ: PS4 Slim hỗ trợ toàn bộ thư viện game của PS4, bao gồm cả PS VR.

Thông số kỹ thuật: PS4 Slim sử dụng bộ xử lý tùy chỉnh đơn chip, CPU là x86-64 AMD “Jaguar” với 8 lõi, GPU là 1.84 TFLOPS, dựa trên động cơ đồ họa AMD Radeon. Bộ nhớ của nó là GDDR5 8GB. Kích thước lưu trữ có thể là 500GB hoặc 1TB.



P/S: nhỏ gọn, có thể xách vào lớp chơi và không bị phát hiện. +1 lí do để mua.'),
	(N'PS4_standardEdition',10094108,0.1,10,4,N'Mô tả: PlayStation 4 Standard Edition, còn được gọi là PS4, là một máy chơi game gia đình được phát triển bởi Sony Interactive Entertainment. Nó hỗ trợ toàn bộ thư viện game của PS4.

Ngày sản xuất và ngày ngưng sản xuất: PS4 được phát hành vào ngày 15 tháng 11 năm 2013 tại Bắc Mỹ, ngày 29 tháng 11 năm 2013 tại Châu Âu, và ngày 22 tháng 2 năm 2014 tại Nhật Bản. Sony đã ngừng sản xuất tất cả các mô hình PS4 ngoại trừ phiên bản Slim tại Nhật Bản vào ngày 5 tháng 1 năm 2021. Tuy nhiên, theo một báo cáo từ Bloomberg, Sony đã quyết định tiếp tục sản xuất PS4 cho đến cuối năm 2022.

Ngoại hình: PS4 có kích thước là 265×39×288 mm, nặng khoảng 2.1 kg. Mặt trên của máy chơi game được đánh dấu bằng logo PlayStation.
Game hỗ trợ: PS4 hỗ trợ toàn bộ thư viện game của PS4. Một số game tiêu biểu có thể chơi trên PS4 bao gồm “Call of Duty®: Vanguard”, “EA SPORTS FC™ 24”, và “Diablo® IV”.

Thông số kỹ thuật: PS4 sử dụng bộ xử lý tùy chỉnh đơn chip, CPU là x86-64 AMD “Jaguar” với 8 lõi, GPU là 1.84 TFLOPS, dựa trên động cơ đồ họa AMD Radeon. Bộ nhớ của nó là GDDR5 8GB. Kích thước lưu trữ có thể là 500GB hoặc 1TB.



P/S: Một kĩ nguyên vĩ đại của game console, một huyền thoại trong lòng mọi gamers.'),
	(N'PS4_TLOU Edition',12138373,0.1,10,4,N'Mô tả: PlayStation 4 The Last of Us Edition là một phiên bản đặc biệt của PlayStation 4, đi kèm với game The Last of Us Remastered. Game này là một trò chơi hành động phiêu lưu được phát triển bởi Naughty Dog và được xuất bản bởi Sony Computer Entertainment.

Ngày sản xuất và ngày ngưng sản xuất: The Last of Us Remastered được phát hành cho PlayStation 4 vào tháng 7 năm 2014. Sony đã ngừng sản xuất tất cả các mô hình PS4 ngoại trừ phiên bản Slim tại Nhật Bản vào ngày 5 tháng 1 năm 2021. Tuy nhiên, theo một báo cáo từ Bloomberg, Sony đã quyết định tiếp tục sản xuất PS4 cho đến cuối năm 2022.

Ngoại hình: PlayStation 4 The Last of Us Edition có thiết kế giống với PlayStation 4 Standard Edition, nhưng có thể đi kèm với hình ảnh hoặc logo của game The Last of Us.

Game hỗ trợ: PlayStation 4 The Last of Us Edition hỗ trợ toàn bộ thư viện game của PS4, bao gồm game The Last of Us Remastered.
Thông số kỹ thuật: PlayStation 4 The Last of Us Edition sử dụng bộ xử lý tùy chỉnh đơn chip, CPU là x86-64 AMD “Jaguar” với 8 lõi, GPU là 1.84 TFLOPS, dựa trên động cơ đồ họa AMD Radeon. Bộ nhớ của nó là GDDR5 8GB. Kích thước lưu trữ có thể là 500GB hoặc 1TB.


P/S: The last of us thật sự là một biểu tượng của game sinh tồn. Cốt truyện gay cấn nhưng không kém những màn lấy đi nước mắt của người chơi. Và như một điều dĩ nhiên, PS4 TLOU Edition đã tôn vinh tựa game này bằng chính thiết kế của nó.'),
	(N'PS4_U4 Edition',1313023,0.1,10,4,N'Mô tả: PS4 Uncharted 4 Edition là một phiên bản giới hạn của hệ thống PlayStation 4, đi kèm với trò chơi Uncharted 4: A Thief’s End. Bộ sản phẩm bao gồm một hệ thống PlayStation 4 màu xanh lam tối với hình ảnh của Nathan Drake được in lụa, cùng với một tay cầm DualShock 4 phù hợp và một bản Blu-ray của Uncharted 4: A Thief’s End.

Ngày sản xuất và ngày ngưng sản xuất: Uncharted 4: A Thief’s End đã được phát hành vào tháng 5 năm 2016. Sony đã ngừng sản xuất tất cả các mô hình PS4 ngoại trừ phiên bản Slim tại Nhật Bản vào ngày 5 tháng 1 năm 2021. Tuy nhiên, theo một báo cáo từ Bloomberg, Sony đã quyết định tiếp tục sản xuất PS4 cho đến cuối năm 2022.

Ngoại hình: PlayStation 4 The Last of Us Edition có thiết kế giống với PlayStation 4 Standard Edition, nhưng có thể đi kèm với hình ảnh hoặc logo của game The Last of Us.

Game hỗ trợ: PlayStation 4 The Last of Us Edition hỗ trợ toàn bộ thư viện game của PS4, bao gồm game The Last of Us Remastered.

Thông số kỹ thuật: PlayStation 4 The Last of Us Edition sử dụng bộ xử lý tùy chỉnh đơn chip, CPU là x86-64 AMD “Jaguar” với 8 lõi, GPU là 1.84 TFLOPS, dựa trên động cơ đồ họa AMD Radeon. Bộ nhớ của nó là GDDR5 8GB. Kích thước lưu trữ có thể là 500GB hoặc 1TB.


P/S: Nếu bạn chưa từng trải nghiệm serie Uncharted, bạn đã bỏ lỡ một cuộc phiêu lưu có một không hai trong suốt thế kỉ công nghệ số này.'),
	(N'PS5_digital',10094108,0.1,10,4,N'Mô tả: PlayStation 5 Digital Edition là một phiên bản hoàn toàn kỹ thuật số của máy chơi game PS5, không có ổ đĩa. Máy này cho phép bạn trải nghiệm tốc độ tải siêu nhanh với SSD tốc độ cao, sự thấm nhập sâu hơn với hỗ trợ cho phản hồi haptic, các nút điều chỉnh thích ứng, và âm thanh 3D.

Ngày sản xuất và ngày ngưng sản xuất: PlayStation 5 Digital Edition đã được phát hành vào ngày 12 tháng 11 năm 2020. Hiện tại, không có thông tin về ngày ngưng sản xuất.

Ngoại hình: PlayStation 5 Digital Edition có thiết kế mỏng nhẹ hơn so với phiên bản PS5 tiêu chuẩn nhờ không có ổ đĩa. Máy có màu trắng và đen.

Game hỗ trợ: PlayStation 5 Digital Edition hỗ trợ toàn bộ thư viện game của PS4 và PS5.
Thông số kỹ thuật: PlayStation 5 Digital Edition sử dụng CPU 8 lõi AMD Zen 2, GPU AMD RDNA 2 “Oberon” với 10.28 teraflops và 36 đơn vị tính toán. Máy có 16GB RAM và ổ cứng SSD 825GB.


P/S: và một kỉ nguyên mới của nền game console bắt đầu tại đây. Vân tay, âm thanh, bộ cảm ứng, sự đa dạng của game trên PS5 đã khiến cho mọi thử thay đổi chóng mặt chỉ trong 1 thiết bị nhỏ này.'),
	(N'PS5_disc',2751409,0.1,10,4,N'Mô tả: PlayStation 5 Disc Edition là một máy chơi game tuyệt vời với khả năng tải siêu nhanh nhờ ổ cứng SSD tốc độ cao, sự thấm nhập sâu hơn với hỗ trợ cho phản hồi haptic, các nút điều chỉnh thích ứng, và âm thanh 3D. Máy này cung cấp trải nghiệm chơi game tuyệt vời với hình ảnh 4K, gameplay với tốc độ khung hình cao.

Ngày sản xuất và ngày ngưng sản xuất: PlayStation 5 Disc Edition đã được phát hành vào ngày 12 tháng 11 năm 2020. Hiện tại, không có thông tin về ngày ngưng sản xuất.

Ngoại hình: PlayStation 5 Disc Edition có thiết kế truyền thống và mạnh mẽ với ổ đĩa có thể tháo rời. Máy có màu trắng và đen.

Game hỗ trợ: PlayStation 5 Disc Edition hỗ trợ đa số các game của PS4. Ngoài ra, bạn cũng có thể chơi các game PS5 trên đĩa.

Thông số kỹ thuật: PlayStation 5 Disc Edition sử dụng CPU 8 lõi AMD Ryzen Zen 2, GPU AMD Radeon RDNA 2 “Oberon” với 10.28 teraflops và 36 đơn vị tính toán. Máy có 16GB RAM và ổ cứng SSD 825GB.
.'),
	(N'PS5_GOW Edition',9853823,0.1,10,4,N'Mô tả: PlayStation 5 God of War Edition là một phiên bản đặc biệt của PS5, tôn vinh trò chơi God of War Ragnarök1. Bộ này bao gồm một máy chơi game tương thích với Blu-Ray, có khả năng Wi-Fi, công nghệ âm thanh 3D.

Ngày sản xuất và ngày ngưng sản xuất: PlayStation 5 God of War Edition đã được phát hành vào ngày 9 tháng 11 năm 2022. Hiện tại, không có thông tin về ngày ngưng sản xuất.

Ngoại hình: PlayStation 5 God of War Edition có thiết kế giống với PlayStation 5 Standard Edition, nhưng có thể đi kèm với hình ảnh hoặc logo của trò chơi God of War.

Game hỗ trợ: PlayStation 5 God of War Edition hỗ trợ toàn bộ thư viện game của PS4. Ngoài ra, bạn cũng có thể chơi các game PS5 trên đĩa.

Thông số kỹ thuật: PlayStation 5 God of War Edition sử dụng CPU 8 lõi AMD Ryzen Zen 2, GPU AMD Radeon RDNA 2 “Oberon” với 10.28 teraflops và 36 đơn vị tính toán. Máy có 16GB RAM và ổ cứng SSD 825GB.



P/S: không có gì phải bàn cãi, God Of War là cái tên được PS5 tôn vinh với bản Limited Edition của nó dành riêng cho huyền thoại này!'),
	(N'PS5_MW Edition',10094108,0.1,10,4,N'Mô tả: PlayStation 5 Modern Warfare Edition là một phiên bản đặc biệt của PS5, tôn vinh trò chơi Call of Duty: Modern Warfare III. Bộ này bao gồm một máy chơi game tương thích với Blu-Ray, có khả năng Wi-Fi, công nghệ âm thanh 3D.

Ngày sản xuất và ngày ngưng sản xuất: PlayStation 5 Modern Warfare Edition đã được phát hành vào ngày 28 tháng 10 năm 2022. Hiện tại, không có thông tin về ngày ngưng sản xuất.

Ngoại hình: PlayStation 5 Modern Warfare Edition có thiết kế giống với PlayStation 5 Standard Edition, nhưng có thể đi kèm với hình ảnh hoặc logo của trò chơi Modern Warfare.

Game hỗ trợ: PlayStation 5 Modern Warfare Edition hỗ trợ toàn bộ thư viện game của PS4. Ngoài ra, bạn cũng có thể chơi các game PS5 trên đĩa.

Thông số kỹ thuật: PlayStation 5 Modern Warfare Edition sử dụng CPU 8 lõi AMD Ryzen Zen 2, GPU AMD Radeon RDNA 2 “Oberon” với 10.28 teraflops và 36 đơn vị tính toán. Máy có 16GB RAM và ổ cứng SSD 825GB.

'),
	(N'PS5_Spiderman Edition',2751409,0.11,10,4,N'Mô tả: PlayStation 5 Spiderman Edition là một phiên bản đặc biệt của PS5, tôn vinh trò chơi Marvel’s Spider-Man. Bộ này bao gồm một máy chơi game tương thích với Blu-Ray, có khả năng Wi-Fi, công nghệ âm thanh 3D.

Ngày sản xuất và ngày ngưng sản xuất: PlayStation 5 Spiderman Edition đã được phát hành vào ngày 28 tháng 7 năm 20232. Hiện tại, không có thông tin về ngày ngưng sản xuất.

Ngoại hình: PlayStation 5 Spiderman Edition có thiết kế giống với PlayStation 5 Standard Edition, nhưng có thể đi kèm với hình ảnh hoặc logo của trò chơi Spider-Man.

Game hỗ trợ: PlayStation 5 Spiderman Edition hỗ trợ toàn bộ thư viện game của PS44. Ngoài ra, bạn cũng có thể chơi các game PS5 trên đĩa.

Thông số kỹ thuật: PlayStation 5 Spiderman Edition sử dụng CPU 8 lõi AMD Ryzen Zen 2, GPU AMD Radeon RDNA 2 “Oberon” với 10.28 teraflops và 36 đơn vị tính toán. Máy có 16GB RAM và ổ cứng SSD 825GB.
')
-------------------------------------------------------------
--LIKE NEW:
INSERT INTO Product
VALUES
	(N'Nintendo Lite Blue Like New',3490000,0.1,10,2,N'Nintendo Switch Lite là một hệ thống nhỏ gọn, nhẹ nhàng, tập trung vào việc chơi game di động. Với thiết kế đơn khối thanh lịch, bộ điều khiển được tích hợp ngay vào hệ thống, Nintendo Switch Lite rất phù hợp cho việc chơi game di động.

Thông tin: Nintendo Switch Lite màu xanh đã được phát hành vào ngày 21 tháng 5 năm 2021. Hiện tại, không có thông tin về ngày ngừng phát hành.

Ngoại hình: Nintendo Switch Lite có thiết kế nhỏ gọn, nhẹ nhàng, sẵn sàng để bạn mang đi bất cứ đâu. Bộ điều khiển được tích hợp ngay vào hệ thống cho trải nghiệm chơi game di động, và phía bên trái có một +Control Pad.

Game hỗ trợ: Nintendo Switch Lite tương thích với các game phổ biến như Super Mario Odyssey™, Mario Kart™ 8 Deluxe, Super Smash Bros.™ Ultimate, The Legend of Zelda™: Breath of the Wild, và nhiều hơn nữa.

Thông số kỹ thuật:

Kích thước: Cao 3.6", dài 8.2", sâu .55"
Trọng lượng: Khoảng .61 lbs
Màn hình: Màn hình cảm ứng 5.5" với độ phân giải 1280x720
CPU/GPU: Bộ xử lý Nvidia Tegra tùy chỉnh
Bộ nhớ trong: 32 GB, có thể mở rộng bằng thẻ microSD lên đến 2TB
Pin: Từ 3 đến 7 giờ tùy thuộc vào game bạn chơi'),
	(N'Nintendo Lite Coral Like New',3490000,0.17,10,2,N'Nintendo Switch Lite màu san hô là một hệ thống nhỏ gọn, nhẹ nhàng, tập trung vào việc chơi game di động. Với thiết kế đơn khối thanh lịch, bộ điều khiển được tích hợp ngay vào hệ thống, Nintendo Switch Lite rất phù hợp cho việc chơi game di động.

Thông tin: Nintendo Switch Lite màu san hô đã được phát hành vào ngày 3 tháng 4 năm 2020.

Ngoại hình: Nintendo Switch Lite có thiết kế nhỏ gọn, nhẹ nhàng, sẵn sàng để bạn mang đi bất cứ đâu. Bộ điều khiển được tích hợp ngay vào hệ thống cho trải nghiệm chơi game di động, và phía bên trái có một +Control Pad.

Game hỗ trợ: Nintendo Switch Lite tương thích với các game phổ biến như Super Mario Odyssey, Mario Kart 8 Deluxe, Super Smash Bros. Ultimate, The Legend of Zelda: Breath of the Wild, và nhiều hơn nữa.

Thông số kỹ thuật:

Kích thước: Cao 91.1mm, dài 208mm, sâu 13.9mm
Trọng lượng: Khoảng 275g
Màn hình: Màn hình cảm ứng 5.5" với độ phân giải 1280x720
CPU/GPU: Bộ xử lý Nvidia Tegra tùy chỉnh
Bộ nhớ trong: 32 GB, có thể mở rộng bằng thẻ microSD lên đến 2TB
Pin: Từ 3 đến 7 giờ tùy thuộc vào game bạn chơi
'),
	(N'Nintendo Lite Gray Like New',3000000,0.1,5,2,N'Nintendo Switch Lite màu xám là một hệ thống nhỏ gọn, nhẹ nhàng, tập trung vào việc chơi game di động. Với thiết kế đơn khối thanh lịch, bộ điều khiển được tích hợp ngay vào hệ thống, Nintendo Switch Lite rất phù hợp cho việc chơi game di động.

Thông tin: Nintendo Switch Lite màu xám đã được phát hành vào ngày 20 tháng 9 năm 2019.

Ngoại hình: Nintendo Switch Lite có thiết kế nhỏ gọn, nhẹ nhàng, sẵn sàng để bạn mang đi bất cứ đâu. Bộ điều khiển được tích hợp ngay vào hệ thống cho trải nghiệm chơi game di động, và phía bên trái có một +Control Pad.

Game hỗ trợ: Nintendo Switch Lite tương thích với các game phổ biến như Super Mario Odyssey, Mario Kart 8 Deluxe, Super Smash Bros. Ultimate, The Legend of Zelda: Breath of the Wild, và nhiều hơn nữa.

Thông số kỹ thuật:

Kích thước: Cao 3.6", dài 8.2", sâu .55"
Trọng lượng: Khoảng .61 lbs
Màn hình: Màn hình cảm ứng 5.5" với độ phân giải 1280x720
CPU/GPU: Bộ xử lý Nvidia Tegra tùy chỉnh
Bộ nhớ trong: 32 GB, có thể mở rộng bằng thẻ microSD lên đến 2TB
Pin: Từ 3 đến 7 giờ tùy thuộc vào game bạn chơi'),
	(N'Nintendo Lite Isablle Aloha Like New',3500000,0.1,10,2,N'Nintendo Switch Lite Isabelle Aloha Edition là một hệ thống nhỏ gọn, nhẹ nhàng, tập trung vào việc chơi game di động. Với thiết kế đơn khối thanh lịch, bộ điều khiển được tích hợp ngay vào hệ thống, Nintendo Switch Lite rất phù hợp cho việc chơi game di động. Hệ thống có màu san hô đáng yêu, một họa tiết lá trắng ở phía sau, và một thiết kế lá dễ thương ở phía trước, lấy cảm hứng từ series Animal Crossing™.

Thông tin: Nintendo Switch Lite Isabelle Aloha Edition đã được phát hành vào ngày 20 tháng 10 năm 2023.

Ngoại hình: Nintendo Switch Lite có thiết kế nhỏ gọn, nhẹ nhàng, sẵn sàng để bạn mang đi bất cứ đâu. Bộ điều khiển được tích hợp ngay vào hệ thống cho trải nghiệm chơi game di động, và phía bên trái có một +Control Pad.

Game hỗ trợ: Nintendo Switch Lite tương thích với hầu hết các game hiện có của Nintendo Switch.

Thông số kỹ thuật:

Kích thước: Cao 3.6", dài 8.2", sâu .55"
Trọng lượng: Khoảng .61 lbs
Màn hình: Màn hình cảm ứng 5.5" với độ phân giải 1280x720
CPU/GPU: Bộ xử lý Nvidia Tegra tùy chỉnh
Bộ nhớ trong: 32 GB, có thể mở rộng bằng thẻ microSD lên đến 2TB
Pin: Từ 3 đến 7 giờ tùy thuộc vào game bạn chơi
'),
	(N'Nintendo Lite Pokemon Diagla And Palkia Like New',3500000,0.1,10,2,N'Nintendo Switch Lite Dialga & Palkia Edition là một hệ thống nhỏ gọn, nhẹ nhàng, tập trung vào việc chơi game di động. Hệ thống này là phiên bản đầu tiên có thân máy màu xám kim loại với các nút màu đen. Mặt sau có hình vẽ nghệ thuật ấn tượng của Pokémon huyền thoại Dialga và Palkia từ các game Pokémon Brilliant Diamond và Pokémon Shining Pearl trong một hoàn thiện màu bạc và vàng.

Thông tin: Nintendo Switch Lite Dialga & Palkia Edition đã được phát hành vào ngày 5 tháng 11 năm 2021.

Ngoại hình: Nintendo Switch Lite có thiết kế nhỏ gọn, nhẹ nhàng, sẵn sàng để bạn mang đi bất cứ đâu. Bộ điều khiển được tích hợp ngay vào hệ thống cho trải nghiệm chơi game di động, và phía bên trái có một +Control Pad.

Game hỗ trợ: Nintendo Switch Lite tương thích với thư viện rộng lớn của các game Nintendo Switch hỗ trợ chế độ chơi di động.

Thông số kỹ thuật:

Kích thước: Cao 7.87", dài 5.12", sâu 4.72"
Trọng lượng: Khoảng 1.1 lbs
Màn hình: Màn hình cảm ứng 5.5" với độ phân giải 1280x720
CPU/GPU: Bộ xử lý Nvidia Tegra tùy chỉnh
Bộ nhớ trong: 32 GB, có thể mở rộng bằng thẻ microSD lên đến 2TB
Pin: Từ 3 đến 7 giờ tùy thuộc vào game bạn chơi'),
	(N'Nintendo Lite Timmy And Tommy Aloha Like New',3600000,0.1,2,2,N'Nintendo Switch Lite Timmy & Tommy’s Aloha Edition là một hệ thống nhỏ gọn, nhẹ nhàng, tập trung vào việc chơi game di động. Hệ thống này có màu xanh ngọc thạch, với một họa tiết lá trắng ở phía sau và một họa tiết lá nâu ở phía trước, gần nút Home. Hệ thống này đi kèm với một bản sao số hoá đầy đủ của game Animal Crossing: New Horizons.

Thông tin: Nintendo Switch Lite Timmy & Tommy’s Aloha Edition đã được phát hành vào ngày 24 tháng 11 năm 2023.

Ngoại hình: Nintendo Switch Lite có thiết kế nhỏ gọn, nhẹ nhàng, sẵn sàng để bạn mang đi bất cứ đâu. Bộ điều khiển được tích hợp ngay vào hệ thống cho trải nghiệm chơi game di động, và phía bên trái có một +Control Pad.

Game hỗ trợ: Nintendo Switch Lite hỗ trợ thư viện rộng lớn của các game Nintendo Switch có thể chơi ở chế độ di động.

Thông số kỹ thuật:

Kích thước: Rộng 91.1mm× Dài 208mm x Cao 13.9mm
Trọng lượng: Khoảng 275g
Màn hình: Màn hình cảm ứng 5.5" với độ phân giải 1280×720 pixels
CPU/GPU: Bộ xử lý Tegra tùy chỉnh được sản xuất bởi NVIDIA
Bộ nhớ trong: 32 GB, có thể mở rộng bằng thẻ microSD lên đến 2TB
Pin: Từ 3 đến 7 giờ tùy thuộc vào game bạn chơi'),
	(N'Nintendo Lite Turquoise Like New',3900000,0.1,3,2,N'Nintendo Switch Lite Turquoise là một hệ thống nhỏ gọn, nhẹ nhàng, tập trung vào việc chơi game di động. Với thiết kế đơn khối thanh lịch, bộ điều khiển được tích hợp ngay vào hệ thống, Nintendo Switch Lite rất phù hợp cho việc chơi game di động.

Thông tin: Nintendo Switch Lite Turquoise đã được phát hành vào ngày 20 tháng 9 năm 2019.

Ngoại hình: Nintendo Switch Lite có thiết kế nhỏ gọn, nhẹ nhàng, sẵn sàng để bạn mang đi bất cứ đâu. Bộ điều khiển được tích hợp ngay vào hệ thống cho trải nghiệm chơi game di động, và phía bên trái có một +Control Pad.

Game hỗ trợ: Nintendo Switch Lite tương thích với hầu hết các game hiện có của Nintendo Switch.

Thông số kỹ thuật:

CPU: Bộ xử lý Nvidia Tegra tùy chỉnh.
RAM: 4GB.
Bộ nhớ trong: 32 GB.'),
	(N'Nintendo Lite Yellow Like New',3900000,0.1,2,2,N'Nintendo Switch Lite Yellow là một hệ thống nhỏ gọn, nhẹ nhàng, tập trung vào việc chơi game di động. Với thiết kế đơn khối thanh lịch, bộ điều khiển được tích hợp ngay vào hệ thống, Nintendo Switch Lite rất phù hợp cho việc chơi game di động.

Thông tin: Nintendo Switch Lite Yellow đã được phát hành vào ngày 20 tháng 9 năm 2019.

Ngoại hình: Nintendo Switch Lite có thiết kế nhỏ gọn, nhẹ nhàng, sẵn sàng để bạn mang đi bất cứ đâu. Bộ điều khiển được tích hợp ngay vào hệ thống cho trải nghiệm chơi game di động, và phía bên trái có một +Control Pad.

Game hỗ trợ: Nintendo Switch Lite tương thích với hầu hết các game hiện có của Nintendo Switch.

Thông số kỹ thuật:

CPU: Bộ xử lý Nvidia Tegra tùy chỉnh.
RAM: 4GB.
Bộ nhớ trong: 32 GB.
Màn hình: Màn hình cảm ứng 5.5" với độ phân giải 1280x720.
Pin: Từ 3 đến 7 giờ tùy thuộc vào game bạn chơi.'),
	(N'Nintendo Oled Legend Of Zelda Like New',6500000,0,2,2,N'Mô tả: Nintendo Switch OLED Model - The Legend of Zelda: Tears of the Kingdom Edition có thiết kế đặc biệt từ game The Legend of Zelda: Tears of the Kingdom, bao gồm huy hiệu Hylian quen thuộc từ series The Legend of Zelda ở phía trước của dock. Hệ thống này sẽ ra mắt vào ngày 28 tháng 4.

Ngoại hình: Hệ thống này có màn hình OLED 7 inch sống động, chân đế rộng có thể điều chỉnh, dock có cổng LAN có dây, 64 GB bộ nhớ trong, và âm thanh nâng cao khi chơi ở chế độ cầm tay và bàn.

Game hỗ trợ: Hệ thống này hỗ trợ các game của Nintendo Switch.

Thông số kỹ thuật:

Màn hình: Màn hình cảm ứng đa điểm / Màn hình OLED 7.0 inch / 1280x720.
CPU/GPU: Bộ xử lý Tegra tùy chỉnh của NVIDIA.
Bộ nhớ trong: 64 GB.
Kết nối không dây: Wi-Fi (IEEE 802.11 a/b/g/n/ac tương thích) / Bluetooth 4.1.
Pin: Khoảng từ 4.5 đến 9 giờ, tùy thuộc vào game bạn chơi.
Ngày phát hành: Hệ thống này sẽ ra mắt vào ngày 28 tháng 4 năm 2023.

Ghi chú: Game The Legend of Zelda: Tears of the Kingdom không được bao gồm.'),
	(N'Nintendo Oled Mario Like New',5900000,0.1,10,2,N'Mô tả: Nintendo Switch OLED Model - Mario Red Edition có thiết kế đặc biệt từ game Super Mario. Hệ thống này có màu đỏ rực rỡ, với hình ảnh của Mario được in trên phía sau của dock.

Ngày phát hành: Hệ thống này đã được phát hành vào ngày 6 tháng 10 năm 2023.

Ngoại hình: Hệ thống này có màn hình OLED 7 inch sống động, chân đế rộng có thể điều chỉnh, dock có cổng LAN có dây, 64 GB bộ nhớ trong, và âm thanh nâng cao khi chơi ở chế độ cầm tay và bàn.

Game hỗ trợ: Hệ thống này hỗ trợ các game của Nintendo Switch.

Thông số kỹ thuật:

Màn hình: Màn hình cảm ứng đa điểm / Màn hình OLED 7.0 inch / 1280x720.
CPU/GPU: Bộ xử lý Tegra tùy chỉnh của NVIDIA.
Bộ nhớ trong: 64 GB.
Kết nối không dây: Wi-Fi (IEEE 802.11 a/b/g/n/ac tương thích) / Bluetooth 4.1.
Pin: Khoảng từ 4.5 đến 9 giờ, tùy thuộc vào game bạn chơi.'),
	(N'Nintendo Oled Neon Like New',5900000,0,0,2,N'Mô tả: Nintendo Switch OLED Model - Neon Blue/Neon Red Edition có màn hình OLED 7 inch sống động, chân đế rộng có thể điều chỉnh, dock có cổng LAN có dây, 64 GB bộ nhớ trong, và âm thanh nâng cao.

Ngày phát hành: Hệ thống này đã được phát hành vào ngày 8 tháng 10 năm 2021

Ngoại hình: Hệ thống này có màu xanh dương và đỏ neon, với một đơn vị chính màu đen và một dock màu đen.

Game hỗ trợ: Hệ thống này tương thích với toàn bộ thư viện game của Nintendo Switch.

Thông số kỹ thuật:

Màn hình: Màn hình cảm ứng đa điểm / Màn hình OLED 7.0 inch / 1280x720.
CPU/GPU: Bộ xử lý Tegra tùy chỉnh của NVIDIA.
Bộ nhớ trong: 64 GB.
Kết nối không dây: Wi-Fi (IEEE 802.11 a/b/g/n/ac tương thích) / Bluetooth 4.1.
Pin: Khoảng từ 4.5 đến 9 giờ, tùy thuộc vào game bạn chơi.'),
	(N'Nintendo Oled Pokemon Like New',6200000,0,0,2,N'Mô tả: Nintendo Switch OLED Model - Pokémon Scarlet & Violet Edition có thiết kế đặc biệt từ game Pokémon Scarlet và Pokémon Violet. Hệ thống này có màu trắng bóng, với hình ảnh của Pokémon huyền thoại Koraidon và Miraidon được in trên phía trước của dock. Hệ thống này đã được phát hành vào ngày 4 tháng 11 năm 2022.

Ngày phát hành: Hệ thống này đã được phát hành vào ngày 4 tháng 11 năm 2022

Ngoại hình: Hệ thống này có màn hình OLED 7 inch sống động, chân đế rộng có thể điều chỉnh, dock có cổng LAN có dây, 64 GB bộ nhớ trong, và âm thanh nâng cao khi chơi ở chế độ cầm tay và bàn.

Game hỗ trợ: Hệ thống này hỗ trợ các game của Nintendo Switch.

Thông số kỹ thuật:

Màn hình: Màn hình cảm ứng đa điểm / Màn hình OLED 7.0 inch / 1280x720.
CPU/GPU: Bộ xử lý Tegra tùy chỉnh của NVIDIA.
Bộ nhớ trong: 64 GB.
Kết nối không dây: Wi-Fi (IEEE 802.11 a/b/g/n/ac tương thích) / Bluetooth 4.1.
Pin: Khoảng từ 4.5 đến 9 giờ, tùy thuộc vào game bạn chơi.'),
	(N'Nintendo Oled Splatoon Like New',6200000,0.05,3,2,N'Mô tả: Nintendo Switch OLED Model - Splatoon 3 Edition có thiết kế đặc biệt từ game Splatoon 3. Hệ thống này có màu xanh dương và vàng gradient, với hình ảnh của Splatoon được in trên phía sau của dock. 

Ngày phát hành: Hệ thống này đã được phát hành vào ngày 26 tháng 8 năm 2022.

Ngoại hình: Hệ thống này có màn hình OLED 7 inch sống động, chân đế rộng có thể điều chỉnh, dock có cổng LAN có dây, 64 GB bộ nhớ trong, và âm thanh nâng cao.

Game hỗ trợ: Hệ thống này hỗ trợ các game của Nintendo Switch.

Thông số kỹ thuật:

Màn hình: Màn hình cảm ứng đa điểm / Màn hình OLED 7.0 inch / 1280x720.
CPU/GPU: Bộ xử lý Tegra tùy chỉnh của NVIDIA.
Bộ nhớ trong: 64 GB.
Kết nối không dây: Wi-Fi (IEEE 802.11 a/b/g/n/ac tương thích) / Bluetooth 4.1.
Pin: Khoảng từ 4.5 đến 9 giờ, tùy thuộc vào game bạn chơi.'),
	(N'Nintendo Oled White Like New',5500000,0.1,10,2,N'Mô tả: Nintendo Switch OLED Model - White là phiên bản Nintendo Switch mới nhất với màn hình OLED 7 inch sống động, chân đế rộng có thể điều chỉnh, dock có cổng LAN có dây, 64 GB bộ nhớ trong, và âm thanh nâng cao.

Ngày phát hành: Hệ thống này đã được phát hành vào ngày 8 tháng 10 năm 2021.

Ngoại hình: Hệ thống này có màu trắng, tạo cảm giác sáng sủa và tinh tế.

Game hỗ trợ: Hệ thống này hỗ trợ toàn bộ thư viện game của Nintendo Switch.

Thông số kỹ thuật:

Màn hình: Màn hình cảm ứng đa điểm / Màn hình OLED 7.0 inch / Độ phân giải 1280x720.
CPU/GPU: Bộ xử lý Tegra tùy chỉnh của NVIDIA.
Bộ nhớ trong: 64 GB.
Kết nối không dây: Wi-Fi (IEEE 802.11 a/b/g/n/ac tương thích) / Bluetooth 4.1.
Pin: Khoảng từ 4.5 đến 9 giờ, tùy thuộc vào game bạn chơi.'),
	(N'Nintendo V2 Gray Like New',5000000,0.1,10,2,N'Mô tả: Nintendo Switch V2 Gray là phiên bản cải tiến của Nintendo Switch, với màn hình 6.2 inch cho phép bạn chơi game ở chế độ TV, bàn hoặc cầm tay. Hệ thống này bao gồm Nintendo Switch console và Nintendo Switch dock màu đen, và bộ điều khiển Joy‑Con trái và phải màu xám.

Ngày phát hành: Hệ thống này đã được phát hành vào tháng 8 năm 2019.

Ngoại hình: Hệ thống này có màu xám, tạo cảm giác bền bỉ và chuyên nghiệp.

Game hỗ trợ: Hệ thống này hỗ trợ toàn bộ thư viện game của Nintendo Switch.

Thông số kỹ thuật:

Màn hình: Màn hình cảm ứng đa điểm / Màn hình 6.2 inch / Độ phân giải 1280x720.
CPU/GPU: Bộ xử lý Tegra tùy chỉnh của NVIDIA.
Bộ nhớ trong: 32 GB.
Kết nối không dây: Wi-Fi (IEEE 802.11 a/b/g/n/ac tương thích) / Bluetooth 4.1.
Pin: Khoảng từ 4.5 đến 9 giờ, tùy thuộc vào game bạn chơi.')

SELECT * FROM Orders 

SELECT * FROM OrderDetail

SELECT * FROM Account

INSERT INTO Orders VALUES('2023-03-10','2023-03-15','404 lam gi co',2, 1,N'Đã xác nhận',100000,'card')
INSERT INTO Orders VALUES('2024-03-10','2024-03-15','404 lam gi co',2, 1,N'Đã xác nhận',1004000,'card')
INSERT INTO Orders VALUES('2024-01-10','2024-01-15','404 lam gi co',2, 1,N'Đã xác nhận',1004000,'card')
select * from Orders where status = N'Hoàn thành' order by ShippedDate desc