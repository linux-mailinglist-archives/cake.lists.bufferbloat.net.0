Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 399E28B659A
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:44 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4D3FB3D577;
	Mon, 29 Apr 2024 18:18:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429136;
	bh=jJ/K2WCoPEbl4xZIug92sjk1vT92P4inD/gugnMYgHI=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=SFWjdiKhrz6ZGImgKdJ46GFMYcymEChS5kR6nfZE0bT9WdQM2IJg43Il6J9wEScFy
	 htH+DWxXiVw0ov6L0CQn/2PselLVFHhdCdN0BagNKFij94X0yXQdWoGRjD80KMYhMP
	 MTZYeXI8OeOl4JZnDnHhg7GFTkWBEipSfBndI4zmTBWT8/b+04VdbNHWwkDciSntwq
	 XMo9DN5UIHQsKrBl9Fn07mjHNqaMmovYHUjVFC5lFWRXnnqZWn5pSU43QDJp6zfoDw
	 UC2y+uCW87YLmJtbMXWGxaooSSpCtvCAZj7GJsBy7/fSZX+r2NWnuGnbPf4pFKPtJh
	 j0JXmHaYk9G2A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com
 [IPv6:2001:4860:4864:20::2e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3CB713B29E;
 Fri, 28 Jul 2023 15:36:38 -0400 (EDT)
Received: by mail-oa1-x2e.google.com with SMTP id
 586e51a60fabf-1bba7717d3bso1766094fac.1; 
 Fri, 28 Jul 2023 12:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690572997; x=1691177797;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=cle9Spggvpxg7iTux0VEYGPxnjrdbNisQoC0WhISPcE=;
 b=WpWdInX1281IWw7OPUiVcYHBfmjCHTKJI2xfjD1zWSnQ3mentZsxvgUwowSryiBzr5
 0LvfFGMUgzJY78Ei2Vi0y/atPL9N7ffWGcrETLRauh0g9WPZIMXi58Klf7HwpkgfSQt7
 rayncPk3uDuBPZaExCs0Fpt2TeiNXggrxuAuPGTEhXiF1mqGkxwI47kdNuUbqneoqlPN
 pkUPUEHZ6GCwUckCZD7BRGOXeRE0MFUUWFsOCFpFiQ3kt2lOMdxU/hgZGl7o7an6bj7W
 WiO04cLZ0LDW1IYCkElO7fBx6JRj0f6IgZKOFB2m6gsXFXa4rN6HXL7KdoUAt1PgUp1m
 uyBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690572997; x=1691177797;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=cle9Spggvpxg7iTux0VEYGPxnjrdbNisQoC0WhISPcE=;
 b=jAQIP3EeuM0IeHr6USabk+QOSDVK3bT/56JgvMw2PMBNc06+hgqF7p+qO1953BAX9S
 4W+/NRFtRbhQdpt+N4SpB14bTwCXDyRD0OO3ZHXQnAJc70t6yUC6oPgAPic0gtlfFn8s
 GgKZ+X38TrRSugPQPggUAFSOSirbS5m5V7mylcB8VN4uTVKGoOxzZvW+hPBLyU9ivd1M
 8AF5PMjtO0bzCAYhHTdECtPruws2rVmjMWGYApwlbfL16p0RC6pNaV9lGLGdNsUqZhRs
 On4xUBjRpFVS7d4dI2sfpU2NVyjX4NJhOUERcwNdvxQPhoIHC49IuBWkkB5iNVimstKB
 aY8w==
X-Gm-Message-State: ABy/qLaT/WbQdr/48EfnMeJFSSl4o35PtOaqZpJ3NCMbTOV2gpoU35Fw
 QaNqkK7g0V8IYCjYk/nzn8mkQ6M5wfBlJ2RPE+8XTuWYmYs=
X-Google-Smtp-Source: APBJJlHa40JX+vbl2x87woQvSm/Fn6MIpph0U7XniPui0V/x5QtjW2iU+Es1uo/miHowfF31wvdMzfjFwkP4DJUtQag=
X-Received: by 2002:a05:6870:d29a:b0:1b0:5290:c95e with SMTP id
 d26-20020a056870d29a00b001b05290c95emr4257627oae.42.1690572997267; Fri, 28
 Jul 2023 12:36:37 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 28 Jul 2023 21:46:33 +0200
Message-ID: <CAJUtOOgw1Q1KezRPr62RjT-_abog0reuYMNwZzxcmK3M2tP=mA@mail.gmail.com>
To: Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, 
 cake@lists.bufferbloat.net, codel@lists.bufferbloat.net, 
 libreqos <libreqos@lists.bufferbloat.net>, make-wifi-fast@lists.bufferbloat.net
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: [Cake] =?utf-8?q?The_Brothers_WISP_181_Podcast_=E2=80=93_?=
	=?utf-8?q?=E2=80=9CThe_Cake_is_not_a_Lie_for_ISPs=E2=80=9D?=
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
Content-Type: multipart/mixed; boundary="===============8232366118216140746=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8232366118216140746==
Content-Type: multipart/alternative; boundary="000000000000f81391060191329c"

--000000000000f81391060191329c
Content-Type: text/plain; charset="UTF-8"

Great episode featuring LibreQoS, Preseem and a few ISPs.

You all will love it!

http://thebrotherswisp.com/index.php/the-brothers-wisp-181-the-cake-is-not-a-lie-for-isps/

Lots of additional links to study in the description.
-- 
All the best,

Frank
Frantisek (Frank) Borsik

https://www.linkedin.com/in/frantisekborsik
Signal, Telegram, WhatsApp: +421919416714
iMessage, mobile: +420775230885
Skype: casioa5302ca
frantisek.borsik@gmail.com

--000000000000f81391060191329c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Great episode featuring LibreQoS, Preseem and a few ISPs.<div dir=3D"auto">=
<br></div><div dir=3D"auto">You all will love it!<div dir=3D"auto"><br></di=
v><div dir=3D"auto"><div><a href=3D"http://thebrotherswisp.com/index.php/th=
e-brothers-wisp-181-the-cake-is-not-a-lie-for-isps/">http://thebrotherswisp=
.com/index.php/the-brothers-wisp-181-the-cake-is-not-a-lie-for-isps/</a></d=
iv><br></div><div dir=3D"auto">Lots of additional links to study in the des=
cription.</div></div><span class=3D"gmail_signature_prefix">-- </span><br><=
div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature=
">All the best,<br><br>Frank<br>Frantisek (Frank) Borsik<br><br><a href=3D"=
https://www.linkedin.com/in/frantisekborsik">https://www.linkedin.com/in/fr=
antisekborsik</a><br>Signal, Telegram, WhatsApp:=C2=A0+421919416714=C2=A0<b=
r>iMessage, mobile:=C2=A0+420775230885<br>Skype: casioa5302ca<br><a href=3D=
"mailto:frantisek.borsik@gmail.com">frantisek.borsik@gmail.com</a><br></div=
>

--000000000000f81391060191329c--

--===============8232366118216140746==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8232366118216140746==--
