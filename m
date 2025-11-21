Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id D2628C7BC2D
	for <lists+cake@lfdr.de>; Fri, 21 Nov 2025 22:34:44 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 608AC9A80DC;
	Fri, 21 Nov 2025 22:34:43 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=TjjRel0m
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1763760883;
 b=exSPfxESH6xE1d+LybyvZDcSXXVWZdSxHnAhKWs/aSsZe0geXNYTfQlPsjom41tykmaKI
 vvwz6l/XeWmOgACSTBz+Q27meCk3XBvODDzL+B615HnS3w1geMwheoC5guJQ24Sn06NkmCE
 IAElznVCi3IMRS71TrRNRiATHjPwa5Y=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1763760883; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=cmFF7zeuGUXTaW9XRr/JXBH+F1imZBzyTS4bJoVog0U=;
 b=DZVBY5/6P92iG6l2gMzfErdxR/KrhXe8Pbe61A9rBH7RveXBBohyDu0HUhGKpDERuwS1C
 NrVt/sDxjiNFxahXr/iAPW44i0lyomIW1RL1FgRq+SVQznJ/EB7M32aaCNwgK21hLsYPcR7
 pTJ0fUWJqWXlgWmfS3lL4W0Vg9HaFrk=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
	by mail.toke.dk (Postfix) with ESMTPS id B7CDF9A7C87
	for <cake@lists.bufferbloat.net>; Fri, 21 Nov 2025 21:33:31 +0100 (CET)
Received: by mail-pj1-x1030.google.com with SMTP id
 98e67ed59e1d1-3438231df5fso2995210a91.2
        for <cake@lists.bufferbloat.net>;
 Fri, 21 Nov 2025 12:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1763757208; x=1764362008;
 darn=lists.bufferbloat.net;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FBi5kMacQnAWG9But7w0e8Tjs1+tpPe/5s7yyvFG4rk=;
        b=TjjRel0m1zEEdY7Yl/htrDR8QEpEl1Uj1U/V/73Q632vbDT3OF/KRkklk5sPMO/EGO
         dzHyq0upw+qNYe4oTUcxM5ENEJuVcXIZuOVs/VWFlknludlNbrIe3SfjlKu2dtqOw5Y3
         fjRJ4OCw85ldMUkWu5LF13F3joogd+MGaiWinzjUB1R6/39CZwvByOXP/oLUMq8ZIVur
         nsHfsW05/Y7Elh8Z8XzG34oJpNpB0/z9VIsNcyjhtgMkxQUjT1PSvVNdi0rdGiH5XhQL
         Q0ar9w0P2pM5DLCB8H1QFEwcxEmhvDQtQ0x3CWhZ0trFwsXm1zz/Y4XxDMSLYONJOwR+
         9EWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763757208; x=1764362008;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FBi5kMacQnAWG9But7w0e8Tjs1+tpPe/5s7yyvFG4rk=;
        b=siyfJ64bTAsl2yyCc1H2ChjdFyviaX/KHQB5Y/y1mlpp2OTDapU4GrhTRTeYi8Vlwz
         /NdDtuVT2RflsVaLoh74MrU0SR7IcBVsFIgxP6StQ87AQDJujO8xgWy/qG4JDv5ZJHP7
         MfZdZIfXDBYbwAegKzjpwkGocDL0J/0xK0gE3B3iPX0Cq8fvITfrK/MKDH1Ri19vqmh6
         xCxYaS9RNH/vTpS2jyFsZ1OzyrbnchER7qOibTzbJAMC0qMn8M0ySLe0g7W+jgRJ3gEj
         0hm2oEjaBSm2QFXNYWa3yvjZP1PNdkA8kwHeSNN0i1kZ1D3d7ERGcO7Ah0IlsKQKoxgg
         tq1w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUbwUawk8YiM0TdmvZ5AO78w2KViTMdJ6snnH6a7WFDSloY86KvjFOy0nbxyIGd03K5neBW@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yyfxug9hcgt8sheZtnTW/c8rsv6HQAHdWqOVjvrpTp4vHd4S7Ey
	txjMQmHCrzNIf2olPEPVhpdDocQO6FDNBvjPQ0Mf7OzLKR91ISuJPxqDvbdllO7iUA==
X-Gm-Gg: ASbGnctkF44sLmTQA34NoFI9oNIL1L6E2eh7gwBimL4AxAhyZ2IgSMo7lPbQsuxpGEd
	91jGwJBYUJQMS20yLkrp3YQwSqJgY8BfkGGFA11XSpCfZE7Zn2SRj/8TiXHZIAEyHKVLVp398iw
	iQAAwGjc18I16H/T0lYy/bS0PSFvWw3GYjiMjtkMAhhw0tiTn6Ngg6Pfi7TI/SR08gstjWf9K0F
	xW5TsdyEV7PJbocMUpaKgdARAZ7PGJL+GPC5qyp4wtCkHJN3ioZjER9xU9YppKXb89DpTXF2LH6
	S71GWHDMGK6NYEgoVgluuU3osctvliwSb3azO1Lpk4AWbYeGZEJH7EhZ+fFR5NKndgMLvQ9gbeI
	VHVPUbMRLsQ1JfoFhqver+hP4eq03fauKE0f3LPpfYDC2uIn0nQ3LJZELqpivB3sCbD2aDFZ/+v
	0R5ODlkh+Rrx2vfHiq
X-Google-Smtp-Source: 
 AGHT+IGaSLBaJAKIMPH1xi2NTeUPpMgSVoZ5CIFbMoXcnJPG/ei20kaVrJvhaW0vSvp12UEL0fm0Fw==
X-Received: by 2002:a05:7022:1b0e:b0:119:e56b:c73e with SMTP id
 a92af1059eb24-11c9d60b7aemr1321706c88.3.1763757207674;
        Fri, 21 Nov 2025 12:33:27 -0800 (PST)
Received: from p1 (209-147-139-51.nat.asu.edu. [209.147.139.51])
        by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-11c93cd457dsm29521077c88.0.2025.11.21.12.33.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 12:33:27 -0800 (PST)
Date: Fri, 21 Nov 2025 13:33:25 -0700
From: Xiang Mei <xmei5@asu.edu>
To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Cc: security@kernel.org, netdev@vger.kernel.org,
	cake@lists.bufferbloat.net, bestswngs@gmail.com
Message-ID: <7guebhjv734hjkgtnmloyj7lwaaxj6nz5as4bjruo24t3vs72r@54ryrobt6tdo>
References: <20251113035303.51165-1-xmei5@asu.edu>
 <aRVZJmTAWyrnXpCJ@p1>
 <87346ijbs9.fsf@toke.dk>
 <aRhUsbR6DT1F0bqc@p1>
 <87a50kokri.fsf@toke.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87a50kokri.fsf@toke.dk>
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: VNTNBSBOKLJX6P4TX2AM2SSGNNY5RCFE
X-Message-ID-Hash: VNTNBSBOKLJX6P4TX2AM2SSGNNY5RCFE
X-Mailman-Approved-At: Fri, 21 Nov 2025 22:34:42 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v3] net/sched: sch_cake: Fix incorrect qlen reduction in
 cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/7guebhjv734hjkgtnmloyj7lwaaxj6nz5as4bjruo24t3vs72r@54ryrobt6tdo/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBOb3YgMTcsIDIwMjUgYXQgMDI6MjM6NDVQTSArMDEwMCwgVG9rZSBIw7hpbGFuZC1K
w7hyZ2Vuc2VuIHdyb3RlOg0KPiA+IHdpbGwgbm90IHJ1biBiZWNhdXNlIHRoZSBwYXJlbnQgc2No
ZWR1bGVyIHN0b3BzIGVucXVldWVpbmcgYWZ0ZXIgc2VlaW5nDQo+ID4gTkVUX1hNSVRfQ04uIEZv
ciBub3JtYWwgcGFja2V0cyAobm9uLUdTTyksIGl0J3MgZWFzeSB0byBmaXg6IGp1c3QgZG8NCj4g
PiBxZGlzY190cmVlX3JlZHVjZV9iYWNrbG9nKHNjaCwgMSwgbGVuKS4gSG93ZXZlciwgR1NPIHNw
bGl0dGluZyBtYWtlcyB0aGlzDQo+ID4gZGlmZmljdWx0IGJlY2F1c2Ugd2UgbWF5IGhhdmUgYWxy
ZWFkeSBhZGRlZCBtdWx0aXBsZSBzZWdtZW50cyBpbnRvIHRoZQ0KPiA+IGZsb3csIGFuZCB3ZSBk
b27igJl0IGtub3cgaG93IG1hbnkgb2YgdGhlbSB3ZXJlIGRlcXVldWVkLg0KPiANCj4gSHVoLCBk
ZXF1ZXVlZD8gVGhpcyBpcyBhbGwgcnVubmluZyB1bmRlciB0aGUgcWRpc2MgbG9jaywgbm90aGlu
ZyBnZXRzDQo+IGRlcXVldWVkIGluIHRoZSBtZWFudGltZS4NCg0KU29ycnkgZm9yIHVzaW5nIHdy
b25nIHdvcmQuIFRoZSAiZGVxdWV1ZWQiIHNob3VsZCBiZSAiZHJvcHBlZCIuDQoNCj4gDQo+IEJl
c2lkZXMsIHRoZSBBQ0sgdGhpbm5pbmcgaXMgaXJyZWxldmFudCB0byB0aGUgZHJvcCBjb21wZW5z
YXRpb24uIEhlcmUncw0KPiBhbiBleGFtcGxlOg0KPiANCj4gV2l0aG91dCBBQ0sgc3BsaXR0aW5n
IC0gd2UgZW5xdWV1ZSAxIHBhY2tldCBvZiAxMDAgYnl0ZXMsIHRoZW4gZHJvcCAxDQo+IHBhY2tl
dCBvZiAyMDAgYnl0ZXMsIHNvIHdlIHNob3VsZCBlbmQgdXAgd2l0aCB0aGUgc2FtZSBxbGVuLCBi
dXQgMTAwDQo+IGZld2VyIGJ5dGVzIGluIHRoZSBxdWV1ZToNCj4gDQo+IHN0YXJ0OiBwYXJlbnQg
cWxlbiA9IFgsIHBhcmVudCBiYWNrbG9nID0gWQ0KPiANCj4gbGVuID0gMTAwOw0KPiBjYWtlX2Ry
b3AoKSBkcm9wcyAxIHBrdCAvIDIwMCBieXRlcw0KPiANCj4gaWYgKHNhbWVfZmxvdykgew0KPiAg
IHFkaXNjX3JlZHVjZV9iYWNrbG9nKDAsIDEwMCkgLy8gcGFyZW50IHFsZW4gPT0gWCwgcGFyZW50
IGJhY2tsb2cgPT0gWSAtIDEwMA0KPiAgIHJldHVybiBORVRfWE1JVF9DTjsNCj4gICAvLyBubyBj
aGFuZ2UgaW4gcGFyZW50LCBzbyBwYXJlbnQgcWxlbiA9PSBYLCBwYXJlbnQgYmFja2xvZyA9PSBZ
IC0gMTAwDQo+IH0gZWxzZSB7DQo+ICAgcWRpc2NfcmVkdWNlX2JhY2tsb2coMSwgMjAwKTsgLy8g
cGFyZW50IHFsZW4gPT0gWCAtIDEsIGJhY2tsb2cgPT0gWSAtIDIwMA0KPiAgIHJldHVybiBORVRf
WE1JVF9TVUNDRVNTOw0KPiAgIC8vIHBhcmVudCBkb2VzIHFsZW4gKz0xLCBiYWNrbG9nICs9IDEw
MCwgc28gcGFyZW50IHFsZW4gPT0geCwgcGFyZW50IGJhY2tsb2cgPT0gWSAtIDEwMA0KPiB9DQo+
IA0KPiBXaXRoIEFDSyBzcGxpdHRpbmcgLSB3ZSBlbnF1ZXVlIDEwIHNlZ21lbnRzIHRvdGFsbGlu
ZyAxMTAgYnl0ZXMsIHRoZW4NCj4gZHJvcCAxIHBhY2tldCBvZiAyMDAgYnl0ZXMsIHNvIHdlIHNo
b3VsZCBlbmQgdXAgd2l0aCA5IHBhY2tldHMgbW9yZSBpbg0KPiB0aGUgcXVldWUsIGJ1dCA5MCBi
eXRlcyBsZXNzOg0KPiANCj4gc3RhcnQ6IHBhcmVudCBxbGVuID0gWCwgcGFyZW50IGJhY2tsb2cg
PSBZDQo+IA0KPiBsZW4gPSAxMDA7DQo+IC8qIHNwbGl0IGFjazogc2xlbiA9PSAxMTAsIG51bXNl
Z3MgPT0gMTAgKi8NCj4gcWRpc2NfdHJlZV9yZWR1Y2VfYmFja2xvZygtOSwgLTEwKTsgLy8gcGFy
ZW50IHFsZW4gPT0gWCArIDksIGJhY2tsb2cgPT0gWSArIDEwDQo+IA0KPiBjYWtlX2Ryb3AoKSBk
cm9wcyAxIHBrdCAvIDIwMCBieXRlcw0KPiANCj4gaWYgKHNhbWVfZmxvdykgew0KPiAgIHFkaXNj
X3JlZHVjZV9iYWNrbG9nKDAsIDEwMCkgICAvLyBwYXJlbnQgcWxlbiA9PSBYICsgOSwgYmFja2xv
ZyA9PSBZIC0gOTANCj4gICByZXR1cm4gTkVUX1hNSVRfQ047DQo+ICAgLy8gbm8gY2hhbmdlIGlu
IHBhcmVudCwgc28gcGFyZW50IHFsZW4gPT0gWCArIDksIGJhY2tsb2cgPT0gWSAtIDkwDQo+IA0K
PiB9IGVsc2Ugew0KPiAgIHFkaXNjX3JlZHVjZV9iYWNrbG9nKDEsIDIwMCk7IC8vIHBhcmVudCBx
bGVuID09IFggKyA4LCBiYWNrbG9nID09IFkgLSAxOTANCj4gICByZXR1cm4gTkVUX1hNSVRfU1VD
Q0VTUzsNCj4gICAvLyBwYXJlbnQgZG9lcyBxbGVuICs9MSwgYmFja2xvZyArPSAxMDAsIHNvIHBh
cmVudCBxbGVuID09IFggKyA5LCBiYWNrbG9nID09IFkgLSA5MA0KPiB9DQo+IA0KPiANCj4gSW4g
Ym90aCBjYXNlcywgd2hhdCBoYXBwZW5zIGlzIHRoYXQgd2UgZHJvcCBvbmUgb3IgbW9yZSBwYWNr
ZXRzLCByZWR1Y2UNCj4gdGhlIGJhY2tsb2cgYnkgdGhlIG51bWJlciBvZiBwYWNrZXRzL2J5dGVz
IGRyb3BwZWQgKndoaWxlIGNvbXBlbnNhdGluZw0KPiBmb3Igd2hhdCB0aGUgcGFyZW50IHFkaXNj
IGRvZXMgb24gcmV0dXJuKi4gU28gdGhlIGFkanVzdG1lbnRzIG1hZGUgYnkNCj4gdGhlIHNlZ21l
bnRhdGlvbiBtYWtlcyBubyBkaWZmZXJlbmNlIHRvIHRoZSBmaW5hbCBvdXRjb21lLg0KDQpUaGFu
a3MgZm9yIHRoZSBkZXRhaWxlZCBleHBsYW5hdGlvbnMuIFlvdSBhcmUgcmlnaHQuIFRoZSBjdXJy
ZW50IHBhdGNoDQpsb2dpYyBpcyBjb3JyZWN0IHRvIGhhbmRsZSB0aGVzZSBjYXNlcy4NCg0KPiAN
Cj4gSG93ZXZlciwgd2UgZG8gaGF2ZSBvbmUgcHJvYmxlbSB3aXRoIHRoZSBBQ0sgdGhpbm5pbmcg
Y29kZTogaW4gdGhlICdpZg0KPiAoYWNrKScgYnJhbmNoLCB3ZSBjdXJyZW50bHkgYWRqdXN0ICds
ZW4nIGlmIHdlIGRyb3AgYW4gQUNLLiBNZWFuaW5nIHRoYXQNCj4gaWYgd2UgdXNlIHRoYXQgdmFs
dWUgbGF0ZXIgdG8gYWRqdXN0IGZvciB3aGF0IHRoZSBwYXJlbnQgcWRpc2MsIHRoZQ0KPiB2YWx1
ZSB3aWxsIG5vIGxvbmdlciBhZ3JlZSB3aXRoIHdoYXQgdGhlIHBhcmVudCBkb2VzLiBTbyB3ZSds
bCBoYXZlIHRvDQo+IGludHJvZHVjZSBhIG5ldyB2YXJpYWJsZSBmb3IgdGhlIGxlbmd0aCB1c2Vk
IGluIHRoZSBBQ0sgdGhpbm5pbmcNCj4gY2FsY3VsYXRpb24uDQo+IA0KDQpJIHNlZSB0aGUgaXNz
dWUuIEl0IHdpbGwgYmUgcmVzb2x2ZWQgaW4gdGhlIG5ldyBwYXRjaC4NCg0KPiA+IFRoZSBudW1i
ZXIgb2YgZGVxdWV1ZWQgc2VnbWVudHMgY2FuIGJlIGFueXdoZXJlIGluIFswLCBudW1zZWdzXSwg
YW5kIHRoZQ0KPiA+IGRlcXVldWVkIGxlbmd0aCBpbiBbMCwgc2xlbl0uIFdlIGNhbm5vdCBrbm93
IHRoZSBleGFjdCBudW1iZXIgd2l0aG91dCANCj4gPiBjaGVja2luZyB0aGUgdGluL2Zsb3cgaW5k
ZXggb2YgZWFjaCBkcm9wcGVkIHBhY2tldC4gVGhlcmVmb3JlLCB3ZSBzaG91bGQNCj4gPiBjaGVj
ayBpbnNpZGUgdGhlIGxvb3AgKGFzIHYxIGRpZCk6DQo+ID4NCj4gPiBgYGANCj4gPiBjYWtlX2Ry
b3AoLi4uKQ0KPiA+IHsNCj4gPiAgICAgLi4uDQo+ID4gICAgIGlmIChsaWtlbHkoY3VycmVudF9m
bG93ICE9IGlkeCArICh0aW4gPDwgMTYpKSkNCj4gPiAgICAgICAgIHFkaXNjX3RyZWVfcmVkdWNl
X2JhY2tsb2coc2NoLCAxLCBsZW4pOw0KPiA+ICAgICAuLi4NCj4gPiB9DQo+ID4gYGBgDQo+IA0K
PiBObywgdGhpcyBpcyBub3QgbmVlZGVkIC0gdGhlIGNhbGN1bGF0aW9uIGludm9sdmluZyBwcmV2
X3FsZW4gYW5kDQo+IHByZXZfYmFja2xvZyB3aWxsIGNvcnJlY3RseSBnaXZlIHVzIHRoZSB0b3Rh
bCBudW1iZXIgb2YgcGFja2V0cy9ieXRlcw0KPiBkcm9wcGVkLg0KPiA+DQo+ID4gVGhpcyBzb2x1
dGlvbiBhbHNvIGhhcyBhIHByb2JsZW0sIGFzIHlvdSBtZW50aW9uZWQ6DQo+ID4gaWYgdGhlIGZs
b3cgYWxyZWFkeSBjb250YWlucyBwYWNrZXRzLCBkcm9wcGluZyB0aG9zZSBwYWNrZXRzIHNob3Vs
ZA0KPiA+IHRyaWdnZXIgYmFja2xvZyByZWR1Y3Rpb24sIGJ1dCBvdXIgY2hlY2sgd291bGQgaW5j
b3JyZWN0bHkgc2tpcCB0aGF0LiBPbmUNCj4gPiBwb3NzaWJsZSBzb2x1dGlvbiBpcyB0byB0cmFj
ayB0aGUgbnVtYmVyIG9mIHBhY2tldHMvc2VnbWVudHMgZW5xdWV1ZWQNCj4gPiBpbiB0aGUgY3Vy
cmVudCBjYWtlX2VucXVldWUgKG51bXNlZ3Mgb3IgMSksIGFuZCB0aGVuIGF2b2lkIGNhbGxpbmcN
Cj4gPiBgcWRpc2NfdHJlZV9yZWR1Y2VfYmFja2xvZyhzY2gsIDEsIGxlbilgIGZvciB0aGUgMSBv
ciBudW1zZWdzIGRyb3BwZWQNCj4gPiBwYWNrZXRzLiBJZiB0aGF0IG1ha2VzIHNlbnNlLCBJJ2xs
IG1ha2UgdGhlIHBhdGNoIGFuZCB0ZXN0IGl0Lg0KPiANCj4gSXQgZG9lcyBub3QgLSBzZWUgYWJv
dmUuDQo+IA0KPiA+IC0tLS0tDQo+ID4NCj4gPiBCZXNpZGVzLCBJIGhhdmUgYSBxdWVzdGlvbiBh
Ym91dCB0aGUgY29uZGl0aW9uIGZvciByZXR1cm5pbmcgTkVUX1hNSVRfQ04uDQo+ID4gRG8gd2Ug
cmV0dXJuIE5FVF9YTUlUX0NOIHdoZW46DQo+ID4NCj4gPiBUaGUgaW5jb21pbmcgcGFja2V0IGl0
c2VsZiBpcyBkcm9wcGVkPyAobWFrZXMgbW9yZSBzZW5zZSB0byBtZSkNCj4gPiBvcg0KPiA+IFRo
ZSBzYW1lIGZsb3cgZGVxdWV1ZWQgb25jZT8gKFRoaXMgaXMgdGhlIGN1cnJlbnQgbG9naWMpDQo+
IA0KPiBUaGUgc2FtZSBmbG93LiBUaGUgY3VycmVudCBsb2dpYyBpdCBjb3JyZWN0Lg0KPiANCj4g
LVRva2UNCg0KDQpUaGFua3MgZm9yIHRoZSBleHBsYW5hdGlvbnMuIEkgaGF2ZSB1bmRlcnN0b29k
IE5FVF9YTUlUX0NOIHdyb25nLiBBIHBhdGNoDQoocmVtb3ZpbmcgdmFyIGRyb3BwcGVkIGFuZCBo
YW5kbGluZyBBQ0sgYnJhbmNoIGNvcnJlY3RseSkgd2lsbCBiZSB0ZXN0ZWQNCmFuZCBzZW50Lg0K
DQpUaGFua3MsDQpYaWFuZw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldAo=
