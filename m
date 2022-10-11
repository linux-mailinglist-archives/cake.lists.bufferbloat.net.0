Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B05025FB4CB
	for <lists+cake@lfdr.de>; Tue, 11 Oct 2022 16:43:27 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C33E33CB43;
	Tue, 11 Oct 2022 10:43:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665499401;
	bh=5Y1IPeO4W+E684JXCzJgAVmfiUG2tjYri6wCSNBYAv0=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=a0z7y/O9jYeikdi9CU7PsBs0Ox9n8fW48eAiZnO1Afps8/Mo/F4kHAAiLqIJTvy5n
	 V2qj+LmMc8BlOTIvA2k8kFv+t1vR+86cUiKbOFHUT7CUQhpgkqiIKZxqjUE0/ky1Er
	 Q+feeck73+5Fy5Ri3Vycmndv7vdZ247DIVpA+iYTe2ELQPaN1T7qMcZhnxJeTtPV6m
	 FTxhhQMpa+OrzibJO7EGkSuFMQ8z757jsMIz4kMAiLdQI/7U7d69hiPSDx6/G4U75a
	 Ws3bF1V2eUxWwHXj329MPdUcwBeSjha1KtcTKPF92U1YW7klzQ7vWQEWc9CXGy9YdC
	 /pJP6x+tJVZiA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com
 [IPv6:2607:f8b0:4864:20::b30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 61E3B3B2A4;
 Tue, 11 Oct 2022 10:43:20 -0400 (EDT)
Received: by mail-yb1-xb30.google.com with SMTP id e62so16714839yba.6;
 Tue, 11 Oct 2022 07:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=S4F9yH9gPrRz7dF5romL0ozFNhgSPJq5oG4U15LfqUw=;
 b=Bpus7uEzoW7jGEvFW9ku23/Co79PvaZgeUvSUXou8HXUi+NsBxw+hIy4tC6wUisaCT
 24HbM8JDkAsuJPJ99Dihm+7w7Q00OqWBGaqYpxCi+w3MSCuL8GE6sm353TpwatLYUIJq
 G5FDzJbM+jgszMiHJKpf0/t4l5LPWgZV+iivLUgpxcENAcQTk2SPamwkTIwEqELrL/GR
 yT0dVfm/e91igOWir5lY6ezsq8lRexM+P+ywzpa5TXNFs+TejAcCz9TbUIwt0qZWFFoc
 yu6CnDNDSnlw64Z6606zCsMcVJs2kDkOXCD/3onKZu/i/QyQQcIyU+lJuL7Lif77Hzhh
 oUug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=S4F9yH9gPrRz7dF5romL0ozFNhgSPJq5oG4U15LfqUw=;
 b=xuIJgb4qp5/RksdTOaKCHKeg5ldsauY8vWUGBnuqTql46QKGyc/xP/2Z3pbghoi0I+
 J6F2FBq+U8g656BS5kPCuSCebgup3LJ3hkfRPqHN+ZPhTYeENlST7Dx/ENZM8sBXC6eA
 W8CZL8WdIXJlerI/LPOCTgmIodDnyfeXHRuJdNjIUNPiHQ94CTtJmjCJ3DWoBmf6hjo3
 n3M0+vL3yKhxx5IWS1l3FsIEky+XsiF0uf7UZKJ3uHTEeJhO3o2XlPx1Y+7AaYeWiqvs
 Z8rKPSYDdj5xwncmyWkMTQKAnIXEzG60wI4OGzVf63Yoed1K55ZEd3mtnXJPU5BMDrxR
 vxLQ==
X-Gm-Message-State: ACrzQf3NCxs4hryGIlgzB06uzABmCBD6YZCRgp50MIILejOicfSmo45R
 HN6MeTn6dPsJnQzF5SXHhFf7dfMaVLNR8/9gf/E=
X-Google-Smtp-Source: AMsMyM6FrBZy1+X7ALEg2iDJNVRG8+/lmxGB7zMiUJOQY2LwzonY5UaS4KC+6up18gstYrz7C1KcUKP556HhQjqcNqc=
X-Received: by 2002:a25:d6cd:0:b0:6be:f7bb:b91c with SMTP id
 n196-20020a25d6cd000000b006bef7bbb91cmr22727698ybg.422.1665499399700; Tue, 11
 Oct 2022 07:43:19 -0700 (PDT)
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
In-Reply-To: <D0D4490C-061A-46DA-9592-51C3D210772F@gmail.com>
Date: Tue, 11 Oct 2022 07:43:06 -0700
Message-ID: <CAA93jw5YTUPcHcgnDs_RgkbFRoKrLq2V5mox+x5OB5nWQcg8Eg@mail.gmail.com>
To: Rich Brown <richb.hanover@gmail.com>
Subject: Re: [Cake] [Make-wifi-fast] [Rpm] [Bloat] The most wonderful video
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
Cc: Cake List <cake@lists.bufferbloat.net>, Rpm <rpm@lists.bufferbloat.net>,
 Bob McMahon <bob.mcmahon@broadcom.com>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVHVlLCBPY3QgMTEsIDIwMjIgYXQgNjo1NyBBTSBSaWNoIEJyb3duIHZpYSBNYWtlLXdpZmkt
ZmFzdAo8bWFrZS13aWZpLWZhc3RAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPgo+Cj4K
PiBPbiBPY3QgMTAsIDIwMjIsIGF0IDg6MDUgUE0sIEJvYiBNY01haG9uIHZpYSBScG0gPHJwbUBs
aXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+Cj4gPiBJIHRoaW5rIGNvbmZsYXRpbmcgYnVm
ZmVyYmxvYXQgd2l0aCBsYXRlbmN5IG1pc3NlcyB0aGUgc3VidGxlIHBvaW50IGluIHRoYXQKPiA+
IGJ1ZmZlcmJsb2F0IGlzIGEgbWVhc3VyZW1lbnQgaW4gbWVtb3J5IHVuaXRzIG1vcmUgdGhhbiBh
IG1lYXN1cmVtZW50IGluCj4gPiB0aW1lIHVuaXRzLgo+Cj4KPiBZZXMsIGJ1dC4uLiBJIGFtIGdv
aW5nIHRvIHByYWlzZSB0aGlzIHZpZGVvLCBldmVuIGFzIEkgZW5jb3VyYWdlIGFsbCB0aGUgdGVj
aGllcyB0byBiZSBzdXJlIHRoYXQgdGhleSBoYXZlIHRoZSB1bml0cyBjb3JyZWN0Lgo+Cj4gSSd2
ZSBiZWVuIHlhbW1lcmluZyBhYm91dCB0aGUgZXZpbHMgb2YgbGF0ZW5jeS9leGNlc3MgcXVldWVp
bmcgZm9yIDEwIHllYXJzIG9uIG15IGJsb2csIGluIGZvcnVtcywgZXRjLiBJIGhhdmUgbm90IGFj
aGlldmVkIGFueXdoZXJlIG5lYXIgdGhlIG5vdG9yaWV0eSBvZiB0aGlzIHZpZGVvIChhbG1vc3Qg
YSB0aGlyZCBvZiBhIG1pbGxpb24gdmlld3MpLgo+Cj4gSSBhbSBkZWxpZ2h0ZWQgdGhhdCB0aGVy
ZSdzIGFuIGVuZ2FnaW5nLCBtYXNzLW1hcmtldCBZb3V0dWJlIHZpZGVvIHRoYXQgbWFrZXMgdGhl
IGNhc2UgdGhhdCBidWZmZXJibG9hdCBldmVuIGV4aXN0cy4KPgo+IFJpY2gKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IE1ha2Utd2lmaS1mYXN0IG1h
aWxpbmcgbGlzdAo+IE1ha2Utd2lmaS1mYXN0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL21ha2Utd2lmaS1mYXN0CgpJIGhhdmUg
dG8gYWRtaXQgbXkgaWRlYWwgcHJlc2VudGVyIGlzIG1vcmUgb2YgYSBuZWFsIGRlZ3Jhc3NlIHR5
c29uCgpodHRwczovL3R3aXR0ZXIuY29tL25laWx0eXNvbi9zdGF0dXMvMTU3OTE2NTI5MTQzNDg5
NzQwOQoKYnV0IHlhIGtub3csIEkgZW5kZWQgdXAgdGhpbmtpbmcgYWJvdXQgZG9pbmcgYSBmdW5u
eSBzY3JpcHQgYWxvbmcgdGhlCmZsb3cgb2Ygd2hhdCdzIHdyb25nIHdpdGggd2lmaS4uLgoKLS0g
ClRoaXMgc29uZyBnb2VzIG91dCB0byBhbGwgdGhlIGZvbGsgdGhhdCB0aG91Z2h0IFN0YWRpYSB3
b3VsZCB3b3JrOgpodHRwczovL3d3dy5saW5rZWRpbi5jb20vcG9zdHMvZHRhaHRfdGhlLW11c2hy
b29tLXNvbmctYWN0aXZpdHktNjk4MTM2NjY2NTYwNzM1MjMyMC1GWHR6CkRhdmUgVMOkaHQgQ0VP
LCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
