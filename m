Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEE65FDF48
	for <lists+cake@lfdr.de>; Thu, 13 Oct 2022 19:49:28 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 717393CB43;
	Thu, 13 Oct 2022 13:49:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665683362;
	bh=dOQ+vRq0CwE/M00KzR6MyvXLdEZVuvIdCUHsE6lV7YU=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=oaGjuH1I2TRZxzFYS9YrZCobhoXvcKmLjDC3iZBQh4O4VhX+blXfH9nv6Odb9Do0k
	 d2MHJr8hnDbToD2AG9n5/VMu4tzN4cN1MXV/NorgOokdm+0Zs9VjnHWuXvGG2Tuymt
	 cMlqsRDQzmbfyOW3XKs08cqhSVivyPhq0b0ATiF/oRMU+efGsKBKGA5j2VAJoNH8CG
	 llS6GqP8y8goLCVAOV00cGQiJiJlFjd7Xdr9Ell5jtJfCu0rUU7GXTzAx8aYhULnIQ
	 2WdS9+h6uB3x80ijXu+irg+uNrKnhO17WGF8IAD3wQg8mPawvdyvHHRNR2E2kaaZiU
	 ae7kF6jF8i5rQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D301B3B29D;
 Thu, 13 Oct 2022 13:49:20 -0400 (EDT)
Received: by mail-wm1-x32c.google.com with SMTP id
 h205-20020a1c21d6000000b003c6c154d528so47325wmh.4; 
 Thu, 13 Oct 2022 10:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GAbwzXU6/0bCbrNUgx+Jt9VLka7Wla1I7HV245yhTJE=;
 b=QXo47gB3H7tPg0PTBdoBzyGmX38tapm+oUjDsBPGHy30ffHIsWegzm4KLwDaHFbbhn
 cf+eWhhGpOKTWmFBMhA9wf0Gq58mYanhZiSaoQ5XvgXS+4LM+67t1+mSS+OZgUnJWp1x
 2RclFWy6Yah3M3OMujzJkbk0IjIFbkoQXNbQ/sAvVYnBtTrKSdM0VAdKoaK7DXqakUV0
 xeXrsfZcvZ4ngX4Y0Dgrm89jHyBB4D0l4A7xnjp2qmIWKSbtO2SCdpYbEh2jbbVbvNh0
 SFtbW5DU1IyFJ6p8XXDCn8LWRiL0oHBCrELeHvjP3JT+cyQnT2gihX8EaOP4zYdkbinv
 CGcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GAbwzXU6/0bCbrNUgx+Jt9VLka7Wla1I7HV245yhTJE=;
 b=C5SUjpb5NSyNrS2w4s1bGqXA66+PhJr8XVcnd6pfl/iSa1c77FmBlndBDHYJECDCDM
 BVhMeWdNx9bLQ8ttGiWHkKjgA9Rj5RwoEzGutQTlqxYiG6/ZmZjmiZSUy3mZa4dYlSJ5
 +NkLgNDBy+oHt/ycnKDySRC2tX6ZRGA5MEDYBbl/Ref7+M+USc3BwdqsCt3FQpjtXXCX
 xG0WcMVqekBFJNgHnhcnBuwfx523jM84ySor/mzoxOUvj7edmIRtvpzSwyWruqe+L9Gt
 WGUpw5/Gnsy2jGMDZPxL8X3G/WBgDcFx+QToybiS39svPiMmhiNQCYDfeUCMz+/jOT76
 ZBSg==
X-Gm-Message-State: ACrzQf1J4kLWZckWKZaKVGUWK88bz6cimElC8tu1TXGZjR6sEf9G+eDq
 pNw1ei3qACuVlcXtZDM9EMl9EpZegF0jIj0XA/8=
X-Google-Smtp-Source: AMsMyM6sqftEfIf1wZLO2nWdUrFyUy/b7Is144SVEuyiSAh6u7z/XAR3na8I53Qrs/z1OYDKeGZv/m3C7qgJjPpTFsY=
X-Received: by 2002:a05:600c:1909:b0:3b4:aa30:40df with SMTP id
 j9-20020a05600c190900b003b4aa3040dfmr7424639wmq.205.1665683359671; Thu, 13
 Oct 2022 10:49:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
 <CAHb6LvqHNv_R2Asn944Kx91Cud5J3XSM-c+PcK8Bz19uaMDynw@mail.gmail.com>
 <q06231q2-n7qn-345s-np6r-p5717713q3po@ynat.uz>
 <CAHb6Lvqbj0MDhWvLaEk8Hbr_vZwDs1NdCj1X9Xvxp+x+Mbs0Vw@mail.gmail.com>
 <D0D4490C-061A-46DA-9592-51C3D210772F@gmail.com>
 <CAHb6Lvr-JST083ZAyyxCOS8GrhH5xoa_d+SkkB9aPEr1ijcjUQ@mail.gmail.com>
 <DE3F60A5-A30E-452A-8F3B-3A685CCEBD88@cable.comcast.com>
In-Reply-To: <DE3F60A5-A30E-452A-8F3B-3A685CCEBD88@cable.comcast.com>
Date: Thu, 13 Oct 2022 10:49:06 -0700
Message-ID: <CAA93jw4jNT0YKL=TZChDYk0LTxUJugtyLNTZFwT93zSfrfe3gg@mail.gmail.com>
To: "Livingood, Jason" <Jason_Livingood@comcast.com>
Subject: Re: [Cake] [Rpm] [Bloat] [Make-wifi-fast] The most wonderful video
 ever about bufferbloat
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Cc: Rich Brown <richb.hanover@gmail.com>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Bob McMahon <bob.mcmahon@broadcom.com>, Cake List <cake@lists.bufferbloat.net>,
 Rpm <rpm@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGhlcmUgaXMgYSByZWFsbHkgZ29vZCBsb29raW5nIGNvbmZlcmVuY2Ugb2N0IDE5dGgsIGZvciBw
ZW9wbGUgdGhhdApjYXJlIGFib3V0IHA5OSBzdHVmZi4gSXQncyBmcmVlOgoKaHR0cHM6Ly93d3cu
cDk5Y29uZi5pby8KCkl0IGxvb2tzIGxpa2UgZ3JlYXQgZnVuLCBzbyBJJ20gYXR0ZW5kaW5nLgou
Li4gd2hpbGUgSSBmaWd1cmUgSSB3aWxsIGhhdmUgRk9VTkQgTVkgUEVPUExFLCBpdCdzIG1vcmUs
IHRyeWluZyB0bwpnZXQgbW9yZSBwZW9wbGUgaW50ZXJlc3RlZCBpbiBzdHVmZiBhbG9uZyB0aGUg
ZWRnZQpvZiByZWxpYWJpbGl0eSBpcyBhbHdheXMgb24gbXkgbWluZCwgc28sIGxpa2UsIGZlZWwg
ZnJlZSB0byBnaXZlIGFsbAp5b3VyIGVtcGxveWVlcyBhbmQgbWFuYWdlcnMgYW5kIHBlb3BsZSBp
biB0aGUgYy1zdWl0ZSB0aGUgZGF5IG9mZiBzbwp0aGV5IGNhbiBoZWFyIGFib3V0IHRoZSBiZW5l
Zml0cyBvZiBPQ0QgZm9yIGFsbC4KCk9uIFRodSwgT2N0IDEzLCAyMDIyIGF0IDEwOjQ1IEFNIExp
dmluZ29vZCwgSmFzb24gdmlhIFJwbQo8cnBtQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6
Cj4KPiA+IEJldHRlciBpcyB0aGF0IG5ldHdvcmsgZW5naW5lZXJzICJkZXNpZ24gYmxvYXQgb3V0
IiBmcm9tIHRoZSBiZWdpbm5pbmcgc3RhcnRpbmcgYnkgcHJvcGVybHkgc2l6aW5nIHF1ZXVlcyB0
byBzZXJ2aWNlIGppdHRlciwgYW5kIGZvciBXaUZpLCB0byBhbHNvIGVuYWJsZSBhZ2dyZWdhdGlv
biB0ZWNobmlxdWVzIHRoYXQgbWluaW1pemUgVFhPUCBjb25zdW1wdGlvbi4KPgo+Cj4KPiBNYXli
ZSDigJMgbGlrZSDigJhzZWN1cml0eSBieSBkZXNpZ27igJkgYW5kIOKAmHByaXZhY3kgYnkgZGVz
aWdu4oCZIOKAkyB3ZSBuZWVkIOKAmGxvdyBsYXRlbmN5IGJ5IGRlc2lnbuKAmSBmb3IgbmV0d29y
ayBlbmdpbmVlcnMhIDstKQo+Cj4KPgo+IEpMCj4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBScG0gbWFpbGluZyBsaXN0Cj4gUnBtQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZv
L3JwbQoKCgotLSAKVGhpcyBzb25nIGdvZXMgb3V0IHRvIGFsbCB0aGUgZm9sayB0aGF0IHRob3Vn
aHQgU3RhZGlhIHdvdWxkIHdvcms6Cmh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9wb3N0cy9kdGFo
dF90aGUtbXVzaHJvb20tc29uZy1hY3Rpdml0eS02OTgxMzY2NjY1NjA3MzUyMzIwLUZYdHoKRGF2
ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
