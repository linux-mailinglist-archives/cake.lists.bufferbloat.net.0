Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0C3324723
	for <lists+cake@lfdr.de>; Wed, 24 Feb 2021 23:50:18 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4372A3CB44;
	Wed, 24 Feb 2021 17:50:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614207013;
	bh=0J1kGFN0kuX3z+uxABh80RDzSAGxN1DfoPByVeqO7Do=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CC31wcHzl7tYhm2O1FLOWQD7eDSciCaY8pPKBwFhnUFd0U+BzfJSaIFxuoTeBHZ4d
	 ogRBytkJOdctuV17IN3XqJMys0xi0FG1l03RKJ3sunIBeO1fv8EAmSpd9uahD5h49W
	 J66E9qU8hHneaV2FzkisvOuSODchc+sd5GFV3Lm8d1Us1aCXcmMTtFCSNCOgwzAnWn
	 vUo9P6Irx6e1Oll/oByF7mcNWIBCJrbTNhxpmNNEKCmD+p4vMOSq7FtmvyJ5MyC3B3
	 7d+ikwo2uOC/n4/DDUrHiOj4uHkRWBgl7VqdteHAPNEZY5OG16+DnlCDEWrdbsZjVv
	 bSfH7WVC/XVeg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C8A643B29D;
 Wed, 24 Feb 2021 17:50:11 -0500 (EST)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 7B9C2880;
 Wed, 24 Feb 2021 17:50:10 -0500 (EST)
Received: from imap38 ([10.202.2.88])
 by compute4.internal (MEProxy); Wed, 24 Feb 2021 17:50:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=u15t7lj5RiePlyr3pdj2E5x0Pot+ovB
 WrlTgOdv2j38=; b=mxBN64znrznJ18AMcuxyT/eL3CcGqZaziLzUS955ntqeNhi
 h4vc8Fux15w1ChHl7GXP1p/9b4Jo0NIfp7OY5rOAFHDv3pwDda2/2hDkYqHfomsf
 y1BaO4VaVakGkVXCsQpk0YRrlffrLkVjgZpbMI7KOXMY5GZl1gYyh9vc/VANGEPp
 ZrlZT+zCI9fYgONzlFF1G3tzf/X2NlPIfAyraqFnqc+rwQb2sXQFs1nfG0gDWVMJ
 5pE89wfu+OdT5P/E4hVwmQpHzK7bMwZW4e+Mb54woXePs9giv64wQAwOY3Q2km/1
 XaX8JVUi5i5RgtYVt1pT0LTtulJPXtTNcwpTcKQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=u15t7l
 j5RiePlyr3pdj2E5x0Pot+ovBWrlTgOdv2j38=; b=Lb83t9nyL61eU86msN0Tbc
 jWc4Rw4TBnL0qs1pBK9+Hrn3GJ6nlIsLv6EoL1KPVKlcg35WxWmnMf/Pbt84Y7wj
 Y6Ikfnwu7utSi3AI6GZWm+olq42Bzb1AS2Rth3tSkRJltLPjZJ5qIsPjNXfjeMVQ
 k828qwZ9nVPZ7Ze7xeVvsTf2QHmEklS7rL5PVBAqm4SHU8NJnGxPKyqfrGsxL4N+
 QLx3zqlL8uV2t2Kt4POVKHAkN/lq+OR/g+Xw4VgahhSCUZAsmFAhnnxEcVWqk2ZD
 EUopQpcWTZOi7Ex/nMhwlIEpsRS3WghmA8RLtPPniG6EBOCb/SCfjBJuingua/sQ
 ==
X-ME-Sender: <xms:Idg2YNPvoOmbIuV9MoDLA-73YjTVUhHHN4ly5_57bX4MJWqinIyDQA>
 <xme:Idg2YP_Kd2m4yiO0RNeEXHvVg_TEUrbf5fMvjqPkp5UAiCX6mH1XqZKBFUfSzaYJj
 Ir7x4Gsa-tFPEfvpg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkeekgddtudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedfpfhilhhs
 ucetnhgurhgvrghsucfuvhgvvgdfuceomhgvsehlohgthhhnrghirhdrnhgvtheqnecugg
 ftrfgrthhtvghrnhepueefheeuveffkedtgedtkeffleekfeekkefhgfdugfevlefgueeg
 tdefvdeltddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
 homhepmhgvsehlohgthhhnrghirhdrnhgvth
X-ME-Proxy: <xmx:Idg2YMTg1sSFaVk8H4ZU88_fbx5cLqImddFtGi7OW-RjvT9jCW0ZuQ>
 <xmx:Idg2YJs3AU9oJTJOsj6knB01q-Sgj_i0dJRAoEydcwtTjOJEWXmGEw>
 <xmx:Idg2YFezoaS-ldtl29jc7Rguw1DfHwSIqv2-XbevRgacuAsXNm4k4Q>
 <xmx:Itg2YJ6WCauOTcFhCzj8if23ZJT4WZIJwU_pIurAxiClzMZl4rKk_A>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 894AFCA005D; Wed, 24 Feb 2021 17:50:09 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-141-gf094924a34-fm-20210210.001-gf094924a
Mime-Version: 1.0
Message-Id: <a43b8d79-8d32-4048-a47e-df92eae622fa@www.fastmail.com>
In-Reply-To: <87im6h4u2p.fsf@toke.dk>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <CAA93jw4-wspLUfL_ZJW1BN0uWaEqZGMOVnD3Z1jgrKOJ_r8xLw@mail.gmail.com>
 <87im6h4u2p.fsf@toke.dk>
Date: Wed, 24 Feb 2021 23:49:48 +0100
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

SSdsbCBsb29rIGludG8gcHBpbmcuIEFkbWl0dGVkbHkgSSdtIHF1aXRlIGlnbm9yYW50IGFib3V0
IEJQRiwgc28gSSdsbCBsaWtlbHkgYmx1bmRlciBhYm91dCBmb3IgYSBiaXQsIGJ1dCBoZXksIGdv
dCBpdCB0byBjb21waWxlIC0gKmFuZCogcnVuLCBidXQgSSBkaWRuJ3QgZ2V0IGFueSBvdXRwdXQg
b3RoZXIgdGhhbiB0aGUgbWVzc2FnZXMgZnJvbSBjbGVhbl9tYXAuIER1bm5vIGlmIEkgZGlkIHNv
bWV0aGluZyB3cm9uZywgSSdsbCBsb29rIGF0IGl0IGFnYWluIHRvbW9ycm93LgoKQmVzdCBSZWdh
cmRzCk5pbHMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Q2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0
cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
