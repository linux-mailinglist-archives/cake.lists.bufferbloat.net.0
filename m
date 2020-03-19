Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8194918C2E8
	for <lists+cake@lfdr.de>; Thu, 19 Mar 2020 23:20:52 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DEA8C3CB39;
	Thu, 19 Mar 2020 18:20:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1584656450;
	bh=Ive9TU8F3m8asbzDNox5ZxxWQbHdJM3vYtCkuebkYTQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bryItowF4s/ydT1wAjVKkt+KMvvEMGzw/jI8Rs9OgGo7e0YW8mBWVhdQPb1vw8Fhx
	 VaP4T+nSACxW60OzQ4ElDrbCOMBQ0esrWemJd4lQy5Q3NTwCp46ojfhIxdtuycgylL
	 R5sXIn3DqQudT506OuK/s007h5xOYhl9QtzAX+jbE6MzUdO9ZMNlg0a8fJI5MTNj5V
	 ToQkOjRIX+vOOingiPGjjFgzspXh34cHYXidJGluleItutcRnqJIvC6s9xpO0ux8Or
	 6JMLgcHUNZuxYY3X9z9A96OjLuA282g+gulDhu7gYy556D3bDsG46fIubwoOOL3Imy
	 Ksd8lqn32mRWg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com
 [IPv6:2607:f8b0:4864:20::d34])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2C0483B29E
 for <cake@lists.bufferbloat.net>; Thu, 19 Mar 2020 18:20:49 -0400 (EDT)
Received: by mail-io1-xd34.google.com with SMTP id n21so4004766ioo.10
 for <cake@lists.bufferbloat.net>; Thu, 19 Mar 2020 15:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=mJTn3mztuc7/9/fIYOTkpjEmxB07BjC+jsM2/ZAM4oY=;
 b=mrOeZcllOX81zUdcRX0SZxDWanH/jPt5h7RZTOuuN6HackXx3icdwlVK9d+KLiRzV1
 1UOEgjDHSibY4o1rNy8qaaEWSjWKJJNOBZblh7uoKdxQd4nSxMTb85E5MhQuCDST1Q6z
 J6LXSHkd/zUA40A7bC40FcH5c67m3+tnep9J7oy7fhPGgVWBquCd+LMWGLu1K+urOo/B
 Z2jjvzckh5QIex8gPPNuaIHd2/LQtr4tY4JaMFaAmTiGx8DBqkWO9CBZXwZx6H36YdhN
 8uTJE5QN+G9qw9TstLz8RYjGwlcldbXAyjGIxd35BbeIpkvpBZ1xh0J1VJTZ+s8NuReV
 lwVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=mJTn3mztuc7/9/fIYOTkpjEmxB07BjC+jsM2/ZAM4oY=;
 b=RLX8+TOWOLh3i7h/0uin0yt1ZXuAs9iQsMz28GUJtRZwpLDJUcoA1uftFTrDNoGCLI
 9d3z6LIVyYOpfnunumrouWAHZTL15psV99RE/J3dFrOZsNImplKo7XQKjkkPjSSkknw0
 Fnajt3dxn+5NVbyAZ3hc8pc2hE3lMxEc7cfBbrd24m9KLfYU053vyk7g+9zTrjDxpLHB
 tzLDS0Z287vVWA3/Yefv5rPk1CaZ+fJLOGNf9QaMOeLf+1TKPYPQQ9Wpe6r4CKyE9Oje
 ghfmqFYGq9w6fezeW+t5Y4MFUJOpCYFfeWNAX7sihgC1VBnT7OsIKvqkLp5/xqIKiULP
 Yi3Q==
X-Gm-Message-State: ANhLgQ1IcdoJDKYZcl6e+MQuOhoslG3czBUIdd66d+ARgr0qLYJO3Lbk
 zdlR7U8l6c9EgeHowVCEeYJhiXBDvD6WLiePVAcJxUZd
X-Google-Smtp-Source: ADFU+vtEzp1h4RX0O6kUZBqtCHWo9RodrtaVhGRnhVzqje1LYDFPAtZbQoUCuzX9yvy46Ndc6ymtSxjMYQ4FgkzND3U=
X-Received: by 2002:a02:1683:: with SMTP id a125mr5162374jaa.61.1584656447884; 
 Thu, 19 Mar 2020 15:20:47 -0700 (PDT)
MIME-Version: 1.0
References: <1584524612-24470-1-git-send-email-ilpo.jarvinen@helsinki.fi>
In-Reply-To: <1584524612-24470-1-git-send-email-ilpo.jarvinen@helsinki.fi>
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 19 Mar 2020 15:20:35 -0700
Message-ID: <CAA93jw5WtXG8+Xv3Q25ri9L5yQxqAgve7AqapuzJGyy+rTKu0A@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: [RFC PATCH 00/28]: Accurate ECN for TCP
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

LS0tLS0tLS0tLSBGb3J3YXJkZWQgbWVzc2FnZSAtLS0tLS0tLS0KRnJvbTogSWxwbyBKw6Rydmlu
ZW4gPGlscG8uamFydmluZW5AaGVsc2lua2kuZmk+CkRhdGU6IFdlZCwgTWFyIDE4LCAyMDIwIGF0
IDI6NDUgQU0KU3ViamVjdDogW1JGQyBQQVRDSCAwMC8yOF06IEFjY3VyYXRlIEVDTiBmb3IgVENQ
ClRvOiA8bmV0ZGV2QHZnZXIua2VybmVsLm9yZz4KQ2M6IFl1Y2h1bmcgQ2hlbmcgPHljaGVuZ0Bn
b29nbGUuY29tPiwgTmVhbCBDYXJkd2VsbAo8bmNhcmR3ZWxsQGdvb2dsZS5jb20+LCBFcmljIER1
bWF6ZXQgPGVyaWMuZHVtYXpldEBnbWFpbC5jb20+LCBPbGl2aWVyClRpbG1hbnMgPG9saXZpZXIu
dGlsbWFuc0Bub2tpYS1iZWxsLWxhYnMuY29tPgoKCkhpIGFsbCwKCkhlcmUncyB0aGUgZnVsbCBB
Y2N1cmF0ZSBFQ04gaW1wbGVtZW50YXRpb24gbW9zdGx5IGJhc2VkIG9uCiAgaHR0cHM6Ly90b29s
cy5pZXRmLm9yZy9odG1sL2RyYWZ0LWlldGYtdGNwbS1hY2N1cmF0ZS1lY24tMTEKCkNvbW1lbnRz
IHdvdWxkIGJlIGhpZ2hseSBhcHByZWNpYXRlZC4gVGhlIEdTTy9UU08gbWF6ZSBvZiBiaXRzCmlu
IHBhcnRpY3VsYXIgaXMgc29tZXRoaW5nIEknbSBzb21ld2hhdCB1bnN1cmUgaWYgSSBnb3QgaXQK
cmlnaHQgKGZvciBhIGZlYXR1cmUgdGhhdCBoYXMgYSBzb2Z0d2FyZSBmYWxsYmFjaykuCgpUaGVy
ZSBpcyBhbiBleHRlbnNpdmUgc2V0IG9mIHBhY2tldGRyaWxsIHVuaXQgdGVzdHMgZm9yIG1vc3Qg
b2YKdGhlIGZ1bmN0aW9uYWxpdHkgKEknbGwgc2VuZCBzZXBhcmF0ZWx5IHRvIHBhY2tldGRyaWxs
KS4KClBsZWFzZSBub3RlIHRoYXQgdGhpcyBzdWJtaXNzaW9uIGlzIG5vdCB5ZXQgaW50ZW50ZWQg
dG8gYmUKaW5jbHVkZWQgdG8gbmV0LW5leHQgYmVjYXVzZSBzb21lIHNtYWxsIGNoYW5nZXMgc2Vl
bSBzdGlsbApwb3NzaWJsZSB0byB0aGUgc3BlYy4KCiBEb2N1bWVudGF0aW9uL25ldHdvcmtpbmcv
aXAtc3lzY3RsLnR4dCB8ICAxMiArLQogZHJpdmVycy9uZXQvdHVuLmMgICAgICAgICAgICAgICAg
ICAgICAgfCAgIDMgKy0KIGluY2x1ZGUvbGludXgvbmV0ZGV2X2ZlYXR1cmVzLmggICAgICAgIHwg
ICAzICsKIGluY2x1ZGUvbGludXgvc2tidWZmLmggICAgICAgICAgICAgICAgIHwgICAyICsKIGlu
Y2x1ZGUvbGludXgvdGNwLmggICAgICAgICAgICAgICAgICAgIHwgIDE5ICsrCiBpbmNsdWRlL25l
dC90Y3AuaCAgICAgICAgICAgICAgICAgICAgICB8IDIyMSArKysrKysrKysrLS0tCiBpbmNsdWRl
L3VhcGkvbGludXgvdGNwLmggICAgICAgICAgICAgICB8ICAgOSArLQogbmV0L2V0aHRvb2wvY29t
bW9uLmMgICAgICAgICAgICAgICAgICAgfCAgIDEgKwogbmV0L2lwdjQvYnBmX3RjcF9jYS5jICAg
ICAgICAgICAgICAgICAgfCAgIDIgKy0KIG5ldC9pcHY0L3N5bmNvb2tpZXMuYyAgICAgICAgICAg
ICAgICAgIHwgIDEyICsKIG5ldC9pcHY0L3RjcC5jICAgICAgICAgICAgICAgICAgICAgICAgIHwg
IDEwICstCiBuZXQvaXB2NC90Y3BfZGN0Y3AuYyAgICAgICAgICAgICAgICAgICB8ICAgMiArLQog
bmV0L2lwdjQvdGNwX2RjdGNwLmggICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIG5ldC9pcHY0
L3RjcF9pbnB1dC5jICAgICAgICAgICAgICAgICAgIHwgNTU4ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKystLS0tLQogbmV0L2lwdjQvdGNwX2lwdjQuYyAgICAgICAgICAgICAgICAgICAgfCAg
IDggKy0KIG5ldC9pcHY0L3RjcF9taW5pc29ja3MuYyAgICAgICAgICAgICAgIHwgIDg0ICsrKyst
CiBuZXQvaXB2NC90Y3Bfb2ZmbG9hZC5jICAgICAgICAgICAgICAgICB8ICAxMSArLQogbmV0L2lw
djQvdGNwX291dHB1dC5jICAgICAgICAgICAgICAgICAgfCAyOTggKysrKysrKysrKysrKysrLS0t
CiBuZXQvaXB2NC90Y3BfdGltZXIuYyAgICAgICAgICAgICAgICAgICB8ICAgNCArLQogbmV0L2lw
djYvc3luY29va2llcy5jICAgICAgICAgICAgICAgICAgfCAgIDEgKwogbmV0L2lwdjYvdGNwX2lw
djYuYyAgICAgICAgICAgICAgICAgICAgfCAgIDQgKy0KIG5ldC9uZXRmaWx0ZXIvbmZfbG9nX2Nv
bW1vbi5jICAgICAgICAgIHwgICA0ICstCgotLQogaS4KCnBzLiBNeSBhcG9sb2dpZXMgaWYgeW91
IGdvdCBhIGR1cGxpY2F0ZSBjb3B5IG9mIHRoZW0uIEl0IHNlZW1zIHRoYXQKYW5zd2VyaW5nICJu
byIgdG8gZ2l0IHNlbmQtZW1haWwgYXNraW5nICJTZW5kIHRoaXMgZW1haWw/IiBtaWdodApzdGls
bCBoYXZlIHNlbnQgc29tZXRoaW5nIG91dC4KCgoKLS0gCk1ha2UgTXVzaWMsIE5vdCBXYXIKCkRh
dmUgVMOkaHQKQ1RPLCBUZWtMaWJyZSwgTExDCmh0dHA6Ly93d3cudGVrbGlicmUuY29tClRlbDog
MS04MzEtNDM1LTA3MjkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6
Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
