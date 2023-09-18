Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 368FF7A3F14
	for <lists+cake@lfdr.de>; Mon, 18 Sep 2023 03:06:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DD2D63CB39;
	Sun, 17 Sep 2023 21:05:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1694999158;
	bh=tq0cXIaMxXp1EFoSlNFGEWNbHUaaeKgULdWPBvMX0q0=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=GbtQQxIANuR1W4AO4iqF82EplrDApqCdZbjDcXDDAduA+rWaDQvIb3wOfwEDqDBFh
	 1ITr7Ji1ItAjETC8+33TPI+ZlrSqNKDn4NuH6uPdetVy2uG0tOUldLSNa1e43UOV5E
	 IIrYh2QdmhU6ioDYWFKmhr1sQ6zcpYMwDmfGuxzeDsY/RhFXQMSUkhpVr+wfIAdmZ4
	 pXStzGA3E/524sHUF7qHGhsW/W9g3rsZ4rYqIanVwUvUVMbwkS4IqmDqXc9q5kLyF/
	 czx52/uqYD0MwglLUhL/Bw2nrRTRDGt1Kq9ddp1hCBLpV7ARHRDGKVEQ724JJWbYLY
	 JYrHBMFRj9pEg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com
 [IPv6:2607:f8b0:4864:20::533])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 28E653B29E
 for <cake@lists.bufferbloat.net>; Sun, 17 Sep 2023 21:05:57 -0400 (EDT)
Received: by mail-pg1-x533.google.com with SMTP id
 41be03b00d2f7-578638a736aso688741a12.0
 for <cake@lists.bufferbloat.net>; Sun, 17 Sep 2023 18:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1694999155; x=1695603955; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=xriJmOIBF2VNsUb1pXgteTewTIk2WUUjFUiJS1BcIXA=;
 b=hhv975cITf9tIQpwODc+FTb4IucFjbCkPwuBn3sx1d8Jkhy9xhkmjUTPKv95FfXuhr
 Es4GaWprEQJVbsAmTx/Q+ZuXoJ7IvKL6yJR2Knnz5+ZQiFxbXiyb5Gl4/1j+EMUysQoa
 KfgG3vXXz8vSRSv5xz9xx+B36WCfRk94+/VOLoHbFAz1oRXZ6TuLv0w9NEcqctM3ApCQ
 Yho4bXKDRKNa/tcEckrja1vXyjGq4kb0T/orfYnePK05hjz0S+HH7mtnN31e8XR3PmEY
 fj64YlA7szJPp1T7YVZ22yHo6imz84T2t1Cnh7Minv7MFCyt4VwQm4LYCPQqHgS46yCB
 xirA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694999155; x=1695603955;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=xriJmOIBF2VNsUb1pXgteTewTIk2WUUjFUiJS1BcIXA=;
 b=JoJuoNhZyyIqubHdDGBe3hD/tJuXrHVB6yuaJklpy4H4bVuWPVA1gstyB/+qLcVail
 OVdV7NcYctAbyqKR9NUJgf8gcNQ2rXaszuGOIVZF+FDV4+FdN5UXuRM3jUDeavKJVyZm
 Gyb6AdjBO08QZPd9mds49VnhJyVKXCyQpHAZAwF/g2x5y3aLK097+vbHvYyVHw+KM70z
 UX9NICf1uOPQ3qUI/W5A59ck7s+GhLuUxmVHAUXOunwvCo1/DpLv9ZkV4Ilheut+o/jj
 c/uM7qToNrgBNRVCvyWxiWMOV2TF0VwzcZZR7hNqBI01TiEqeIIZYqLQoVtrTzvQj1k5
 jP2g==
X-Gm-Message-State: AOJu0YzjhZrnr8sDJOvPfcC5+XehJNmZ5ggzKNLZr3Gom9RTlQPg6PzG
 +WZuDqJDvqovVicA9NwK1itm+lj+JlWmPMjUwnu245XSWns=
X-Google-Smtp-Source: AGHT+IHbM+C/z2PQyqNiDf6+X/P+X7R0jUuG80BDgQF+IwZgJ7RGH/+dl7Bw9CMprEo0VKxxg/+2HuKm2lB1IkVrX6A=
X-Received: by 2002:a17:90a:d596:b0:26b:5461:8dd5 with SMTP id
 v22-20020a17090ad59600b0026b54618dd5mr5327593pju.42.1694999155082; Sun, 17
 Sep 2023 18:05:55 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 17 Sep 2023 18:05:43 -0700
Message-ID: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] some comprehensive arm64 w/cake results
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
Content-Type: multipart/mixed; boundary="===============2969403060394917095=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2969403060394917095==
Content-Type: multipart/alternative; boundary="000000000000888c38060597be4e"

--000000000000888c38060597be4e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A huge thanks to dave seddon for buckling down and doing some comprehensive
testing of a variety of arm64 gear!

https://docs.google.com/document/d/1HxIU_TEBI6xG9jRHlr8rzyyxFEN43zMcJXUFlRu=
hiUI/edit#heading=3Dh.bpvv3vr500nw

--=20
Oct 30: https://netdevconf.info/0x17/news/the-maestro-and-the-music-bof.htm=
l
Dave T=C3=A4ht CSO, LibreQos

--000000000000888c38060597be4e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div>A huge thanks to dave seddon for buckling d=
own and doing some comprehensive testing of a variety of arm64 gear!<div><b=
r clear=3D"all"><div><a href=3D"https://docs.google.com/document/d/1HxIU_TE=
BI6xG9jRHlr8rzyyxFEN43zMcJXUFlRuhiUI/edit#heading=3Dh.bpvv3vr500nw">https:/=
/docs.google.com/document/d/1HxIU_TEBI6xG9jRHlr8rzyyxFEN43zMcJXUFlRuhiUI/ed=
it#heading=3Dh.bpvv3vr500nw</a><br></div><div><br></div><span class=3D"gmai=
l_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature=
" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Oct 30: <a href=
=3D"https://netdevconf.info/0x17/news/the-maestro-and-the-music-bof.html" t=
arget=3D"_blank">https://netdevconf.info/0x17/news/the-maestro-and-the-musi=
c-bof.html</a></div><div>Dave T=C3=A4ht CSO, LibreQos<br></div></div></div>=
</div></div>

--000000000000888c38060597be4e--

--===============2969403060394917095==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2969403060394917095==--
