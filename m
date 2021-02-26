Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B5244325AFB
	for <lists+cake@lfdr.de>; Fri, 26 Feb 2021 01:32:47 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 45E493CB40;
	Thu, 25 Feb 2021 19:32:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614299566;
	bh=u8fw44PBq+WGG6agF9LfU7vkv0PuRwJrcmB5DIEnbmQ=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GK/8Oc2zeQhHqHI+OezVZlv4j1qPkK5mOfa8vdk8BL9AaoOyy7rmevWGBPXAvLhHR
	 i2Lc6Of2TSrg+0vU7SA/4mR4O6ZYlJZUbLLjDCexIdiH1w/u2H+ohe6vuVlK8t393n
	 QHNhlDAMmpfKvzfC/l7J3UA5DAUsCSuWTUkSFZkYxz+XSDfzDlCJwaqLS4rgmcXEj3
	 MrEw1Bxt1L2vdPm6vIBFIED/M99fbLaKRGkepSANkTi3mZoax6UKGMc3rxULhzEagc
	 DSFEQ9GpKUnQ3iyUi8PnkhNF8WWq/wQUG29UcNTmyJum4ELswEn1tAZTWM48iN6+n0
	 nP1QeLN+5ytlQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D16493B2A4;
 Thu, 25 Feb 2021 19:32:44 -0500 (EST)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 86829989;
 Thu, 25 Feb 2021 19:32:43 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 25 Feb 2021 19:32:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm2; bh=0
 a0eYfahC5FnBiUkge1t3ARbdBlvPbZoB1UXtEhsrTg=; b=Yh+oBZlg3vT8rwkwJ
 iZxGHz9QaupK210QdbBr1fF5jvdzBUlB8NvpBXluf96RL3/3ycHz+Kbe7nDecduO
 lhext2Q7rvKGsIBScYyeOUPlt61oafGMXhF/uRn53GDhP/7MsyQNyGQ9KRnqN8nu
 BzEBITnJLOUmMN8z4CeZiCUGamtV/6JgEsILxntLHUT+0bNCqxjZVC/Z/fWdHu/s
 1hwua8v6k58Ppf3xIoBVx7LYyLkAlZ5IEB3U6udxCObBCFSYg+LGhi/QmWhwbTY6
 0gPiWsdwthxkp/pzBxYA08WXZpJMSBhSvaV9NzgvbVKDH278eJs4k0gJkmXL8xVQ
 iKkmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=0a0eYfahC5FnBiUkge1t3ARbdBlvPbZoB1UXtEhsr
 Tg=; b=hH3kPMbgqqe6uEBTWaTV/EowOJAjILVCqqAE85vvzHOGxISUbIaeb7xZV
 u95lI4gIMIN219fikP5NFgh4VDwtn2cRgt7btzSRt/sTgmL9ByS5h1hUaRUGQ0s6
 V/x5NodTssyZgjg4O1BX3CPu6tNKRuzMFLDE4n56q+VwZVzpodFqK9YVwIZRcsQI
 3fPd7d3YdOke95QJ/mReJqAD2SfaKufvfyiAIfGNnb2H+Nj6dmVxpQOacw7PHtUY
 gAug0n/AOtxcySRc7iWQpJcWPTlgBSvHIaWE0xPYXN+VHTT8cdHob1a5qaQuKCzC
 cgBE17l8mIfQVHKpZya/4VPEQNmgw==
X-ME-Sender: <xms:qkE4YILGVakoWzQ1O9yaHntXvohTJJhtyIeYLHSoHmhtP6sm5a568g>
 <xme:qkE4YIJtrC10pjEJmiE-i4cj6Yh2K51TQa4bYKdoRb2Oj3vaSCzZIfp_1DV-WVbJu
 m5R62cT9jrH9K6PSA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrledtgddvgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgfgsehtkeertddtfeejnecuhfhrohhmpefpihhlshcu
 tehnughrvggrshcuufhvvggvuceomhgvsehlohgthhhnrghirhdrnhgvtheqnecuggftrf
 grthhtvghrnhepuddvteduleefudeiheefudfguddvudffjeeigeeuhfehieekffffledu
 gefgffevnecukfhppeejjedrudekrddugeekrddutdegnecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgvsehlohgthhhnrghirhdrnhgvth
X-ME-Proxy: <xmx:qkE4YIvEBQTQXTdrplbXC6WOJRJj504-l-EpeL5x2RVNKkpOy4FDsw>
 <xmx:qkE4YFb9EOQI-NO-HBebo8YbLY6QcQ93JdoctuKo62gDrSdFuhzPtw>
 <xmx:qkE4YPblYrrPkexBobqEfz3yAPUYyusDNn-Olbm2ZxlRdQc9PXxvIw>
 <xmx:q0E4YOX9NbOZcezvNFzkOpxTbC5AjHqUyfJI4vbrm2F8dgDsiU1vIg>
Received: from [10.1.100.229] (77.18.148.104.tmi.telenormobil.no
 [77.18.148.104])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3BF3D24005A;
 Thu, 25 Feb 2021 19:32:41 -0500 (EST)
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@toke.dk>,
 Dave Taht <dave.taht@gmail.com>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <CAA93jw4-wspLUfL_ZJW1BN0uWaEqZGMOVnD3Z1jgrKOJ_r8xLw@mail.gmail.com>
 <87im6h4u2p.fsf@toke.dk>
 <a43b8d79-8d32-4048-a47e-df92eae622fa@www.fastmail.com>
 <369A70AB-3ADF-4211-8A09-E9FB77CEE59D@toke.dk>
 <90a13934-4ec7-4872-bbf8-c6c0f6304ce3@www.fastmail.com>
 <87wnuw1luc.fsf@toke.dk>
From: Nils Andreas Svee <me@lochnair.net>
Message-ID: <86692246-90d3-4b5b-bcb3-5a67a29d67f7@lochnair.net>
Date: Fri, 26 Feb 2021 01:32:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <87wnuw1luc.fsf@toke.dk>
Content-Language: en-US
Subject: Re: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitter at
 8pm CET Tuesday 23
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
Cc: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Simon Sundberg <Simon.Sundberg@kau.se>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gMi8yNS8yMSAxMTozMCBBTSwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgoKPiBB
aCwgd2lyZWd1YXJkIGRvZXNuJ3QgaGF2ZSBYRFAgc3VwcG9ydCwgc28gdGhhdCdzIGxpa2VseSBu
b3QgZ29pbmcgdG8KPiB3b3JrOyBhbmQgaWYgeW91IHJ1biBpdCBvbiB0aGUgcGh5c2ljYWwgaW50
ZXJmYWNlLCBldmVuIGlmIHlvdSBkaWRuJ3QKPiBnZXQgZHJpdmVyIGVycm9ycywgdGhlIHRvb2wg
d291bGQganVzdCBzZWUgdGhlIGVuY3J5cHRlZCBwYWNrZXRzIHdoaWNoCj4gaXMgbm90IHRlcnJp
Ymx5IGhlbHBmdWwgKGl0IHBhcnNlcyBUQ1AgdGltZXN0YW1wcyB0byBtYXRjaAo+IGluY29taW5n
L291dGdvaW5nIHBhY2tldHMgYW5kIGNvbXB1dGUgdGhlIFJUVCkuCgpJIGZpZ3VyZWQgdGhhdCBt
aWdodCBiZSB0aGUgY2FzZS4gWWVzIEkgd291bGQndmUgZGlzYWJsZWQgdGhlIFZQTiBpZiBJIApk
aWRuJ3QgZ2V0IGRyaXZlciBlcnJvcnMuCkkgY2hhbmdlZCB0aGUgbmV0d29yayBpbnRlcmZhY2Ug
dG8gdXNlIGFuIGVtdWxhdGVkIEludGVsIEUxMDAwIHRvbmlnaHQsIAphbmQgaWYgSSBieXBhc3Mg
dGhlIFZQTiBpdCB3b3JrcyBhcyBpdCBzaG91bGQuCgo+IEkgZ3Vlc3Mgd2Ugc2hvdWxkIGJlIG1v
cmUgZmxleGlibGUgYWJvdXQgd2hpY2ggaG9va3Mgd2Ugc3VwcG9ydCwgc28gaXQKPiBjYW4gYWxz
byBiZSB1c2VkIG9uIGRldmljZXMgd2l0aCBubyBYRFAgc3VwcG9ydC4gQWRkaW5nIGluIFNpbW9u
LCB3aG8gaXMKPiB3cml0aW5nIHRoZSBjb2RlOyBJIHRoaW5rIGhlIGlzIGZvY3VzZWQgb24gZ2V0
dGluZyBhIGNvdXBsZSBvZiBvdGhlcgo+IGZlYXR1cmVzIGRvbmUgZmlyc3QsIGJ1dCB0aGlzIGNv
dWxkIGdvIG9uIHRoZSBUT0RPIGxpc3QgOikKCkl0J3Mgbm90IGxpa2UgSSdtIGluIGEgaHVycnks
IGFuZCBJJ2QgcHJvYmFibHkgbmVlZCBzb21lIHRpbWUgdG8gZmlndXJlIApvdXQgaG93IHRvIHR3
ZWFrIHRoZSBDQUtFIHBhcmFtZXRlcnMgY29ycmVjdGx5IHdpdGggdGhpcyBhbnl3YXkgOykKClNw
ZWFraW5nIG9mLCBpc24ndCBvbmUgb2YgdGhlIGNoYWxsZW5nZXMgd2l0aCBzb2x1dGlvbnMgbGlr
ZSB0aGVzZSB0aGF0IAppdCdzIGhhcmQgdG8gdGVsbCB3aGVuIGNvbmRpdGlvbnMgaGF2ZSBpbXBy
b3ZlZCBhbmQgYWxsb3cgZm9yIG1vcmUgCnRocm91Z2hwdXQ/IEF0IGxlYXN0IHRoYXQncyB3aGF0
IEkgcmVtZW1iZXIgYmVpbmcgdGhlIGlzc3VlIHdoZW4gSSAKdGVzdGVkIENBS0UncyBhdXRvcmF0
ZS1pbmdyZXNzIGJhY2sgaW4gdGhlIGRheS4KCgotIE5pbHMKCj4+IC1Ub2tlCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL2Nha2UK
