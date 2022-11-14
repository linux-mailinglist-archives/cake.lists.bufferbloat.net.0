Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A84628C18
	for <lists+cake@lfdr.de>; Mon, 14 Nov 2022 23:30:06 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6D3AF3CB42;
	Mon, 14 Nov 2022 17:30:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1668465005;
	bh=5mSAI1IlCuPEkMEVkP6Cb+z8RFyhr2q/qTARkJaw200=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=obpQA0vh4RltP2N7gnOzIJcrdGUOJji8UOxDJc3e6jvuAPf5BG2AnWGWDIbMnatPz
	 GOMOEjzTJWYrfB4PLesWv0xscErbWiIgsB8KnK6Tzv/axs4rWGXNCcjqjsShw2T3Yq
	 CBVVEDJubgF5UYM7I8D+uql6zrSEQUPt4awzpdwF5pxJFK/22sXc4iXNaouxCWVEPI
	 IK9rOJL2he06OEkHOoME4Xl3Lmm5yohJa9oEDRhppshr0gjStrC8ACwVYv0TPNElSx
	 dBLgCUFOw3skU/krvSxVaO+uTDkux4LitF3HkJcjRmv7LLqbzqdLjsoQVC4yGcxLal
	 aecSWoo5iBGnw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EA8CE3B29D;
 Mon, 14 Nov 2022 17:30:03 -0500 (EST)
Received: by mail-wr1-x433.google.com with SMTP id o4so20910007wrq.6;
 Mon, 14 Nov 2022 14:30:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=7Ngup0uAY+vME7bI9oh7mTx1sQAx+ys4sBlNwNnADkg=;
 b=Ipu67Gizxdri+Cp1YuyXrIwYj7U9zghfUpMYOidfnmArS5e7g9PAdyjS1/HZXTaDhC
 EvvtrfPxGk9M0EgurFNsPKJVT7FJhiCwRaSnFYCEm3hRrw45S9Uvus+EgBII4Zs39Qgi
 gwvzIas0SpzmsNu2+ihGLKWgtzQEGJyl2bSXOQg10pKpFuW27k9wCXXCdxn1CDYB/nd2
 wGy02WierdgqFFZBatNH4qbwCTBz+cKjG+h/c9wLCiDShKcUdBptClw8vydxfOXRVyJB
 9hhfUfF6pbHpYdbHUbWhnPOvE5iLantH8LnqhQzY5oGBMOPYjMFN5ZN1zkWQh73z6cON
 tVVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7Ngup0uAY+vME7bI9oh7mTx1sQAx+ys4sBlNwNnADkg=;
 b=11OYMyIwaILsuaSVsFYymLRb9a/PiUjH+G4c0AAb8N4yg2FroI95LXRH5pJhY7Vz3Y
 g+SUvwn9o20ZVoDfPHNIG6ikjcgShMYPfK1QbfXI/40na7nl1buj8572yNWkS12BcjMP
 sdl2kTM1c1/Nj2g+kMAUZmlntUc5vZ+In0UK2NhOu0hx00wX6lhVWDoO044PS9On2/pp
 63OBV53XJllAS2jIu6fVOfNyspNOznvwCIRqqRj6hSgtEzsKphXtzbZNTE9P/EXYCbhn
 6hkYzB5FpbvsccPs8SRraB/OTtFRqZTaqf3Uz8pCWeNPYJZ9AT/dmWAe5k5yufjb4Uva
 ZixQ==
X-Gm-Message-State: ANoB5pmd4N2q/ToxAnnOCSwmkwvLOQrFH+Y/+mFmPBUD36WyELC0ZexF
 II/OjUid1QeNt6868+UnoP5G/FEqUteBiZog8AGhp4Ri4Q4=
X-Google-Smtp-Source: AA0mqf7G7OFyZNMSOgeSK2rPjEBSdk0ktBi73H5P2uSbjS4cpTgYCxqWJMLOhP3YyjmIdg/BhgYRp8GFYxMIwUHYk1w=
X-Received: by 2002:a5d:4f8a:0:b0:230:55fc:5de1 with SMTP id
 d10-20020a5d4f8a000000b0023055fc5de1mr8773820wru.500.1668465002165; Mon, 14
 Nov 2022 14:30:02 -0800 (PST)
MIME-Version: 1.0
References: <010001847838d26f-033a5dfa-7043-47f6-acfe-1fa44c054f07-000000@email.amazonses.com>
In-Reply-To: <010001847838d26f-033a5dfa-7043-47f6-acfe-1fa44c054f07-000000@email.amazonses.com>
Date: Mon, 14 Nov 2022 14:29:48 -0800
Message-ID: <CAA93jw6rsTWPL0PwQuqr3n6tdZPf1w6NSTa3FCWf__=Uyb16-g@mail.gmail.com>
To: libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: Yuriy.Sentrium & vyos
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: multipart/mixed; boundary="===============3101799292222549483=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3101799292222549483==
Content-Type: multipart/alternative; boundary="000000000000c63aae05ed75c7a5"

--000000000000c63aae05ed75c7a5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

SWYgYW55b25lIHdvdWxkIGxpa2UgdG8gZGlzY3VzcyB0aGUgc3RhdGUgb2YgY2FrZS9zbWFydCBx
dWV1ZXMgd2l0aCB2eW9zLA0KdGhleSB1c2Ugc2xhY2ssIHdoaWNoIEknbSBraW5kIG9mIGFsbGVy
Z2ljIHRvLg0KDQoNCg0KLS0tLS0tLS0tLSBGb3J3YXJkZWQgbWVzc2FnZSAtLS0tLS0tLS0NCkZy
b206IFNsYWNrIDxuby1yZXBseS11aDk5eEs0UFV4SE1hc1J5UFRpV0RNaXBAc2xhY2suY29tPg0K
RGF0ZTogTW9uLCBOb3YgMTQsIDIwMjIgYXQgMjoxOCBQTQ0KU3ViamVjdDogWXVyaXkuU2VudHJp
dW0gaGFzIGludml0ZWQgeW91IHRvIHdvcmsgd2l0aCB0aGVtIGluIFNsYWNrDQpUbzogPGRhdmUu
dGFodEBnbWFpbC5jb20+DQoNCg0KSm9pbiB5b3VyIHRlYW0gb24gU2xhY2suICpZdXJpeS5TZW50
cml1bSogKHl1cml5QHNlbnRyaXVtLmlvKSBoYXMgaW52aXRlZA0KeW91IHRvIGpvaW4gdGhlaXIg
d29ya3NwYWNlLCAqVnlPUyBQbGF0Zm9ybSosIGFzIGEgZ3Vlc3QuDQog4oCMIOKAjCDigIwg4oCM
IOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMICDigIwg4oCMIOKAjCDigIwg4oCM
IOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwNCiDigIwg4oCMIOKAjCDigIwg4oCMIOKA
jCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwgIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKA
jCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjA0KIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDi
gIwg4oCMIOKAjCDigIwg4oCMIOKAjCAg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDi
gIwg4oCMIOKAjCDigIwg4oCMDQog4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg
4oCMIOKAjCDigIwg4oCMICDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg
4oCMIOKAjCDigIwNCiDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCM
IOKAjCDigIwgIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCM
IOKAjA0KIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKA
jCAg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMDQog
4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMICDigIwg
4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwg4oCMIOKAjCDigIwNCltpbWFnZTog
c2xhY2sgbG9nb11Kb2luIHlvdXIgdGVhbSBvbiBTbGFjaw0KDQoqWXVyaXkuU2VudHJpdW0qICh5
dXJpeUBzZW50cml1bS5pbykgaGFzIGludml0ZWQgeW91IHRvIGpvaW4gdGhlaXINCndvcmtzcGFj
ZSwgKlZ5T1MgUGxhdGZvcm0qLCBhcyBhIGd1ZXN0Lg0KV29ya3NwYWNlIG5hbWU6IFZ5T1MgUGxh
dGZvcm0NClZ5T1MgUGxhdGZvcm12eW9zLnNsYWNrLmNvbQ0KSm9pbiBOb3cNCjxodHRwczovL2pv
aW4uc2xhY2suY29tL3Qvdnlvcy9pbnZpdGUvZW5RdE5ETTJOemN6TnpnMU1Ea3dNUzFtWm1Oa1pE
UmhaalppTVRJd05HVmlORGhrWldWbE1tRTVNMkl3TUdRNFpqWmpNamd3T0RVNFpUZGhObU5pTVRZ
Mk5EVmtOMkZtTlRNeVl6SmlOVFV5P3g9eC1wMzEzMjE5NjUzNjk4LTMxMjY3MDcxNDg2NS00MzY3
NzM3ODk0OTMzPg0KV2hhdCBpcyBTbGFjaz8NCg0KU2xhY2sgaXMgYSBtZXNzYWdpbmcgYXBwIGZv
ciB0ZWFtcywgYSBwbGFjZSB5b3UgY2FuIGNvbGxhYm9yYXRlIG9uIHByb2plY3RzDQphbmQgb3Jn
YW5pemUgY29udmVyc2F0aW9ucyDigJQgc28geW91IGNhbiB3b3JrIHRvZ2V0aGVyLCBubyBtYXR0
ZXIgd2hlcmUgeW91DQphcmUuIExlYXJuIG1vcmUgYWJvdXQgU2xhY2sNCjxodHRwczovL3Z5b3Mu
c2xhY2suY29tL3gtcDMxMzIxOTY1MzY5OC0zMTI2NzA3MTQ4NjUtNDM2NzczNzg5NDkzMy8/dXRt
X21lZGl1bT1lbWFpbCZ1dG1fc291cmNlPWludml0YXRpb24tdG8tam9pbj4NCltpbWFnZTogc2xh
Y2sgbG9nb10gPGh0dHBzOi8vdHdpdHRlci5jb20vc2xhY2tocT4NCjxodHRwczovL2ZhY2Vib29r
LmNvbS9zbGFja2hxPg0KPGh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9jb21wYW55L3Rpbnktc3Bl
Yy1pbmMvPg0KT3VyIEJsb2cgPGh0dHBzOi8vc2xhY2tocS5jb20+ICAgfCAgIFBvbGljaWVzIDxo
dHRwczovL3NsYWNrLmNvbS9sZWdhbD4NCiAgIHwgICBIZWxwIENlbnRlciA8aHR0cHM6Ly9zbGFj
ay5jb20vaGVscD4gICB8ICAgU2xhY2sgQ29tbXVuaXR5DQo8aHR0cHM6Ly9zbGFjay5jb20vY29t
bXVuaXR5Pg0KDQrCqTIwMjIgU2xhY2sgVGVjaG5vbG9naWVzLCBMTEMsIGEgU2FsZXNmb3JjZSBj
b21wYW55Lg0KNTAwIEhvd2FyZCBTdHJlZXQsIFNhbiBGcmFuY2lzY28sIENBIDk0MTA1IFVTQQ0K
DQpBbGwgcmlnaHRzIHJlc2VydmVkLg0KDQoNCi0tIA0KVGhpcyBzb25nIGdvZXMgb3V0IHRvIGFs
bCB0aGUgZm9sayB0aGF0IHRob3VnaHQgU3RhZGlhIHdvdWxkIHdvcms6DQpodHRwczovL3d3dy5s
aW5rZWRpbi5jb20vcG9zdHMvZHRhaHRfdGhlLW11c2hyb29tLXNvbmctYWN0aXZpdHktNjk4MTM2
NjY2NTYwNzM1MjMyMC1GWHR6DQpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQw0K
--000000000000c63aae05ed75c7a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If anyone would like to discuss the state of cake/sma=
rt queues with vyos, they use slack, which I&#39;m kind of allergic to.</di=
v><div><br></div><div><br></div><div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">---------- Forwarded message ---------<br>Fr=
om: <b class=3D"gmail_sendername" dir=3D"auto">Slack</b> <span dir=3D"auto"=
>&lt;<a href=3D"mailto:no-reply-uh99xK4PUxHMasRyPTiWDMip@slack.com">no-repl=
y-uh99xK4PUxHMasRyPTiWDMip@slack.com</a>&gt;</span><br>Date: Mon, Nov 14, 2=
022 at 2:18 PM<br>Subject: Yuriy.Sentrium has invited you to work with them=
 in Slack<br>To:  &lt;<a href=3D"mailto:dave.taht@gmail.com">dave.taht@gmai=
l.com</a>&gt;<br></div><br><br><div class=3D"msg8468589047303306224"><u></u=
><div><div class=3D"m_8468589047303306224preheader" style=3D"font-size:1px;=
display:none!important">Join your team on Slack. <b>Yuriy.Sentrium</b> (<a =
href=3D"mailto:yuriy@sentrium.io" target=3D"_blank">yuriy@sentrium.io</a>) =
has invited you to join their workspace, <b>VyOS Platform</b>, as a guest.<=
/div><div style=3D"display:none;max-height:0px;overflow:hidden"> =C2=A0=E2=
=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=
=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=
=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C =C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C =C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=
=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=
=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C =C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C =C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C =C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=
=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=
=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C =C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C =C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=
=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=
=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=
=A0 =C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=
=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=
=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C =C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C =C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=
=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=
=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C =
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C =C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C =C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=
=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=
=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0 </=
div><table style=3D"background-color:#ffffff;padding-top:20px;color:#434245=
;width:100%;border:0;text-align:center;border-collapse:collapse" class=3D"m=
_8468589047303306224background_main"><tbody><tr><td style=3D"vertical-align=
:top;padding:0"><center><table id=3D"m_8468589047303306224body" style=3D"bo=
rder:0;border-collapse:collapse;margin:0 auto;background:white;border-radiu=
s:8px;margin-bottom:16px"><tbody><tr><td style=3D"width:546px;vertical-alig=
n:top;padding-top:32px"><div style=3D"max-width:600px;margin:0 auto"><img s=
tyle=3D"margin-top:0;margin-right:0;margin-bottom:32px;margin-left:0px;padd=
ing-right:30px;padding-left:30px" src=3D"https://vyos.slack.com/x-p31321965=
3698-312670714865-4367737894933/img/slack_logo_240.png" alt=3D"slack logo" =
width=3D"120" height=3D"36"><h1 style=3D"font-size:30px;padding-right:30px;=
padding-left:30px">Join your team on Slack</h1><p style=3D"font-size:17px;p=
adding-right:30px;padding-left:30px"><b>Yuriy.Sentrium</b> (<a href=3D"mail=
to:yuriy@sentrium.io" target=3D"_blank">yuriy@sentrium.io</a>) has invited =
you to join their workspace, <b>VyOS Platform</b>, as a guest.</p><div styl=
e=3D"padding-right:30px;padding-left:30px;padding-bottom:30px"><h4 style=3D=
"display:none">Workspace name: VyOS Platform</h4><table style=3D"text-align=
:center;table-layout:fixed;border:1px solid #a0a0a2;border-radius:8px;paddi=
ng:40px 0;margin-top:20px;width:100%;border-collapse:separate"><tbody><tr><=
td style=3D"vertical-align:middle"><img src=3D"https://avatars.slack-edge.c=
om/2022-11-11/4358901129028_7f37663985299006978f_88.png" style=3D"height:38=
px;width:38px;min-width:38px;border-radius:4px;color:#ffffff;font-size:18px=
;line-height:38px;margin:auto" alt=3D""><h3 style=3D"font-weight:900;paddin=
g-top:10px;margin-bottom:7px;font-size:21px;font-size:21px;margin-bottom:2p=
x;width:70%;margin:auto;text-align:center;margin-top:0">VyOS Platform</h3><=
h4 style=3D"margin-bottom:2px;font-size:17px;margin-bottom:25px"><a style=
=3D"white-space:nowrap;color:#717274;text-decoration:none!important">vyos.s=
lack.com</a></h4><table style=3D"width:100%;text-align:center"><tbody><tr s=
tyle=3D"width:100%"><td style=3D"width:100%"><span style=3D"display:inline-=
block;border-radius:4px;background-color:#611f69" class=3D"m_84685890473033=
06224button_link_wrapper m_8468589047303306224plum"><a class=3D"m_846858904=
7303306224button_link m_8468589047303306224plum m_8468589047303306224restyl=
e_button" href=3D"https://join.slack.com/t/vyos/invite/enQtNDM2NzczNzg1MDkw=
MS1mZmNkZDRhZjZiMTIwNGViNDhkZWVlMmE5M2IwMGQ4ZjZjMjgwODU4ZTdhNmNiMTY2NDVkN2F=
mNTMyYzJiNTUy?x=3Dx-p313219653698-312670714865-4367737894933" style=3D"bord=
er-top:13px solid;border-bottom:13px solid;border-right:24px solid;border-l=
eft:24px solid;border-color:#611f69;border-radius:4px;background-color:#611=
f69;color:#ffffff;font-size:16px;line-height:18px;word-break:break-word;fon=
t-weight:bold;font-size:14px;border-top:20px solid;border-bottom:20px solid=
;border-color:#611f69;line-height:14px;letter-spacing:0.8px;text-transform:=
uppercase;box-sizing:border-box;display:inline-block;text-align:center;font=
-weight:900;text-decoration:none!important" target=3D"_blank">Join Now</a><=
/span></td></tr></tbody></table></td></tr></tbody></table></div><h1 style=
=3D"font-size:24px;padding-right:30px;padding-left:30px">What is Slack?</h1=
><p style=3D"font-size:17px;padding-right:30px;padding-left:30px">Slack is =
a messaging app for teams, a place you can collaborate on projects and orga=
nize conversations =E2=80=94 so you can work together, no matter where you =
are. <a style=3D"text-decoration:underline!important" href=3D"https://vyos.=
slack.com/x-p313219653698-312670714865-4367737894933/?utm_medium=3Demail&am=
p;utm_source=3Dinvitation-to-join" target=3D"_blank">Learn more about Slack=
</a></p></div></td></tr></tbody></table></center></td></tr><tr><td class=3D=
"m_8468589047303306224email_footer" style=3D"font-size:15px;color:#717274;t=
ext-align:center;width:100%"><center><table style=3D"margin:20px auto 0;bac=
kground-color:white;border:0;text-align:center;border-collapse:collapse"><t=
body><tr><td style=3D"width:546px;vertical-align:top;padding:0px"><div styl=
e=3D"max-width:600px;margin:0 auto"><div style=3D"padding:0 50px"><table><t=
body><tr><td style=3D"vertical-align:top;text-align:left"><img style=3D"mar=
gin-top:0;margin-right:0;margin-bottom:32px;margin-left:0px" src=3D"https:/=
/vyos.slack.com/x-p313219653698-312670714865-4367737894933/img/slack_logo_2=
40.png" alt=3D"slack logo" width=3D"120" height=3D"36"></td><td style=3D"ve=
rtical-align:top;text-align:right"><a href=3D"https://twitter.com/slackhq" =
style=3D"margin-left:32px" target=3D"_blank"><img src=3D"https://a.slack-ed=
ge.com/b8be608/marketing/img/icons/icon_colored_twitter.png" title=3D"Twitt=
er" width=3D"32" height=3D"32"></a><a href=3D"https://facebook.com/slackhq"=
 style=3D"margin-left:32px" target=3D"_blank"><img src=3D"https://a.slack-e=
dge.com/b8be608/marketing/img/icons/icon_colored_facebook.png" title=3D"Fac=
ebook" width=3D"32" height=3D"32"></a><a href=3D"https://www.linkedin.com/c=
ompany/tiny-spec-inc/" style=3D"margin-left:32px" target=3D"_blank"><img sr=
c=3D"https://a.slack-edge.com/b8be608/marketing/img/icons/icon_colored_link=
edin.png" title=3D"LinkedIn" width=3D"32" height=3D"32"></a></td></tr></tbo=
dy></table><div style=3D"font-size:12px;opacity:0.5;color:#696969;text-alig=
n:left;line-height:15px;margin-bottom:50px;text-align:left"><a class=3D"m_8=
468589047303306224footer_link" href=3D"https://slackhq.com" style=3D"color:=
#696969!important" target=3D"_blank">Our Blog</a>=C2=A0=C2=A0=C2=A0|=C2=A0=
=C2=A0=C2=A0<a class=3D"m_8468589047303306224footer_link" href=3D"https://s=
lack.com/legal" style=3D"color:#696969!important" target=3D"_blank">Policie=
s</a>=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A0<a href=3D"https://slack.com/help=
" class=3D"m_8468589047303306224footer_link" style=3D"color:#696969!importa=
nt" target=3D"_blank">Help Center</a>=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A0<=
a href=3D"https://slack.com/community" class=3D"m_8468589047303306224footer=
_link" style=3D"color:#696969!important" target=3D"_blank">Slack Community<=
/a><br><br><div>=C2=A92022 Slack Technologies, LLC, a Salesforce company.<b=
r>500 Howard Street, San Francisco, CA 94105 USA</div><br>All rights reserv=
ed.</div></div></div></td></tr></tbody></table></center></td></tr></tbody><=
/table></div></div></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><=
div>This song goes out to all the folk that thought Stadia would work:</div=
><div><a href=3D"https://www.linkedin.com/posts/dtaht_the-mushroom-song-act=
ivity-6981366665607352320-FXtz" target=3D"_blank">https://www.linkedin.com/=
posts/dtaht_the-mushroom-song-activity-6981366665607352320-FXtz</a></div><d=
iv>Dave T=C3=A4ht CEO, TekLibre, LLC <br></div></div></div></div></div>

--000000000000c63aae05ed75c7a5--

--===============3101799292222549483==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3101799292222549483==--
