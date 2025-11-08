Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA5DC434B1
	for <lists+cake@lfdr.de>; Sat, 08 Nov 2025 21:54:34 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 231C2936950;
	Sat, 08 Nov 2025 21:54:19 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=CU8GzmXu
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1762635259;
 b=tTEx/tpxUgyhhsz24ACN3Wnuu20hFyzu++lbt1Lk9vqd26fCg+vFsgWG0+UX8wlx1cwBV
 awKkrLIcT5+n/YluL1M4Cr0vjXYvi0Uezxe5JSR/GIIZCiwCEjQzcJ5FpdrbF+M/Qv9f//D
 ABVXEDXF5q/pO5+OsYRyUr/o2x060z8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1762635259; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=AbvhRmbPv3IridYjWNY2fny/pT1c0GE4Z/z2E4yKCHE=;
 b=mH9dfotyKt30/xI6nQZF4TJO1h0fKCiH9mUfq50cw2BAkVl1v4np1ZpQpba5lHvyv3v2M
 oDb3qWHxSePIKnvus9UKy/fFReAFiS/p0wzHK2u7blbzMuOQ5RbHRActUqOquh9Of0HTBhB
 bPxd2envdZKNEDn9d7GO5+ZpUm2Lm0s=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
	by mail.toke.dk (Postfix) with ESMTPS id 7A35A93512B
	for <codel@lists.bufferbloat.net>; Sat, 08 Nov 2025 17:00:25 +0100 (CET)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-28a5b8b12a1so15302435ad.0
        for <codel@lists.bufferbloat.net>;
 Sat, 08 Nov 2025 08:00:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762617623; x=1763222423;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WYVveT6E0UllDnIsdUJCigkJBgVbeSzbIoujnjDj9S0=;
        b=CU8GzmXuqvBP0dm15dXxN+tvZtUZDifXqzmVQkY8C98SpuW1047c06BNgMWw/F2v9y
         +fcU8UNVid3cY9ycNwG7gh82hsZWsk8V5Wjv+9vhBN7Wfdmv6R3JLjb3R8xtXyrwjrO6
         c/kP4lrRUbnDBHN2IEy6NbnQ5NmCc0KoT5SAec8fQk6As6MLmhZeIW2Y5MDC/WkJR4mj
         nKIifnVQFAzyqlfdCRH3F216/3t8/3j8BSsByD9IkEZWDEyhvSMpKoMkm0k7SzgQqu2w
         +sfY853zRUjryGWF9mSDzJAQNVDeeLXhcYQimQjPPl20WmAF9sMu0rrCOp7KXtx7KXll
         1tXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762617623; x=1763222423;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WYVveT6E0UllDnIsdUJCigkJBgVbeSzbIoujnjDj9S0=;
        b=s9iQoW/8/3Yah+bwAjspIV+t8grFl5dOWuDs9TgIoQkec/f8DcSPH5nmv/7R/BhHvN
         UCD/XxNAcjPBr+j9jiaRAQvZyO4nJrxvWKlpyEUw8UZi+o/sDwCJ7zuyxcDGw4cOcE6l
         sL+czXzq2Gr8LlJJhhbSh12OUnpXU88K+xXsaHNzIyeQZ8K7PVJQUsogFkyXgmA3CGPd
         18jFR3WxK/wqHYr9kGFKjDrpEGzr0zURH4I7IYGBzkKgkzpd9GEOoI6RpMqQqklaeSK6
         Uz5maoRIS/4oSefdXxXNav+exl1rQWttQeKWVNUraZmZJmBIstxEdxOWJyyfO171kACj
         IB7w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVPuSNl0SQ/8vy3ZxWyEFsGMVa8wmSXGmxawdgVTb60nW2QsKsADtRmOKtriMEGoDYsJuI1Mw==@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwyDMGjGedDPwqYeqxc/Cun/t03R7jM/Q4i0KiHipONGb0eaaK+
	8x+wKHVsPU6MqxY8MrDDwCi5vyJaLMEloO7K0Jn9Hz0rolapjpU+tH+kjcz0LuuDzRbVtYb4WzB
	spmmfPTlKW0oZ5xMKeT91cNECeu8WZ/0=
X-Gm-Gg: ASbGnctXNO1b79Hzp8L2VeVQS7RsGhNblpjgkOx1UObM4NzY3EstEkODk7+dIkS4UIP
	zFyPknqX4ecob9IPO7ERhxFJ1sGPUf/gXyqohlWQHhNKRd7ieJCKZW59ZCHzHNaady+7CsBC1LC
	nzFmRQ2s16Y5gO82J+J9rYEWLRH2qmr/iRxRV9ceolFcg1QWMyhbjEYwDk39Juk8G3DwEfUu+Vf
	4qZ9C8DzatuyUkO4DaaJuAQ1P1bx9bHrnG8/wWrcDZX2Cb2mHKk39gBhUP/4oX/W4xHK+bQSDJR
	R9gs/ge0HLzVsv8NAT4=
X-Google-Smtp-Source: 
 AGHT+IF3ka5Srojw0/PMZWlElJb45914jD7xiphHQyvzd5ugqpXhNorUBbWtl+MxCmkBIyRF7F4Tv+ZlcS75gXXkOKE=
X-Received: by 2002:a17:902:ebc1:b0:294:cc8d:c0c2 with SMTP id
 d9443c01a7336-297e5663a67mr35040335ad.27.1762617622572; Sat, 08 Nov 2025
 08:00:22 -0800 (PST)
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
In-Reply-To: 
 <CAHn=e4h_K-5J2OZ4tSRBvgHtg729T=ayXw=d5TMLC=oRrFpdkA@mail.gmail.com>
From: dan <dandenson@gmail.com>
Date: Sat, 8 Nov 2025 09:00:10 -0700
X-Gm-Features: AWmQ_bkIessx4czRlxp5pnVcdFIwGcHYqcchADw8MoQfSyh4RG_53ujQji2sVP0
Message-ID: 
 <CAA_JP8Uh3L7BB=WqU8dkMGL2hhFTsdDCkqt-grPb04v7b9v8vQ@mail.gmail.com>
To: J Pan <Pan@uvic.ca>
Cc: Jim Forster <jim@connectivitycap.com>,
 Frantisek Borsik <frantisek.borsik@gmail.com>,
	Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
	codel@lists.bufferbloat.net, libreqos <libreqos@lists.bufferbloat.net>,
	l4s-discuss@ietf.org, starlink@lists.bufferbloat.net
X-MailFrom: dandenson@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: GVO6OTXV6IUQ2QA6WBINKYZN74YNCFD4
X-Message-ID-Hash: GVO6OTXV6IUQ2QA6WBINKYZN74YNCFD4
X-Mailman-Approved-At: Sat, 08 Nov 2025 21:54:16 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [LibreQoS] Re: [Starlink] Re: Keynote: QoE/QoS - Bandwidth Is A
 Lie! at WISPAPALOOZA 2025 (October 16)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAA_JP8Uh3L7BB=WqU8dkMGL2hhFTsdDCkqt-grPb04v7b9v8vQ@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSdtIHN0YXJ0aW5nIHRvIHNlZSB0aGUgc2lnbnMgdGhhdCByYXcgYmFuZHdpZHRoIGlzIHN0YXJ0
aW5nIHRvIGxvc2UNCml0J3MgZG9taW5hbmNlIGZvciBtYXJrZXRpbmcuICBJdCdzIHN0aWxsIHRo
ZSBjbGVhciAjMSBhc2sgYnV0IHByaWNlDQppcyByYXBpZGx5IG92ZXJ0YWtpbmcgc3BlZWQgZm9y
IG91ciBjdXN0b21lciByZXF1ZXN0cy4NCg0KSSBiZWxpZXZlIHdlJ3ZlIGhpdCB0aGlzIGVyYSdz
IHRocmVzaG9sZCBvbiB0aHJvdWdocHV0IG5lZWRzIGFuZA0KcGVvcGxlIGhhdmUgc3RhcnRlZCB0
byBub3RpY2UgdGhhdCAnbW9yZScgZG9lc24ndCBmZWVsIGxpa2UgYSBmYXN0ZXINCnNlcnZpY2Uu
DQoNCm9uZSBjb21tb24gc2NlbmFyaW8gdGhhdCB3ZSBhcmUgdXNpbmcgdG8gd2luIGN1c3RvbWVy
cywgaW4gY29tYmluYXRpb24NCndpdGggZmFjZWJvb2sgdGVzdGltb25pYWxzLCBpcyB0aGF0IHBl
b3BsZSBoYXZlIGJhZCBleHBlcmllbmNlcyB3aXRoDQp3aWZpIGFuZCB0aGV5IG9yZGVyIGEgZmFz
dGVyIHNlcnZpY2UgZnJvbSBjYWJsZS9maWJlciBjb21wYW55IGFuZCB0aGUNCndpZmkganVzdCBn
ZXRzIHdvcnNlLiAgVGhpcyBzY2VuYXJpbyBJIHRoaW5rIGlzIGluY3JlZGlibHkgY29tbW9uIGFu
ZA0Kc2VlbXMgdG8gYmUgYSBjYXRhbHlzdCBmb3IgJ3NwZWVkIGlzbid0IGV2ZXJ5dGhpbmcnLiAg
V2UgY29tZSBpbiB3aXRoDQo1MC01MDBNYnBzIG9mIHNlcnZpY2UgYW5kIHNvbGlkIHdob2xlLWhv
bWUgd2lmaSBhbmQgdGhleSBhcmUNCmNvbnZlcnRlZC4NCg0KSSBob3BlIHdlJ3JlIG5vdCB0byBm
YXIgb2ZmIGZyb20gaGF2aW5nICdzcGVlZCcgYmUganVzdCBhIGZlYXR1cmUsIG5vdA0KdGhlIGVu
dGlyZSBzdG9yeS4NCg0KYW5kIHllcywgd2UgUW9FIG9yIHNlcnZpY2Ugd2l0aCBjYWtlIHZpYSBs
aWJyZXFvcyB3aGljaCBpcyB0aGUNCmRpZmZlcmVuY2UgYmV0d2VlbiBncmVhdCBzZXJ2aWNlIGFu
ZCBpbmFkZXF1YXRlIHNlcnZpY2UgSU1PLg0KDQpPbiBGcmksIE5vdiA3LCAyMDI1IGF0IDEyOjUw
4oCvUE0gSiBQYW4gdmlhIExpYnJlUW9TDQo8bGlicmVxb3NAbGlzdHMuYnVmZmVyYmxvYXQubmV0
PiB3cm90ZToNCj4NCj4gbWFya2V0aW5nIGlzIGV2ZW4gd29yc2UuIHNvbWUgY2xhaW0gMjAwbWJw
cyBiZWNhdXNlIDE1MG1icHMgZG93biBhbmQNCj4gNTBtYnBzIHVwIGF0IHBlYWsgZGF0YSByYXRl
LiBvZiBjb3Vyc2UsIHRoaXMgaXMgbm90IHRoZSBvbmx5IHByb2JsZW0NCj4gaW4gdGVsZWNvbSwg
YnV0IGxpa2VseSB0aGUgd29yc3QNCj4NCj4gbmV2ZXJ0aGVsZXNzLCB0aGVyZSBhcmUgc3RhdHMg
c3VjaCBhcyAxMCUgaW5mbGF0aW9uIGZvciBmb29kIGFuZCAyMCUNCj4gZm9yIGdhcywgc28gaW4g
dG90YWwgMzAlIDstKSBhdCB0aGlzIHJhdGUsIGFueSBudW1iZXJzIGNhbiBiZSBmbG9hdGluZw0K
PiBhcm91bmQgYnV0IG5vbmUgYXJlIHRlbGxpbmcgdGhlIHRydXRoIDstKQ0KPiAtLQ0KPiBKIFBh
biwgVVZpYyBDU2MsIEVDUzU2NiwgMjUwLTQ3Mi01Nzk2IChOTyBWTSksIFBhbkBVVmljLkNBLCBX
ZWIuVVZpYy5DQS9+cGFuDQo+DQo+IE9uIEZyaSwgTm92IDcsIDIwMjUgYXQgMTA6NTXigK9BTSBK
aW0gRm9yc3RlciA8amltQGNvbm5lY3Rpdml0eWNhcC5jb20+IHdyb3RlOg0KPiA+DQo+ID4gRXhh
Y3RseSBzby4NCj4gPg0KPiA+IENvbnN1bWVyIGV4cGVjdGF0aW9ucyBhbmQgc2VydmljZSBwcm92
aWRlciBtYXJrZXRpbmcgbWF5IGJlIGluZmx1ZW5jZWQgYnkgbWVtb3JpZXMgb2YgZXhwZXJpZW5j
ZSB3aGVuIHRyYW5zbWlzc2lvbiBkZWxheSBkaWQgbWF0dGVyLiAgQXQgb25lIHRpbWUgSSB3YXMg
dmVyeSBoYXBweSB3aXRoIG15IGhvbWUgSVNETiBjb25uZWN0aW9uLCBhbmQgZXZlbiBzaGFyZWQg
aXQgd2l0aCBteSBuZWlnaGJvci4gIEF0IGFib3V0IDEyOGticywgaXQgd2FzIHRocmVlIG9yZGVy
cyBvZiBtYWduaXR1ZGUgc2xvd2VyIHRoYW4gbXkgaG9tZSBmaWJlciBsaW5rLiAgSeKAmXZlIG5v
dCBydW4gdGhlIG51bWJlcnMgYnV0IEnigJltIHByZXR0eSBzdXJlIHRyYW5zaW1pc3Npb24gc3Bl
ZWQgbWF0dGVyZWQgZm9yIHZpZGVvLCBldmVuIGZvciBjcnVtbXkgcXVhbGl0eSB2aWRlbywgIFNv
IHRoZW4gd2hlbiBJIGxlYXJuZWQgYSBiaXQgYWJvdXQgZGlnaXRhbCB2aWRlbywgYW5kIGNhYmxl
4oCZcyA2NCBRQU0gMjdtYnBzIGNoYW5uZWxzLCBJIGdvdCBleGNpdGVkIGFuZCB0aG91Z2h0LCDi
gJx3b3csIHRoZXkgY291bGQgZGVsaXZlciAxbWJwcyBzZXJ2aWNlISAgQW5kIHdvdWxkbuKAmXQg
aXQgYmUgY29vbCB0byBoYXZlIDFNIGhvbWUgb25saW5lIGF0IDEweCB0aGUgc3BlZWQgb2YgSVNE
Tj/igJ0uICBJdCB3YXMgY29vbCEgIEFuZCB0d28gbW9yZSBvcmRlcnMgb2YgbWFnbml0dWRlIGxh
dGVyLCBoZXJlIHdlIGFyZS4NCj4gPg0KPiA+ICAg4oCUIEppbQ0KPiA+DQo+ID4gT24gTm92IDcs
IDIwMjUsIGF0IDEyOjUy4oCvUE0sIEogUGFuIDxQYW5AdXZpYy5jYT4gd3JvdGU6DQo+ID4NCj4g
PiBsYXRlbmN5IGlzIGJhc2VkIG9uIHJvdW5kLXRyaXAgdGltZSwgYW5kIG9uZS13YXkgZGVsYXkg
aW5jbHVkZXMNCj4gPiB0cmFuc21pc3Npb24gZGVsYXksIHByb3BhZ2F0aW9uIGRlbGF5LCBxdWV1
aW5nIGRlbGF5IGFuZCBwcm9jZXNzaW5nDQo+ID4gZGVsYXkuIGJhbmR3aWR0aCBkb2VzIGFmZmVj
dCB0cmFuc21pc3Npb24gZGVsYXkgKG9yIHNlcmlhbGl6YXRpb24NCj4gPiBkZWxheSksIHByb3Bh
Z2F0aW9uIGRlbGF5IGlzIGRldGVybWluZWQgYnkgdGhlIGxpbmsgbGVuZ3RoIGFuZCB0aGUNCj4g
PiAidHJhdmVsIiBzcGVlZCBvZiB0aGUgc2lnbmFsLCBxdWV1aW5nIGRlbGF5IGlzIHRoZSBoYXJk
ZXN0IHBhcnQgYW5kDQo+ID4gYWZmZWN0ZWQgYnkgdGhlIGJ1ZmZlciBibG9hdCBhIGxvdCwgYW5k
IHByb2Nlc3NpbmcgZGVsYXkgaXMgYW5vdGhlcg0KPiA+IHZhcmlhYmxlLiBvZiBjb3Vyc2UsIHRy
YW5zbWlzc2lvbiBkZWxheSB0YWtlcyBsZXNzIGFuZCBsZXNzIHBvcnRpb24gb2YNCj4gPiB0aGUg
ZW5kLXRvLWVuZCBkZWxheSBub3cgZHVlIHRvIGhpZ2hlciBhbmQgaGlnaGVyICJzcGVlZCIgbGlu
a3MNCj4gPg0KPiA+IGNvbnN1bWVycyBtYXkgbWlzdGFrZW4gdGhlIHNwZWVkIG9mIHRoZSBsaW5r
ICh0aGUgIndpZHRoIiBvZiB0aGVpcg0KPiA+IHBpcGUpIGFzIGhvdyBmYXN0IHRoZWlyIGludGVy
bmV0IGlzICh0aGUgImxlbmd0aCIgb2YgdGhlIHBpcGUpLCBkdWUgdG8NCj4gPiB0aGUgcG9vciB0
ZXJtaW5vbG9neSB3ZSBoYXZlIGJlZW4gdXNpbmcgOy0pDQo+ID4NCj4gPg0KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBMaWJyZVFvUyBtYWlsaW5n
IGxpc3QgLS0gbGlicmVxb3NAbGlzdHMuYnVmZmVyYmxvYXQubmV0DQo+IFRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGlicmVxb3MtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxp
bmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==
