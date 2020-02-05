Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 638E4153524
	for <lists+cake@lfdr.de>; Wed,  5 Feb 2020 17:22:35 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4FC593CB3B;
	Wed,  5 Feb 2020 11:22:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1580919754;
	bh=euCApAGFhOe4cXROw8pGpszJOimdCPRbAYaivr7NDyc=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cZd//ynBTpglrA45hXGF7Qk7gXGmOLSixe7G/bV1CwzaJN28E1BKqdQZoXEQO34Jo
	 d7QaMwsdn3E9fM0y311g5WoVCD/JzG8JXPxWv75WnGg+ZmJZxoVJv1sV6fuWBX5l/M
	 RizhGAaWOnOAIQYVOAiFozMzbepoRvjoFUcdveAs4Mr6I1EbZaILU65m7gHHhnLoco
	 h+AovBK1U6qy0yXRAncW3OpUMewV2OOx96ptQQYdskj4avpl/ULJ752uYzm80RsGe6
	 enBwaZc7aCsuuXAtdDTFsoM8pALrNIutr/jLh5ka/TFIXTkkiMeAMy0oAPJbsXMqOC
	 Sv/nfDGTwKbtA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 269E63B29D;
 Wed,  5 Feb 2020 11:22:32 -0500 (EST)
Received: by mail-lj1-x235.google.com with SMTP id x14so2875955ljd.13;
 Wed, 05 Feb 2020 08:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=tniOU/TMuQlgI1MUNC5sE1fKkDA7cXtJqZ49ewDtpWw=;
 b=UMgbyYR6QbuONlBo7ANBifw+Sv85CDEARZg/6VIWHkcrvzIOE+OnBzta1us7uBcMkM
 6NjUyAvdVlxnuNb2xV1NEo1WDjUHFOfXy622ZSe0hjJJr0L8eYLfjmUGQ8nPPBi75z7t
 UB8N9tGQybA3DtGRX3OBbKyfisqrlBeTXasjkmYzZmNa9MHMak0DSRSQ14ujoH+ZcDfZ
 XN+ZxNb0MlWLeyHrs5z1/g/HXlyRIA8zjsjjmTl/aDm/pFmwemdopj6vr55fuiJorZmp
 6eFuOLIS1VfKW0mQs/LeK/LbroLq/iVFAgrW9Y2elfCS93ylrg50oxLzo7Y+XIZQmwVa
 N5SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=tniOU/TMuQlgI1MUNC5sE1fKkDA7cXtJqZ49ewDtpWw=;
 b=uLvsnHxOx51zT2DIh170nPyado0W7sUFZZjH8zg5Ad0lNjYDqtkhjNkasX7RhWnSNI
 pB4HE/vGt4bMGQ+z62p9j9URbmKmZtc9qMuD/8bjxNID6ysV6LDSLR78rw1P81JoTrac
 1kde8QQaYm4bs2VNOQzFDHEzEchFFVYsU8bTB4hJYu/zvv6qbb7XU7b57De5r24LJHNE
 hJRF2GM+Qsy51nDAPVH42UOp/0oBPIby9KCfvt06X4cLd0G7ifddFG4r1zFMasVlOuBI
 Di4V/7eWk1feSFsX7atbOU47mmI6F1G94OT9d88KgZeFtdWcYfMQPolKKzALqU9rwuif
 zbmw==
X-Gm-Message-State: APjAAAWr0gC58wOWt4vkXDr29pngK1xWU737n5q75glSE1X/m3uQvA9+
 kFDuxB77p7IyX5OQMtYfK/s=
X-Google-Smtp-Source: APXvYqxV1m7Bnh+3Qoa2F4QGDpUdGWZK1qcPfdPFx0+il7/4HW7xKt7lyzlQqGRvM3g+tVJBKaIUiQ==
X-Received: by 2002:a2e:8907:: with SMTP id d7mr21447084lji.71.1580919751112; 
 Wed, 05 Feb 2020 08:22:31 -0800 (PST)
Received: from jonathartonsmbp.lan (83-245-229-102-nat-p.elisa-mobile.fi.
 [83.245.229.102])
 by smtp.gmail.com with ESMTPSA id q17sm13473954ljg.23.2020.02.05.08.22.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Feb 2020 08:22:30 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <87v9oluih6.fsf@taht.net>
Date: Wed, 5 Feb 2020 18:22:28 +0200
Message-Id: <CC59BA6E-9C87-437E-A982-18D814EC2415@gmail.com>
References: <CAKf5G6JeQFqDYV5Ttop3Tqb7WUGW2ZvYj-4S6C=VsF2JeZfs_Q@mail.gmail.com>
 <07250850-5FAF-4AB7-9551-0B26D648AF3D@gmail.com>
 <CAA93jw7AW=8ZL2SU3NCnYaRt1Ax1KfkbTu6MP22KX0hZqqM9XA@mail.gmail.com>
 <CAKf5G6KH5SXzHL131Xb4+Mz1MHLAGEmtOgzxfUidb5Ncma5d0w@mail.gmail.com>
 <87v9oluih6.fsf@taht.net>
To: Dave Taht <dave@taht.net>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] [Make-wifi-fast]  Cake in mac80211
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 =?utf-8?Q?Bj=C3=B8rn_Ivar_Teigen?= <bjorn@domos.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiA1IEZlYiwgMjAyMCwgYXQgNjowNiBwbSwgRGF2ZSBUYWh0IDxkYXZlQHRhaHQubmV0PiB3
cm90ZToKPiAKPj4gICAgRCkgImNvYmFsdCIgaXMgcHJvdmluZyBvdXQgYmV0dGVyIGluIHNldmVy
YWwgcmVzcGVjdHMgdGhhbiBwdXJlCj4+ICAgIGNvZGVsLAo+PiAgICBhbmQgZm9sZGluZyBpbiBz
b21lIG9mIHRoYXQgbWFrZXMgc2Vuc2UsIGV4Y2VwdCBJIGRvbid0IGtub3cgd2hpY2gKPj4gICAg
dGhpbmdzIGFyZSB0aGUgbW9zdCB2YWx1YWJsZSBjb25zaWRlcmluZyB3aWZpJ3Mgb3RoZXIgcHJv
YmxlbXMKPj4gCj4+IFJlYWRpbmcgcGFwZXIgbm93LiBUaGFua3MgZm9yIHRoZSBwb2ludGVyLgo+
IAo+IEkgdGVuZCB0byB0aGluayBvdXQgdGhhdCBmcV9jb2RlbCBpcyAiZ29vZCBlbm91Z2giIGlu
IG1vc3QKPiBjaXJjdW1zdGFuY2VzLiBUaGUgZWRnZSBjYXNlcyB0aGF0IGNha2UgaGFuZGxlcyBi
ZXR0ZXIgYXJlIGEgbWF0dGVyIG9mIGEKPiBmZXcgcGVyY2VudGFnZSBwb2ludHMsIHZzIG9yZGVy
cyBvZiBtYWduaXR1ZGUgdGhhdCB3ZSBnZXQgd2l0aCBmcV9jb2RlbAo+IGFsb25lIHZzIGEgdnMg
YSBGSUZPLCBhbmQgbXkgZm9jdXMgb2YgbGF0ZSBoYXMgYmVlbiB0byBtYWtlIHRoaW5ncyB0aGF0
Cj4gYXRlIGxlc3MgY3B1IG9yIHdlcmUgYmV0dGVyIG9mZmxvYWRhYmxlIHRoYW4gbmV0d29ya2Vk
IGJldHRlci4gT3RoZXJzIGRpZmZlci4gCgpJIHRoaW5rIENPQkFMVCBtaWdodCBiZSB3b3J0aCBw
dXR0aW5nIGluLCBhcyBpdCBzaG91bGQgaGF2ZSBlc3NlbnRpYWxseSBubyBuZXQgY29zdCBhbmQg
ZG9lcyBiZWhhdmUgYSBsaXR0bGUgYmV0dGVyIHRoYW4gc3RvY2sgQ29kZWwuICBJdCdzIGJldHRl
ciBhdCBoYW5kbGluZyB1bnJlc3BvbnNpdmUgdHJhZmZpYywgaW4gcGFydGljdWxhci4KCiAtIEpv
bmF0aGFuIE1vcnRvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6
Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
