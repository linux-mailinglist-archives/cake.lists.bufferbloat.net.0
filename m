Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1159EA32C
	for <lists+cake@lfdr.de>; Tue, 10 Dec 2024 00:52:02 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A64C83CB43;
	Mon,  9 Dec 2024 18:52:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1733788320;
	bh=2J/wc7IysT7/nkkZub0xUeFqpkn/HpqQcoj4X29HBqs=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=MUcSP8xxVcc5+TpB46DxLV7ysmBiqn6rLsQnir+BtZNYnvVzds+yrCKJPdiyQPPT/
	 ax90Mj73r4ftCotkKWmvi4CHHD7g5PJVE1HiHD9KCYnZT2mSClreaRvwYLRicOUEq3
	 vEUdlo0m3hXVZYAZ+iAO1+VWK9vEC2YZMwgHkWDehb0EqFYQ5WrN+qRQa7OQMWlRSi
	 H3HJLCK7d/9jHNm49q1fHdf3fUJ/X4ywOFrM6QDC63VqSFyklvMPVuPbdQShpD6LZV
	 betenquopylrxhGYct65VJ3NOGPmunVCOBiickoI1Llg2B5mOIJBBoAlYg6W78DWke
	 gt30ckpMgckYQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7816C3CB38
 for <cake@lists.bufferbloat.net>; Mon,  9 Dec 2024 18:51:59 -0500 (EST)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 99203A41A50;
 Mon,  9 Dec 2024 23:50:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 621E9C4CED1;
 Mon,  9 Dec 2024 23:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1733788318;
 bh=8UK2uET75K2Fs6UHha5BLMs94LdFMBM77wMB7p8SbBc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kmm9C9ulVYoNl+FBTgLFJd/8mc1weOh0F6XavqRiKDzHPYFBHYYZzF/tu9Weo5Hrn
 HjqlZ+3cAgmeqwOu3qvIQsTxmHjD5P8a0VUM02yYzauYSuHSOMS8GLWYfCe8V7Shjk
 o3Gh7gS0vzVrGfdt3b3Eedbuu8vfTap0EnZS/ts7+pZmL40DZ9SB6LCOkcYec/J0pK
 eRhgKCssjmEDDF3UIHBhJJMVPajAlMVxtvE4kuuAXH5vJ1/n3xTgbvFObv2Y2sHbHk
 g94ZS4ToS+An3qX4SlCdUDsYcOTwuA07CkXh0M9BAuoYgQrUIs60D2+wC5GdzCHGGG
 AIpql8ewnyVmg==
Date: Mon, 9 Dec 2024 15:51:57 -0800
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>
Message-ID: <20241209155157.6a817bc5@kernel.org>
In-Reply-To: <20241209-cake-drop-reason-v1-1-19205f6d1f19@redhat.com>
References: <20241209-cake-drop-reason-v1-1-19205f6d1f19@redhat.com>
MIME-Version: 1.0
Subject: Re: [Cake] [PATCH net-next] net_sched: sch_cake: Add drop reasons
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
From: Jakub Kicinski via Cake <cake@lists.bufferbloat.net>
Reply-To: Jakub Kicinski <kuba@kernel.org>
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gTW9uLCAwOSBEZWMgMjAyNCAxMzowMjoxOCArMDEwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4gQWRkIHRocmVlIHFkaXNjLXNwZWNpZmljIGRyb3AgcmVhc29ucyBmb3Igc2No
X2Nha2U6Cj4gCj4gIDEpIFNLQl9EUk9QX1JFQVNPTl9DQUtFX0NPTkdFU1RFRAo+ICAgICBXaGVu
ZXZlciBhIHBhY2tldCBpcyBkcm9wcGVkIGJ5IHRoZSBDQUtFIEFRTSBhbGdvcml0aG0gYmVjYXVz
ZQo+ICAgICBjb25nZXN0aW9uIGlzIGRldGVjdGVkLgo+IAo+ICAyKSBTS0JfRFJPUF9SRUFTT05f
Q0FLRV9GTE9PRAo+ICAgICBXaGVuZXZlciBhIHBhY2tldCBpcyBkcm9wcGVkIGJ5IHRoZSBmbG9v
ZCBwcm90ZWN0aW9uIHBhcnQgb2YgdGhlCj4gICAgIENBS0UgQVFNIGFsZ29yaXRobSAoQkxVRSku
Cj4gCj4gIDMpIFNLQl9EUk9QX1JFQVNPTl9DQUtFX09WRVJMSU1JVAo+ICAgICBXaGVuZXZlciB0
aGUgdG90YWwgcXVldWUgbGltaXQgZm9yIGEgQ0FLRSBpbnN0YW5jZSBpcyBleGNlZWRlZCBhbmQg
YQo+ICAgICBwYWNrZXQgaXMgZHJvcHBlZCB0byBtYWtlIHJvb20uCgpFcmljJ3MgcGF0Y2ggd2Fz
IGFkZGluZyBmYWlybHkgRlEtc3BlY2lmaWMgcmVhc29ucywgb3RoZXIgdGhhbiBmbG9vZAp0aGlz
IHNlZW1zIGxpa2UgZ2VuZXJpYyBBUU0gc3R1ZmYsIG5vPyBGcm9tIGEgdmVyeSBxdWljayBsb29r
IHRoZQpjb25nZXN0aW9uIGxvb2tzIGxpa2UgZmFpcmx5IHN0YW5kYXJkIEFRTSwgb3ZlcmxpbWl0
IGlzIGFsc28gdHlwaWNhbApmb3IgcWRpY3M/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
