Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0B987C5B1
	for <lists+cake@lfdr.de>; Fri, 15 Mar 2024 00:00:58 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8DFB23CB40;
	Thu, 14 Mar 2024 19:00:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1710457256;
	bh=tnHZino91PyBidrZvCSxp2mw9zceqyMXpKbY30ytv+o=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=UHp6oFzS1Z7xU25EePeujk0Y02IuFmMSAl1RKsFb9NBmR6eu57ba+KyEKtxRb5Q/B
	 F6pMel/SaafVnJafrBw2UuaVzJfAsqdw7GjYAuwQlJIYPszE8+QBmHc+li6Y9oIc5W
	 eErhkz453UGjNqaIyxcXk3q4Ktahkey1Jfwf4tH1alE89F3LV6x9F3bHrbInBo/kOC
	 epiWsBf0J4OwBJO0uZ6e72Xf7NRjDXKqgZeFa1LgKZQGrvqPS9WjfwylhUg0fpfPHW
	 zcIDe40VfYQfGQB2afBgVOXBiRaxfP4Dq97pvqyF7Wn/YgjczIJ44vRVZWhxYmJFIz
	 8Wen2T76W50/Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com
 [IPv6:2607:f8b0:4864:20::1135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D257B3CB37;
 Thu, 14 Mar 2024 19:00:54 -0400 (EDT)
Received: by mail-yw1-x1135.google.com with SMTP id
 00721157ae682-609f359b7b1so18349167b3.1; 
 Thu, 14 Mar 2024 16:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1710457254; x=1711062054; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=KqxlxSiJkInGYuwPETa7PDVAdEFq0vPmIJp7AtAFHRs=;
 b=LiJOBHD5q/jWjZIos5TvqGe9IsrwPVOwp6FdoU4bGoEZIkAqU63i4o9S19vL7DcHd4
 fU+4Ey00Uboxn62S37v/nOmv7Ga7zLS1HnEPFsmnVokNctRapI4/SrnA/Ag3onaKADsQ
 M/mLVSt8eM1NJOUK1CpHt2WAcvfZtR8vV2r992pqlVN+z0w2DHLIubSDpRMh1BRarN3V
 HR3XAih8VLcfrvf+No+mtbvmDMYLVHK6ulcAaeyN6cCQp1sjI6WupttOBb/yAPmmFRWO
 UgHo/B2TTcMwXLwNRoVXEkSYxbQehst2rQW72IN/MVkVqJ8O0Rv/8EDhaZP+IwiDN09j
 k2pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710457254; x=1711062054;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=KqxlxSiJkInGYuwPETa7PDVAdEFq0vPmIJp7AtAFHRs=;
 b=hahWokf/jlUauIjQeTAssC4M/5eHS6tTvUBpmx0o7WRy/Jm9QbMnJF2GUGATg2KDVZ
 dcIAlaGEm3ZzO9f29WZ5U45Mug/SA3xGnYFs3ApSi2FPCd5sUCyU8fcasVP9HZkg10Qf
 66wvBnh7h1t7eNljRWn7pl3D8Ugz5h3RJnrN+VbrPw1tvo/MsoQw4UkfPta7wSYvrft2
 uQPFT7IDCYMXNPpSdV522FIDmmXPwOUlaOYGdITGjdECF3yleM2WREm3/H82kDD1LYjw
 XnNMUkh9Rkda/Nqcjmk2/kst1sQbCYHC4iBDUVkLJEck1vSdxzM798gjTNrSehNgcb4I
 9f6A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWi/oHLq43BPAYFFuMHRzhIjuILGuRqJQrhsNdEnczuraNLs3Hs/k2+Gg418GP/JLlk0eOyhWg5SIxJki7chsnYso5qV0VjqOlbMt0hLb1zFNk5k+tbvzfp1XG2eBH6Upfov+AkvpuCgtFcPjX3NlapKCA6EWAHAfThjrGm+wxzpfBkIXkkliv5GytHDYuymmyAxLUUycLRQ+0iljhZjbTah9BDmkJEW8RT4U51Gx+R
X-Gm-Message-State: AOJu0YzYG2qqGUWOkPnzkscbSpiVXfeKBXE1lLG/wUY69VxzlVZ/H9W6
 GKRXfObQbaIQutm4KrJIhDq+I58Tww5sTeGF5zj2TMI4NBEvgdO4oqUsd/gmdtlBqF4BDrV5LrX
 5PLZgIoQy6xQR07Lt1Tvv0YSnfZLoSc7dZio=
X-Google-Smtp-Source: AGHT+IGUvqBlAYMFux8tZchf7RAzZsBLd4VJ+ibt5SpzXqz5yaODjNwoR4smWyOl1gfGYDQYAZZ9ElUgW1S3XtKMWow=
X-Received: by 2002:a05:690c:2904:b0:60c:c993:7871 with SMTP id
 eg4-20020a05690c290400b0060cc9937871mr2841171ywb.8.1710457253984; Thu, 14 Mar
 2024 16:00:53 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 15 Mar 2024 00:00:17 +0100
Message-ID: <CAJUtOOjX8GV3vmBY5Pa0-QZBQf9VGFekCFoPgfhmxuVH2-YuBA@mail.gmail.com>
To: Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>, 
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 make-wifi-fast@lists.bufferbloat.net
Subject: [Cake] FCC scraps old speed benchmark,
	says broadband should be at least 100Mbps
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
From: Frantisek Borsik via Cake <cake@lists.bufferbloat.net>
Reply-To: Frantisek Borsik <frantisek.borsik@gmail.com>
Content-Type: multipart/mixed; boundary="===============8289205306986782882=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8289205306986782882==
Content-Type: multipart/alternative; boundary="00000000000007035f0613a6dd63"

--00000000000007035f0613a6dd63
Content-Type: text/plain; charset="UTF-8"

Word "latency" mentioned 42x in the the FCC draft, "bufferbloat" 10x:

https://docs.fcc.gov/public/attachments/DOC-400675A1.pdf


All the best,

Frank

Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com

--00000000000007035f0613a6dd63
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Word &quot;latency&quot; mentioned 42x in the the FCC draf=
t, &quot;bufferbloat&quot; 10x:<div><br></div><div><a href=3D"https://docs.=
fcc.gov/public/attachments/DOC-400675A1.pdf">https://docs.fcc.gov/public/at=
tachments/DOC-400675A1.pdf<br></a><div><br></div><div><br clear=3D"all"><di=
v><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signat=
ure"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div>All the best,</div><div><br></div><div><p class=3D"MsoNormal" style=
=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p class=3D"MsoNormal" styl=
e=3D"color:rgb(34,34,34)"><u></u><u></u></p><p class=3D"MsoNormal" style=3D=
"color:rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u></u></p><p class=3D=
"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u>=C2=A0<u></u></p><p class=
=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"https://www.linkedi=
n.com/in/frantisekborsik" style=3D"color:rgb(17,85,204)" target=3D"_blank">=
https://www.linkedin.com/in/frantisekborsik</a><u></u><u></u></p><p class=
=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal, Telegram, WhatsApp: +4=
21919416714=C2=A0<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rg=
b(34,34,34)">iMessage, mobile: +420775230885<u></u><u></u></p><p class=3D"M=
soNormal" style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u></u><u></u></=
p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"mailto:fr=
antisek.borsik@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">=
frantisek.borsik@gmail.com</a></p></div></div></div></div></div></div></div=
></div></div></div></div></div></div></div></div></div>

--00000000000007035f0613a6dd63--

--===============8289205306986782882==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8289205306986782882==--
