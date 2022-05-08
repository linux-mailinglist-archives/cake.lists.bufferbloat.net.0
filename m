Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2912B5267DB
	for <lists+cake@lfdr.de>; Fri, 13 May 2022 19:04:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B01EE3CB38;
	Fri, 13 May 2022 13:04:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1652461453;
	bh=Uc//+dvTerhOov+e7Hr1ZpqyDYjuQe/7w7BtxAs7QuY=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XKKtlZS9J3Nvm+TbU1t+mjCLGcLn8ZHPlKiBGOyo9StBpI8079G3cvbg9OCL3ghsb
	 SytSoZYitS+G6YF260gHlJbdDvol3CSQ8sbTaOyf1lGFhVbfjKVbdCdpzi9Ut91+jA
	 c1OPND/7PtmmiKA6NnIt9ImMXB3IXfouG1ttYFFn405l21kJhk78PL16uUabCm7Pyr
	 1Nw/Rlv1J7oi9OFf3NJiWXJ8Cawwz6SoY/6Qwjo3T35EMVYJa/Jer27nNEmgPWUqzm
	 sBYyjVi8RNH5o9XbwLlsnBV3WOuXz0xgc9kd03at2nKbm/XQND8u+g0cMMYmudWKb0
	 Uo+i/dgO4y/pA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com
 [IPv6:2001:4860:4864:20::31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A5B053B29D
 for <cake@lists.bufferbloat.net>; Sun,  8 May 2022 10:31:29 -0400 (EDT)
Received: by mail-oa1-x31.google.com with SMTP id
 586e51a60fabf-e93bbb54f9so12046782fac.12
 for <cake@lists.bufferbloat.net>; Sun, 08 May 2022 07:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:from:mime-version:date:subject:message-id
 :to; bh=LMh6EIHhquSenAZTwB39q1LOTV0Fasmoxt26qypM8pw=;
 b=mLLhqy38I8Odr6clMAO3zvExcjZ5bX7IeUaD8uLCrbeGIw7cyagErwr2yjErvT4ClZ
 yjO9v2ndyQCVagMQPw8A2zR1QkjhAaaGB6/yCiKZovkoJhpLbK3oX01Xl2wneAxy/Vjx
 bxo4jyX17AN/DVN+8f0tJn97oiHn4Uc89nLSwjJJW4fYTlG8r7+kQPGVTIgWpL4uomqI
 fCpIP0gvqW0KA+AoEAD5KY7LTZBfdKDzP3gBRkgVfnanRYcvHU4y+6oNqK+P2uR3BBN0
 k2fSEh34qhyg8qFRkFX9l+vfq7ExIbauXTHyGz+MkMKFC+RDNoxZ168fSS8ZDjKKYXp2
 SXWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
 :subject:message-id:to;
 bh=LMh6EIHhquSenAZTwB39q1LOTV0Fasmoxt26qypM8pw=;
 b=dA1OzYC2+5JWpGThljQqRYZ9AnE0VkpbA/9ex1Etv/G03K8caLm4VYe/PkvVDJicTl
 4Pe7bMtSxWeay0ndyD35ivZbvscvG46Ie8s/xR5JF2UZt7GWJ1KUXftRPSKnFlLh3Evh
 wRP+ajkOYTT4M/ixlWR1fEZdlihzwEtvw1b/rxoXZSOSG0F4zEkDa6ESQ8sR93kd1Wpq
 buaQgg9VcdDni62eUXMOwCgi8FfvYzDjP9c3nsDJwwtKn3SpQnKEMyVL2umQ5f2erik6
 pTGJlegugvrOHZcMPTUlACIFaRhyZqWLLaR7AAlC7pKVzYnKVj9h05MOO5xizNw69dcB
 vUwQ==
X-Gm-Message-State: AOAM532MngWbzXLOKghlhIuXtlLN1C3EZmXvTHEbQ82a8WeupS6XQ3Sj
 Xlon1D/UogYD07SyGCTzT8ovwu0a7VInSg==
X-Google-Smtp-Source: ABdhPJz0Ogn3L0Z6U8xzxQHskfSq+9x3OuGdrxmWzEARBG2/Wx9JCfDJt/bXVwV+JAvZbuSaregjRw==
X-Received: by 2002:a05:6870:f146:b0:e9:2116:41e2 with SMTP id
 l6-20020a056870f14600b000e9211641e2mr7792277oac.162.1652020288720; 
 Sun, 08 May 2022 07:31:28 -0700 (PDT)
Received: from smtpclient.apple ([2604:3d40:ff00:0:fc08:882e:4aad:9836])
 by smtp.gmail.com with ESMTPSA id
 e18-20020a9d6e12000000b006060322125fsm3801671otr.47.2022.05.08.07.31.28
 for <cake@lists.bufferbloat.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 May 2022 07:31:28 -0700 (PDT)
From: Jarad Olson <brotherdust@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sun, 8 May 2022 08:31:27 -0600
Message-Id: <1FEEA029-B564-4C46-99A7-50B5F747F619@gmail.com>
To: cake@lists.bufferbloat.net
X-Mailer: iPhone Mail (19E258)
X-Mailman-Approved-At: Fri, 13 May 2022 13:04:12 -0400
Subject: [Cake] Latency Testing Using iOAM
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
Content-Type: multipart/mixed; boundary="===============2123718954064016050=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============2123718954064016050==
Content-Type: multipart/alternative; boundary=Apple-Mail-8EF8A75C-ACBA-4F31-9379-5370A81C200A
Content-Transfer-Encoding: 7bit


--Apple-Mail-8EF8A75C-ACBA-4F31-9379-5370A81C200A
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello!
Has anyone ever tried using in-situ OAM for testing latency? It would seem t=
o me that the protocol is ideal for this purpose: it adds metadata to actual=
 user packets. The Linux kernel has support for it as of 5.15, Cisco and Jun=
iper have implemented it as well.

Here=E2=80=99s an article on the Linux kernel implementation: https://legacy=
.netdevconf.info/0x14/pub/papers/32/0x14-paper32-talk-paper.pdf

If anyone has tried this, how did it turn out?

Thanks much!=

--Apple-Mail-8EF8A75C-ACBA-4F31-9379-5370A81C200A
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Hello!<div>Has anyone ever tried using in-s=
itu OAM for testing latency? It would seem to me that the protocol is ideal f=
or this purpose: it adds metadata to actual user packets. The Linux kernel h=
as support for it as of 5.15, Cisco and Juniper have implemented it as well.=
</div><div><br></div><div>Here=E2=80=99s an article on the Linux kernel impl=
ementation:&nbsp;<a href=3D"https://legacy.netdevconf.info/0x14/pub/papers/3=
2/0x14-paper32-talk-paper.pdf">https://legacy.netdevconf.info/0x14/pub/paper=
s/32/0x14-paper32-talk-paper.pdf</a></div><div><br></div><div>If anyone has t=
ried this, how did it turn out?</div><div><br></div><div>Thanks much!</div><=
/body></html>=

--Apple-Mail-8EF8A75C-ACBA-4F31-9379-5370A81C200A--

--===============2123718954064016050==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2123718954064016050==--
