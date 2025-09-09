Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E7727B5079D
	for <lists+cake@lfdr.de>; Tue,  9 Sep 2025 23:03:33 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id EFD8C65D299;
	Tue, 09 Sep 2025 23:03:29 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=EVlf/pyJ
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1757451809;
 b=lawbAzpRJtgVtUqlwx3EzPkuAXdGntNu6EjBYUGZxWapYrJYufwi89iLyEDvk+8pU0bJX
 RFg/sTYbwVmyeHLpfhpreijrkC0y2ifXLlFAqGn2LDO58c/Ug9kuOVLzivck/At5Ctg+lEo
 Ps/pj8fOpiRvuG/mbhyOUYjUEtU7Ink=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1757451809; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=mtZSi1+rtBDyocy/C/TGxUObExAsxKNJvubQErim+Bw=;
 b=uwI3N9jsrDMKYEbQ5wQMZ4XqDuyA4k64BL3/B70GLL5q8tBvw77FS7eNtANgnFKdFjWDj
 PqaL7Dsvv/MrhZH3xDils/+6E1GiVQ27QaPpCTW0CqlMFVpo/zIrF6mhSzr1Bd8xVyxeMUZ
 zivVvfqFgdUKnryjye50/CsLQY6RqSo=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
	by mail.toke.dk (Postfix) with ESMTPS id 80D3865D250;
	Tue, 09 Sep 2025 23:03:27 +0200 (CEST)
Received: by mail-ej1-x62c.google.com with SMTP id
 a640c23a62f3a-b046fc9f359so1083016266b.0;
        Tue, 09 Sep 2025 14:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757451742; x=1758056542;
 darn=lists.bufferbloat.net;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HDieV+BLdvicbZR3i1PzKPhKbminL87wjow4C9HdRyw=;
        b=EVlf/pyJOvNdshwVbdjQIdZTfqd+8CQJEbeWAwy8xPrJ08BIGadaglJIdgRIMtaX5d
         Ugxji7+092VMK4Ju2RTNYm6+mAYy+EGJQZkFaZXR8fZt/EF1oWjB4ksQdN8plom2AAHJ
         FI+pjOY7Jf0URveQXTjK6ypnS6JqpsQG43GxRAF7YXOowjEPdh+5dQjzb+M7BxkIzNM5
         HDe1RAz8EW9klfd1gUYYkh1YmKqzbUKsEZZDPDqXFXr0XuBkU8QPRN0xwaqP7gFsgV05
         3Gtd9QWhRDRBwqkM27wZ3Dte3+S0xtKqOhsPSwx8dY7re6K4MTCWYNidh/QKE0ar1MOo
         aRKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757451742; x=1758056542;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HDieV+BLdvicbZR3i1PzKPhKbminL87wjow4C9HdRyw=;
        b=IAoLTz4lbY+hldj3Y9uqXcsAUTsMN1PCFQ7k32Mt1thcGp8lQwmBb08mY5ccD21ZRM
         8YNyZIjOyne9J4YZ9/Q/0HteZGs/L5kT/Jnm1T25BSS+3roMkhCRpqOWvrk3b3udJtXE
         OO1Izi3/ksFCRzOt8rMMNwz2/OJqofSYbOJkvLj6YgNbaS69iD4Nup4ku6Lw59EAswXU
         5RsyfuIGtOwJxvQWEleETQvKxozOYhetgpuho4CvSD5TuXt8CqwCiqbKDqbkOfaoJI5g
         NPyNuCwC4nk2gCGCYlr06Zh0lOhwnArNdOK9jXpjwnFKmj5ILHVH0gNUQn1jSivUcXYF
         koIw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUmC9g4f3zmshQHZJk0/6NyV5AuG5NIYFp2Y4mYsb1NQCCwXqq5BzC8WbycNkm8LqGk2/By@lists.bufferbloat.net,
 AJvYcCWwIPrNLLS8mFP3+kOXFuj86FXWdtz0aqkwSJ344apfpZdUJgxojI0sWQ5XJwYmNyEuZQtGx5k=@lists.bufferbloat.net,
 AJvYcCXK45Rps6dUa/oLPE1+ayWuD8+7u4OdaHgF6JepZ3L98q1nfeFYPeroxS8rn3pyDcYj7EERLw==@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yyhef63aNdx1/C4BcA7zSq0PdXpaC9b/5Xg0gjTekUQVKDf18Ha
	QNoJG2miIQA1yBqgCE0GogEvH84FS09bNvGvJcsBRILx+H6Izu/AttMWaOP5NeUqKordr+Skgjn
	LEjFBM8ss41H2zchISf+Nu0BpMvTvbvvPFA==
X-Gm-Gg: ASbGnctrXaltnPOtIJJjwIdObx9K43OT8SxfIo9LKvdL6Z8tD7EBo44n8qYvHCLDeGT
	6TG7oVpbZOC42Ts4+do/0rr0cFGUm266COoz1Rg1O23+gai0VfjIS/iuBNKChqLrGitpVWtFPf3
	dAbFbls6XPEwS2eQ4TdEosWoUvrp6fwzoS71viFPWaBDQIvKlfNE+H3CMS4iXQaMWIx1SxQZqmo
	0vHCVA3pARhoDe+If7aUpjK4iIM5B9l/hvl4ikX166LSz+fAWa5uvOLkiyJN8HTRyQTdQPfgb6p
	yXbZIBRWIXwxPDFFIp5VOrJHmS3il7fd6SIQlp9mOirpzTocAE4NT5uWz/9H5w4+6aUuv4jy
X-Google-Smtp-Source: 
 AGHT+IEBkgM91/o1d7NA2/lPwueq5I+A9jKsNw9t2jb7uNZKnWZKOuMpcyHyMKzQrKo94HesusC/DQuihxBgmVybG7Q=
X-Received: by 2002:a17:906:eece:b0:b07:88ee:f23d with SMTP id
 a640c23a62f3a-b0788eef6d2mr8539066b.43.1757451741591; Tue, 09 Sep 2025
 14:02:21 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAJUtOOhdVJCiRqhOTmdiPNmZEq9_dA+k=evLWX1UsB=ySHpf_A@mail.gmail.com>
 <1757449551.421420786@apps.rackspace.com>
In-Reply-To: <1757449551.421420786@apps.rackspace.com>
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Tue, 9 Sep 2025 23:02:46 +0200
X-Gm-Features: Ac12FXzjyCxblqDiTcc_djJ_RcOa5yyTKlBcpk2zj_m_NLBBVO8Z3MNN9p2HkyE
Message-ID: 
 <CAJUtOOhnp92Vxv4TkF_GUwVB1kaZcN9z+hZwS+0JBdHdM0cJjw@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
Cc: Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
	bloat <bloat@lists.bufferbloat.net>,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>
Message-ID-Hash: YVIUWVUREGDMKFQURVPYV6QSPZTSPFZW
X-Message-ID-Hash: YVIUWVUREGDMKFQURVPYV6QSPZTSPFZW
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: XDP2 is here - from one and only Tom Herbert (almost to the date,
 10 years after XDP was released)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOhnp92Vxv4TkF_GUwVB1kaZcN9z+hZwS+0JBdHdM0cJjw@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGEgbG90LCBEYXZpZC4NCg0KSSBoYXZlIGFza2VkIFRvbSBpZiBoZSB3YW50cyB0byBq
b2luIHVzIGFuZCBoZSBzaG91bGQgYmUgaGVyZSB0byBjaGF0IHdpdGgNCnVzIG5vdy4NCg0KQWxs
IHRoZSBiZXN0LA0KDQpGcmFuaw0KDQpGcmFudGlzZWsgKEZyYW5rKSBCb3JzaWsNCg0KDQoqSW4g
bG92aW5nIG1lbW9yeSBvZiBEYXZlIFTDpGh0OiAqMTk2NS0yMDI1DQoNCmh0dHBzOi8vbGlicmVx
b3MuaW8vMjAyNS8wNC8wMS9pbi1sb3ZpbmctbWVtb3J5LW9mLWRhdmUvDQoNCg0KaHR0cHM6Ly93
d3cubGlua2VkaW4uY29tL2luL2ZyYW50aXNla2JvcnNpaw0KDQpTaWduYWwsIFRlbGVncmFtLCBX
aGF0c0FwcDogKzQyMTkxOTQxNjcxNA0KDQppTWVzc2FnZSwgbW9iaWxlOiArNDIwNzc1MjMwODg1
DQoNClNreXBlOiBjYXNpb2E1MzAyY2ENCg0KZnJhbnRpc2VrLmJvcnNpa0BnbWFpbC5jb20NCg0K
DQpPbiBUdWUsIFNlcCA5LCAyMDI1IGF0IDEwOjI14oCvUE0gRGF2aWQgUC4gUmVlZCA8ZHByZWVk
QGRlZXBwbHVtLmNvbT4gd3JvdGU6DQoNCj4gSGkgRnJhbmsgLQ0KPg0KPg0KPg0KPiBJIHRoaW5r
IGl0IGlzIGludGVyZXN0aW5nIGFzIGEgY29uY2VwdC4gQSBwcm9qZWN0IEkgYW0gYWR2aXNpbmcg
aGFzIGJlZW4NCj4gdXNpbmcgRFBESyB2ZXJ5IGVmZmVjdGl2ZWx5IHRvIGdldCByaWQgb2YgdGhl
IGh1Z2UgcGF0aCBhbmQgbG9ja2luZyBkZWxheXMNCj4gaW4gdGhlIGN1cnJlbnQgTGludXggbmV0
d29yayBzdGFjay4gWERQMiBjb3VsZCBiZSBzdXBwb3J0ZWQgaW4gYSByaW5nMw0KPiAodXNlcikg
YWRkcmVzcyBzcGFjZSwgYWNoaWV2aW5nIGEgc2ltaWxhciByZXN1bHQuDQo+DQo+DQo+DQo+IEJ1
dCBJIGRvbid0IHRoaW5rIFhEUDIgaXMgZ29pbmcgdGhhdCBkaXJlY3Rpb24gLSBzbyBpdCBtYXkg
YmUgc3R1Y2tpbnRvDQo+IHRoZSBtZXNzIG9mIGtlcm5lbCBzcGFjZSBuZXR3b3JraW5nLiBBZGRp
bmcgZUJQRiBvbmx5IGhhcyBtYWRlIHRoaXMgbW9yZSBvZg0KPiBhIG1lc3MsIGJ5IHRoZSB3YXkg
KGFuZCBhZGRpbmcgYSBuZXcgImNvbXBpbGVyIiB0aGF0IG5lZWRzIHRvIGJlIHZlcmlyaWVkDQo+
IGFzIHNhZmUgZm9yIHRoZSBrZXJuZWwpLg0KPg0KPiBJIHdpbGwgYmUgd2F0Y2hpbmcgaG93IHRo
aXMgZXZvbHZlcy4NCj4NCj4NCj4NCj4gRGF2aWQNCj4NCj4NCj4NCj4gT24gVHVlc2RheSwgU2Vw
dGVtYmVyIDksIDIwMjUgMDY6MzIsICJGcmFudGlzZWsgQm9yc2lrIiA8DQo+IGZyYW50aXNlay5i
b3JzaWtAZ21haWwuY29tPiBzYWlkOg0KPg0KPiA+IEhlbGxvIHRvIGFsbCwNCj4gPg0KPiA+IExv
b2tzIGludGVyZXN0aW5nOg0KPiA+DQo+IGh0dHBzOi8vbWVkaXVtLmNvbS9AdG9tXzg0OTEyL3hk
cDItdGhpcy1jaGFuZ2VzLWV2ZXJ5dGhpbmctYXQtbGVhc3QtZm9yLWFpLW1sLWluZnJhc3RydWN0
dXJlLTg1MGMxYmE4Mjc3MQ0KPiA+DQo+ID4NCj4gPiBBbGwgdGhlIGJlc3QsDQo+ID4NCj4gPiBG
cmFuaw0KPiA+DQo+ID4gRnJhbnRpc2VrIChGcmFuaykgQm9yc2lrDQo+ID4NCj4gPg0KPiA+ICpJ
biBsb3ZpbmcgbWVtb3J5IG9mIERhdmUgVMOkaHQ6ICoxOTY1LTIwMjUNCj4gPg0KPiA+IGh0dHBz
Oi8vbGlicmVxb3MuaW8vMjAyNS8wNC8wMS9pbi1sb3ZpbmctbWVtb3J5LW9mLWRhdmUvDQo+ID4N
Cj4gPg0KPiA+IGh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9pbi9mcmFudGlzZWtib3JzaWsNCj4g
Pg0KPiA+IFNpZ25hbCwgVGVsZWdyYW0sIFdoYXRzQXBwOiArNDIxOTE5NDE2NzE0DQo+ID4NCj4g
PiBpTWVzc2FnZSwgbW9iaWxlOiArNDIwNzc1MjMwODg1DQo+ID4NCj4gPiBTa3lwZTogY2FzaW9h
NTMwMmNhDQo+ID4NCj4gPiBmcmFudGlzZWsuYm9yc2lrQGdtYWlsLmNvbQ0KPiA+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gQ2FrZSBtYWlsaW5n
IGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQNCj4gPiBUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0DQo+ID4NCj4N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
