Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 462DCBB1B8D
	for <lists+cake@lfdr.de>; Wed, 01 Oct 2025 22:58:27 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 81352727D61;
	Wed, 01 Oct 2025 22:58:25 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=R1MkuNUb
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759352305;
 b=37jwaAeS5KPe27yVgapLwtJgL9wCw/1RJmR3vM8VV33UhrSioc0zocCMyOGVoOlWlmu79
 1A1ihE6OhU9UegbgXJWlRHnpkwOaDjXF/ibJxKSO6f2UFD8n0PXmwdg+rpDGD0NqhFLaVWK
 1R/8LC8u79MY8sBDLQnC8yReLJBIbHE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759352305; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=in6yXRndmC2ZT2cqUsQ1dianWWyrOATbeOU6ohv2G0o=;
 b=n/yGiu8dmYZsLONnj3PIZT5ca28ix4PLcjgIU0WxyI5IdPUlKfR8uqeUIwjtSadgmNGVj
 6CMMDffMewyqw7XXxfAR0KShnWCyqNE/gitwu6X7/a9pofnm9rQL9bPCswp5KDuDAxGBIsh
 bJ8bAOePAN+G5JUCRmE5Ok/Qy6tdsJo=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
	by mail.toke.dk (Postfix) with ESMTPS id 578F1727D52
	for <cake@lists.bufferbloat.net>; Wed, 01 Oct 2025 22:58:22 +0200 (CEST)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-b3e25a4bfd5so71424566b.2
        for <cake@lists.bufferbloat.net>;
 Wed, 01 Oct 2025 13:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759352301; x=1759957101;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LljycIaqggayAAOwpeeT/rqti2XIR5e0dmg8U6/xG28=;
        b=R1MkuNUbS3SEcl3tfpaUyFjxG+ppe8yLHZI1Z3WWh6u0ooJF3BFq19oi6snhPxncFM
         LuiqTle2VcFE46A+vqEk4sdt7P5/VeMQBc4I+XFuGHHTwQYfU4utRT4T3a0Z0aPNgsVZ
         OfzFndPFdOXIGkRJtrOBF9WtiqOgBBMhpqdrSEd1lVGtZtZ1USSFmjA8xHe/zxr00lNe
         HsdfO+l+hReRc0jJqeK7Jg/q+vLtscCcBgm6IB9Fgg1QNVc5SnqGdF+nW6MZPbIEfTS1
         8qwit4UuclFuhEq4lSr8UgWlLnbwMJHxXMb5p17DTanai0e6PGGJygzX0m++roHhBfdE
         DS2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759352301; x=1759957101;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LljycIaqggayAAOwpeeT/rqti2XIR5e0dmg8U6/xG28=;
        b=bAw7luwu8IJBrmUhNKb6YcN1ib1POOc78a+w2LdA2eW2YHniYeFsKQ60QVAMf1YvG9
         z9XnWiuG0VkSteLNxk5mwilzTtG3xC8KigqvhwRDgICrWi+i5wGRQChDly04ffgl4vId
         SHtj0SGjgWsuXhiGlUTR+jk2zUV0fmwrT9+7JcRN4fwHJ29+FjhqnfhzTMGMoyyVcdj3
         sASXtfqY7IbEhJx2vfN5rUFTLXhzHsZGsAoSoyALBByIKycghXDtWXP+EgKyfN4j1C4S
         MOULuLk7BpVfX+qEcmMqnMIWRMNTlyVzIDgmUtSC2GS67E+OH+0wXfiMLfrWm74xdV36
         FRHA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXVmOkR+vfnfiL65XMcUvDYzt0RTVZy18MKZrhLG3SiLKa30XYZB95wxovHO0ImE1Cd79sd@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwTpypOL61JJuTkOG8Z2xLwm26dlW62ft1jC/jSfl0SPH1PDlfP
	4r1/mBbq8VWWmT7hItJQoRV36m1q7Pgc1fdTjmu22u04ANTaLsTsExd8GnlNiB0dytb3vQqrqIq
	SC0eGUJk58nCfWNECIwJ9qxoLcZYe+Lg=
X-Gm-Gg: ASbGncum1kvidYKayd5dZx+NjWy/7D7bMLJP9ov4tVd9KQaAG1pvwgMbuwLjLx+0Uaj
	D7IKoyr98ukQS9hXk8r9O0sB4i/oPHXiPqJjRZkSrWi4XXxk+ivboXijqFWnQ9aJhDGYvIlguQv
	yutYdz/3fYCqI+MKtAwjLrmZ/Mfx+ktT6Hf2qUNFZZprg+7KIaL99AdW+aUSkpgMuwGzlb7uWXc
	AcZwivOIM04rQacVsLfvdcd6Na+Y/dno9Oamf2zTdqpynVPuxO3T76wOUrbcqir9CZxS3c8z34b
X-Google-Smtp-Source: 
 AGHT+IF1HowEGMebrWwZKKCUftPp0tOe2IDm8TKnRKYluukLm8tcHNOnHkpoFENBFvo3M1lVvezE5A/ZS/Wledtr694=
X-Received: by 2002:a17:907:8694:b0:b3b:b839:577b with SMTP id
 a640c23a62f3a-b46e42b6948mr699692266b.12.1759352301230; Wed, 01 Oct 2025
 13:58:21 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <dpxsc6.t3duwh.1hge2dj-qmf@smtp.gmail.com>
 <n21672r7-056q-ppo6-rpno-139os0o3154r@ynat.uz>
 <FA76869A-F4A3-4C70-8F15-57E4168DAC71@gmx.de>
 <D1F64A64-276E-4BB6-B67E-067EC1CF8C4C@gmail.com>
In-Reply-To: <D1F64A64-276E-4BB6-B67E-067EC1CF8C4C@gmail.com>
From: dave seddon <dave.seddon.ca@gmail.com>
Date: Wed, 1 Oct 2025 13:58:10 -0700
X-Gm-Features: AS18NWA_53SaB71YNYj1pskZVRat7ZXgyc8fQ1WRjfrQwTevdmPFRtIjvf3reNc
Message-ID: 
 <CANypexRsWFf3ezRmkok-6s+LrC7rf+48KO-63yVSn-mKJ383ww@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Cc: Sebastian Moeller <moeller0@gmx.de>, David Lang <david@lang.hm>,
 cake@lists.bufferbloat.net
Message-ID-Hash: EU455RZ7HRR2SWRVHIPJ2UN7Q3SYG3VD
X-Message-ID-Hash: EU455RZ7HRR2SWRVHIPJ2UN7Q3SYG3VD
X-MailFrom: dave.seddon.ca@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: help request for cake on a large network
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CANypexRsWFf3ezRmkok-6s+LrC7rf+48KO-63yVSn-mKJ383ww@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UmVnYXJkaW5nIHBhdGNoaW5nIG5ldC9zY2hlZC9zY2hfY2FrZS5jICIjZGVmaW5lIENBS0VfUVVF
VUVTICgxMDI0KSIuDQpXZSBzaG91bGQgYmUgYWJsZSB0byBnZXQgTml4IHRvIGRvIHRoaXMgZm9y
IHVzLCBidXQgSSBob25lc3RseSBoYXZlbid0DQp0cmllZCBkb2luZyB0aGlzIGJlZm9yZS4gIEkn
dmUgYWN0dWFsbHkgYmVlbiBtZWFuaW5nIHRvIHdyaXRlIHNvbWUgbml4DQpzbyB0aGF0IE5peE9T
IGNhbiBidWlsZCB0aGUgTDRTIGFuZCBQcmFndWUga2VybmVsIG1vZHVsZXMsIHNvIE5peE9TDQpj
YW4gaGF2ZSB0aGVzZSBuaWNlIHRoaW5ncy4NCg0KT24gVHVlLCBTZXAgMzAsIDIwMjUgYXQgMTE6
NDbigK9BTSBKb25hdGhhbiBNb3J0b24gPGNocm9tYXRpeDk5QGdtYWlsLmNvbT4gd3JvdGU6DQo+
DQo+ID4gT24gMzAgU2VwLCAyMDI1LCBhdCAzOjU2IHBtLCBTZWJhc3RpYW4gTW9lbGxlciA8bW9l
bGxlcjBAZ214LmRlPiB3cm90ZToNCj4gPg0KPiA+PiB3aGF0IHdvdWxkIG5lZWQgdG8gYmUgZG9u
ZSB0byBpbmNyZWFzZSByZXNvdXJjZXMgdG8gYWxsb3cgZm9yIGZ1bGwgaXNvbGF0aW9uIG9mIG1v
cmUgZmxvd3M/DQo+ID4NCj4gPiBJIGJlbGlldmUgZWRpdGluZyBuZXQvc2NoZWQvc2NoX2Nha2Uu
YyBhbmQgaW5jcmVhc2UgdGhlIG51bWJlciBvZiBDQUtFX1FVRVVFUzoNCj4gPiAjZGVmaW5lIENB
S0VfUVVFVUVTICgxMDI0KQ0KPiA+DQo+ID4gdG8gc29tZXRoaW5nIGxhcmdlci4uLg0KPiA+DQo+
ID4gaG93ZXZlciBJIGRvIG5vdCBrbm93IHdoYXQgYSByZWFsaXN0aWMgbWF4aW11bSBpcy4uLiBh
bmQgSUlSQyBjYWtlIHdpbGwgc2VhcmNoIHRocm91Z2ggdGhpcyByZXBlYXRlZGx5DQo+DQo+IFRo
ZXJlJ3Mgbm90aGluZyB0aGF0IHNob3VsZCByZXBlYXRlZGx5IHNjYW4gdGhlIGVudGlyZSBsaXN0
IG9mIHF1ZXVlcywgc28gdGhlcmUgc2hvdWxkIG9ubHkgYmUgYSBtaW5vciBoaXQgdG8gcGVyZm9y
bWFuY2UgZnJvbSBpbmNyZWFzaW5nIHRoZSBudW1iZXIgb2YgcXVldWVzLg0KPg0KPiBUaGUgc2V0
LWFzc29jaWF0aXZlIGhhc2ggc2VhcmNoZXMgb25seSB0aGUgc2V0IG9mIDggcXVldWVzIHRoYXQg
dGhlIGZsb3cgaGFzaGVzIHRvLCBhbmQgb25seSB3aGVuIHRoZXJlJ3MgZW5vdWdoIHByZXNzdXJl
IHRvIGNhdXNlIGEgaGFzaCBjb2xsaXNpb24sIHNvIHRoaXMgY29zdCB3b3VsZCBiZSBleHBlY3Rl
ZCB0byBnbyBkb3duIGlmIHRoZSBudW1iZXIgb2YgcXVldWVzIGlzIGluY3JlYXNlZCBpbiBhbnRp
Y2lwYXRpb24gb2YgYSBoZWF2eSB3b3JrbG9hZC4NCj4NCj4gVGhlIGxpc3Qgb2YgYWN0aXZlIHF1
ZXVlcyBpcyBzY2FubmVkIE8oMSkgZWxlbWVudHMgcGVyIGRlbGl2ZXJlZCBwYWNrZXQuICBUaGlz
IGRvZXNuJ3QgbWVhbiB0aGF0IGVhY2ggcXVldWUgaXMgdmlzaXRlZCBvbmx5IG9uY2UgcGVyIGRl
bGl2ZXJ5IGN5Y2xlLCBub3IgdGhhdCBhIGNvbXBsZXRlIHNjYW4gb2YgdGhlIGxpc3QgY2FuIG5l
dmVyIGhhcHBlbiwgYnV0IGFtb3J0aXNlZCBvdmVyIG1hbnkgcGFja2V0cywgdGhlIHNjYW5uaW5n
IGNvc3QgaXMgaW5kZXBlbmRlbnQgb2YgdGhlIG51bWJlciBvZiBhY3RpdmUgZmxvd3MuICAoQXQg
bGVhc3QgaW4gdGhlb3J5LiAgSXQncyBncm93biBpbnRvIHJhdGhlciBjb21wbGV4IGxvZ2ljIHRo
YXQgSSBwbGFuIHRvIHNpbXBsaWZ5IGluIHRoZSBuZXh0LWdlbiBxZGlzYy4gIFJ1bm5pbmcgaW4g
ImJlc3RlZmZvcnQiIG1vZGUgYWxyZWFkeSBzaW1wbGlmaWVzIHRoZSBjb250cm9sIGZsb3cgc2ln
bmlmaWNhbnRseS4pDQo+DQo+IFF1ZXVlcyB0aGF0IHJlY2VudGx5IHdlbnQgaW5hY3RpdmUgYXJl
IGtlcHQgaW4gYSBzZXBhcmF0ZSBsaXN0IHRvICJkZWNheSIgdGhlaXIgQVFNIHN0YXRlIHRvIHF1
aWVzY2VudC4gIFRoaXMgaXMgc2Nhbm5lZCBhdCBhIHJhdGUgb2Ygb25lIGVsZW1lbnQgcGVyIGRl
bGl2ZXJlZCBwYWNrZXQuDQo+DQo+IEluIHRoZSBjb3JuZXIgY2FzZSBvZiB0aGUgY29uZmlndXJl
ZCBtZW1vcnkgbGltaXQgYmVpbmcgcmVhY2hlZCwgQ2FrZSBuZWVkcyB0byBmaW5kIHRoZSBsb25n
ZXN0IHF1ZXVlKHMpIHRvIGRyb3AgZnJvbS4gIFRoaXMgaXMgZG9uZSB1c2luZyBhIGhlYXAgc3Ry
dWN0dXJlLCAqc3BlY2lmaWNhbGx5KiB0byBhdm9pZCB0aGUgcG9zc2liaWxpdHkgb2YgYSBsb2Fk
LXRyaWdnZXJlZCBEb1MgZmF1bHQuICBBIGxpbmVhciBzY2FuIGlzIGRvbmUgb25seSB0byBpbml0
aWFsaXNlIHRoZSBoZWFwICh3aGVuIHRoZSBuZWVkIGZvciBvdmVybG9hZCBkcm9wcGluZyBpcyBm
aXJzdCBpZGVudGlmaWVkKSB3aGljaCBpcyBhIG9uZS10aW1lIG9wZXJhdGlvbi4gIFNvIGV2ZW4g
aW4gdGhpcyBjYXNlLCB0aGUgY29zdCBwZXIgZHJvcHBlZCBwYWNrZXQgaXMgbmVhcmx5IGluZGVw
ZW5kZW50IC0gTyhsb2cgTikgLSBvZiB0aGUgbnVtYmVyIG9mIHF1ZXVlcy4NCj4NCj4gU28gdGhl
IG1haW4gbGltaXQgb24gdGhlIHByYWN0aWNhbCBudW1iZXIgb2YgcXVldWVzIGlzIHJlYWxseSB0
aGUgbnVtYmVyIG9mIGhhc2ggYml0cyB0aGF0IGFyZSBhbGxvY2F0ZWQgdG8gc2VsZWN0aW5nIGEg
cXVldWUuIFdpdGhvdXQgc3BlY2lmaWNhbGx5IGNoZWNraW5nLCBJIHdvdWxkIGJlIHJlYXNvbmFi
bHkgY29uZmlkZW50IHRoYXQgeW91IGNvdWxkIHJ1biBhcyBtYW55IGFzIDY0SyBxdWV1ZXMgd2l0
aG91dCBkaWZmaWN1bHR5LiAgSSB3b3VsZCBzdGlsbCB0ZXN0IHRoaXMgaW4gdGhlIGxhYiBiZWZv
cmUgZGVwbG95aW5nIHRvIHByb2R1Y3Rpb24uDQo+DQo+ICAtIEpvbmF0aGFuIE1vcnRvbg0KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBDYWtlIG1h
aWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldA0KPiBUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0DQoNCg0K
DQotLSANClJlZ2FyZHMsDQpEYXZlIFNlZGRvbg0KKzEgNDE1IDg1NyA1MTAyDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAt
LSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==
