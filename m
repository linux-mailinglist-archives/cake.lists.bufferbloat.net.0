Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7BA31ED6A
	for <lists+cake@lfdr.de>; Thu, 18 Feb 2021 18:40:40 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7CE1B3CB38;
	Thu, 18 Feb 2021 12:40:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1613670039;
	bh=vJetSlhbIxQ670qB1j7vVRKvD2E4U2i8f7w9XQKwGZk=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=D0D/CiZ+fH/JmtY2AtYtv5vJCUr0bSkPih81bZoQmJj4yCGqAKxAiFKxsp5LiWyyC
	 EZpm16wMRqg7NuWo0FAzXqiLKq4ijzv2RtoqCijFP1629wcIU5Hr6vUbxnSjDHDIlu
	 cFCQLQRPQM1zLlxwBi3DFvaXTbcpgox6XbaCv/gE5nxc9xG8wcd0e7OzUpF3pAAQZ5
	 9D7CIqjO/82+heW4TBkOEjUG9MvbAZ8dzXuu/TelMguLTEgQMr89oGzEbTzyTcdS1e
	 b+EdPeZ7wNV8egDtECr5KW46aL4FoA5/4DkDBQsemPKvOstdJwTU7BiAqs/OUu465t
	 hD8RfXu32gL2A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6046E3B29D
 for <cake@lists.bufferbloat.net>; Thu, 18 Feb 2021 12:40:38 -0500 (EST)
Received: by mail-lj1-x230.google.com with SMTP id r23so6699702ljh.1
 for <cake@lists.bufferbloat.net>; Thu, 18 Feb 2021 09:40:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=/4coXrdjb9muH5/WlPi+B9jIBGKhlzTvYR/x4Pz2ywc=;
 b=vPut86Sc9WvXWY7Pb1oXTDGN1EqGy9wkYRqOrUm9gEHlhzzLg8/yEPF9uJTkqupyJR
 YUE0V2iH59MQKPv2xDJFUKS8Mpv20JLHIjxLciK1XT05puC2YZTwwdOVw6cL56Ufi9aJ
 fUgHM/3Gn9vujyGquvUDieXrCGiiI+7w8biwZc7H7fta/SZEqyirIv4h1i/nPcBSqJ9s
 Y1qqwcyiWKKqJBIVWF6JwZZ9W12r233AK850lvYaKL0MpaDLC8AvVEKUJHgKeQ5caucA
 NW6f3MeNGVgsxSepwSZhNxqePBwqnQIFJyloaNilUCPtqhgko2jVAr/72lKT9dgbRAWq
 w4tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=/4coXrdjb9muH5/WlPi+B9jIBGKhlzTvYR/x4Pz2ywc=;
 b=HJUbSUCCyw4yvD2rTinZh5sDMZjPVfSUj1b4IoX/x+EBI3wer0edLKLjIgkslijEwc
 e5CmlSIZn/l1ND+G2nA6Dh+/XsBI89Zcd9MepJ3UCrWyY0DX2xG521VD8t2RwXrH6KHe
 m+fkHsNenVfz72rklR6OfwpDLl0aCAexDodAlGIWZNnOnDvwbJvr1+97C1wAfGwwd4cx
 QyordBjdKSNQw/iTEDj0DFqpWSnPHhPnyEOhIOOnwGKDJGOlVT425P3/REWyuN8VzRpV
 zTyTecTC3EQ35C6bZQJmjBcrTCH1sAg0Gx84R+88/b79Mjy7VScrfvKyGWwD69lu620z
 rCoA==
X-Gm-Message-State: AOAM53329sCqOITjSMGvELuPIqPlJf/HFlJmSWVX4WoC+zcHD1/lXz6k
 8b/k+Wu8+DfKeWakG+V3coNCtcixAwSwKakjbxguceaIsqEsIQ==
X-Google-Smtp-Source: ABdhPJyzDB9kAfv09IdliMDnoj22GXz86viUOntL0Qu1gYlQcrB1/3sDOWiTft2EnculLP/LWLpSy+WWR+KIpP6WLjw=
X-Received: by 2002:a2e:320d:: with SMTP id y13mr3113734ljy.217.1613670036799; 
 Thu, 18 Feb 2021 09:40:36 -0800 (PST)
MIME-Version: 1.0
From: Peter Lepeska <bizzbyster@gmail.com>
Date: Thu, 18 Feb 2021 12:40:25 -0500
Message-ID: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
To: cake@lists.bufferbloat.net
Subject: [Cake] Enforcing video quality question
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
Content-Type: multipart/mixed; boundary="===============9009172705015147927=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============9009172705015147927==
Content-Type: multipart/alternative; boundary="00000000000054056705bb9fd597"

--00000000000054056705bb9fd597
Content-Type: text/plain; charset="UTF-8"

Not sure this is the right forum but I am using Cake on my OpenWRT router
so I thought I would cross-post this question (
https://forum.openwrt.org/t/use-sqm-to-configure-video-quality/88984) here.

Please excuse if this is the wrong forum and thanks in advance for any help.

Peter

--00000000000054056705bb9fd597
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Not sure this is the right forum but I am using Cake =
on my OpenWRT router so I thought I would cross-post this question (<a href=
=3D"https://forum.openwrt.org/t/use-sqm-to-configure-video-quality/88984">h=
ttps://forum.openwrt.org/t/use-sqm-to-configure-video-quality/88984</a>) he=
re.</div><div><br></div><div>Please excuse if this is the wrong forum and t=
hanks in advance for any help.</div><div><br></div><div>Peter</div></div>

--00000000000054056705bb9fd597--

--===============9009172705015147927==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============9009172705015147927==--
