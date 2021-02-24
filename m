Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A845324786
	for <lists+cake@lfdr.de>; Thu, 25 Feb 2021 00:27:27 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9B1073CB45;
	Wed, 24 Feb 2021 18:27:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614209246;
	bh=dlzrPvV6VOWzQD3PVWkZSXNmtLNePwd9dVzjG75Xvvo=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PtfSu8IE+Jh7PJV2EyxQqcDoCOJp9FBpOh1FOA507qY9xzUL8uUZg562CmkAw6eRL
	 HyEfUz/brqRO2clux3iQNgXr/+HwkyvtPY/FR9I2isnvELa2n1qzdCvCOgb4ZdljQZ
	 gLZ7G6J03G8pjotga7ur0cXgoYXbNkHqLrXpPRt1T+GsgdhVN5jDQCySX/n3MMFQI3
	 PCgBYTys9Lfqlcx6wslXzJzI8/etci5eq/j1DqaH7IzASyrLUFDjrpuFXj18a9MRPh
	 JWKu20r4WUiGVJYK9tImY2Qjm5v1DMySmwkyACUhXyt3JMlD/dfh76S3M6Sz1tslbC
	 S6tbjkRTn9atQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5B8563B29D;
 Wed, 24 Feb 2021 18:27:25 -0500 (EST)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 46F9C984;
 Wed, 24 Feb 2021 18:27:24 -0500 (EST)
Received: from imap38 ([10.202.2.88])
 by compute4.internal (MEProxy); Wed, 24 Feb 2021 18:27:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 mime-version:message-id:in-reply-to:references:date:from:to
 :subject:content-type; s=fm2; bh=mi5Qpl1Psac5kT6qaQzWfe567RqWMgw
 2248E4zR3ypM=; b=U0E8N6Aq9mMd0J3o7cm/gt8zvClJENyVBfJeBs9SBq8r1He
 zcju91OcXri0U5Oltw1PvXpDcHFNczU+Pa828mnTBtOjJwSUbpKRd5lXrOq4gLIU
 TSsw4/X3sHixn92mFHKr8CEaEKFofLKWY7ck6Xx9kmVjbhiLPV5M0RBVFauc8j/l
 saei1mJKx5a0MvyGA3wOLVw/S1Oe6I0bpQcrZEI849oNTbCRvfDRTfHc6Q3gTp6U
 QBJgktGGMQBrhSC1yA8LGwltlHc1F/OciRs0+0JGQab+lHK9ybzMJnJ0eilYg4M6
 dpTnKeMX2njhpJ9etgi0oeGCKs2TEQaD/hCg4oA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=mi5Qpl
 1Psac5kT6qaQzWfe567RqWMgw2248E4zR3ypM=; b=gIial724RYhrGFKetmk2T1
 MmcFh9tFwVsaD+Em9MRe2u0SmJ3NBDnTZeaEcf6QvvhLtREN0AKD6qObvtKehKf5
 GjXC9dn8eYztEsxj7asD7FdVNf6hDZ7dtDuFLXO69ynf8kuESxIE4tqcyL9n51aG
 aOI3k6HJDl4Ny4E0e/3Ried4YZ/5Pjv3Zt/S7mT/gMAhvL385463nH+wnxFXoVk7
 udVrkfQUGcI/Ivx6HJLBf1zh48plEqtaTVdO5LcbaxfWkKscNNUo57OMNaa/hmD5
 lKKZeKpjSFnHf4bW914lpxuQ2REWJUrL88Gn42dDio+69fB6v7w/wXCBUPA8D+vQ
 ==
X-ME-Sender: <xms:2-A2YKgbZHMsdsFxluHLld1Bjyflg6cQCjQMFikteaJJqpSxQfaubQ>
 <xme:2-A2YLDSTok8l_HLndhF73iNTx2Nk_sZtzQuPLJwpO42Yrz-QY7LQTZty6GJmZtrL
 wLBJwQh3R3ld3vAiA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeekgddtlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsegrtderreerreejnecuhfhrohhmpedfpfhilhhs
 ucetnhgurhgvrghsucfuvhgvvgdfuceomhgvsehlohgthhhnrghirhdrnhgvtheqnecugg
 ftrfgrthhtvghrnhepteehleeitdetledttefhhfeiteelgeetfeejueegjeettdegkefg
 feetjefguddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
 homhepmhgvsehlohgthhhnrghirhdrnhgvth
X-ME-Proxy: <xmx:2-A2YCEtehkylBBCO23af5DYw6hMpps3kgaRrFWND7iRWJ5D7B3bhw>
 <xmx:2-A2YDRJ4Bqu27mMviEJyP4DoZV8oYQ4BfZPXq6rHdfAibESh4PNiQ>
 <xmx:2-A2YHynd8NBxoGygvkOvpnZXoIYz4MB5dF2DdXF-fvm2JzsTqvYHA>
 <xmx:2-A2YH_fKeAZr43VvDa2jsTA3VlX1jBTt_5vcXxO2OtKv6n57VHy1Q>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 56780CA005D; Wed, 24 Feb 2021 18:27:23 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-141-gf094924a34-fm-20210210.001-gf094924a
Mime-Version: 1.0
Message-Id: <480413c4-e9a1-4b78-8ef6-3d8658836874@www.fastmail.com>
In-Reply-To: <2f30c201fce345658df9f2a5090745cf@telenor.no>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <2f30c201fce345658df9f2a5090745cf@telenor.no>
Date: Thu, 25 Feb 2021 00:27:01 +0100
From: "Nils Andreas Svee" <me@lochnair.net>
To: "Taraldsen Erik" <erik.taraldsen@telenor.no>,
 "Dave Taht" <dave.taht@gmail.com>, bloat <bloat@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Subject: Re: [Cake]
 =?utf-8?q?=5BBloat=5D__Fwd=3A_=5BGalene=5D_Dave_on_bufferb?=
 =?utf-8?q?loat_and_jitter_at_8pm_CET=09Tuesday_23?=
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
Content-Type: multipart/mixed; boundary="===============3341145011150906558=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3341145011150906558==
Content-Type: multipart/alternative;
 boundary=79e2c7a8a2c749c68d10c13000514a70

--79e2c7a8a2c749c68d10c13000514a70
Content-Type: text/plain

Ah, yeah it's fixed wireless I meant. Didn't really know how to say it right in English.

We've got the Huawei B818-260 with an EMCOM XPOL-2 4G/5G on the wall.

Yes, we've got a 30 Mbit/sec subscription. In practice we usually see ~30 Mbit downstream and 10-15 upstream, and I believe when we first got the B818 and antenna hooked up I measured ~70 Mbit downstream with a subscription that didn't have any rate limitations, so I assumed we should have a good amount of leeway if something affected the signal.

Sure, I can run some more tests tomorrow. Could also grab some signal stats from the B818 if those are of interest.

By the way, I forgot to mention it when I posted yesterdays tests, but those were conducted over a WireGuard tunnel with CAKE for the downstream running on the other side. Doing that was the only way to get the ADSL subscription we had to behave decently, it simply couldn't handle things like Steam downloads with CAKE on a IFB device in ingress mode, and shaping downstream this way kinda stuck.

Best Regards
Nils

--79e2c7a8a2c749c68d10c13000514a70
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div>Ah, yeah it's f=
ixed wireless I meant. Didn't really know how to say it right in English=
.<br></div><div><br></div><div>We've got the Huawei B818-260 with an&nbs=
p;<span style=3D"box-sizing:border-box;"><span class=3D"font" style=3D"f=
ont-family:Roboto, Arial;">EMCOM XPOL-2 4G/5G on the wall.</span></span>=
<br></div><div><br></div><div><span style=3D"box-sizing:border-box;"><sp=
an class=3D"font" style=3D"font-family:Roboto, Arial;">Yes, we've got a =
30 Mbit/sec subscription. In practice we usually see ~30 Mbit downstream=
 and 10-15 upstream, and I believe when we first got the B818 and antenn=
a hooked up I measured ~70 Mbit downstream with a subscription that didn=
't have any rate limitations, so I assumed we should have a good amount =
of leeway if something affected the signal.</span></span><br></div><div>=
<br></div><div>Sure, I can run some more tests tomorrow. Could also grab=
 some signal stats from the B818 if those are of interest.<br></div><div=
><br></div><div>By the way, I forgot to mention it when I posted yesterd=
ays tests, but those were conducted over a WireGuard tunnel with CAKE fo=
r the downstream running on the other side. Doing that was the only way =
to get the ADSL subscription we had to behave decently, it simply couldn=
't handle things like Steam downloads with CAKE on a IFB device in ingre=
ss mode, and shaping downstream this way kinda stuck.<br></div><div><br>=
</div><div id=3D"sig44785538"><div class=3D"signature">Best Regards<br><=
/div><div class=3D"signature">Nils<br></div></div><div><br></div></body>=
</html>
--79e2c7a8a2c749c68d10c13000514a70--

--===============3341145011150906558==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3341145011150906558==--
