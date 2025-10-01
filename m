Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E09BB3125
	for <lists+cake@lfdr.de>; Thu, 02 Oct 2025 10:31:28 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 466BE73A117;
	Thu, 02 Oct 2025 10:31:27 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=T3sI/r0o
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759393887;
 b=XMVH8NVo91dbRcfj0eeXbk7LOvkOAMgu2boFw2WBec1JWP6dkeVUbddqeUQMPGOtUj3RK
 aVtDzd3vPTVmGxoeM7ZuslLukcUe60ykSdOQhbrXg+uvilM1MemsOPl5gTxi6JOUNdcQUfK
 gu/pGok1MS2QcbgEBIIvVrLRwg9ocz0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759393887; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=bfcCrUj0LDwZzal6Cstk/wszDb6b6Zuus3Aig3LZo6s=;
 b=DNeD+kKWsGvBFhaRZavqWqS3semUD56veTEKEuyJw32FCHaKmqEV+c/WaTK7zoTxjn2+r
 kVRNwjhRP9UzbgCBaWoF34IoXA184+ByIlLWTgqlQ06ApIZz1kazV3gNROTWRlsFOZDxcLf
 WuY5d/IAh9Ja3auyCwc8gJYdx0adbmA=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
	by mail.toke.dk (Postfix) with ESMTPS id 6FCED72763C
	for <codel@lists.bufferbloat.net>; Wed, 01 Oct 2025 21:25:11 +0200 (CEST)
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-28e8c5d64d8so1549895ad.1
        for <codel@lists.bufferbloat.net>;
 Wed, 01 Oct 2025 12:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759346708; x=1759951508;
 darn=lists.bufferbloat.net;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=P07ax27qO+oWL8ViMhliSZOfrL7+9IYqFFl4uOUVQOU=;
        b=T3sI/r0oUCoAQ8Nm50UKPw3YPmCtrsPOkZRa1WaB1VT4cAOriovfJx7N/mfA0zEeLn
         nYn+wIyW5RTorMjqHndkjc3/HYyovVVzx3v+P4Y1Ec+jfXXNY9zgeCoVpEoVRxYEa9lq
         zHw40rF2dHiV+MaKJJyCqWYFaqKUthF8OqlWKwQmOBlGrEGfpjsWMKbRuXfJ8X5AxvMt
         MrpdJ4kW2Rt4VBAKgHDvbAkPq/9/hTmOWpSM6VhIPAaAWKdVZ/dpmxOfN818PNUfxuVc
         Qt9YWfn0rhZjYp49E1bYZKcA1XAJAkzXHxL9N4apK/36igjDEKpuH17mger63shO/zq+
         Sscw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759346708; x=1759951508;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P07ax27qO+oWL8ViMhliSZOfrL7+9IYqFFl4uOUVQOU=;
        b=F0wib+uECUEGxBtk9Ikw8QybXQMNlK3B6LS62eLaVuyX+EezmIvzTW4l3zaL3Q4krk
         I5NPn1qzlMhLqviq8IZlcwYw3eLdDqzdPYv1KNeF36wg/XRQij/sNiogLxfw/+r6rfbH
         9imSLrhvr9fjV1YjixqY39/QNyxzT6q47Y/aL6v1e6XiI+3hhPQMwtUF2yDzD3+4eZMc
         y0a6b00Ht9+6/2b/a0EtQfUWtkKYdSwenq9ZOmvTbYgeoy14NwWUi7VOl2GHVv7wZC73
         ntNq16fENN33jyjF7Fkf/UbPTiGV5MAPJh2Bx75Qtea6WO5R7gAJrnQVgULbApQDn+5J
         H5Zg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWbh6n3xuM5DAe1OXTrtcFE6gOW5ZtaQ1GgzyMRgVu3tmS5Ny/ggV5rCs+ZknMQQ8S1bvjWhg==@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yy42sIwrQrS5+BEeX80RSmDv7YMDIc04uLN1gdm8KljRJOFjVyd
	v+rPP/Fjjd0sVOPGux3rFqeY2fMCfdkWdT0miWN3ZFVOm+WGn1RMr+BXmNnF5QcZ66yVtY04d7b
	rRrecTCnQHdYclN8Qeh5EpK86gkIpLwY=
X-Gm-Gg: ASbGnct6XFkCUlghu1zzYQOIhMTQGPRnTJhRHuSLh3UtlxnsYsmhs7P5nQkV15xUNCZ
	Sy4KHgWyFZkfyPBt6TuuOjGoVJIIyFKovQDvNi1pp3B+ghJqqiplCAVr23emwbR2PcURdU7EHaj
	hiHlH2O0euvP+aXGS2w14GDItSrIr6XBTzUSktfq72H/jmF9aLi8m/f98ECfNdGI66KSNXq65Nm
	AnX5nkNBaFcC3GzIS1p1VvoF64kM2i6VAwEKl+BPbGmdxV7A4iyZpFVhSTzJHAI6A==
X-Google-Smtp-Source: 
 AGHT+IHqd1fdLIcICpgcj5tK7N3zoicCgWfemmXGh4MWkoHrlk25IzzqBPa6XVL280kMa5r5ia+/xawU9U+Dry9sFpI=
X-Received: by 2002:a17:903:3bac:b0:267:e09c:7ea3 with SMTP id
 d9443c01a7336-28e7f299a84mr57300135ad.13.1759346708425; Wed, 01 Oct 2025
 12:25:08 -0700 (PDT)
MIME-Version: 1.0
References: <9390D9DA-3C77-429F-A41D-E0FECD52FF06@connectivitycap.com>
 <CAJUtOOjt+DajPifDNLNBOT_xwNWL_Wec5Gf_O91HMDdwpxtmeg@mail.gmail.com>
In-Reply-To: 
 <CAJUtOOjt+DajPifDNLNBOT_xwNWL_Wec5Gf_O91HMDdwpxtmeg@mail.gmail.com>
From: dan <dandenson@gmail.com>
Date: Wed, 1 Oct 2025 13:24:56 -0600
X-Gm-Features: AS18NWBSSUp7GUMKXEw-SG-udegmtZq7HyiMa14JBh5x0kGES2U9ecdsyM5U2Cg
Message-ID: 
 <CAA_JP8XOeSOqbZJPH=1_oWMD055vOUxHipxJMs8sbsHLu5MHCA@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
Cc: James Forster <jim@connectivitycap.com>,
 Jason Livingood <jason_livingood@comcast.com>,
	Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
	codel@lists.bufferbloat.net,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>
X-MailFrom: dandenson@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: UVAROUGFRBTZE6S6GCXS7S2FMBWL3T4T
X-Message-ID-Hash: UVAROUGFRBTZE6S6GCXS7S2FMBWL3T4T
X-Mailman-Approved-At: Thu, 02 Oct 2025 10:31:25 +0200
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [LibreQoS] Re: [Starlink] Keynote: QoE/QoS - Bandwidth Is A Lie! at
 WISPAPALOOZA 2025 (October 16)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAA_JP8XOeSOqbZJPH=1_oWMD055vOUxHipxJMs8sbsHLu5MHCA@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBhY3R1YWxseSByZWFsbHkgbGlrZSB0aGUgdGl0bGUgOykNCg0KSXQncyB0aGF0IG1vc3Qgb2Yg
dGhlIHRpbWUgcGVvcGxlIGFyZSB0b2xkIHRoZXkgbmVlZCBtb3JlIGJhbmR3aWR0aCB0bw0Kc29s
dmUgYSBwcm9ibGVtLCB3aGVuIHRoZXkgcmVhbGx5IG5lZWQgbG93ZXIgbGF0ZW5jeSBhbmQgaml0
dGVyLiAgU28gdGhlDQp2YXN0IG1ham9yaXR5IG9mIHRoZSB0aW1lICdtb3JlIGJhbmR3aWR0aCcg
YXMgYSBzb2x1dGlvbiByZWFsbHkgaXMgYSBsaWUuDQoNCk9uIFR1ZSwgU2VwIDMwLCAyMDI1IGF0
IDI6NDfigK9QTSBGcmFudGlzZWsgQm9yc2lrIHZpYSBMaWJyZVFvUyA8DQpsaWJyZXFvc0BsaXN0
cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOg0KDQo+IFRoYW5rcywgSmltLiBXZWxsLCB0cnVlIHRo
YXQgLSBidXQgSSB3YW50ZWQgdG8gZG8gaXQgZWl0aGVyIHdheSwgYmVjYXVzZSBvZg0KPiBvdXIg
ZGVhciBEYXZlIGFuZCAtIGFzIGEgY29udmVyc2F0aW9uIHN0YXJ0ZXIuDQo+IEFzIEBKYXNvbiBM
aXZpbmdvb2QgPGphc29uX2xpdmluZ29vZEBjb21jYXN0LmNvbT4gc2FpZCAtICJCYW5kd2lkdGgg
aXMNCj4gZGVhZC4gTG9uZyBsaXZlIGxhdGVuY3kuIg0KPiBodHRwczovL3B1bHNlLmludGVybmV0
c29jaWV0eS5vcmcvYmxvZy9iYW5kd2lkdGgtaXMtZGVhZC1sb25nLWxpdmUtbGF0ZW5jeQ0KPg0K
PiBJIHdpbGwgZG8gbXkgYmVzdCB0byBnZXQgdGhlIGF1ZGlvL3ZpZGVvIHJpZ2h0IGFuZCB0byBz
aGFyZSBpdCB3aXRoIHlvdQ0KPiBhbGwuDQo+DQo+IFBTOiBTZW5kaW5nIHlvdSBzZXBhcmF0ZSBl
bWFpbC4NCj4NCj4gQWxsIHRoZSBiZXN0LA0KPg0KPiBGcmFuaw0KPg0KPiBGcmFudGlzZWsgKEZy
YW5rKSBCb3JzaWsNCj4NCj4NCj4gKkluIGxvdmluZyBtZW1vcnkgb2YgRGF2ZSBUw6RodDogKjE5
NjUtMjAyNQ0KPg0KPiBodHRwczovL2xpYnJlcW9zLmlvLzIwMjUvMDQvMDEvaW4tbG92aW5nLW1l
bW9yeS1vZi1kYXZlLw0KPg0KPg0KPiBodHRwczovL3d3dy5saW5rZWRpbi5jb20vaW4vZnJhbnRp
c2VrYm9yc2lrDQo+DQo+IFNpZ25hbCwgVGVsZWdyYW0sIFdoYXRzQXBwOiArNDIxOTE5NDE2NzE0
DQo+DQo+IGlNZXNzYWdlLCBtb2JpbGU6ICs0MjA3NzUyMzA4ODUNCj4NCj4gU2t5cGU6IGNhc2lv
YTUzMDJjYQ0KPg0KPiBmcmFudGlzZWsuYm9yc2lrQGdtYWlsLmNvbQ0KPg0KPg0KPiBPbiBUdWUs
IFNlcCAzMCwgMjAyNSBhdCAxMDoyNeKAr1BNIEphbWVzIEZvcnN0ZXIgPGppbUBjb25uZWN0aXZp
dHljYXAuY29tPg0KPiB3cm90ZToNCj4NCj4gPiBXb3csIHRoYXTigJlzIGZhbnRhc3RpYywgRnJh
bnRpc2VrISAgR3JlYXQgd29yayBtYWtpbmcgdGhpcyBoYXBwZW4uDQo+ID4NCj4gPiBUaGVzZSBz
b3J0IG9mIHRpdGxlcyBhcmVu4oCZdCBteSBmYXZvcml0ZS4gSSB0aGluayBJIHVuZGVyc3RhbmQg
dGhlDQo+ID4gc2VudGltZW50IGJ1dCBmaW5kIHRoZSBpc3N1ZXMgbW9yZSBudWFuY2VkIHRoYW4g
dGhhdC4gOi0pDQo+ID4NCj4gPiBJZiB5b3UgY2FuIGdldCBjbGVhciBhdWRpbywgbm90IG11Y2gg
cXVhbGl0eSBpcyBuZWVkZWQgZm9yIHBhbmVscyBhbmQNCj4gPiB0YWxraW5nIGJlYWRzLiAgIEJl
c3Qgd291bGQgYmUgYSBmZWVkIHJpZ2h0IGludG8gYW4gaVBob25lL2FuZHJvaWQuDQo+ID4NCj4g
PiBKaW0NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
Cj4gTGlicmVRb1MgbWFpbGluZyBsaXN0IC0tIGxpYnJlcW9zQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dA0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpYnJlcW9zLWxlYXZlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldA0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldAo=
