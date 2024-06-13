Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B44A5907F9E
	for <lists+cake@lfdr.de>; Fri, 14 Jun 2024 01:41:09 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 719D73CB4C;
	Thu, 13 Jun 2024 19:41:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1718322068;
	bh=Sjjo/4OFTru5GUh7G8oXBqgfxRAsWO/U7nfyqZXUBUo=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=SeZBAPLE6btWtpb9c2SMRR99yinj9DiZuOYFjqNVPqyjVGqG6uIr3+RPf66X/XNHb
	 Y1cjsCJthgmr7SFmEELBK/DjmFwMW0O1Vw5z3HhX9ylVXQHwL29oSrZE8ySjDt4Jpa
	 3kmvzchX19bW/VWIqKwUPf9xvvDfkXzs1NB02oTQAl5r7JEI9demewwbxYaunJzoNA
	 sASnbmryX4rYqQsk9QuwOFB+6iTVpi8Qgqs0RsyBb7eogAX43+jqsjjHojhlnuCCpj
	 FjaDPN/VwAts6gnOIuLP0wkgIfMNRGwZyeuMiklRbmsSCnyo4fl0AWN6JcpFKljeq1
	 JWsvhAjp2fbyg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BCC603CB47
 for <cake@lists.bufferbloat.net>; Thu, 13 Jun 2024 19:41:07 -0400 (EDT)
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-4217990f8baso15431685e9.2
 for <cake@lists.bufferbloat.net>; Thu, 13 Jun 2024 16:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1718322066; x=1718926866; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=8XY4ZeFyK/+ix9pWcrbSrmdLp9gVlhqobBZrBFyPKe8=;
 b=I0ViX2Ki5lHJZkskpbTMbvS17vCmIXp3/z5x3lDyL4P2/DRQtWDSfvWq74AG03qrkQ
 jto3pPT5kx/qbF6LRscSJTmURqTUKxBXD/ytf9NzUYBN3sQE8Z/bP9VljsCrNfQhxbtk
 FMU6tulPnpujrK+k8RSMENsm4JpHTord4q2kxDhELRE52dybf/dnLgmAb633jK+9IIhz
 wIi2HEveNXDpfjdB/1SANueLq+kmlubI45uifePDTP+NFLaNWcJv8I4Xxuhk+M2ieMvI
 9wO+mSMrJodee3dsKexwPfvIM5Qra3d4IPMkiaOovVXSJitJ4c3du2MipMxt2la8G6bJ
 1AWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718322066; x=1718926866;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=8XY4ZeFyK/+ix9pWcrbSrmdLp9gVlhqobBZrBFyPKe8=;
 b=Z/oQIFaXKhpufKRViOohja0gfNdisT1AMj72lb+VkYxCTlBOsVaDIuZCmRzXxBaGOK
 aQLY6dG/AzVE9FnzIVTx+nQlVzflSNToT5RYZhz/93URt8Q2tMV3PpUiIHbMpjv36vem
 Czy3hveBaKbAFQwtYGR7YrLTinIEOzwnIRzVigXgxxTtoEpjMddU2vceIoODOnp8rksP
 mL7+20TqOCPHkrnAuI+OcBidNTbv6PN+DXf7yMJiKf6h5YNDU7WM3QqrENwzWkTVSJhP
 atqYWc+qXOLfBEsuGThGUowPtHP2gNI9X8+XEdIX4v6qsoTJxGSLjxtQ9l7DZV8Y82yd
 3q4w==
X-Gm-Message-State: AOJu0YwHTGmxdMYWzqlk7SbFYRsAKTeVJjye5Q6mpAJ8ajHBRtCdtFgm
 //wc1h6RRrBePvIc0mz6RdSqk0IuxxpTuMhjkkldIcMylE9GzoIG7VqpX4El2wKCJSTzBrypi//
 n/W6dPfCarLkJwIHxmJAzoNF+bGEue8CX
X-Google-Smtp-Source: AGHT+IEoUan3N7m/eC6c86km0KXf+yVG5ewoCt0HBSnD4ATQsqXewlre1ux4q4Dk4w6ksciHU9yRZ0hpjKf2VTfo/x8=
X-Received: by 2002:a05:600c:35d4:b0:422:aca:f87a with SMTP id
 5b1f17b1804b1-42304821314mr10476265e9.7.1718322066015; Thu, 13 Jun 2024
 16:41:06 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 13 Jun 2024 16:40:55 -0700
Message-ID: <CAA93jw6yW0rkzfGhsrjHP3jDk1q63_GGqwEFYUy+6WN8HV7G_A@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] cobalt, compared
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
Content-Type: multipart/mixed; boundary="===============4556709235443677682=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4556709235443677682==
Content-Type: multipart/alternative; boundary="0000000000005aca9a061ace08a9"

--0000000000005aca9a061ace08a9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

https://www.tu-ilmenau.de/fileadmin/Bereiche/IA/vsbs/Publikationen/2024/SSK=
_NOMS24_AdaptiveAQM_Authors-version.pdf


--=20
https://www.linkedin.com/feed/update/urn:li:activity:7203400057172180992/
Donations Drive.
Dave T=C3=A4ht CSO, LibreQos

--0000000000005aca9a061ace08a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div><a href=3D"https://www.tu-ilmenau.de/f=
ileadmin/Bereiche/IA/vsbs/Publikationen/2024/SSK_NOMS24_AdaptiveAQM_Authors=
-version.pdf">https://www.tu-ilmenau.de/fileadmin/Bereiche/IA/vsbs/Publikat=
ionen/2024/SSK_NOMS24_AdaptiveAQM_Authors-version.pdf</a><br></div><br clea=
r=3D"all"><div><br></div><span class=3D"gmail_signature_prefix">-- </span><=
br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signa=
ture"><div dir=3D"ltr"><div><a href=3D"https://www.linkedin.com/feed/update=
/urn:li:activity:7203400057172180992/" target=3D"_blank">https://www.linked=
in.com/feed/update/urn:li:activity:7203400057172180992/</a></div><div>Donat=
ions Drive.</div><div>Dave T=C3=A4ht CSO, LibreQos<br></div></div></div></d=
iv>

--0000000000005aca9a061ace08a9--

--===============4556709235443677682==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4556709235443677682==--
