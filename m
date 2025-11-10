Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 34813C492C8
	for <lists+cake@lfdr.de>; Mon, 10 Nov 2025 21:03:17 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 8FC0A943AC1;
	Mon, 10 Nov 2025 21:03:13 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=NsS1G8IC
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1762804993;
 b=BjsZqj+iLv6msokJCIFMECCjmLwDJ1jdXm8Km62YbT/o0fAleMYrv/2JEF+lRmvRZ7lFc
 adP1eqNERcBghqKa13Uggp9ByaZnKPjXFHobn8SHDc/70YYQW10OiXhSuRWtYTNkFOSUdTV
 M4UWcQbL0d1TZ7npUue1a8JZiUTy0fw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1762804993; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=6I9QZtub+ovCdy4Khma/3dQaw0OcNn/Y+mbiXzR1Ldk=;
 b=sXWICv/KjfgTS3/Q2xvI+pSPLjaT3SYeyq21MNOgEMjYxyn+okWjuUTBCFJdskrV52bPp
 JKA/od3kNB+TWQXDez7b1lrPgyRo9Lxc2Gklh4qgsW2LziSqqLIiHGa084JJqRJkXAKpehY
 m2tyOSWxEMHvloz67QR9cMY/6Wd4H5o=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
	by mail.toke.dk (Postfix) with ESMTPS id 1B5AC943A72
	for <cake@lists.bufferbloat.net>; Mon, 10 Nov 2025 21:03:10 +0100 (CET)
Received: by mail-lf1-x135.google.com with SMTP id
 2adb3069b0e04-594330147efso3339265e87.2
        for <cake@lists.bufferbloat.net>;
 Mon, 10 Nov 2025 12:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762804989; x=1763409789;
 darn=lists.bufferbloat.net;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Bc+xPByoRMqqQxfT2LkrGAHGGyf6F9D/mlbpqhTMxwg=;
        b=NsS1G8ICJyr71uaoex4ZUyDiuV6Uf9wZe4qUE6c/W/BoNX1PwT32/XeHaPo8RQnvGy
         PDFVJbFyhDcBcKNZlqaySLYjcPJprDffcAV7UcOJXtBb2tMtgJuP7355Nou9AwPxLPCw
         sWNzDxVmtXfVmNrJF2PZJF3bG78IAljMrtzp7tVtzevRqgy3A9oCCYZg7ZPtwDoe6nC6
         0rhHl7ACnAw+9D9kFq/5MWht+OMpZ8yluV4d2mef+X/HIQ/9Sg1+g5QKdRnho2tJaWxI
         Ltd6z+R+YbAy7XGr7jk/EzyqK3GN4hv11OytuBLBETYz2bbCBB5ssoqRPKPOFtqd7eiu
         GcIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762804989; x=1763409789;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bc+xPByoRMqqQxfT2LkrGAHGGyf6F9D/mlbpqhTMxwg=;
        b=nex8tzabcmebGPxm2j4jHT6wEPtaozCz55OvQH7s8UUxwkX2VBy+jqloaIsXo+wxnz
         ZL3lUrCndaXBtll7E5+ZO+IpqONmMW0NHz5I/NrIr+wbX/jgbb9rtgikFqaIR5wZBqb0
         IfclaOLS3inenumvlG8gF71zFGvwJxLefErgsUWMJK3FAViVADabJNiyCDdpyCkpw8N1
         vXal7nTxSx7+Bm8j0Iv1rdpQPDh+hf/5jJPombpoEVB8DEYjGKXgXfWYNsJPsq1WYD6z
         01PIvXVwf5v6b2mTNGHmiUAn4Pd+BnoNaZhDF26rdgwp25i9uxPojE2otNjK+gCu4ljO
         nMng==
X-Forwarded-Encrypted: i=1;
 AJvYcCUMvryHlEQf25EGMV6+sZyvcJ7QcatOjApZzXnfCeJp30+e6QIHVysplRrqrRSVHDVvNduG@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yzi3ekv6GwMx3zHLfUHVF/+NurzEBIZ2g6Z9emC3UzQ4B0jEDj7
	HIK3CgfVATr/YwuSnQlO8lHERsaMMbWqVHB2vCJ9krkxgeEFbJc52/EmIcOMvY730csl2X2fdV4
	ZMU5AM/vgkxIaXFt1SUlW4SK6T4RrOUo=
X-Gm-Gg: ASbGncvmEAaAvZTEpaK4ZHFL+q69B36ukIMRZCzY6AH4w9btexLjWehcyBwd9FbpqY0
	rsduoQUE5ofIGkxxyT3PcwfrzAcQwGP1MfkSDCt1R+Z2395WWHBrjOBGrmpsPCiPAXtqTFCQEv6
	xGkMcuayuQfCOfAAaU2Nd7DLDAOB1difglxWAU9Pp6AjqXsy5MHBBTzoi17lX0FjzS7/7EIkJwP
	kTY7vByCk7rPVi4eKrirdlILQc2SP8Y8VzlI60cdtDqey/KXn9sclbYsVexmQ==
X-Google-Smtp-Source: 
 AGHT+IHEb32yv/hC6NBVgRhRHUr1WX31+xA7PeaU5OeLFfgGBz1RhPfMzwzA8E2NQQgOmtOla1ObGJIL99ddUzCWwlc=
X-Received: by 2002:a05:6512:3d87:b0:594:3004:ce37 with SMTP id
 2adb3069b0e04-5945f1cb1efmr2383752e87.44.1762804988640; Mon, 10 Nov 2025
 12:03:08 -0800 (PST)
MIME-Version: 1.0
References: <9390D9DA-3C77-429F-A41D-E0FECD52FF06@connectivitycap.com>
 <CAJUtOOjt+DajPifDNLNBOT_xwNWL_Wec5Gf_O91HMDdwpxtmeg@mail.gmail.com>
 <CAA_JP8XOeSOqbZJPH=1_oWMD055vOUxHipxJMs8sbsHLu5MHCA@mail.gmail.com>
 <CAJUtOOhiu8CVLARsiMKUkN4s87_VUr17su1Nr_4aManrwkCQAg@mail.gmail.com>
 <CAJUtOOhzJAymDiKsnRPho80B8GZ4wzd8W7FWccS=uhiQPd3KOg@mail.gmail.com>
 <2036296F-1567-4B66-BD8C-3AB49EBD5AA3@connectivitycap.com>
 <CAHn=e4iyb6FDc+Jrwx+5jdhZ35qoM8Weoz=Ktvth-NdUKZ7VmA@mail.gmail.com>
 <3934C9BE-EED5-4DF7-9451-E438E0FEFE3E@connectivitycap.com>
 <CAHn=e4h_K-5J2OZ4tSRBvgHtg729T=ayXw=d5TMLC=oRrFpdkA@mail.gmail.com>
 <CAA_JP8Uh3L7BB=WqU8dkMGL2hhFTsdDCkqt-grPb04v7b9v8vQ@mail.gmail.com>
 <CAHn=e4gGtXLd5CUi-9M9KKxeaQqj6jMBKJppZKjm4SvMaPR6ug@mail.gmail.com>
 <93519830-549F-459A-A737-792F18F3241C@gmx.de>
 <F9170829-9358-4D9D-8B23-199E54C102B9@connectivitycap.com>
 <CDF65ACE-06AD-4C4A-8F74-14B704B89637@gmx.de>
 <2A98A137-B465-4DA1-9BC8-72A38A3A4DEA@connectivitycap.com>
In-Reply-To: <2A98A137-B465-4DA1-9BC8-72A38A3A4DEA@connectivitycap.com>
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Mon, 10 Nov 2025 21:06:43 +0100
X-Gm-Features: AWmQ_bk5XPeUB9i2F3GlrOifo9tP2a2x1mR7kxlWaTc3fj2hPHvVNoIKcy-0r3c
Message-ID: 
 <CAJUtOOg3f2Z6Z5dYBCAN=ta73=+UBE3jzneU5XmfZupincsX8g@mail.gmail.com>
To: Jim Forster <jim@connectivitycap.com>
Cc: Sebastian Moeller <moeller0@gmx.de>, J Pan <Pan@uvic.ca>,
 dan <dandenson@gmail.com>,
	Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
	codel@lists.bufferbloat.net, libreqos <libreqos@lists.bufferbloat.net>,
	l4s-discuss@ietf.org, starlink@lists.bufferbloat.net
Message-ID-Hash: JMVDRVMUFYS3JBKZY6GLSQKO2XLD3H6I
X-Message-ID-Hash: JMVDRVMUFYS3JBKZY6GLSQKO2XLD3H6I
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [Starlink] [LibreQoS] Re: Re: Keynote: QoE/QoS - Bandwidth Is A
 Lie! at WISPAPALOOZA 2025 (October 16)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOg3f2Z6Z5dYBCAN=ta73=+UBE3jzneU5XmfZupincsX8g@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U29tZSBwb3N0LWdpZ2FiaXQgZXJhIGRhdGEgZnJvbSBJRVRGIDEyNCBNb250cmVhbCwgc2hhcmVk
IGJ5IEphc29uOg0KDQoiRnVydGhlciBvbiBteSAid2UgYXJlIGluIHRoZSBwb3N0LWdpZ2FiaXQg
ZXJhIiB0aGVtZSBmcm9tIHRoZSBJRVRGLTEyNA0KbWVldGluZy4gTWF4IDgyNSB1c2VyIGRldmlj
ZXMsIHdpdGggcGVhayBzaW11bHRhbmVvdXMgb2YgMjI3IGRldmljZXMuDQpCYW5kd2lkdGggdXNh
Z2U6IGF2ZyBkb3duc3RyZWFtIDI0MSBNYnBzIGFuZCBwZWFrIDEuMTggR2JwcywgYXZnIHVwc3Ry
ZWFtDQoyMSBNYnBzIGFuZCBwZWFrIDQ2OCBNYnBzLiBJZiB5b3UgYXJlIG9uIGFuIFhmaW5pdHkg
SW50ZXJuZXQgbWlkLXNwbGl0DQpzcGVjdHJ1bSBhcmVhLCB5b3VyIGhvbWUgY29ubmVjdGlvbiBj
b3VsZCBoYXZlIGhhbmRsZWQgYWxsIG9mIHRoYXQuIg0KDQpodHRwczovL3d3dy5saW5rZWRpbi5j
b20vcG9zdHMvamxpdmluZ29vZF9iYW5kd2lkdGgtcG9zdGdpZ2FiaXRlcmEtbGF0ZW5jeS1hY3Rp
dml0eS03MzkzNzE5NDM4Mzg0MTM2MTkyLUlKYVANCg0KQWxsIHRoZSBiZXN0LA0KDQpGcmFuaw0K
DQpGcmFudGlzZWsgKEZyYW5rKSBCb3JzaWsNCg0KDQoqSW4gbG92aW5nIG1lbW9yeSBvZiBEYXZl
IFTDpGh0OiAqMTk2NS0yMDI1DQoNCmh0dHBzOi8vbGlicmVxb3MuaW8vMjAyNS8wNC8wMS9pbi1s
b3ZpbmctbWVtb3J5LW9mLWRhdmUvDQoNCg0KaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2luL2Zy
YW50aXNla2JvcnNpaw0KDQpTaWduYWwsIFRlbGVncmFtLCBXaGF0c0FwcDogKzQyMTkxOTQxNjcx
NA0KDQppTWVzc2FnZSwgbW9iaWxlOiArNDIwNzc1MjMwODg1DQoNClNreXBlOiBjYXNpb2E1MzAy
Y2ENCg0KZnJhbnRpc2VrLmJvcnNpa0BnbWFpbC5jb20NCg0KDQpPbiBNb24sIE5vdiAxMCwgMjAy
NSBhdCA0OjM54oCvUE0gSmltIEZvcnN0ZXIgPGppbUBjb25uZWN0aXZpdHljYXAuY29tPiB3cm90
ZToNCg0KPiBTZWJhc3RpYW4g4oCUIHRoYW5rcyBmb3IgYWxsIHRoYXQuICBBZ2FpbiBJIGZpbmQg
dGhlcmUgaXMgbG90cyBJIGRvbuKAmXQga25vdywNCj4gIFRoYXTigJlzIGEgcmVsaWVmLCBvdGhl
cndpc2UgbGlmZSB3b3VsZCBiZSBib3JpbmcsDQo+DQo+ICAg4oCUIEppbQ0KPg0KPiBPbiBOb3Yg
OSwgMjAyNSwgYXQgMTA6MjfigK9QTSwgU2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxsZXIwQGdteC5k
ZT4gd3JvdGU6DQo+DQo+DQo+DQo+IE9uIDEwIE5vdmVtYmVyIDIwMjUgMDU6NDg6MzggQ0VULCBK
aW0gRm9yc3RlciA8amltQGNvbm5lY3Rpdml0eWNhcC5jb20+DQo+IHdyb3RlOg0KPg0KPiBPbiBO
b3YgOCwgMjAyNSwgYXQgMToxMeKAr1BNLCBTZWJhc3RpYW4gTW9lbGxlciA8bW9lbGxlcjBAZ214
LmRlPiB3cm90ZToNCj4NCj4gQXMgYSBtYXJrZXQgcmVhbGlzdCAodGhhdCBpcyBzb21lb25lIHdo
byBhY2NlcHRzIGVmZmljaWVudCBtYXJrZXQgd2hlbiBoZQ0KPiBzZWVzIHRoZW0sIGJ1dCBkb2Vz
IG5vdCBuYWl2ZSBiZWxpZXZlIGluIHRoZSBmYWlyeSB0YWxlcyBvZiB0aGUgaW52aXNpYmxlDQo+
IGhhbmQgb2YgdGhlIG1hcmtldCkgSSB0aGluayB0aGF0IHdlIHdvdWxkIGJlIG9mdGVuIG11Y2gg
YmV0dGVyIG9mZiB3aXRoIGENCj4gY29tcGV0ZW50bHkgbWFuYWdlZC9yZWd1bGF0ZWQgbW9ub3Bv
bHkgdGhhbiB3aXRoIGR1by0gdG8gb2xpZ29wb2xpZXMgdGhhdA0KPiBhcmUgdHJlYXRlZCBhcyBp
ZiB0aGV5IHdlcmUgZWZmaWNpZW50IG1hcmtldHMuLi4gSW5mcmFzdHJ1Y3R1cmUgKGFuZCBhdA0K
PiBsZWFzdCBhY2Nlc3MgbmV0d29ya3MgYXJlIGF0IGxlYXN0IGluZnJhc3RydWN0dXJlLWlzaCBJ
TUhPKSBpcyBub3QNCj4gc29tZXRoaW5nIHdoZXJlIHRoZSBmcmVlIG1hcmtldCB0eXBpY2FsbHkg
ZXhjZWxzIGF0Lg0KPg0KPg0KPg0KPiBZZWFoLCBJIGFsc28gZG9u4oCZdCB0aGluayB0aGVyZeKA
mXMgYW4gZWZmaWNpZW50LCBmYWlyLCBtYXJrZXQgaGVyZSB0aGF0IGdldHMNCj4gdXMgd2hhdCB3
ZSB3LiBJbiBzb21lIHdheXMsIHRoZSBEaWdpdGFsIERpdmlkZSBpcyBhbiBleHBlY3RlZCBvdXRj
b21lIG9mDQo+IGNhcGl0YWwgYWxsb2NhdGlvbiBkZWNpc2lvbnMgYnkgZGVyZWd1bGF0ZWQgY29t
cGFuaWVzIGluIGEgc2VjdG9yIHRoYXQgaGFzDQo+IGVjb25vbWllcyBvZiBzY2FsZSBhbmQgbmV0
d29yayBlZmZlY3RzLg0KPg0KPg0KPiBJbmRlZWQuLi4gSSBqdXN0IG5vdGUgdGhhdCB0aGUgUE9U
UyBuZXR3b3JrIHdhcyBtdWNoIG1vcmUgY29tcHJlaGVuc2l2ZSBpbg0KPiBpdHMgcmVhY2ggZHVl
IHRvIHN0cmljdGVyIHJlZ3VsYXRpb24uLi4NCj4NCj4NCj4gQXQgdGhlIHNhbWUgdGltZSwgYSAi
Y29tcGV0ZW50bHkgbWFuYWdlZC9yZWd1bGF0ZWQgbW9ub3BvbHnigJ0gbWF5IGJlIGFzDQo+IHVu
Y29tbW9uIGFzIEhvbW8gRWNvbm9taWN1cyBzaXRpbmdzIGFyZS4NCj4NCj4NCj4gTmEsIG9ubHkg
aWYgd2UgcHV0IG91ciBhaW0gZm9yIGNvbXBldGVuY2UgdG9vIGhpZ2ggOykgLiBPdmVyIGhlcmUN
Cj4gZWxlY3RyaWNpdHksIHdhdGVyIGFuZCBzdHJlZXQgIm5ldHdvcmtzIiBhcmUgZGVjZQ0KPiBu
dGx5IHJlZ3VsYXRlZCBpbmZyYXN0cnVjdHVyZS4NCj4NCj4gV2hpY2ggZXhhbXBsZSBjYW4geW91
IGNpdGU/IE5aPyBVSz8gU0U/IEFuZCBoYXZlIHRoZXkgdHJhbnNpdGlvbmVkDQo+IHNtb290aGx5
IHRvIG5ldyB0ZWNobm9sb2d5IHRoYXQgd291bGQgZGltaW5pc2ggdGhlIHZhbHVlIG9mIHRoZWly
IGV4aXN0aW5nDQo+IGluZnJhc3RydWN0dXJlPw0KPg0KPg0KPiBUcmlja3kuLi4gZm9yIGluZnJh
c3RydWN0dXJlIGluIGdlbmVyYWwgSSBiZWxpZXZlIHRoZXJlIGFyZSBsb2FkcyBvZg0KPiBleGFt
cGxlcyBpbiBFdXJvcGUsIGZvciBpbnRlcm5ldCBhY2Nlc3MgbmV0d29ya3MgaXQgZ2V0cyBhIGJp
dCB0cmlja2llciwNCj4gYnV0IHRoZXJlIGFyZSBzb21lIGV4YW1wbGVzIG9mIGNvbWJpbmluZyBh
IHNpbmdsZSBuZXR3b3JrIHdpdGggb3BlcmF0b3INCj4gY29tcGV0aXRpb24uIChBbmQgdGhhdCBp
cyBteSBwcmVmZXJyZWQgbW9kZWwsIG1vbm9wb2x5IG5ldHdvcmsgd2l0aA0KPiByZWd1bGF0ZWQg
YW5kIGZhaXIgYWNjZXNzIGZvciBvcGVyYXRvcnMsIGFuZCB0aGVuIGhhdmUgYXMgbWFueSBvcGVy
YXRvcnMgYXMNCj4gcG9zc2lia2Ugb2ZmZXIgdGhlaXIgc2VydmljZXMgb3ZlciB0aGF0IG5ldHdv
cmspLiBCdXQgcGFydGlhbCBleGFtcGxlcw0KPiBleGlzdCwgZS5nLiB0aGUgZmliZXIgbmV0d29y
ayBidWlsdCBpbiBBbXN0ZXJkYW0sIG9yIHRoZSBwb2ludCB0byBwb2ludA0KPiBmaWJlciBuZXR3
b3JrIGluIHN3aXR6ZXJsYW5kIHdoZXJlIHRoZSBpbmN1bWJlbnQgYnVpbHQgbW9zdCBvZiB0aGUg
ZnR0aA0KPiBuZXR3b3JrIGFuZCBpcyByZWd1bGF0ZWQgdG8gcGh5c2ljYWxseSB1bmJ1bmRsZSBp
bmRpdmlkdWFsIGxpbmVzIHRvIGVuZA0KPiBjdXN0b21lcnMsIHJlc3VsdHVuZyBpbiBzdXJwcmlz
aW5nIGNvbXBldGl0aW9uIG9mIElTUHMgb3BlcmF0aW5nIGRpZmZlcmVudA0KPiB0ZWNobm9sb2d5
IG92ZXIgdGhlIHNhbWUgZmliZXJzIChzd2lzc2NvbSB1c2VzIHhnc3Bvbiwgc2FsdC5jaCB1c2Vz
IHRoZWlyDQo+IG93biB4Z3NwaW4gT0xUcywgaW5pdDcgdXNlcyBBT04gdXAgdG8gMjUgR2Jwcyku
IFN3ZWRlbiBhbHNvIHNlZW1zIHRvIGhhdmUgYQ0KPiBkZWNlbnQgKGFsYmVpdCBub3QgcmVndWxh
dGVkKSBzZXBhcmF0aW9uIGJldHdlZW4gbmV0d29yayBvcGVyYXRvcnMgYW5kIElTUHMNCj4gdGhh
dCBvZmZlciBzZXJ2aWNlcyBvdmVyIHRoZXNlIG5ldHdvcmtzLg0KPg0KPg0KPg0KPiBJIHJlY2Fs
bCB0aGF0IGluIHRoZSBVUyBwcmlvciB0byB0aGUgLmNvbSBib29tLCB0aGUgdGVsY2/igJlzIGlk
ZWEgb2YNCj4gYnJvYWRiYW5kIHdhcyBJU0ROIG9yIG1heWJlIERTTCBvciBTTURTLiBUaGV5IHdy
b3RlIG1hbnkgcGFwZXJzLCBoYWQgbG90cw0KPiBvZiB0cmlhbHMsIGJ1dCBkaWQgbm90IGFnZ3Jl
c3NpdmVseSBkbyBicm9hZGJhbmQsDQo+DQo+DQo+IFllcywgSSBhZ3JlZSB0aGF0IHRoZSBvbGQg
bW9kZWwgb2YgYSB2ZXJ0aWNhbGx5IGludGVncmF0ZWQgZnVsbCBzZXJ2aWNlDQo+IHRlbGNvIGJy
ZWVkIGNvbXBsYWNlbmN5IGFuZCB3YXMgbm90IGlkZWFsIGVpdGhlciAoZXZlbiB0aG91Z2ggdGhl
IFBPVFMNCj4gbmV0d29yayBoYWQgYmV0dGVyIHJlYWNoIHRoYW4gdGhlIEhGQyBuZXR3b3Jrcyku
DQo+DQo+IDogJ0V2ZXJ5b25lIGtuZXfigJkgdGhhdCB0aGUgY2FibGVjb3PigJkgSEZDIHdvdWxk
IG5ldmVyIHdvcmssIGFuZCB0aGF0IHRoZXkNCj4gY291bGQgbm90IGRvIGRpZ2l0YWwgYW5kIGNl
cnRhaW5seSBub3Qgdm9pY2UsICBIRkMgd29ya2VkLCBhbmQgRE9DU0lTIHdhcyBhDQo+IGJpZyBz
dWNjZXNzLiBUaGF0IHByZXNzdXJlZCB0aGUgdGVsY29zIHRvIHN0YXJ0IGFjdHVhbGx5IGRlcGxv
eWluZyBEU0wsIGJ1dA0KPiBpdCB3YXMgdG9vIGxhdGUsIGFuZCB0aGUgY2FibGVjb3MgaGF2ZSBk
b21pbmF0ZWQgVVMgYnJvYWRiYW5kIGZvciBhIGNvdXBsZQ0KPiBvZiBkZWNhZGVzLg0KPg0KPiBU
aGUgb3V0Y29tZSBpbiBHZXJtYW55IHdhcyBkaWZmZXJlbnQuLi4gaGZjIG5ldHdvcmtzIG9ubHkg
ZXZlciByZWFjaGVkDQo+IGFyb3VuZCA3NSUgb2YgaG91c2Vob2xkcyBhbmQgbmV2ZXIgZXhjZWVk
ZWQgMTAgb2YgZXN0aW1hdGVkIDQ1IG1pbGxpb24NCj4gYWNjZXNzIHNpdGVzIGZvciBicm9hZGJh
bmQgc2VydmljZXMsIHdoaWxlIERTTCBzdGlsbCBzZXJ2ZXMgYWxtb3N0IDIzDQo+IG1pbGxpb24g
KGFuZCByZWFjaGVzIGFsbW9zdCBhbGwgNDUgbWlsbGlvbikuQnV0IHllcyBvbiB0aGUgdGVjaG5v
bG9neSBzaWRlDQo+IGl0IGxpa2VseSB3YXMgaGZjJ3MgcHJlc3N1cmUgdGhhdCBzcGVkIHVwIGRz
bCBkZXZlbG9wbWVudC4NCj4gTm93LCB0aGUgZ2VybWFuIG1hcmtldCBpcyBhIGJpdCBvZGQsIGFz
IGN1c3RvbWVycyBhcmUgbmVpdGhlciB0ZXJyaWJseQ0KPiBodW5ncnkgZm9yIGhpZ2ggY2FwYWNp
dHkgbm9yIHRlcnJpYmx5IHByaWNlIHNlbnNpdGl2ZSAodGhlIG9sZCBleC1tb25vcG9seQ0KPiB0
ZWxjbyBzdGlsbCBzZXJ2ZXMgbW9zdCBkc2wgY3VzdG9tZXJzIGluIHNwaXRlIG9mIGJlaW5nIG1v
cmUgZXhwZW5zaXZlIGR1ZQ0KPiB0byB2YWxpZCByZWd1bGF0b3J5IGludGVydmVudGlvbnMpLg0K
Pg0KPiBSZWdhcmRzDQo+ICAgICAgICBTZWJhc3RpYW4NCj4NCj4gUC5TLjogSSB1bmRlcnN0YW5k
IHRoYXQgaW4gdGhpcyBxdWVzdGlvbiB0aGVyZSBhcmUgb2YgY291cnNlIG11bHRpcGxlDQo+IGVx
dWFsbHkgdmFsaWQgYW5kIGp1c3RpZnlhYmxlIHBvc2l0aW9ucyBvbmUgY291bGQgdGFrZSwgdGhp
cyBqdXN0IGhhcHBlbnMNCj4gdG8gYmUgbWluZS4gQSBjb3VwbGUgb2YgZnJpZW5kbHkgSVNQcyBm
b3IgZXhhbXBsZSByZWplY3QgdGhpcyBpZGVhIGFzIHRoZXkNCj4gY29uc2lkZXIgYWNjZXNzIG5l
dHdvcmtzIHRvIGJlIGEgZmllbGQgd2hlcmUgSVNQcyBjYW4gZGlmZmVyZW50aWF0ZSBhbmQNCj4g
Y29tcGV0ZSAoc29tZSBvZiB0aGVtIGhvd2V2ZXIgcHJvcG9zZWQgYSByZWd1bGF0ZWQgbWlkZGxl
IG1pbGUgdG8gYmUgYWJsZQ0KPiB0byBlY29ub21pY2FsbHkgcmVhY2ggSVhzIGFuZCBwZWVyaW5n
IHBvaW50cyB0byBldmVuIHRoZSBwbGF5aW5nIGZpZWxkKS4NCj4NCj4NCj4gSmltDQo+DQo+DQo+
DQo+DQo+DQo+IC0tDQo+IFNlbnQgZnJvbSBteSBBbmRyb2lkIGRldmljZSB3aXRoIEstOSBNYWls
LiBQbGVhc2UgZXhjdXNlIG15IGJyZXZpdHkuDQo+DQo+DQo+DQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNha2Ut
bGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==
