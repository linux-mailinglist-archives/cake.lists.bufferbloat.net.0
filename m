Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0901C32478F
	for <lists+cake@lfdr.de>; Thu, 25 Feb 2021 00:35:58 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B4C9F3CB41;
	Wed, 24 Feb 2021 18:35:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614209756;
	bh=STQXdRnHDb3Fb57jfwiskMgDlQlMJLC/5WZlJ70pb3M=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZjVqkB5/ptL2soFnUtqoHnGEZbE/GTOhv7Ykt89iJj6q9IzLb4giQ4Jg3y+uBmBYG
	 azhl5U8qW3gk8jZs8p9sf3xEGAn95wCnh4quuB769jfE/87uV3ibS4KDje3m5ijWJG
	 PpQxwFADXhimCISlUvQ+OCukoVacs54NrJdGKIxrB21+t2rfc2hkyREFD3Lym5qRsv
	 VNxEequ/qtaWuq5JrsqVmF0ixVTnQDxgiXoqf/4nzXKIvV5D8gXCRaSKOv0lNB31V0
	 U4Xzf0NuAhnochscA2leU5lrLMY7CsdyyiGPyWC1eVdxVtGBbyuHglh8Q6R6rnEGFv
	 CaH/EmY9J+UeA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1A2643B29D;
 Wed, 24 Feb 2021 18:35:55 -0500 (EST)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id E9F0EA13;
 Wed, 24 Feb 2021 18:35:53 -0500 (EST)
Received: from imap38 ([10.202.2.88])
 by compute4.internal (MEProxy); Wed, 24 Feb 2021 18:35:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=Z19R3DrAiAekQoEKROMUEbYqnVnTU0w
 SzdyTw6GFC2g=; b=OOkeYapAbhMklz3BAiaRtqDGi3awQ4x6Q/McrJcepf1JnC9
 gAIV6bcEmXOuNA61dZ/0gV+UtWFCKkdbq33dS/uryZB9Q9nmWSVBMeM0zrGLAqj2
 6LHjLPcejRsKFbydtXmUhTVXpnf0rZ2fDrqntQoBsKR4AlihHL5KdkMhir+QDx1o
 srY04VIfKGna3fFBwmsihYKPb0Ck8jFyPCD/wH6Y5ePcvS6TM1GP6POnBhW6i95g
 FIUWIN2CoqVo2i/uRh50XyNvzrhN/cgXExkwq5Sipxu8iI+KjxrjMj0quCGmMYd5
 rLL4IEjVIAJk5Iqct+tMV3fXbBcjc692BV6lB/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Z19R3D
 rAiAekQoEKROMUEbYqnVnTU0wSzdyTw6GFC2g=; b=F1ZukJsZvTV5f/GgZus02R
 IuUIXscJmNyNBRu5eRaoQIpgasW7gMfp7V0omdn5M5nlhc1q4305KuwjmpURv1HM
 cFx0i/dV9OE8JULkGGkpqh5NJ5n64sn/+zz8H7yHa14DvmSCN+givod1HDKJyxrs
 /9t9ddF8JOhr5PPbhDpWxEC1Pp6QyINdllmrmZ6HRC4CnK9b0QcQho7dFgJTd+N4
 RFW3dsaGZ0dBH/nAbXlNWX1Jxb9q21Yk/X4UkSgSWP5IrIho10k+j6CozznM7O9M
 u0Jbt0z8ouaPeX+VEJQIhxF/e1eWDANiijkNnaK5yrPbNYnCRJhNCtk4PRm/tVbA
 ==
X-ME-Sender: <xms:2eI2YCQDM2OY8aSpdkelZasLgEpdkIuPf8sq9kRBTGSfse0Us9hN7g>
 <xme:2eI2YHzKsHakeWZkzMXLi7SdLRSVDV5ZWcXTeJh2jlttM4HCpohSylmP7oFMBzp4F
 8frkiYxfUAf2P5NRg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeekgddutdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedfpfhilhhs
 ucetnhgurhgvrghsucfuvhgvvgdfuceomhgvsehlohgthhhnrghirhdrnhgvtheqnecugg
 ftrfgrthhtvghrnhepueefheeuveffkedtgedtkeffleekfeekkefhgfdugfevlefgueeg
 tdefvdeltddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
 homhepmhgvsehlohgthhhnrghirhdrnhgvth
X-ME-Proxy: <xmx:2eI2YP324YhJt4hlblJ4R6owhFyOnfSarDAR5GILNzN51qKBJ3o5yw>
 <xmx:2eI2YODjPKhWS0bwo7w6hPbDmeOJNkqHgg2LslO8vGqZelZoOCkG0Q>
 <xmx:2eI2YLgKbOVuhlz8Di6m_9zQz25PJZbhnFPQSZGEuxempJjTou2oGw>
 <xmx:2eI2YIsN4L04cqYOf9ZrpmtCwq5SCimNFDXjopQTmQtO2RQEytzn9A>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 22310CA005D; Wed, 24 Feb 2021 18:35:53 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-141-gf094924a34-fm-20210210.001-gf094924a
Mime-Version: 1.0
Message-Id: <90a13934-4ec7-4872-bbf8-c6c0f6304ce3@www.fastmail.com>
In-Reply-To: <369A70AB-3ADF-4211-8A09-E9FB77CEE59D@toke.dk>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <CAA93jw4-wspLUfL_ZJW1BN0uWaEqZGMOVnD3Z1jgrKOJ_r8xLw@mail.gmail.com>
 <87im6h4u2p.fsf@toke.dk>
 <a43b8d79-8d32-4048-a47e-df92eae622fa@www.fastmail.com>
 <369A70AB-3ADF-4211-8A09-E9FB77CEE59D@toke.dk>
Date: Thu, 25 Feb 2021 00:35:32 +0100
From: "Nils Andreas Svee" <me@lochnair.net>
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 "Dave Taht" <dave.taht@gmail.com>
Subject: Re: [Cake]
 =?utf-8?q?=5BBloat=5D__Fwd=3A_=5BGalene=5D_Dave_on_bufferb?=
 =?utf-8?q?loat_and_jitter_at_8pm_CET_Tuesday_23?=
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
Cc: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSByYW4gaXQgb24gbXkgcm91dGVyIHRob3VnaCwgd2hpY2ggaGFzIGEgZGVjZW50IGFtb3VudCBv
ZiBUQ1AgZmxvd3MgcnVubmluZyBhdCBhbnkgZ2l2ZW4gdGltZS4KSXQncyBhbGwgZ29pbmcgb3Zl
ciBhIHdnIHR1bm5lbCB0aG91Z2gsIHRoYXQgbWlnaHQgYmUgd29ua3kgZm9yIGFsbCBJIGtub3cu
CgpsaWJicGYgZG9lc24ndCBsaWtlIGl0IGlmIEkgdHJ5IHRvIGRpc2FibGUgdGhlIFZQTiBhbmQg
cnVuIGl0IG9uIHRoZSBXQU4gaW50ZXJmYWNlIGF0IGxlYXN0LCBiZWNhdXNlIGl0J3MgYSB2aXJ0
aW8gaW50ZXJmYWNlLgo+IGxpYmJwZjogS2VybmVsIGVycm9yIG1lc3NhZ2U6IHZpcnRpb19uZXQ6
IFRvbyBmZXcgZnJlZSBUWCByaW5ncyBhdmFpbGFibGUKCkJlc3QgUmVnYXJkcwpOaWxzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBs
aXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQu
bmV0L2xpc3RpbmZvL2Nha2UK
