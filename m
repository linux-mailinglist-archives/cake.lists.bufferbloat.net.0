Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D0275A95D94
	for <lists+cake@lfdr.de>; Tue, 22 Apr 2025 07:54:12 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 282F43CB43;
	Tue, 22 Apr 2025 01:54:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1745301246;
	bh=9SeGQUvh/b6hsr6T5JP7aU4f959ymNN+BROjVxLiIz8=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=jiO8y14UuCbk0bDZbv5l5l7a3dRMwwugr+mkLe42eZ20VwpwAzSr3NCKPbmRICazt
	 FcKKaXBAC4HPoz2iXalPQUGg7GjAjAF6Brg6sCWmUi+jfa+GzYzSRI4b24zp6+AL+d
	 NqRUfxG04Gxc/3/Hx7+aI8nFTgpmsZvxnnxjF0V2uknXumWoDYaQLQZIiZGwchEd81
	 Fcv1YTvE2FnFSv1uxPZPpBpjJ8rZT+OiqxgXjTcL0cvNRjy3HFd+zF6yo51441hFjj
	 C4K85WP7r4wOXQqYBf5oycCuQyhnpO0Zzb2ifbw2b5VCJGDPxnvEaDFmKHmVIhPdnt
	 BgOT2dVRPJKiA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8FB7E3B29E;
 Tue, 22 Apr 2025 01:54:04 -0400 (EDT)
Received: by mail-pg1-x52b.google.com with SMTP id
 41be03b00d2f7-7fd35b301bdso5484756a12.2; 
 Mon, 21 Apr 2025 22:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1745301244; x=1745906044; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xzFUt2HLQxMfyYDfSQTQrABXvs1+oxAfewVr7qoJtrM=;
 b=XdtEqfhg7DDSHa9A5b7/78zL9SxHoqqdhQr293qdUwnmd4PVG2F+x3xS4pNzvP+ywb
 F//KNFodq4JMjMH5Wy0e1R+MtEWamhiSINFtpkaQagyP8itC6z3WartoM3WGpeKQ7aq5
 UY+lNJDb48lromQZI4vf0vfo5PPGrkCYMV8gG4Kc+aSDEAiY8Cx7/r80+c5Qt6rU+7mx
 ZKjTqDkAp0yKgnHGyQ+YCcqclYLeWgpLssw3to0/pnh6dqAR2qlsR/XyStl5D6mJCeDY
 Uo7vglMtDDIRcf3xDVrpZNaZuE+lUTSHmDn+MIyQeETJnq0KMvEooIQ/2r2LfW/O6VbM
 0wKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745301244; x=1745906044;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xzFUt2HLQxMfyYDfSQTQrABXvs1+oxAfewVr7qoJtrM=;
 b=rwPZOCPcaxLeVKbFihJO5Gqjn2Alm9u2sfhHQkVn30zNq94Gq24r7yTlbL0JlZuDJV
 Fih47U8nyw+BKfMIHMddqWTJpL1Em6yYI0TAP29MiFmZjZ9T8NLZGIMmRHJ0gohr8LzE
 0vViOwhT905tjQituaagVxeewlGDKrMIr9k9v+8BuVlMEsy72G4DAwBecarH6SunotpJ
 IUxBqKkz/LM7F5AZ/VOvmgnteIw/jzo0j7q2mio1DK0IOvExJdB88HTy7obK+4A5opoQ
 L2sJOYAiFypNiZEH2N7GAUowJVFMRZ5L6AhXu/JqclDzslSr77ZfNL8KTVjvCznH8e2f
 Q5rg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU0qqtqaryxzJXr6grEDwUHXvIIpItHlgU54uTmfscS4J0TJgAbZ+XziL9TtNUbqjLUi2rOZhYa4w==@lists.bufferbloat.net,
 AJvYcCUtctn+1nacJTPdz2/sVGXgHEKW9lBXhON7vci5BEMTYa4ZDLvmskNSpRup561iB4jVLaE1pw==@lists.bufferbloat.net,
 AJvYcCV76Q1o/XhwXhJxWi1lI1JfOMpnyj3agBlXJK+xEZGJFHgCC5Gj5LJUNwHhWUzc268kyOi7Oo0=@lists.bufferbloat.net,
 AJvYcCVDznsCoJe9Wrp119IYCjfcaivBnEibx35QZ0Nl7okA54BO0nhYIhpiIaNQryDjgcHPeSiVYLUzuhkrmjjcfUPX@lists.bufferbloat.net,
 AJvYcCViUYE6ReEYBgTARqp0ZdQf6T2rOZxMC4TSa7coh5FZ0Yo21bLSqyLdOuBOiG/nmrv0kJg0860t4oETSTcNJYc=@lists.bufferbloat.net,
 AJvYcCWZCgjHPWBMWqJqz7OKKPVw7RGY9wp8B6XVlvcu01h3YTSsQMHg8xAqbPXAxx4hWBTZ7Pt1nPPVYDPMLQ27zw==@lists.bufferbloat.net,
 AJvYcCWxBNZjwc0mrud3VPDiiq10JByIXIKDQ/S+J/Miv3qu+28CWhYK9AHWWPH1ibYujnHVLgSbP3MCYUE=@lists.bufferbloat.net,
 AJvYcCX/azQszWZTBQKpONKlzDtUszkGEDqCsf2xZ/6ongL7SbnTs8tsgf2C+Z25plOYDYoW24gt9HKVQWTB@lists.bufferbloat.net,
 AJvYcCXPZLDEDmEQy6ODOpAPYUj4fEeFNB5/6IBiZHQJaI2zYBfR2zP4wn/CsQPw3ETfyCYPCW5Mh5GEUho=@lists.bufferbloat.net,
 AJvYcCXRY5LQItDMDWTdl0QC3Wsr5pdgd1dXcnLRmOd4N7WTRfOLuv3B4yrVULuMsdLGA6FjCI1Q@lists.bufferbloat.net,
 AJvYcCXYZK5LQRJ6GSN+vaRni15HvCvNHk7XiE4DNjmd4TUorinS8a3ds1SmOv/KkjpyPzM/NyQ2UUNyLV7Qm8qHXEI=@lists.bufferbloat.net,
 AJvYcCXvr9b9ix5VL+2E7V5ypLK2MGgYb6W5/R81YNlbdeobjSuHrRdpysaaqCEfrTMGV7JVqsf44Fw=@lists.bufferbloat.net,
 AJvYcCXx/HPgOA5o+07tOtOWsnuX18nGJvV6dUkiptlsa0mdor18uFFwHAgG1pwMOGBRiT5zqQKe+nC9WbNan894lg==@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxJsrXjFgIqYYM+0i3xAePlVW3ptmVh2RSfKBunR3OhsIRT2w0c
 LAkj9M/25YQ5Sfi81oXIY3lpXmhlyJGxU378IZO9zgSF9op9m3ux3wbCtd8O8CjT8ll1t6JWqRH
 yg3MQhtbKV9+bU8rnpahygrrTzGsOhUXa
X-Gm-Gg: ASbGncv4Mnp8RTP1pf30ZAgehgjtuMlEqEt125Q1D76udSfz7DV/myLXDauX3WsKfkO
 pYLHyqTDJ46xaZte3fGeQ9h8wHp2DdmcZnTyf0MvQuYTL7iUiRnlOgZhM2RaVDn8/I4ZLDDdTXI
 LRlXiEMD7uhivDjSeJsI1PuRDQ3Fmky8dkPYdWqzkRkiC4HJFW/M1lzWVP
X-Google-Smtp-Source: AGHT+IGTLLGmGOCNbAcjD/uvHrMdF+eGF1M0p+xAC72RLTB4C0g7SDGKW2r1L2FxfttBHSlXBJvC/q3f3dwfqUqxqDc=
X-Received: by 2002:a17:90b:3508:b0:2ee:ad18:b309 with SMTP id
 98e67ed59e1d1-3087bb3f2a2mr18290962a91.3.1745301243536; Mon, 21 Apr 2025
 22:54:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz> <87plhvlyoc.fsf@toke.dk>
 <976DC4FC-44CA-4C7E-90E0-DE39B57F01E1@comcast.com>
 <8DA2934A-43D1-4700-8F32-CA424C3FAE8D@comcast.com>
 <1743623511.52759201@apps.rackspace.com>
 <CAOp4FwR71iS-mijozYr7zzuAhajJeqjzw1bGo1eicNWST76erA@mail.gmail.com>
 <CAHxHggcgJT=3SE8FJVnGduE0C0c1hFKu6fHLdnFL2BW5dE1+bw@mail.gmail.com>
 <CAOp4FwQ=ZLVw9VfO7wLi=J2-FsvCxdpT=NTVWzkOw=DPzNxPYg@mail.gmail.com>
 <CAJUtOOiGKOLbtQtrTp-5BTZFUg_rwYKt-BzftjerZTg23QuD=A@mail.gmail.com>
 <CAHxHggdaaxEorCDGqdvFFcuZNv==rfR_1pUMH513fFq5-jO2kA@mail.gmail.com>
In-Reply-To: <CAHxHggdaaxEorCDGqdvFFcuZNv==rfR_1pUMH513fFq5-jO2kA@mail.gmail.com>
Date: Tue, 22 Apr 2025 09:53:51 +0400
X-Gm-Features: ATxdqUE24zncRAHCFSb5De9dGEZVkYj2JpTi_3ziwGyfMregFNt9u8hCq6wbSWg
Message-ID: <CAOp4FwS14HN931zyDKw74GByj5=zHbH_xr5ZfGZv4dL-QPAiHw@mail.gmail.com>
To: Vint Cerf <vint@google.com>
Subject: Re: [Cake]
	=?utf-8?q?=5BMake-wifi-fast=5D__=5BBloat=5D_In_loving_memo?=
	=?utf-8?q?ry_of_Dave_T=C3=A4ht_=3C3?=
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
From: Loganaden Velvindron via Cake <cake@lists.bufferbloat.net>
Reply-To: Loganaden Velvindron <loganaden@gmail.com>
Cc: "cerowrt-users@lists.bufferbloat.net"
 <cerowrt-users@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 "cerowrt-commits@lists.bufferbloat.net"
 <cerowrt-commits@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>, "Livingood,
 Jason" <jason_livingood@comcast.com>,
 "codel-wireless@lists.bufferbloat.net" <codel-wireless@lists.bufferbloat.net>,
 "cerowrt-devel@lists.bufferbloat.net" <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 "bloat-ietf@lists.bufferbloat.net" <bloat-ietf@lists.bufferbloat.net>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SVNPQyBoYXMgb3BlbmVkIGEgbm9taW5hdGlvbiBmb3IgdGhlIEpvaG5hdGhhbiBQb3N0ZWwgYXdh
cmQsIGJ1dCB0aGUKcGFnZSBpcyBwYXNzd29yZCBwcm90ZWN0ZWQgLi4uCgpPbiBTYXQsIDEyIEFw
ciAyMDI1IGF0IDE4OjQ3LCBWaW50IENlcmYgPHZpbnRAZ29vZ2xlLmNvbT4gd3JvdGU6Cj4KPiBh
bnlvbmUgY2FuIG5vbWluYXRlLCBhbnlvbmUgY2FuIHNlbmQgaW4gc3VwcG9ydGluZyBsZXR0ZXJz
IG9mIGVuZG9yc2VtZW50LiBOb21pbmF0aW9ucyBvcGVuIGluIE1heS4KPgo+IHZpbnQKPgo+Cj4K
PiBPbiBTYXQsIEFwciAxMiwgMjAyNSBhdCA5OjIx4oCvQU0gRnJhbnRpc2VrIEJvcnNpayA8ZnJh
bnRpc2VrLmJvcnNpa0BnbWFpbC5jb20+IHdyb3RlOgo+Pgo+PiBMb3ZlbHkuIFNvIGhvdyB3ZSBj
YW4gcHV0IGl0IGluIG1vdGlvbj8gOikgV2hvIHdvdWxkIGJlIHRoZSBiZXN0IHBlcnNvbiB0byBk
byBpdD8KPj4KPj4KPj4gQWxsIHRoZSBiZXN0LAo+Pgo+PiBGcmFuawo+Pgo+PiBGcmFudGlzZWsg
KEZyYW5rKSBCb3JzaWsKPj4KPj4KPj4gSW4gbG92aW5nIG1lbW9yeSBvZiBEYXZlIFTDpGh0OiAx
OTY1LTIwMjUKPj4KPj4gaHR0cHM6Ly9saWJyZXFvcy5pby8yMDI1LzA0LzAxL2luLWxvdmluZy1t
ZW1vcnktb2YtZGF2ZS8KPj4KPj4KPj4gaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2luL2ZyYW50
aXNla2JvcnNpawo+Pgo+PiBTaWduYWwsIFRlbGVncmFtLCBXaGF0c0FwcDogKzQyMTkxOTQxNjcx
NAo+Pgo+PiBpTWVzc2FnZSwgbW9iaWxlOiArNDIwNzc1MjMwODg1Cj4+Cj4+IFNreXBlOiBjYXNp
b2E1MzAyY2EKPj4KPj4gZnJhbnRpc2VrLmJvcnNpa0BnbWFpbC5jb20KPj4KPj4KPj4KPj4gT24g
U2F0LCBBcHIgMTIsIDIwMjUgYXQgMToxN+KAr1BNIExvZ2FuYWRlbiBWZWx2aW5kcm9uIDxsb2dh
bmFkZW5AZ21haWwuY29tPiB3cm90ZToKPj4+Cj4+PiBEZWZpbml0ZWx5IDotKQo+Pj4KPj4+IE9u
IFNhdCwgMTIgQXByIDIwMjUgYXQgMTU6MTIsIFZpbnQgQ2VyZiA8dmludEBnb29nbGUuY29tPiB3
cm90ZToKPj4+ID4KPj4+ID4gSGUgd291bGQgYmUgYSBnb29kIGNhbmRpZGF0ZSBmb3IgdGhlIFBv
c3RlbCBBd2FyZCwgZG9uJ3QgeW91IHRoaW5rPwo+Pj4gPiB2Cj4+PiA+Cj4+PiA+Cj4+PiA+IE9u
IFNhdCwgQXByIDEyLCAyMDI1IGF0IDU6NDXigK9BTSBMb2dhbmFkZW4gVmVsdmluZHJvbiA8bG9n
YW5hZGVuQGdtYWlsLmNvbT4gd3JvdGU6Cj4+PiA+Pgo+Pj4gPj4gPgo+Pj4gPj4gPiAyKSBJIHdh
cyB0aGlua2luZyBhYm91dCBob3cgd2UgY291bGQgZ2V0IERhdmUgcmVjb2duaXplZCBmb3IgaGlz
IGNvbnRyaWJ1dGlvbnMuIExpa2Ugb3RoZXIgdW5zdW5nIGhlcm9lcywgRGF2ZSBkaWRuJ3Qgd29y
ayBmb3IgQkJOIG9yIHNvbWUgb3RoZXIgbW9uZXllZCBlbnRpdHkgd2hvIHdvdWxkIGNvbW1pc3Np
b24gYSBib29rIG9yIGEgbWVtb3JpYWwuIChCQk4gcGFpZCBLYXRpZSBIYWZuZXIgdG8gd3JpdGUg
dGhlIHRleHQgdGhhdCBsYXRlciB0dXJuZWQgaW50byBoZXIgYm9vayAiV2hlbiBXaXphcmRzIFN0
YXkgVXAgTGF0ZSIsIHdoaWNoIG9kZGx5IG9ubHkgdGFsa2VkIGFib3V0IHRoZSBBUlBBTkVUL0lu
dGVybmV0IHBpb25lZXJzIHdobyB3b3JrZWQgZm9yIEJCTiwgb21pdHRpbmcgbWFueSBvZiBteSBJ
bnRlcm5ldCBjb2xsZWFndWVzLikgIERhdmUgd2Fzbid0IHRoZSBraW5kIG9mIGd1eSB0aGF0IGdl
dHMgQXdhcmRzIGZyb20gdGhlIENvbXB1dGVyIEhpc3RvcnkgTXVzZXVtIG9yIHRoZSBBQ00gb3Ig
SUVFRS4gSGUgd2Fzbid0IGJlbG92ZWQgYXQgSUVURiBvciBJU09DIHRoYXQgSSBrbm93IG9mLiBI
ZSdzIGluIHRoZSBjYXRlZ29yeSBvZiBmb2xrcyBsaWtlIE5vZWwgQ2hpYXBwYSBvciBCcmFtIENv
aGVuIG9yIFJpY2hhcmQgU3RhbGxtYW4gb3IgQWFyb24gU3dhcnR6IC0gcGVvcGxlIEkgdGhpbmsg
cmVhbGx5IGNoYW5nZWQgdGhlIHdheSB3ZSB0aGluayBhYm91dCBjb21wdXRpbmcgYW5kIGludGVy
bmV0d29ya2luZywgYnV0IHdobyB3b24ndCBiZSBpbiB0aGUgb2ZmaWNpYWwgaGlzdG9yaWVzLgo+
Pj4gPj4KPj4+ID4+IEhlIGRpZCBub3QgZml0IGluIGEgdHlwaWNhbCBjb3Jwb3JhdGUgY3VsdHVy
ZSBlc3BlY2lhbGx5IGluIGhpcyBsYXRlcgo+Pj4gPj4geWVhcnMuIEhlIGdvdCBhIGNlcnRhaW4g
YW1vdW50IG9mIHJlc3BlY3QgYXQgdGhlCj4+PiA+PiBJRVRGLgo+Pj4gPgo+Pj4gPgo+Pj4gPgo+
Pj4gPiAtLQo+Pj4gPiBQbGVhc2Ugc2VuZCBhbnkgcG9zdGFsL292ZXJuaWdodCBkZWxpdmVyaWVz
IHRvOgo+Pj4gPiBWaW50IENlcmYKPj4+ID4gR29vZ2xlLCBMTEMKPj4+ID4gMTkwMCBSZXN0b24g
TWV0cm8gUGxhemEsIDE2dGggRmxvb3IKPj4+ID4gUmVzdG9uLCBWQSAyMDE5MAo+Pj4gPiArMSAo
NTcxKSAyMTMgMTM0Ngo+Pj4gPgo+Pj4gPgo+Pj4gPiB1bnRpbCBmdXJ0aGVyIG5vdGljZQo+Pj4g
Pgo+Pj4gPgo+Pj4gPgo+Cj4KPgo+IC0tCj4gUGxlYXNlIHNlbmQgYW55IHBvc3RhbC9vdmVybmln
aHQgZGVsaXZlcmllcyB0bzoKPiBWaW50IENlcmYKPiBHb29nbGUsIExMQwo+IDE5MDAgUmVzdG9u
IE1ldHJvIFBsYXphLCAxNnRoIEZsb29yCj4gUmVzdG9uLCBWQSAyMDE5MAo+ICsxICg1NzEpIDIx
MyAxMzQ2Cj4KPgo+IHVudGlsIGZ1cnRoZXIgbm90aWNlCj4KPgo+Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZv
L2Nha2UK
