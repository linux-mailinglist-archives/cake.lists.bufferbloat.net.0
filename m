Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E87D4151D0C
	for <lists+cake@lfdr.de>; Tue,  4 Feb 2020 16:20:32 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6D93F3CB39;
	Tue,  4 Feb 2020 10:20:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1580829628;
	bh=ipf/eOhY+xShKFzWh+KLqeWh91a3Jf/Xv+6rtoJgAGY=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eDWhW3VFRbtgrW1Z5QLM79uxv2HSIKYN+N/19RbN79XJNMcngjKt+MLB/FHnGj60h
	 CzBa5HB9W/VpyIjrluIrnvGA/0SSRP7h0sc5zFoooaCzHvhYaG5bpOCvsc7Oh2v/cO
	 4i3zqYsH2Gg+5PcMoMrgqGKQfnM3/8Jpa0dJKctkIEbDj+IGJsaPxtpSS0ly6RLrt4
	 K4ZXWn3W122ErA7jV0kQZOjYgvVgOr0ZCPrU+X30lklK1uEEQYT0tPH5JZXlaoCK28
	 7HN8GPrti+KKQTqpjQffybt8hJoxHGDa9Q+zvlI50p1826MqoA8oboBu0KRd6QECwa
	 uTt16f+ToodKQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4C6033B29E
 for <cake@lists.bufferbloat.net>; Tue,  4 Feb 2020 10:20:26 -0500 (EST)
Received: by mail-lj1-x235.google.com with SMTP id x7so19059375ljc.1
 for <cake@lists.bufferbloat.net>; Tue, 04 Feb 2020 07:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=domos-no.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=RbKJEAQybgHvlKvY+HywS6cqs3GxI8tMQfWcFQVMl8A=;
 b=lnz/HZEZbewmYgZMrDrWcXlujyq1mp6gWrLkmCdM5qaBez3MQnqmIqpCy5ML+ACXC5
 vv1Tw8QS2LDolHXq33cThCq8h9Y54m/5GHBFOqV2NMTQh9jHBZJeLwDKeQla/Z2ISRPc
 h3DAt8GTUbNC4WtXFMn0RL5fGtkRis8srcr1jFK2p01QNOoAX4z0sCNUjg5Pk95Ari0S
 3hX5HGUdrdiTgr+SSkXSWOWiGA2RvPT/krrYX06UZWkKG1V4KMd1bXd0l3IiJoBk0xpK
 +DfZP7gcMAEPSFFkmEFaiIfWUXC1FJH1rHKgUGcGaeRo5b1B+Dd1ZlGbopC1Kpnq2NPX
 dv9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=RbKJEAQybgHvlKvY+HywS6cqs3GxI8tMQfWcFQVMl8A=;
 b=AwxGS7rD0OaJW3oMRY6P29E7syoUKhe/ui04DEvO0ohF8mKzfqvO9PUsI+eZbdtkXr
 JPi5ScYoxgEkeZAh5YXvTYuhf4I/uDuSv16q7L6gVH1gQlC+lZ8EWlhzMh7HUwMS9CPv
 UClLNFXYDOJJNIzOavxM5FbWjfKnRKFST0D8c5JUAC1RimfR/xcNdFZWsXE1doLPB/e6
 K+P+q2kZcn858osZBVDYTFbaU29Nz/dM7r27jMR6WBsiGhY1ox/mCj5iq07a8R21JTg0
 y4f5ZNl1aXSsIqG7hGkr99rySOyx0iGUi5/JArZOBPZGPENs4h8LJN5iY8jjx6L+8wTh
 DIZQ==
X-Gm-Message-State: APjAAAU7JFXw9WuuzqyzGUCV2vn7Sy3NKCaU0JVdYpV7yZkFkYc/5znM
 MJNhF3xD49R1Xjz2BYGRn92jgb9eNpQ0flDIPucGsnpg
X-Google-Smtp-Source: APXvYqwgDlCax/mMggPXj1JCnVs2M9Ukc17wrFxCE/Q3RNqRRcPwCGbpID1vCwQqED5ompfFIMaMEGGPHwn7dTVQRlo=
X-Received: by 2002:a2e:9218:: with SMTP id k24mr17173442ljg.262.1580829624925; 
 Tue, 04 Feb 2020 07:20:24 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Bj=C3=B8rn_Ivar_Teigen?= <bjorn@domos.no>
Date: Tue, 4 Feb 2020 16:20:15 +0100
Message-ID: <CAKf5G6JeQFqDYV5Ttop3Tqb7WUGW2ZvYj-4S6C=VsF2JeZfs_Q@mail.gmail.com>
To: cake@lists.bufferbloat.net
Subject: [Cake] Cake in mac80211
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
Content-Type: multipart/mixed; boundary="===============3013648020489770374=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3013648020489770374==
Content-Type: multipart/alternative; boundary="0000000000003e93a2059dc19470"

--0000000000003e93a2059dc19470
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Are there any plans, work or just comments on the idea of implementing cake
in mac80211 as was done with fq_codel?

--=20
Bj=C3=B8rn Ivar Teigen
Head of Research
Domos, Machine Learning for the Home
www.domos.no

--0000000000003e93a2059dc19470
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Are there any plans, wor=
k or just comments on the idea of implementing cake in mac80211 as was done=
 with fq_codel?<br></div><div><br>-- <br><div dir=3D"ltr" class=3D"gmail_si=
gnature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div>Bj=C3=B8rn Ivar Teigen</div><div>Head o=
f Research<br></div>Domos, Machine Learning for the Home<br><a href=3D"http=
://www.domos.no" target=3D"_blank">www.domos.no</a><br></div></div></div></=
div></div></div></div></div>

--0000000000003e93a2059dc19470--

--===============3013648020489770374==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3013648020489770374==--
