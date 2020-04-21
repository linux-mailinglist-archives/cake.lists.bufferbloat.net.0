Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E27081B32E5
	for <lists+cake@lfdr.de>; Wed, 22 Apr 2020 01:07:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B96EE3CB42;
	Tue, 21 Apr 2020 19:07:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587510434;
	bh=m8fU4k5f1wbHq7RnXKVgugfRdq4q+kggK928P/lt+20=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DHcCauoWxRGDM76HkSU45IfBEpxMCoxhDE9Q/YEONzzyseq7LzIQtx2O/gLObr2Qz
	 rgRvLKdq6TjJzTgmpviBxtaH5eLKAu7BRGUjbQBKQx6VzQvGfsarhkUCZuWtnORJqF
	 /ZZfWQCzgiK3soK1gv49hIEthXypFdZE2jSwmVf4ciOI7cVbdbmeWiml7mBL0Wbqm6
	 Ha94srnN8rk0NAm2lsxoOcnW7iOWj2IZKieE+PDPVVTcE0MCDZyxGEPbBjdrZjgEKU
	 F5c/RYGRe0xfc1Cn1A26xMRAhBqVEjb0TGd7XyiIBfLByw5hnJIPvvBXAIS9pUZ9GP
	 BwLVzijanSlhQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1BFAE3B29D
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 19:07:13 -0400 (EDT)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id E34E95C01F5;
 Tue, 21 Apr 2020 19:07:12 -0400 (EDT)
Received: from imap1 ([10.202.2.51])
 by compute7.internal (MEProxy); Tue, 21 Apr 2020 19:07:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=althea.net; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=UJm5Zj+QqZdMYsP7dWR2BdotoXRCC//
 Spn6Fg2nnLSQ=; b=Cr4UHe/EGEgp3Kq6viFNCF+iwudNPtjPygshyS0A5hiixye
 R845O9CXB0mPmXbTwSHSad/DPXnVJMx5Xba5HbJoe8FBueBE7C8RbBuQRDlltoMr
 618z7vQlFSccKYgXIJ2MPIPKACVQng9YQo1iEffc+scl5GRFNLf3YktCCqBSUFl9
 9I5eJaSZi+jv7dwSirS8EjgqUjT5+vbOahmC/fLqUTRxBhwGfvoyvgeaUihseBLA
 e1PC622IK5/JL5bS+7DEgOeBTMn1HXmI3OTSNE1kqAv70nNSBIqRLmddSG0ADTWM
 oZdwIMxKNg72Q9h8c3ZcRdX2VKsGIMNRqH8CY2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=UJm5Zj
 +QqZdMYsP7dWR2BdotoXRCC//Spn6Fg2nnLSQ=; b=vK6v+XIpGZJzLiOQKkoZls
 POt5xMFmwK+7HTU84XaMvqlL54o+dfMwrQsABs3KcfQHPCeSPxPIVpdaH4wppIOu
 Yvs1McAFEs0On/hPH3jPiTHVn+AvJno6HcyDRtr4mKyVy4u9nkac6vErnhiXlmzE
 uFEGHRvR5fn0JbjsDYHLJwbxvXkFKo5EHMz9avB/VVv7F/oExejOjNNfldnYyU5C
 7TuCsFxZ6n9pWfdgANms4/5wjtxkiKq9Lh4oMhcwsfFs8D5ckYsjlxVlplagVj3Q
 MiaAJxtI5ArFHYG8kamq1Rf7sb+6qBemNv4e8pEBMgtc8ONvTPrwAZyatEIqmTWQ
 ==
X-ME-Sender: <xms:oHyfXjwft2yt2jvwbU84Te4zPptUan7Iy-GHFThmw-J3GGhxTuTdyw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeeigdduiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedflfhushht
 ihhnucfmihhlphgrthhrihgtkhdfuceojhhushhtihhnsegrlhhthhgvrgdrnhgvtheqne
 cuffhomhgrihhnpehophgvnhifrhhtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptden
 ucfrrghrrghmpehmrghilhhfrhhomhepjhhushhtihhnsegrlhhthhgvrgdrnhgvth
X-ME-Proxy: <xmx:oHyfXsXrCIub0BYzSDn3YUkGxaHAlQw5Eu42-Kh7r7jZlqPBfZxi_g>
 <xmx:oHyfXgQ2w5wrQGHnS6oL6yMqTX9u-Yj5mYZ1j3kz9jre4YOHNBanxw>
 <xmx:oHyfXrPdL7jxhsrHf702SefgIBrsryZdORH7G87J-CAnCVoNi24Akw>
 <xmx:oHyfXhFFaJmH-FkMdx4ScQqbTYffPmXpoAsWd2JWcSaEnm9YpYrLtQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 55865C200A7; Tue, 21 Apr 2020 19:07:12 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-dev0-351-g9981f4f-fmstable-20200421v1
Mime-Version: 1.0
Message-Id: <189eb1a9-ea02-452b-92f3-8005f97eb612@www.fastmail.com>
In-Reply-To: <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
 <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
 <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
Date: Tue, 21 Apr 2020 19:06:52 -0400
From: "Justin Kilpatrick" <justin@althea.net>
To: "Dave Taht" <dave.taht@gmail.com>
Subject: Re: [Cake] Advantages to tightly tuning latency
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
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVHVlLCBBcHIgMjEsIDIwMjAsIGF0IDI6NDQgUE0sIERhdmUgVGFodCB3cm90ZToKPiBJdCBo
YXMgYWx3YXlzIGJlZW4gbXkgZHJlYW0sIHRoYXQgYXQgbGVhc3QgZm9yIG91dGJvdW5kLCB0aGVy
ZSB3b3VsZAo+IGJlIHN1ZmZpY2llbnQgYmFja3ByZXNzdXJlIGZyb20gdGhlIGRyaXZlcgo+IHRv
IG5vdCBoYXZlIHRvIHNoYXBlIGF0IGFsbCwgb3IgbW9uaXRvciB0aGUgbGluay4gV2UgaGF2ZSB0
aGF0IG5vdyBpbgo+IEJRTCBhbmQgQVFMLiBmcmVlLmZyJ3MgZHNsIGRyaXZlciAiZG9lcyB0aGUg
cmlnaHQgdGhpbmciIC0gbm8gb3RoZXIKPiBkc2wgZHJpdmVyIGRvZXMuIE5vciB1c2IgbmV0d29y
ayBkZXZpY2VzLiBJIGhvcGUgbW9yZSBmb2xrIHJvbGwgdXAKPiB0aGVpciBzbGVldmVzIGFuZCB0
ZXN0IHRoZSBhdGgxMGsgc29tZSwgaXQncyBsb29raW5nIGxvdmVseSBmcm9tIGhlcmUuCj4gCj4g
aHR0cHM6Ly9mb3J1bS5vcGVud3J0Lm9yZy90L2FxbC1hbmQtdGhlLWF0aDEway1pcy1sb3ZlbHkv
Cj4gCj4gbmV4dCB1cCBlaXRoZXIgdGhlIG5ldyBtZWRpYXRlayBjaGlwIG9yIGludGVsLi4KCkkn
bSBjdXJpb3VzIGlmIHlvdSBoYXZlIGFueSBvcGluaW9ucyBhYm91dCB0aGUgV2lGaSBzdGFja3Mg
Zm9yIHRoZSBNYXJ2ZWwgQXJtYWRhIGFuZCBRdWFsY29tbSBJUFE0MHh4LiBBbnkgdHJlZXMgSSBz
aG91bGQgYmUgYmFya2luZyB1cCBmb3IgYmV0dGVyIHBlcmZvcm1hbmNlPyBXZSBoYXZlIGhhZCBz
b21lIGNvbXBsYWludHMgaW4gaGlnaGVyIGludGVyZmVyZW5jZSBhcmVhcy4uLgoKVGhlc2UgZGV2
aWNlcyBoYXZlIHRoZSBiZXN0IFdpcmVHdWFyZCBwZXJmb3JtYW5jZSBwZXIgZG9sbGFyIGZvciBB
bHRoZWEncyB1c2UgY2FzZSBzbyB3ZSdyZSBkZXBsb3lpbmcgdGhlbSBwcmV0dHkgaGVhdmlseS4K
Ci0tIAogIEp1c3RpbiBLaWxwYXRyaWNrCiAganVzdGluQGFsdGhlYS5uZXQKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=
