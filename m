Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 538A54811F7
	for <lists+cake@lfdr.de>; Wed, 29 Dec 2021 12:22:55 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E3A9A3CB41;
	Wed, 29 Dec 2021 06:22:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1640776973;
	bh=H8MjIyhmBEhxCqmQ7PVzXmhQ0mm4NeTWgBJOGltaD/U=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=a0c2P486asApwZeHNliY/RRQgKY+yoiAEsZq5keOT/3hWN5kFg9Fvrh3WgC8/H6mK
	 esQ6sxpuug/jZ9/wG+1rMZPenSskLhY3KSCVe1rEMcop6HzUptshPhIMy0rHPUc4jM
	 O7H2OT2QEmIfsjgFYw7ccbQx3wPqL1lb98c2ZFv6osdAsrS7SB4UgSxgh0DJ2hDI2x
	 A6lT7w8/D2mG0qgtCNtH8+vGywVZ4Xe010KEUmuPSdKKPFuVjPu/H9o/lxZO5lSnFh
	 7xdRlgTNbvIs4qvfzqXCkmmj3/OvHrbbhCRPdgvCrSPYcO9NjEiwuIWIm2IdODJjdK
	 knL2b5oYmBTSg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0103A3CB38
 for <cake@lists.bufferbloat.net>; Wed, 29 Dec 2021 06:22:52 -0500 (EST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id BA0EB5C0175
 for <cake@lists.bufferbloat.net>; Wed, 29 Dec 2021 06:22:52 -0500 (EST)
Received: from imap48 ([10.202.2.98])
 by compute6.internal (MEProxy); Wed, 29 Dec 2021 06:22:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 mime-version:message-id:in-reply-to:references:date:from:to
 :subject:content-type:content-transfer-encoding; s=fm2; bh=Kuj0g
 VkoIrOenqYHfqWg3VqB6JjWhvlOUXBHSzTTOIM=; b=Vajfo+yNEcwjag7j27AGF
 dqUIcX7mDNXpeiXHqrthpNL7PONrq9oY5fPImrFLYA3NApmfRbaTEeaVG66xM2f+
 EA0X0xd4j3I4IJbuTTszGfzG+h10vCUHxttIoz2jFUTWbLXY236XWiZYeQIOiG6M
 0MIdzJF3DCdoXxrZnmOYsD9ACqNo1xmuob20e3xSfqmSi3qFOiIFI43nNTNROkpE
 x6XZeaJbwvRY8PRtq+VnZhukdF+kLjBszaIGfudz0tjXYW7KNCQxU8cq0tGXL1QD
 /ZQrIN+ZXxbp58s8CWBKv70RoJYLPQ0SxYXWlgyeTqG9bJLXvpUsfLDtGzupM6Sz
 w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; bh=Kuj0gVkoIrOenqYHfqWg3VqB6JjWhvlOUXBHSzTTO
 IM=; b=ItoZYZsTZye9poxYOnf7n0KMPRkMiTH4uh3aI0j+tmt4hQqSZhbBXDyML
 MUmmM/dPMsoDBKbk0pMOQLvKrlJF8+2s3lOTGk4raoiea6leCl68QcqJJSUlcLXo
 zwgaQSfWk7F/cs1X+7KZ+Wc8lt0AoWEIevxd5Ky0uv9fYk+7SLlNTnAvBgMm0JX9
 hI+0WO8EvzOunCG9uoZxBfT2eI/94jRFZe4P8Xm3RhcjjD6vVMK8mS8EzsHimWFb
 mBpmdgn3P9MdrnIlG+MPUITuX+rxohiQjyjkS2hI+JiMMN3VUTTse1fTW2mFdG8/
 mYPqbYPIjoNc3/g01IE8riL3+acAA==
X-ME-Sender: <xms:DEXMYXQRa3QYB9zyxSc6aLJaDGfjsBYfKkVuRlfHPNr1uI4-IY3iOw>
 <xme:DEXMYYzCKrpJH_4zWGdbf9YnQKY0-zJ9jIc1FrMlQtDLC-KLMDq-NWl8bJHD49HUh
 KbFah9cUStmVD3jxw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddruddvuddgvdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgfgsehtqhertderreejnecuhfhrohhmpedfpfhi
 lhhsucetnhgurhgvrghsucfuvhgvvgdfuceomhgvsehlohgthhhnrghirhdrnhgvtheqne
 cuggftrfgrthhtvghrnhepfeeiffejvdekhedvteduhfduveehleefjedugfekfefghfel
 iedtffekuedtvddtnecuffhomhgrihhnpehophgvnhifrhhtrdhorhhgpdgrrhgthhhivh
 gvrdhorhhgpdhitggvihdrohhrghdpsghufhhfvghrsghlohgrthdrnhgvthenucevlhhu
 shhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmvgeslhhotghhnh
 grihhrrdhnvght
X-ME-Proxy: <xmx:DEXMYc31bmfeyPEo7xHUuczjRHIStKxk8Tb6XE49y5QyBMWZ5ZRpIw>
 <xmx:DEXMYXBC9F54WNBDdvIKTwTr-XBNXO1iOjEC7dMl9zuDND8BT0VXmA>
 <xmx:DEXMYQiuNH0NqG8qxwVHkV19xPQcUIel7mEFtsZAFSG9SVf2PBBc1w>
 <xmx:DEXMYbu2uJ9QfqlLGR2E-fQEFY0x5ukK2Z_foqRytcUjb5Y5dMiRFQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 8441021E006E; Wed, 29 Dec 2021 06:22:52 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4525-g8883000b21-fm-20211221.001-g8883000b
Mime-Version: 1.0
Message-Id: <7a2e54d5-cbe4-4f3b-8e20-69608fd18641@www.fastmail.com>
In-Reply-To: <CAA93jw7kuRsj_3ddQc105+V3G9C3t+xXJ9j7v4NMfsReQTva+g@mail.gmail.com>
References: <CAA93jw7kuRsj_3ddQc105+V3G9C3t+xXJ9j7v4NMfsReQTva+g@mail.gmail.com>
Date: Wed, 29 Dec 2021 12:22:31 +0100
From: "Nils Andreas Svee" <me@lochnair.net>
To: "CAKE list" <cake@lists.bufferbloat.net>
Subject: Re: [Cake] the cake-autorate stuff for lte is looking promising
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

V2UncmUgZ2V0dGluZyB0aGVyZSA6KQpJZiB0aGVyZSdzIGFueSBpbnRlcmVzdGVkIGZvbGtzIG9u
IHRoaXMgbGlzdCBwbGVhc2UgZG8gam9pbiB1cyBvdmVyIGF0IHRoZSBPcGVuV3J0IGZvcnVtLgoK
QmVzdCBSZWdhcmRzCk5pbHMKCk9uIFdlZCwgRGVjIDI5LCAyMDIxLCBhdCAwNDo0MywgRGF2ZSBU
YWh0IHdyb3RlOgo+IGh0dHBzOi8vZm9ydW0ub3BlbndydC5vcmcvdC9jYWtlLXctYWRhcHRpdmUt
YmFuZHdpZHRoLzEwODg0OC8xNjE4Cj4KPgo+IC0tIAo+IEkgdHJpZWQgdG8gYnVpbGQgYSBiZXR0
ZXIgZnV0dXJlLCBhIGZldyB0aW1lczoKPiBodHRwczovL3dheWZvcndhcmQuYXJjaGl2ZS5vcmcv
P3NpdGU9aHR0cHMlM0ElMkYlMkZ3d3cuaWNlaS5vcmcKPgo+IERhdmUgVMOkaHQgQ0VPLCBUZWtM
aWJyZSwgTExDCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5m
by9jYWtlCg==
