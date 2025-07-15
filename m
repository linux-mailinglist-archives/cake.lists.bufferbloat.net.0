Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6FDB050D1
	for <lists+cake@lfdr.de>; Tue, 15 Jul 2025 07:19:13 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 22E60B63219;
	Tue, 15 Jul 2025 07:19:04 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=LswMAdu9
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1752556743;
 b=04bTfYBO8TzkJUA57j46zihV8Do73btio4Q5Jnnt4W4wWhLb/yhysuTl0qkvv4an7+ENI
 7+ucdnM0MdptJxil1OFildHdeCmufUbD3yofd6v0fsV4yviKPVSAuCvPMi8N/RornmHVjUG
 MIUVk3RaDz1LAAEtP6oehNdVo7262WQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1752556743; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=mBOYD/BRxfhWtaua6VPj5OOKr1xWTWrGWTu72sck0KI=;
 b=aLjhjbqNT+PL6WM5NYGq5lz23hhO6cAdWUWM/4krMl+HuUXdXHR54R4cscoz56hPYMSX7
 7ArsxCnMNfq8LsTsuChCqOOqy75VhOqiKIY1GsOPaQG98J8R5tgn/AUXLRQaG/dOZirgnhj
 vk6AF0VmUaUSmS91rjKWoT0exvxyhrY=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=LswMAdu9;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
	by mail.toke.dk (Postfix) with ESMTPS id 848BFB631CC;
	Tue, 15 Jul 2025 07:18:46 +0200 (CEST)
Received: by mail-ej1-x632.google.com with SMTP id
 a640c23a62f3a-ae0df6f5758so875458266b.0;
        Mon, 14 Jul 2025 22:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752556720; x=1753161520;
 darn=lists.bufferbloat.net;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4zr1oPq7+ZKguwFiEtZ6aMX4cfqZgwnXOAOtcyI5UMg=;
        b=LswMAdu9KifMiAWlHZnDqsxNMg3yFKenScWtxFU82n7UhxNxRczRPvR9psxICQVQa3
         QgsaPeAUvjCpo/VgFc+O8UWHgX7sVamdHqlbFmwf8eknTMeemQEpJqpdgbj8yJBi0bjb
         3tVy6tfgLzVdXCV7WGxQm1/toFBsC6NtmHfJn52XcBIkMcs66OvabCkvXNMk3uiyr74x
         N6aEyasGpT+ou+FghI/fKimWRiBJi3Q6AwdD9NvNHbW59uvpV98XcWNc8vH1DpW75mAK
         7H3hVvwZSjmVrRya78Hl8kO4LH+1RSNnlPgQDiK5m34RhoGKT2RUFI5Hv6TnyupuBw0G
         JRcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752556720; x=1753161520;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4zr1oPq7+ZKguwFiEtZ6aMX4cfqZgwnXOAOtcyI5UMg=;
        b=Qi6cLqg5tPwytBtymEv0vfHwLC3jgheMyWup3vehe0EwfVrkldxsqBc+gr4BFSoQI0
         wRJ4T/sBa/7KNNJEAGkEyNgZiWQ6yYByWK9ob/Y65XOba4mDbR5YanHBUqIc9tsbTUb/
         /qQdyC/EAP8Ota/dSgnCna41dmhQiHdQmFrzlMxKZdP51cW0obRS0QQA9Up8UjeX5j09
         BW9JfAq6bB2Qq3B6eTHt3PC/xgvqM57M00LJ3+M+U3ePUAh1mzhWl/ELoWFW07F5Rinp
         p+1tLLdej7mVV9oAj7jWKoRKZzQ2J4wmOb2dSvrao+q5ZKkfXiUhrEZyHVEo6aK0YT4V
         ykIg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV5D2umXABAMbkPbPdumMi75/n+vym9/Jckzf2ZaX9LletbvxHKqs+z8imlqsY37MpPHnZpeWA=@lists.bufferbloat.net,
 AJvYcCVWa4yE925dmX9AjEtcJcHapKUy2kyf5HPVdvjX88UWVkn72JsK/IvDjOUANI26QI73CxjbQQ==@lists.bufferbloat.net,
 AJvYcCWSisPjTnyiODxZ8NkfUwQ3bT7482w1GHx3pSD6elyOaSu7zwwbWPbsFpxvqsSzhICDnbzGR5jkV7LS@lists.bufferbloat.net,
 AJvYcCWvdPC3mItq6t3tuusiI3CjOVYE/KxDrie2pmFKdS3nouHeAq93Os7EaRmpt9fyeQy4Ze3WPug=@lists.bufferbloat.net,
 AJvYcCX6gPnYy4m/U5LGN8Ply8YtjeBWJj+XkxpquXFztORgcT9MffSXpjecDOOcyGKY5WSzj0znQ09JEd4=@lists.bufferbloat.net,
 AJvYcCXjUifwK58zgifDBJTstjxaMsFyFjl+GU0dy9l2LxJ5MRvroubaNK+PhFGzrirfsQAFAwrq@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwDHxPITT9E3fb98HROEGsFNL9UBfYXF4KYvHikRXCP7jNqU/dA
	uQadx4DtmCURaGkPhaDrJ8JPRbwAUtNqsiNzkWlG8xray94ZfVlcmIUducH37SXoNdue10F/SEC
	mnuqGLQBQHnPetFmdhum5rOCe5o7X3sfuSMul
X-Gm-Gg: ASbGncs3XTICXVxHc9iURhuf+CSkyAIAhTcLSl+IPT7dcuxvoAhuWaQr3b4DpibFscq
	R2RsayuMgVz4J7hDuVyqP3aM0QPrzemvfTcShO1vymTWUAhzz/ibIly5vbq8EVexds9GI5W3G9e
	R8dhalHu8ijEU73Lzgr/we7puAABEd72oS8puobPkbhXDwun7bE6YFQhLF8p6oC3eMT1dTF1Hmu
	DGBCb7t7mOa5pwCp6w=
X-Google-Smtp-Source: 
 AGHT+IGlyv5JoaNt00o094+M/aa341P2winTAdJz+NdNGyJjVICsCFHCQ+SQG9we5RsbImypysh9a01Ozu+6tdH+WOM=
X-Received: by 2002:a17:907:3ea4:b0:ae0:da16:f550 with SMTP id
 a640c23a62f3a-ae6fc3a8c72mr1833022566b.49.1752556719814; Mon, 14 Jul 2025
 22:18:39 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAJUtOOiQ1q3bju+5TvH-pMdgMLdfnFquWN9PMFjSw1=GSDociA@mail.gmail.com>
In-Reply-To: 
 <CAJUtOOiQ1q3bju+5TvH-pMdgMLdfnFquWN9PMFjSw1=GSDociA@mail.gmail.com>
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Tue, 15 Jul 2025 07:22:23 +0200
X-Gm-Features: Ac12FXzwD7qESpUAaUXmTk3S30l1eLGN-mKLrMHbxQJPPxAxmwooWCLdhv6WmDY
Message-ID: 
 <CAJUtOOifvFchrFN2SZYW8RvR4vZANDKexoj+x5wv_NP_OQuhDA@mail.gmail.com>
To: libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>,
	codel@lists.bufferbloat.net, bloat-ietf@lists.bufferbloat.net,
	Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Message-ID-Hash: HETUP6N5PHU5TCKLA5QZ6UIMLNX3SJ5W
X-Message-ID-Hash: HETUP6N5PHU5TCKLA5QZ6UIMLNX3SJ5W
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] =?utf-8?q?Fwd=3A_=5Bhackathon=5D_In_Loving_Memory_Dave_T=C3=A4ht_=281?=
	=?utf-8?q?965-2025=29_at_IETF_123_Hackathon?=
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOifvFchrFN2SZYW8RvR4vZANDKexoj+x5wv_NP_OQuhDA@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============0331361999870729005=="

--===============0331361999870729005==
Content-Type: multipart/alternative; boundary="000000000000bbbafc0639f0e8b5"

--000000000000bbbafc0639f0e8b5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Anyone attending IETF 123 in Madrid, Spain, next week? Well, see you there!

All the best,

Frank

Frantisek (Frank) Borsik


*In loving memory of Dave T=C3=A4ht: *1965-2025

https://libreqos.io/2025/04/01/in-loving-memory-of-dave/


https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com


---------- Forwarded message ---------
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Tue, Jul 15, 2025 at 12:46=E2=80=AFAM
Subject: [hackathon] In Loving Memory Dave T=C3=A4ht (1965-2025) at IETF 12=
3
Hackathon
To: <hackathon@ietf.org>


Hello to all,

Many of you knew Dave T=C3=A4ht
<https://libreqos.io/2025/04/01/in-loving-memory-of-dave/> in-person - from
working, interactive with him inside/outside IETF, but there is a chance
some of you didn't, BUT most of you might be using things he was working on
all his adult life - in routers and other parts of your Internet devices.

The purpose of this is to learn about your interactions and work with Dave,
share stories, as well as talk and hack on what we can do improve the state
of bufferbloat, latency and jitter on our networks.

More:
https://wiki.ietf.org/en/meeting/123/hackathon#:~:text=3DI-,n%20Loving%20Me=
mory%20Dave%20T=C3=A4ht%20(1965%2D2025)

See you all in Madrid next week.

All the best,

Frank

Frantisek (Frank) Borsik


*In loving memory of Dave T=C3=A4ht: *1965-2025

https://libreqos.io/2025/04/01/in-loving-memory-of-dave/


https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com

--000000000000bbbafc0639f0e8b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br clear=3D"all"></div><div>Anyone attending IETF 12=
3 in Madrid, Spain, next week? Well, see you there!</div><div><div dir=3D"l=
tr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><br></d=
iv><div>All the best,</div><div><br></div><div><p class=3D"MsoNormal" style=
=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p class=3D"MsoNormal" styl=
e=3D"color:rgb(34,34,34)"><u></u><u></u></p><p class=3D"MsoNormal" style=3D=
"color:rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u></u></p><p class=3D=
"MsoNormal" style=3D"color:rgb(34,34,34)"><br></p><p class=3D"MsoNormal" st=
yle=3D"color:rgb(34,34,34)"><b><u></u>In loving memory of Dave T=C3=A4ht:=
=C2=A0</b><span style=3D"color:rgb(32,33,36)">1965-2025</span></p><p class=
=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><a href=3D"https://libr=
eqos.io/2025/04/01/in-loving-memory-of-dave/" target=3D"_blank">https://lib=
reqos.io/2025/04/01/in-loving-memory-of-dave/</a></p><p class=3D"MsoNormal"=
 style=3D"color:rgb(34,34,34)"><br></p><p class=3D"MsoNormal" style=3D"colo=
r:rgb(34,34,34)"><a href=3D"https://www.linkedin.com/in/frantisekborsik" st=
yle=3D"color:rgb(17,85,204)" target=3D"_blank">https://www.linkedin.com/in/=
frantisekborsik</a><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:=
rgb(34,34,34)">Signal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u></u=
></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mobile:=
 +420775230885<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(3=
4,34,34)">Skype: casioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" style=
=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmail.com" styl=
e=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.borsik@gmail.com</a>=
</p></div></div></div></div></div></div></div></div></div></div></div></div=
></div><br><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D=
"ltr" class=3D"gmail_attr">---------- Forwarded message ---------<br>From: =
<strong class=3D"gmail_sendername" dir=3D"auto">Frantisek Borsik</strong> <=
span dir=3D"auto">&lt;<a href=3D"mailto:frantisek.borsik@gmail.com">frantis=
ek.borsik@gmail.com</a>&gt;</span><br>Date: Tue, Jul 15, 2025 at 12:46=E2=
=80=AFAM<br>Subject: [hackathon] In Loving Memory Dave T=C3=A4ht (1965-2025=
) at IETF 123 Hackathon<br>To:  &lt;<a href=3D"mailto:hackathon@ietf.org">h=
ackathon@ietf.org</a>&gt;<br></div><br><br><div dir=3D"ltr"><div>Hello to a=
ll,</div><div><br></div><div>Many of you knew <a href=3D"https://libreqos.i=
o/2025/04/01/in-loving-memory-of-dave/" target=3D"_blank">Dave T=C3=A4ht</a=
> in-person - from working, interactive with him inside/outside IETF, but t=
here is a chance some of you didn&#39;t, BUT most of you might be using thi=
ngs he was working on all his adult life - in routers and other parts of yo=
ur Internet devices.</div><div><br></div><div>The purpose of this is to lea=
rn about your interactions and work with Dave, share stories, as well as ta=
lk and hack on what we can do improve the state of bufferbloat, latency and=
 jitter on our networks.</div><div><br></div><div>More:</div><div><a href=
=3D"https://wiki.ietf.org/en/meeting/123/hackathon#:~:text=3DI-,n%20Loving%=
20Memory%20Dave%20T=C3=A4ht%20(1965%2D2025)" target=3D"_blank">https://wiki=
.ietf.org/en/meeting/123/hackathon#:~:text=3DI-,n%20Loving%20Memory%20Dave%=
20T=C3=A4ht%20(1965%2D2025)</a><br></div><div><br></div><div>See you all in=
 Madrid next week.</div><div><br></div><div><div dir=3D"ltr" class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the best,</div><div><br=
></div><div><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frank<u></=
u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><u=
></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek (Fr=
ank) Borsik<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,3=
4,34)"><br></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><b><u><=
/u>In loving memory of Dave T=C3=A4ht:=C2=A0</b><span style=3D"color:rgb(32=
,33,36)">1965-2025</span></p><p class=3D"MsoNormal" style=3D"color:rgb(34,3=
4,34)"><u></u><a href=3D"https://libreqos.io/2025/04/01/in-loving-memory-of=
-dave/" target=3D"_blank">https://libreqos.io/2025/04/01/in-loving-memory-o=
f-dave/</a></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><br></p=
><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"https://ww=
w.linkedin.com/in/frantisekborsik" style=3D"color:rgb(17,85,204)" target=3D=
"_blank">https://www.linkedin.com/in/frantisekborsik</a><u></u><u></u></p><=
p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal, Telegram, Whats=
App: +421919416714=C2=A0<u></u><u></u></p><p class=3D"MsoNormal" style=3D"c=
olor:rgb(34,34,34)">iMessage, mobile: +420775230885<u></u><u></u></p><p cla=
ss=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u></u><u=
></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"ma=
ilto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_=
blank">frantisek.borsik@gmail.com</a></p></div></div></div></div></div></di=
v></div></div></div></div></div></div></div></div>
</div></div>

--000000000000bbbafc0639f0e8b5--

--===============0331361999870729005==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

--===============0331361999870729005==--
