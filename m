Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9528CC4D0E6
	for <lists+cake@lfdr.de>; Tue, 11 Nov 2025 11:33:11 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 2BBE39480FA;
	Tue, 11 Nov 2025 11:33:11 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=connectivitycap.com header.i=@connectivitycap.com header.a=rsa-sha256 header.s=google header.b=YjMMX/gD
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1762857191;
 b=4iscmOFtuUN9HNfYp77RDFq3niEsR/Jq+n819eCHye6EHt/WNbwdm1NUop1r2+8h7OgR4
 F/AMJNeV6WSkybmPkj4k8SMRWqTIgMq08OTd8QT0QD/A6lub4geyBPHeQFNO6ZqVfM0bFQe
 g1FKoeabBsCUjr+jGSEWYqeljDNa/wQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1762857191; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=qtOA6OuxFaP8Qe9G8aSEUg6/JVlNqUfyfqGh773m77M=;
 b=F9FlVoQJ/5UEjbqKMlfMBcjoaEj84yTa7IuSkpQVpO2P2TEonTxe2Aa0o2jYVRbIGGGPt
 J7P+9B1ffgq3iaKkX5+oU8AxPN6xnCG7JRTOx55xPf+SvS8RIdhGw6I1pColnuy73Ns2/iT
 u3RafiLI/GqrJEkyX8FlyTvmQ9GSrFQ=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=connectivitycap.com;
 dkim=pass header.d=connectivitycap.com;
 arc=none;
 dmarc=none
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
	by mail.toke.dk (Postfix) with ESMTPS id 94A9793EF83
	for <codel@lists.bufferbloat.net>; Mon, 10 Nov 2025 05:48:53 +0100 (CET)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-297f8c26dc7so8417825ad.2
        for <codel@lists.bufferbloat.net>;
 Sun, 09 Nov 2025 20:48:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=connectivitycap.com; s=google; t=1762750131; x=1763354931;
 darn=lists.bufferbloat.net;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mXZexzuCyT1+/n/8iExHflDsB6Pvl7j/wuRSaz+qWR4=;
        b=YjMMX/gD71rYOF639YxxG1WS50T6z0mV8Nu3DXrBWufrc0dRL3oq9hxfsMWP7FHZbO
         ID3dspp7V2lmyN5KH564op4Z1Yv8+lCCV9M77Eai3uxDSWRjEOa1e9cImeK5YACd0D4h
         A3TpHwc12/F90ZYz4VIkZEi2XP+9beQqMGolipa197li6weUBGs2Y5jekk0zX8qtf8rC
         RSUHPHTBZpjVOp3WZl0MKF6GQyoMFgrISANnmNZIW/0xZSaeIY2KN6tW8PeCdwmvv4Za
         ov/lhqTRhqGbicyEbAoivCTeqXbWPQYmOvqEr07043ylSYlFy93VRSnDfKOl3Ke1Zo7M
         Fp2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762750131; x=1763354931;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mXZexzuCyT1+/n/8iExHflDsB6Pvl7j/wuRSaz+qWR4=;
        b=Ya3jtWYFGee2M8X+hFo6xwv9P7W+wxgksdNVfZd6xd6kROfHTeDG1gZwkQ9SJXa196
         61pUGMT1A1K8w2C4hJU5HUwlc/eV3Ja9qaI65qxfwsgcf2ywALRyJ/3Si3MsLmjNFqQ2
         afwV+1ouU2FNZtkMDS3eqXghNS4viavNbSbFIiTM3VXho5epUf/t5ojONSc3GzGma5Jq
         /z/AOcsJVLAdIohQC7FqFKrQilPslzRkMhaZzajH/JqZZO9ip3ZB544easzC0ihfIZgv
         TCJK1Wy95bJ1pMHs/p9krFvohrX+jushoLdCQgw1P3G/c+1aToJnP5cZcZWxNdT7EO2n
         OgiQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWbgQAFsxILnCrQJkpkrp4RePp3/65b9KQRP2qzI73WUfMdcmylyP05bvomC2CMbYbHIURrxw==@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzlDtnbOnYEaJ5LTx4Gl4x1wpCMV6iEABohreTwjRlykR8HCRRE
	pTGqjJozosHB+yGn6HiNiv8fPybjS2sR71uVs3+HSeZW/S0pG9gSLksAwsvH2CAJHsg=
X-Gm-Gg: ASbGncuk8EWgjIXP2V8SlQBzWnngTdSWUDfOzXqWdkN9z/UUs8Wrl6IQCBFNmH7Y28i
	nNwDoxqHQHGOP4wl01mEUDQ58uz5hg8NWejIAwOiEOfTDtsmmxf7qFs6U/XlAutT1HX8BVBYG75
	pZentrDPDoeQ7201CaOGPbvE40lOgQPALwBHB0sCoUPLgWlCytCH8Xo+aAtdF2br9lpk0AcYSH2
	g8bMfBXS7lSIXwsTWqHwlFL3GbwX6VuJ5Hk/0yRtauuwbF7sAsTz/Mj8QqAOg7PnRwYsUrV71Ws
	7FPeohAeGqQcp3oRlIbIBzB7wS/u5f2oY+HqhYudl9t0gsmy9cIKW7NKaDa9/y8ueShE9Cy/rOO
	P57BDKR0KqDcDqNSEQYjfxqFHKfAEbCV4P1E9ZNljXMrJ1pNsyO19hzl94RfJYABc2r5T57LSpU
	MfftgoLPLqS3q088tMyC5Aqe37ymtT3+NmgCWSCbxJ9U6EmDiWvXcaaOXXFYLjz8cLVl0kTLlIC
	gaGoQ==
X-Google-Smtp-Source: 
 AGHT+IEhIdGCMDzh+rBthOeis8x9/ZpblO3MpFXjT3wAouS+i/vJeQUn8S3M7EKimHPzqEENRb9Yig==
X-Received: by 2002:a17:903:2ec4:b0:297:ddb6:ef81 with SMTP id
 d9443c01a7336-297e562ee0fmr105279425ad.16.1762750130643;
        Sun, 09 Nov 2025 20:48:50 -0800 (PST)
Received: from smtpclient.apple
 (99-95-167-128.lightspeed.sntcca.sbcglobal.net. [99.95.167.128])
        by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7b0c9ff848bsm10132557b3a.29.2025.11.09.20.48.49
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Nov 2025 20:48:50 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.11\))
From: Jim Forster <jim@connectivitycap.com>
In-Reply-To: <93519830-549F-459A-A737-792F18F3241C@gmx.de>
Date: Sun, 9 Nov 2025 20:48:38 -0800
Cc: J Pan <Pan@uvic.ca>,
 dan <dandenson@gmail.com>,
 Frantisek Borsik <frantisek.borsik@gmail.com>,
 Cake List <cake@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net,
 libreqos <libreqos@lists.bufferbloat.net>,
 l4s-discuss@ietf.org,
 starlink@lists.bufferbloat.net
Message-Id: <F9170829-9358-4D9D-8B23-199E54C102B9@connectivitycap.com>
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
To: Sebastian Moeller <moeller0@gmx.de>
X-Mailer: Apple Mail (2.3864.300.11)
X-MailFrom: jim@connectivitycap.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: 4EWVNCJ2NKR7F5IJ2BJIHTEQWK2PW5JE
X-Message-ID-Hash: 4EWVNCJ2NKR7F5IJ2BJIHTEQWK2PW5JE
X-Mailman-Approved-At: Tue, 11 Nov 2025 11:33:08 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [Starlink] [LibreQoS] Re: Re: Keynote: QoE/QoS - Bandwidth Is A
 Lie! at WISPAPALOOZA 2025 (October 16)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/F9170829-9358-4D9D-8B23-199E54C102B9@connectivitycap.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBPbiBOb3YgOCwgMjAyNSwgYXQgMToxMeKAr1BNLCBTZWJhc3RpYW4gTW9lbGxlciA8bW9lbGxl
cjBAZ214LmRlPiB3cm90ZToNCj4gDQo+IEFzIGEgbWFya2V0IHJlYWxpc3QgKHRoYXQgaXMgc29t
ZW9uZSB3aG8gYWNjZXB0cyBlZmZpY2llbnQgbWFya2V0IHdoZW4gaGUgc2VlcyB0aGVtLCBidXQg
ZG9lcyBub3QgbmFpdmUgYmVsaWV2ZSBpbiB0aGUgZmFpcnkgdGFsZXMgb2YgdGhlIGludmlzaWJs
ZSBoYW5kIG9mIHRoZSBtYXJrZXQpIEkgdGhpbmsgdGhhdCB3ZSB3b3VsZCBiZSBvZnRlbiBtdWNo
IGJldHRlciBvZmYgd2l0aCBhIGNvbXBldGVudGx5IG1hbmFnZWQvcmVndWxhdGVkIG1vbm9wb2x5
IHRoYW4gd2l0aCBkdW8tIHRvIG9saWdvcG9saWVzIHRoYXQgYXJlIHRyZWF0ZWQgYXMgaWYgdGhl
eSB3ZXJlIGVmZmljaWVudCBtYXJrZXRzLi4uIEluZnJhc3RydWN0dXJlIChhbmQgYXQgbGVhc3Qg
YWNjZXNzIG5ldHdvcmtzIGFyZSBhdCBsZWFzdCBpbmZyYXN0cnVjdHVyZS1pc2ggSU1ITykgaXMg
bm90IHNvbWV0aGluZyB3aGVyZSB0aGUgZnJlZSBtYXJrZXQgdHlwaWNhbGx5IGV4Y2VscyBhdC4N
Cg0KDQpZZWFoLCBJIGFsc28gZG9u4oCZdCB0aGluayB0aGVyZeKAmXMgYW4gZWZmaWNpZW50LCBm
YWlyLCBtYXJrZXQgaGVyZSB0aGF0IGdldHMgdXMgd2hhdCB3ZSB3LiBJbiBzb21lIHdheXMsIHRo
ZSBEaWdpdGFsIERpdmlkZSBpcyBhbiBleHBlY3RlZCBvdXRjb21lIG9mIGNhcGl0YWwgYWxsb2Nh
dGlvbiBkZWNpc2lvbnMgYnkgZGVyZWd1bGF0ZWQgY29tcGFuaWVzIGluIGEgc2VjdG9yIHRoYXQg
aGFzIGVjb25vbWllcyBvZiBzY2FsZSBhbmQgbmV0d29yayBlZmZlY3RzLg0KDQpBdCB0aGUgc2Ft
ZSB0aW1lLCBhICJjb21wZXRlbnRseSBtYW5hZ2VkL3JlZ3VsYXRlZCBtb25vcG9seeKAnSBtYXkg
YmUgYXMgdW5jb21tb24gYXMgSG9tbyBFY29ub21pY3VzIHNpdGluZ3MgYXJlLiBXaGljaCBleGFt
cGxlIGNhbiB5b3UgY2l0ZT8gTlo/IFVLPyBTRT8gQW5kIGhhdmUgdGhleSB0cmFuc2l0aW9uZWQg
c21vb3RobHkgdG8gbmV3IHRlY2hub2xvZ3kgdGhhdCB3b3VsZCBkaW1pbmlzaCB0aGUgdmFsdWUg
b2YgdGhlaXIgZXhpc3RpbmcgaW5mcmFzdHJ1Y3R1cmU/ICANCg0KSSByZWNhbGwgdGhhdCBpbiB0
aGUgVVMgcHJpb3IgdG8gdGhlIC5jb20gYm9vbSwgdGhlIHRlbGNv4oCZcyBpZGVhIG9mIGJyb2Fk
YmFuZCB3YXMgSVNETiBvciBtYXliZSBEU0wgb3IgU01EUy4gVGhleSB3cm90ZSBtYW55IHBhcGVy
cywgaGFkIGxvdHMgb2YgdHJpYWxzLCBidXQgZGlkIG5vdCBhZ2dyZXNzaXZlbHkgZG8gYnJvYWRi
YW5kLCAgICdFdmVyeW9uZSBrbmV34oCZIHRoYXQgdGhlIGNhYmxlY29z4oCZIEhGQyB3b3VsZCBu
ZXZlciB3b3JrLCBhbmQgdGhhdCB0aGV5IGNvdWxkIG5vdCBkbyBkaWdpdGFsIGFuZCBjZXJ0YWlu
bHkgbm90IHZvaWNlLCAgSEZDIHdvcmtlZCwgYW5kIERPQ1NJUyB3YXMgYSBiaWcgc3VjY2Vzcy4g
VGhhdCBwcmVzc3VyZWQgdGhlIHRlbGNvcyB0byBzdGFydCBhY3R1YWxseSBkZXBsb3lpbmcgRFNM
LCBidXQgaXQgd2FzIHRvbyBsYXRlLCBhbmQgdGhlIGNhYmxlY29zIGhhdmUgZG9taW5hdGVkIFVT
IGJyb2FkYmFuZCBmb3IgYSBjb3VwbGUgb2YgZGVjYWRlcy4gDQoNCkppbQ0KDQoNCj4gDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGlu
ZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
