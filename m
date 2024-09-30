Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CDE9898ED
	for <lists+cake@lfdr.de>; Mon, 30 Sep 2024 03:19:06 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3CC4B3CB4E;
	Sun, 29 Sep 2024 21:19:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1727659145;
	bh=xQzKWdhjM6RYVi7fKDPFY2RBCtAOmSEc9C/z7ZIgFuA=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=YPL7eiCIwt38XcX2U3oaGdReBPfID9aioBIIVHr/4uEEgKHGiSXY7w7UR6AdllpGs
	 e8Hfcb4abeZN/XttXPZNtcl5YEbos5tSzi0b/gnedkOtFH2fV52EG1tLYxRNnS7qbI
	 f4Dj2errZSajcb+MUT3Dx1S8ZR0xoMsnkpXVQI/MV4N5MQy3GZJkoSWIdMKHv5gt6Y
	 BWa9IxVndFlSKJyn8fZW0td17UkGSEgD91h6BooeTAtWWrt6snXSmtDeEcBeiiBVPw
	 vAmW/t244t0OC7MZ6UV9OZfIQ9nPvt4yeuJtnUz1v4OCUsnimEmuiNcgYwsFH3im5J
	 os/eL9tS9NuPw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com
 [IPv6:2607:f8b0:4864:20::c2d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BD8D23CB40;
 Sun, 29 Sep 2024 21:19:04 -0400 (EDT)
Received: by mail-oo1-xc2d.google.com with SMTP id
 006d021491bc7-5dfad5a9c21so2144156eaf.0; 
 Sun, 29 Sep 2024 18:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1727659143; x=1728263943; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=T/aqJnqNRSv2QN954FgvRTbr0VwpjRa5eaQGzEWbvt0=;
 b=D5NAxkhUuLF7UrrWHhX4ldcmOZkrskCVn+72sBQhwdjVKox5souKwf/bUp7KEdm5Jo
 9iJddLDTFhlG70IEZGRI9KcpdnkV73icb7KH7t9iJSgv8P1Ri/wQegbMpAATu4TK8C9R
 roMruPbFWCTozN7NvFrd7pnLGDCpm3yC9y+1Q5Xvh81J0w00WXttpq3ChQDpuCjD556d
 +3V1qBxvPFtEqNDzy4XDCL9lY54XjF7P+TO7XXijgO0AwZZfuFfs/javPb6zfnN42x8N
 tTfneAKyr0ZlAMzEERvZJxwMa7Wns+wsQXV8ADixzx4bt8wrMdlyJ4p0TNYg7otbXSCN
 crfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727659143; x=1728263943;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=T/aqJnqNRSv2QN954FgvRTbr0VwpjRa5eaQGzEWbvt0=;
 b=pZ4XfxQtxdwEMLZbgQNeapFU3JGEfkx3IJtMT/PiMgmUv26ScL8sST9nfNB/07OaiT
 WJRwTuqgQG4zAmeAc54uBIQ7l31g+k+EpAA2aoNVTVYW4gP2VVJ+YAfqNEJNYc6T5BiG
 /W3cR7N4VAdacYutC1ekEJjbnav9jeMHAVfwWwCLfVHkoK0u4Dk2gbXk5Wz8n3NhL/eS
 BcoOiTYjk9lOwoZlDQz2fgu2gGFRNR/3PqmDKmwbLeUBpeBbVC8JxeXBNZ3Tbg8qFvpy
 dJp/Dz1fccq0l1ntjXWvxmX0QFJT6XHS1S0DFOIPnoiIAxenx/VqlWqGTYYRyv4QoHP5
 XueQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXu8rMTyZT0sJ8uJEOSEgJVb/ynrUZIlwIVL/X/TSAI+u+Px4mLmLH/95ZiwT0+R8sWei9Z@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yw0rnCv4z7iRwHgPW0tRcjSzkHzODBEAfknhV75HEEATG6raSLl
 vEwXo3m+Oy7Qbgju/9J2kSN8sISth8OfR4tZ0mSAUDmctKpvQU+nSxbvMb5wntnxtfKqEDPtpR0
 9cPJmppl/wgtaC3dGrVUH8qDAy1tvZbcn
X-Google-Smtp-Source: AGHT+IFJIDk7BR/4lmnxJPZXx+MtxYRWvtwZpeWEGSyufTmMj1Cp2+sIVe6E7ztwRngG4zF9r/05Z7HNWFLvmSxeT1E=
X-Received: by 2002:a05:6870:808c:b0:287:ef4:6695 with SMTP id
 586e51a60fabf-28710bccd55mr7578467fac.31.1727659143295; Sun, 29 Sep 2024
 18:19:03 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 29 Sep 2024 18:18:50 -0700
Message-ID: <CAA93jw6+7zXg_ofJf8Y0NTvn9We6tZ-j_-mk6h2gs2PnDwXHBw@mail.gmail.com>
To: codel <codel@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] derivative based AQM
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
Cc: s.shu@student.rug.nl, boris.koldehofe@tu-ilmenau.de, s.saleh@rug.nl
Content-Type: multipart/mixed; boundary="===============3181084512340287280=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3181084512340287280==
Content-Type: multipart/alternative; boundary="000000000000877b8f06234bfd0a"

--000000000000877b8f06234bfd0a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

comparisons between codel and cobalt... no sources (sigh)

https://pure.rug.nl/ws/portalfiles/portal/992755079/SSK_NETWORKING24_dAQM_A=
uthors-version.pdf

"In this paper, we propose a novel derivative-based AQM al-
gorithm called dAQM. Building on [4], dAQM uses advanced
traffic features like higher-order derivatives of sojourn time and
buffer size for computing the PDP. The higher-order deriva-
tives provide an insight into the rate of change of network
congestion. For example, the first-order derivative of sojourn
time shows the sharp arrival or departure rate of network
traffic. It also provides an insight into the local minima or
maxima of the sojourn time which aids in estimating the PDP.
The second and third-order derivatives of sojourn time provide
additional insight into the bursty periods of the network traffic."




--=20
Dave T=C3=A4ht CSO, LibreQos

--000000000000877b8f06234bfd0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>comparisons between codel and cobalt... no sources (s=
igh)</div><div><br></div><div><a href=3D"https://pure.rug.nl/ws/portalfiles=
/portal/992755079/SSK_NETWORKING24_dAQM_Authors-version.pdf">https://pure.r=
ug.nl/ws/portalfiles/portal/992755079/SSK_NETWORKING24_dAQM_Authors-version=
.pdf</a></div><div><br></div><div>&quot;<span style=3D"font-family:sans-ser=
if;font-size:16.6043px;white-space:pre"><font color=3D"#000000">In this pap=
er, we propose a novel derivative-based AQM al-</font></span></div><div sty=
le=3D"padding:0px;margin:0px;white-space:pre;font-size:16.6043px;font-famil=
y:sans-serif"><font color=3D"#000000">gorithm called dAQM. Building on [4],=
 dAQM uses advanced</font></div><div style=3D"padding:0px;margin:0px;white-=
space:pre;font-size:16.6043px;font-family:sans-serif"><font color=3D"#00000=
0">traffic features like higher-order derivatives of sojourn time and</font=
></div><div style=3D"padding:0px;margin:0px;white-space:pre;font-size:16.60=
43px;font-family:sans-serif"><font color=3D"#000000">buffer  size  for  com=
puting  the  PDP.  The  higher-order  deriva-</font></div><div style=3D"pad=
ding:0px;margin:0px;white-space:pre;font-size:16.6043px;font-family:sans-se=
rif"><font color=3D"#000000">tives  provide  an  insight  into  the  rate  =
of  change  of  network</font></div><div style=3D"padding:0px;margin:0px;wh=
ite-space:pre;font-size:16.6043px;font-family:sans-serif"><font color=3D"#0=
00000">congestion.  For  example,  the  first-order  derivative  of  sojour=
n</font></div><div style=3D"padding:0px;margin:0px;white-space:pre;font-siz=
e:16.6043px;font-family:sans-serif"><font color=3D"#000000">time  shows  th=
e  sharp  arrival  or  departure  rate  of  network</font></div><div style=
=3D"padding:0px;margin:0px;white-space:pre;font-size:16.6043px;font-family:=
sans-serif"><font color=3D"#000000">traffic.  It  also  provides  an  insig=
ht  into  the  local  minima  or</font></div><div style=3D"padding:0px;marg=
in:0px;white-space:pre;font-size:16.6043px;font-family:sans-serif"><font co=
lor=3D"#000000">maxima of the sojourn time which aids in estimating the PDP=
.</font></div><div style=3D"padding:0px;margin:0px;white-space:pre;font-siz=
e:16.6043px;font-family:sans-serif"><font color=3D"#000000">The second and =
third-order derivatives of sojourn time provide</font></div><div style=3D"p=
adding:0px;margin:0px;white-space:pre;font-size:16.6043px;font-family:sans-=
serif"><font color=3D"#000000">additional insight into the bursty periods o=
f the network traffic.&quot;</font></div><br clear=3D"all"><div><br></div><=
div><br></div><div><br></div><span class=3D"gmail_signature_prefix">-- </sp=
an><br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_s=
ignature"><div dir=3D"ltr"><div>Dave T=C3=A4ht CSO, LibreQos<br></div></div=
></div></div>

--000000000000877b8f06234bfd0a--

--===============3181084512340287280==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3181084512340287280==--
