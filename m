Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFE29BBDE3
	for <lists+cake@lfdr.de>; Mon,  4 Nov 2024 20:20:26 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9E10D3CB44;
	Mon,  4 Nov 2024 14:20:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1730748019;
	bh=WDx8dC8N74tUG2Syass3ikCgV3N+OQHNGmYdA1CFpp4=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=fUPG4XU0KI4OMN7h4GnOVC/f0rGtMxg75WFyEBTnpQ5EX7nCgc54Tdrz88z0a+TJ7
	 jRa+M5md7ze+LeoSuOMD0dDw4RFy2Q1iEvfor266CWgqrjwGlkm49UGzhthSpzqPve
	 RoSv0zU+ETu6OCvJ1rJD13b8+JYmK9B35PpvXWuAVWr1PDjgqs6bzw8qbsEkWr+FXm
	 QOOHuTwifvzdZR4a0CJqEK0lJQuS6sYhes0OtbGh9O+lcjL8XTaMCvRtUByFElpctY
	 xYknQ9qvn8JZFrptWAuIgS5Ow0WPSMkU3CMdaXNJigYS1retnq2PuSQ8LLU9N0UsV7
	 RTWhRG29mx5fw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6561C3B2A4;
 Mon,  4 Nov 2024 14:20:18 -0500 (EST)
Received: by mail-lf1-x12c.google.com with SMTP id
 2adb3069b0e04-539f7606199so2206734e87.0; 
 Mon, 04 Nov 2024 11:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1730748017; x=1731352817; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Nmob6v6SzXy/t11qsAM9Oylo8+yvRfAL8Z+8Vm/VAyU=;
 b=S8Ur93R4g/OhTZigmdhrmy7wIqE8Ro1Ou7WRDFqZ4fchXrwfjoLTaE9DVUBByzRrIt
 BT00xAWAWRbYJKwANOLM3zM/vFSSWTdeMpXCCmOpO6zgn6sE+eelrLTG4D8ToTefr/Yg
 0HMZpOrTo6b4rDv9kGxispuCP4wx6K/bC8Gi5tWPca+YDz6oWbgwA5N5MJrD5R+vrR8X
 QNw/CjdYP2SBCZZ7GP/mv7bTlbIUxG/iY6vzRqO0HsES9vFzwVC3jBC4OuKbfsAaGrkt
 FZyL1vkifEPDFowmMb7v/hHf4ZQYjd8o2gk6OIqQdSBVFdgg0T3QNgZpzkQMflDdbhiN
 ogOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730748017; x=1731352817;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Nmob6v6SzXy/t11qsAM9Oylo8+yvRfAL8Z+8Vm/VAyU=;
 b=wBxo/opRDiuaSKVYNKM88W7DXWWrbAotcinS2OtoJ3InaEu/t+NP3UnKN+A/HRRLdJ
 u98euhF7oxwl4Aj0lNl6ZjDhNLSzbntLB5YkRY5QKZ3haoAnrlIbDmWXtyg2WKQxIjEN
 ZAUV+ewgkxPvR9sk4UUl2JfFqAuLkmhD/O3uBDD2cX4TJFsETM+jsTH0VrwuyI8UT9cd
 Aek53Wv9gwW4Zha3z08bOzbH2bnuGpw4WHJQZjO499KDShnQQ3x/H3FbFjuYllPkRMpC
 EVhTH/BJTQptuOsnUud1COpLDypDtyBmTw05Taa9vEpVXvw/Bqf8Mje3D7mJFdSMRvc0
 7N3w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVbGLvCKkOtyvDjj+i5e9K6ZE3kc84SyllBHGw1NcS6vUaTyZp/ZysHelRSmhDOri7sM79t@lists.bufferbloat.net,
 AJvYcCWL1nFCUKKcez3X/eZ3vn1D6Eqnscfmwg/oXhJ8SGyodjGw+ljm3SCQeOR+RP2fQwgo0LyJuA==@lists.bufferbloat.net,
 AJvYcCWZ69EGrsEvbE2CgBZF0ezh7DAobX5NT3x4AwyCGqPauTWtP/rLxGw8guLd5t3acpqZOABaJg==@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzmYmrHXuGSQzIvJQkhkBQcuD27dhD6bQpzTb276YQjs05fXXG1
 xtDgR89sZdPgFWuEmTm+WApXCFhPua4yL0WYZfLLnqgsZpbooeaArP246QqgCL3TgzVnp9zoE5r
 kO0/aezTbOtVInzzdE2AEAUAsrzjk1x2Bj4l2uA==
X-Google-Smtp-Source: AGHT+IFxHxAEwPbrnRk2uoBLS0APYy1nNqdLicVxfvaSDDeoJtJ2i2Gcczqy3EX4FcfTS9BBkYlCVHTzg0hmHFJCZXk=
X-Received: by 2002:a05:6512:6ce:b0:539:f922:bd4e with SMTP id
 2adb3069b0e04-53b7ece11eamr11087139e87.23.1730748016518; Mon, 04 Nov 2024
 11:20:16 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 4 Nov 2024 20:19:57 +0100
Message-ID: <CAJUtOOj651oWt_hV2XunmvZqOpT+7C5Snd=jHZvO2N5amUSUNQ@mail.gmail.com>
To: codel@lists.bufferbloat.net, Cake List <cake@lists.bufferbloat.net>, 
 bloat <bloat@lists.bufferbloat.net>, 
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>
Subject: [Cake] QoE at WISPAPALOOZA & DavidCB's "Queues,
 Hockey Sticks and Performance" at P99CONF by ScyllaDB
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
Content-Type: multipart/mixed; boundary="===============6122033808460731056=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6122033808460731056==
Content-Type: multipart/alternative; boundary="000000000000b873a406261b2c17"

--000000000000b873a406261b2c17
Content-Type: text/plain; charset="UTF-8"

Hello to all,

Enjoy!

LibreQos, Preseem & Cambium Networks @ WISPAPALOOZA 2024 - "Forest For The
Trees: Listening To Your Network"
https://www.youtube.com/watch?v=ZuzIaWGs9Vk

David Collier-Brown at P99CONF by ScyllaDB - "Queues, Hockey Sticks and
Performance"
https://www.youtube.com/watch?v=k_m3nEBR8jA

All the best,

Frank

Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com

--000000000000b873a406261b2c17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello to all,<div><br></div><div>Enjoy!</div><div><br=
></div><div>LibreQos, Preseem &amp; Cambium Networks @ WISPAPALOOZA 2024 - =
&quot;Forest For The Trees: Listening To Your Network&quot;<br></div><div><=
a href=3D"https://www.youtube.com/watch?v=3DZuzIaWGs9Vk">https://www.youtub=
e.com/watch?v=3DZuzIaWGs9Vk<br></a></div><div><br></div><div>David Collier-=
Brown at P99CONF by ScyllaDB - &quot;Queues, Hockey Sticks and Performance&=
quot;</div><div><a href=3D"https://www.youtube.com/watch?v=3Dk_m3nEBR8jA">h=
ttps://www.youtube.com/watch?v=3Dk_m3nEBR8jA</a></div></div><br clear=3D"al=
l"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_=
signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><di=
v dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div>All the best,</div><div><br></div><div><p class=3D"MsoNormal"=
 style=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p class=3D"MsoNormal=
" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><p class=3D"MsoNormal" st=
yle=3D"color:rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u></u></p><p cl=
ass=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u>=C2=A0<u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"https://www.li=
nkedin.com/in/frantisekborsik" style=3D"color:rgb(17,85,204)" target=3D"_bl=
ank">https://www.linkedin.com/in/frantisekborsik</a><u></u><u></u></p><p cl=
ass=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal, Telegram, WhatsApp:=
 +421919416714=C2=A0<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color=
:rgb(34,34,34)">iMessage, mobile: +420775230885<u></u><u></u></p><p class=
=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u></u><u><=
/u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"mail=
to:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_bl=
ank">frantisek.borsik@gmail.com</a></p></div></div></div></div></div></div>=
</div></div></div></div></div></div></div></div>

--000000000000b873a406261b2c17--

--===============6122033808460731056==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6122033808460731056==--
