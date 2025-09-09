Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF6BB5084C
	for <lists+cake@lfdr.de>; Tue,  9 Sep 2025 23:38:15 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id DF2F765D694;
	Tue, 09 Sep 2025 23:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1757453894;
	bh=b44w84TNb8mZgMujykr2bMoCYiFSdlvd1vuVDmUdsjc=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=GvgdHM/52gV512cnlxSQY69SUweB9i2OzMtZKVJzXYNa1Pj7WvZJvn+46KpJHrYHL
	 HYBzid/OwofMmlw2DyF487MNxwbVnHCksrPZQQalgjIGjgUyySFSdw+fYWG2tFpN9q
	 HyDthfz+v+vB+TvIj5b3fsQoMI563ue92nyu2zNFfxRbmnQAr4BTX5Z6TqrmZNL8cq
	 1RdSKqbJlDbfztT2gV32pTsZEkb418ZToxEPDIpp258Ma7F6PjkXPt6Tz+IstH17hz
	 uWd72nK6BZGtgz6dF9bqMHn9XOP6vSGWaAtTifXYpRBN0vvOHjV5/q9OuyO86s0SY0
	 INWpbVDrweT+A==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1757453894;
 b=G5DrSeJoRcNLIzTlr/IZre1HnCJuAT6evducTq+HCmWgTCyn5V1CQRSHWLpyYKku+0K9G
 Rtpy9yRIHjhhROheyzDkHNDs4rzyvmjIplK1BBZjgLdmFZPi9gim1NhT5gRUtGCqRSeAPSv
 VoVvD90KwUGxYKf8BFSMIW1FWclH448=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1757453894; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=b44w84TNb8mZgMujykr2bMoCYiFSdlvd1vuVDmUdsjc=;
 b=1OETUyqqcmv7+l7EOZ6IXa2rPA67j9Mi9hIkaQyfVv7pg5R7q5LJBpMqkEDYDiOlRcb4T
 EclKNcO8jLshkxhZ+NvRYBnGZm0B8sz9SQbmC3/q0keSS4FANWfVgepwkgVNaf42PGDQ4Ae
 fUemQZVMawbUbJEvVRrLAbYDm0rifQ4=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=herbertland.com;
 arc=none;
 dmarc=pass header.from=herbertland.com policy.dmarc=reject
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=herbertland.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=herbertland.com
 policy.dmarc=reject
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
	by mail.toke.dk (Postfix) with ESMTPS id CBDAC65D67C
	for <cake@lists.bufferbloat.net>; Tue, 09 Sep 2025 23:38:12 +0200 (CEST)
Received: by mail-lf1-x12f.google.com with SMTP id
 2adb3069b0e04-55f6ad5146eso5728950e87.0
        for <cake@lists.bufferbloat.net>;
 Tue, 09 Sep 2025 14:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=herbertland.com; s=google; t=1757453831; x=1758058631;
 darn=lists.bufferbloat.net;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qe68nfvBnKQoZrlWfDFcN7kvZfMb/b1OIoUQRsFxLxI=;
        b=E3/E2yrHmV2OvvXU/2znuHTF5n+AYrd8V86dcp/hFgS9dUDXEAKQ4ZAfYOFLI/qUJe
         G15ZFavf4RC4ZGn62l2VXzkQKAnP8XAe6fY5mkC7M/6mJptF6vuJ+JwtsRjNITEUVBFd
         UQl5uw+iRB3eo2TTxmdvT8I+uXVKSZ8noAhS5fDxwSP+qUxOi1jkOwWteYR6Qr9+b1uA
         AAELm54wXWbrfKZ4MOekSWTNrqyXu3rKb4Cni6+2lpH7VSphCqHamD5WryEolLyw5CEC
         IXHt+jHWiJV+E6vLktfWHxyYcphkEeOF6pqQt7RwCvkIEdnT826BIPCHRH5N0qsh8p67
         tfPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757453831; x=1758058631;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qe68nfvBnKQoZrlWfDFcN7kvZfMb/b1OIoUQRsFxLxI=;
        b=RChXAdQjLfI2Ox3aVBBLXDSnJpP6iL00jWvvD2TMctjxqHJ+ryVgLN/LlgP4K+9ltG
         5XI+CgZR2UnxR72U+2gMP5Nj45Awtztl61/7WCKoyVMSU5lbVOaoJfO0SgnDc6awOqgG
         pThONS8F9GnjyUZ2ZftRMbXEENyRcEOXrrnsQ7e9+h3L/yiSX9JdvpEq4N8Ye2XuHEZk
         0eJUnQDrcDygzVrXudtAF9tN2LfjVY/0q8WA0tX443SQDgJBX8PtKcNMvPsU3w9y8J8z
         cZFKOIrG67ecPh1B3dVI+4lQkKY1C/VdvUN0B2fyLIB+s9YmPbD73jHzuIwwARFglbM+
         4dFg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVe/KG5kc/PQpSrzzu70R3/Csv/bqkSu5e+3YoH0nxHDCrW7NvxRm7nCYBRRT54e5goHexb@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxI108NZ47TfCgr4Or+9KNZwfcshCfZuvgoykEV5kTRODK4xLAM
	Sv3ucsRNGVE8eUnMcznj6krDZSn5VHiq7XIw1dLzoPeato7CWU6r49C/TU8JGN/AsO7DpmE7k7C
	nZ40iBlQbVeT/eUP8YzJYE7GdSRJYlV8nzsQ8YYIC
X-Gm-Gg: ASbGncuCoirhdha822OOSjaFJVhzEhx/6udiTxFwye5wfjAB26MJ2ogagyEjVOVdERg
	7sKgYbeFiPId3qt/+wYPvJ0o1D/D0NJfbmSjojh28QcFnebSLvZHtGqMUC+Ry8UIkKCeJNdE8eO
	gfIFhrr33ZCvHsAIhw7a/+05TJEBRTpyEvb5Rxnv+68zVpfExOaFZKpOrRF8WKE1v+T0aMJo/gN
	lFaUDE24DhdUSEX
X-Google-Smtp-Source: 
 AGHT+IHGpoDPmV5tdn8RPldRWO6OU323hIhnGWl7K8PlouTDUHOLJCXA+hmPFE+ghJDXO5xRLfxFmxPQSCLmUEEzEj8=
X-Received: by 2002:ac2:4e0d:0:b0:55f:4db1:e451 with SMTP id
 2adb3069b0e04-5626237f7f3mr4071993e87.42.1757453831097; Tue, 09 Sep 2025
 14:37:11 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAJUtOOhdVJCiRqhOTmdiPNmZEq9_dA+k=evLWX1UsB=ySHpf_A@mail.gmail.com>
 <1757449551.421420786@apps.rackspace.com>
 <CAJUtOOhnp92Vxv4TkF_GUwVB1kaZcN9z+hZwS+0JBdHdM0cJjw@mail.gmail.com>
In-Reply-To: 
 <CAJUtOOhnp92Vxv4TkF_GUwVB1kaZcN9z+hZwS+0JBdHdM0cJjw@mail.gmail.com>
Date: Tue, 9 Sep 2025 14:36:59 -0700
X-Gm-Features: Ac12FXzGX_CIpOwMLDdjfA7MsvRS1D3hZY6bh7j2m3iuLzgerc3JJbL4zNPaEWA
Message-ID: 
 <CALx6S37wDSc=d27twPBm_NHFSWYQUL74oMSyBVwY=z9uNEvJ_g@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
Cc: "David P. Reed" <dpreed@deepplum.com>,
 Cake List <cake@lists.bufferbloat.net>,
	codel@lists.bufferbloat.net, bloat <bloat@lists.bufferbloat.net>,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>
Message-ID-Hash: YARTTZJ6X2MQCCXENBSWCBCXVJYWDIVH
X-Message-ID-Hash: YARTTZJ6X2MQCCXENBSWCBCXVJYWDIVH
X-MailFrom: tom@herbertland.com
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
 <https://lists.bufferbloat.net/cake/CALx6S37wDSc=d27twPBm_NHFSWYQUL74oMSyBVwY=z9uNEvJ_g@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: Tom Herbert via Cake <cake@lists.bufferbloat.net>
Reply-To: Tom Herbert <tom@herbertland.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBTZXAgOSwgMjAyNSwgNTowM+KAr1BNIEZyYW50aXNlayBCb3JzaWsgPGZyYW50aXNl
ay5ib3JzaWtAZ21haWwuY29tPg0Kd3JvdGU6DQoNCj4gVGhhbmtzIGEgbG90LCBEYXZpZC4NCj4N
Cj4gSSBoYXZlIGFza2VkIFRvbSBpZiBoZSB3YW50cyB0byBqb2luIHVzIGFuZCBoZSBzaG91bGQg
YmUgaGVyZSB0byBjaGF0IHdpdGgNCj4gdXMgbm93Lg0KPg0KPiBBbGwgdGhlIGJlc3QsDQo+DQo+
IEZyYW5rDQo+DQo+IEZyYW50aXNlayAoRnJhbmspIEJvcnNpaw0KPg0KPg0KPiAqSW4gbG92aW5n
IG1lbW9yeSBvZiBEYXZlIFTDpGh0OiAqMTk2NS0yMDI1DQo+DQo+IGh0dHBzOi8vbGlicmVxb3Mu
aW8vMjAyNS8wNC8wMS9pbi1sb3ZpbmctbWVtb3J5LW9mLWRhdmUvDQo+DQo+DQo+IGh0dHBzOi8v
d3d3LmxpbmtlZGluLmNvbS9pbi9mcmFudGlzZWtib3JzaWsNCj4NCj4gU2lnbmFsLCBUZWxlZ3Jh
bSwgV2hhdHNBcHA6ICs0MjE5MTk0MTY3MTQNCj4NCj4gaU1lc3NhZ2UsIG1vYmlsZTogKzQyMDc3
NTIzMDg4NQ0KPg0KPiBTa3lwZTogY2FzaW9hNTMwMmNhDQo+DQo+IGZyYW50aXNlay5ib3JzaWtA
Z21haWwuY29tDQo+DQo+DQo+IE9uIFR1ZSwgU2VwIDksIDIwMjUgYXQgMTA6MjXigK9QTSBEYXZp
ZCBQLiBSZWVkIDxkcHJlZWRAZGVlcHBsdW0uY29tPiB3cm90ZToNCj4NCj4gPiBIaSBGcmFuayAt
DQo+ID4NCj4gPg0KPiA+DQo+ID4gSSB0aGluayBpdCBpcyBpbnRlcmVzdGluZyBhcyBhIGNvbmNl
cHQuIEEgcHJvamVjdCBJIGFtIGFkdmlzaW5nIGhhcyBiZWVuDQo+ID4gdXNpbmcgRFBESyB2ZXJ5
IGVmZmVjdGl2ZWx5IHRvIGdldCByaWQgb2YgdGhlIGh1Z2UgcGF0aCBhbmQgbG9ja2luZw0KPiBk
ZWxheXMNCj4gPiBpbiB0aGUgY3VycmVudCBMaW51eCBuZXR3b3JrIHN0YWNrLiBYRFAyIGNvdWxk
IGJlIHN1cHBvcnRlZCBpbiBhIHJpbmczDQo+ID4gKHVzZXIpIGFkZHJlc3Mgc3BhY2UsIGFjaGll
dmluZyBhIHNpbWlsYXIgcmVzdWx0Lg0KPg0KDQpISSBEYXZpZCwNCg0KVGhlIGlkZWEgaXMgeW91
IGNvdWxkIHdyaXRlIHRoZSBjb2RlIGluIFhEUDIgYW5kIGl0IHdvdWxkIGJlIGNvbXBpbGVkIHRv
DQpEUERLIG9yIGVCUEYgYW5kIHRoZSBjb21waWxlciB3b3VsZCBoYW5kbGUgdGhlIG9wdGltaXph
dGlvbnMuDQoNCg0KPiA+DQo+ID4NCj4gPg0KPiA+IEJ1dCBJIGRvbid0IHRoaW5rIFhEUDIgaXMg
Z29pbmcgdGhhdCBkaXJlY3Rpb24gLSBzbyBpdCBtYXkgYmUgc3R1Y2tpbnRvDQo+ID4gdGhlIG1l
c3Mgb2Yga2VybmVsIHNwYWNlIG5ldHdvcmtpbmcuIEFkZGluZyBlQlBGIG9ubHkgaGFzIG1hZGUg
dGhpcyBtb3JlDQo+IG9mDQo+ID4gYSBtZXNzLCBieSB0aGUgd2F5IChhbmQgYWRkaW5nIGEgbmV3
ICJjb21waWxlciIgdGhhdCBuZWVkcyB0byBiZSB2ZXJpcmllZA0KPiA+IGFzIHNhZmUgZm9yIHRo
ZSBrZXJuZWwpLg0KDQoNClRoaW5rIG9mIFhEUDIgYXMgdGhlIGdlbmVyYWxpemF0aW9uIG9mIFhE
UCB0byBnbyBiZXlvbmQganVzdCB0aGUga2VybmVsLg0KVGhlIGlkZWEgaXMgdGhhdCB0aGUgdXNl
ciB3cml0ZXMgdGhlaXIgZGF0YXBhdGggY29kZSBvbmNlIGFuZCB0aGV5IGNvbXBpbGUNCml0IHRv
IHJ1biBpbiB3aGF0ZXZlciB0YXJnZXRzIHRoZXkgaGF2ZS0tIERQREssIFA0LCBvdGhlciBwcm9n
cmFtbWFibGUNCmhhcmR3YXJlLCBhbmQgeWVzIFhEUC9lQlBGLiBJdCdzIHJlYWxseSBub3QgbGlt
aXRlZCB0byBrZXJuZWwgbmV0d29ya2luZy4NCg0KQXMgZm9yIHRoZSBuYW1lIFhEUDIsIHdoZW4g
d2UgY3JlYXRlZCBYRFAsIGVYcHJlc3MgRGF0YVBhdGgsIG15IHZpc2lvbiB3YXMNCnRoYXQgaXQg
d291bGQgYmUgaW1wbGVtZW50YXRpb24gYWdub3N0aWMuIGVCUEYgd2FzIHRoZSBmaXJzdCBpbnN0
YW50aWF0aW9uDQpmb3IgcHJhY3RpY2FsaXR5LCBidXQgbm93IHRlbiB5ZWFycyBsYXRlciBJIHRo
aW5rIHdlIGNhbiByZWFsaXplIHRoZQ0KaW5pdGlhbCB2aXNpb24uDQoNClRvbQ0KDQoNCg0KPg0K
PiA+IEkgd2lsbCBiZSB3YXRjaGluZyBob3cgdGhpcyBldm9sdmVzLg0KPiA+DQo+ID4NCj4gPg0K
PiA+IERhdmlkDQo+ID4NCj4gPg0KPiA+DQo+ID4gT24gVHVlc2RheSwgU2VwdGVtYmVyIDksIDIw
MjUgMDY6MzIsICJGcmFudGlzZWsgQm9yc2lrIiA8DQo+ID4gZnJhbnRpc2VrLmJvcnNpa0BnbWFp
bC5jb20+IHNhaWQ6DQo+ID4NCj4gPiA+IEhlbGxvIHRvIGFsbCwNCj4gPiA+DQo+ID4gPiBMb29r
cyBpbnRlcmVzdGluZzoNCj4gPiA+DQo+ID4NCj4gaHR0cHM6Ly9tZWRpdW0uY29tL0B0b21fODQ5
MTIveGRwMi10aGlzLWNoYW5nZXMtZXZlcnl0aGluZy1hdC1sZWFzdC1mb3ItYWktbWwtaW5mcmFz
dHJ1Y3R1cmUtODUwYzFiYTgyNzcxDQo+ID4gPg0KPiA+ID4NCj4gPiA+IEFsbCB0aGUgYmVzdCwN
Cj4gPiA+DQo+ID4gPiBGcmFuaw0KPiA+ID4NCj4gPiA+IEZyYW50aXNlayAoRnJhbmspIEJvcnNp
aw0KPiA+ID4NCj4gPiA+DQo+ID4gPiAqSW4gbG92aW5nIG1lbW9yeSBvZiBEYXZlIFTDpGh0OiAq
MTk2NS0yMDI1DQo+ID4gPg0KPiA+ID4gaHR0cHM6Ly9saWJyZXFvcy5pby8yMDI1LzA0LzAxL2lu
LWxvdmluZy1tZW1vcnktb2YtZGF2ZS8NCj4gPiA+DQo+ID4gPg0KPiA+ID4gaHR0cHM6Ly93d3cu
bGlua2VkaW4uY29tL2luL2ZyYW50aXNla2JvcnNpaw0KPiA+ID4NCj4gPiA+IFNpZ25hbCwgVGVs
ZWdyYW0sIFdoYXRzQXBwOiArNDIxOTE5NDE2NzE0DQo+ID4gPg0KPiA+ID4gaU1lc3NhZ2UsIG1v
YmlsZTogKzQyMDc3NTIzMDg4NQ0KPiA+ID4NCj4gPiA+IFNreXBlOiBjYXNpb2E1MzAyY2ENCj4g
PiA+DQo+ID4gPiBmcmFudGlzZWsuYm9yc2lrQGdtYWlsLmNvbQ0KPiA+ID4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiA+IENha2UgbWFpbGluZyBs
aXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0DQo+ID4gPiBUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0DQo+ID4gPg0K
PiA+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
IENha2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0DQo+IFRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQNCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNh
a2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
