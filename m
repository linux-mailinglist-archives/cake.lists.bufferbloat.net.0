Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F56BAE916
	for <lists+cake@lfdr.de>; Tue, 30 Sep 2025 22:48:24 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 0FCF4711FFC;
	Tue, 30 Sep 2025 22:48:17 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=Xq8hNJUz
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759265296;
 b=qIwr/NZk53q2tSUXkHF4t+/hhNtGGXd8fTLIzer9jNqDMAO16o4b+qsiZu6YRyHqai3Hm
 LXulA6dVDzbZspynCUxN5bzVHVEWjbQfbvUMLDGPLzCXqkLi0m7pBNrvQyT0W0qItXYuYAR
 aB9lUyy7hM0l66Am6Mnq+cnNgjTnZZk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759265296; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=EAXneXRWWUtu/H3QSi77jrAsk7HZbAMCMw6jbkHODjI=;
 b=zYUqTyDeVaFlC+S6rvBBdOuxa+hGVHR/uyGNQOITCmZLH3n1rUXXr8a2xDtEciVLmc6FI
 LSpurtDzzUrAnJ1ideGWFkflUX3E7XpgUSGD6BAnlWJ+GI5Ah1eSWfWG5J9kr+Z5RIBd+Pi
 yAOP2vGWXWh8g6cI/oAi/yHeif5gC1k=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
	by mail.toke.dk (Postfix) with ESMTPS id 1A940711F91
	for <cake@lists.bufferbloat.net>; Tue, 30 Sep 2025 22:48:13 +0200 (CEST)
Received: by mail-ed1-x52f.google.com with SMTP id
 4fb4d7f45d1cf-634a3327ff7so11896596a12.1
        for <cake@lists.bufferbloat.net>;
 Tue, 30 Sep 2025 13:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759265233; x=1759870033;
 darn=lists.bufferbloat.net;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Y4hIMPVIch9J7AigqdFSlBiukYZm9/CkR2HecemnY3A=;
        b=Xq8hNJUztcDCJuJ24gBx8MoXqPikHshtT1sMNWIiae3Gzs3Eds7giq7cHMdZ6YAIA9
         V1jKLFGsep2mIueGlf2QfXKt1FbX+d+JM7x1qCQs2gj2JIgI0mmVgry/XgvlrnFVSg5D
         l++QTRwFzBG7Q8vKZrN+J5OiTaAHh4FTW7IKmJauio2D/KCONWmGK54gvgjTucs6/h0E
         OSTX09N203m8XsIxJ6jak816A9h73lblHaiKyQgu/pIhsMsRnFZ1SHzgcvbcEDBa8cLH
         lWEp/LJLyyvBz1UC7ZVzfTA8PHPWghIoCkktYHMkt5c/KsO2BIgvCCthquiG4tEJ61Co
         13ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759265233; x=1759870033;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y4hIMPVIch9J7AigqdFSlBiukYZm9/CkR2HecemnY3A=;
        b=Dy3oRt/nJweYL03ghWBwBAHA623R4sWCsKVym81SiYblpvJ2JxHkA8kp/ND4BojW7u
         RDr0hJTZ6kF2nsLT0lcGEe5HG+3b6jFrhE1/1fYYTqg4SjjJQmmLVMHqmQgzkSp1MqsK
         WWg+MCExaDGwRnBPCmXslu4DPcHSHQZ2SefgKvm1r2aW81nve5xPK8L//JEnSwbPyexQ
         4XgEDxudN7lKczH8eVPFaokOtRi9gkxPMV5iJV3cHFTW77mOJsMSc/YToghVrMwwsg1F
         bFMqpzIG5h6Hc22J2ZrmY28zO1mr17rmtXrWClLq8vBSKE5b4tiWkCds6ZRTg/AjnLpx
         CQkg==
X-Gm-Message-State: AOJu0YxXu2NPL1lwxxqRXUPfGS6v1dSisBTQLNW1dU4mrLGMIUTMUQ/v
	A6WjPzDosNckuVmrILumWCKu4PUG05u/YwO0haQwtmIoh+uoxx8eqhonDjCRqHJgYmD+Jb8IRkK
	z0C2K6PvBIw8CjxHECPyzpWPM3VTdqXM=
X-Gm-Gg: ASbGncsenBcBEe+qdPeglBRkhKREeEvGqUUlv8Yo69GXtxDx+uyUFU10fkkPNN3Qa7P
	nxa6GwglBfrQHkfnUDTCt8Vj4LjHqDKCR6q6UWb4o8xQuXR8PpFCC1DukC95uHGSNDNmil3V9/R
	zJeqxsBRWg3nK50Y3g6N+/7n09sXUhrTWMSf0AYeXWVmrpmht26TN8U+IBpU/vsc1u+3Z8e8lUo
	VjlXGTY70LEqu8GGl24R68hIdyNpjI=
X-Google-Smtp-Source: 
 AGHT+IGdF+JUp6G9OiT0k4ZZOe2UohWCTAa+p8s85bMYYwQk1fie6bHALAqyI019b2GRvRKYL85hXh0t9dfN8zS2g38=
X-Received: by 2002:a17:907:7f8b:b0:b04:aadd:b8d7 with SMTP id
 a640c23a62f3a-b46e47a92d8mr115033666b.13.1759265232492; Tue, 30 Sep 2025
 13:47:12 -0700 (PDT)
MIME-Version: 1.0
References: <9390D9DA-3C77-429F-A41D-E0FECD52FF06@connectivitycap.com>
In-Reply-To: <9390D9DA-3C77-429F-A41D-E0FECD52FF06@connectivitycap.com>
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Tue, 30 Sep 2025 22:48:41 +0200
X-Gm-Features: AS18NWAsJVNP_jkxMzubFU4tZ_60klBV1MBQht-K_eXZGLQU2bG7W85WFoI99_s
Message-ID: 
 <CAJUtOOjt+DajPifDNLNBOT_xwNWL_Wec5Gf_O91HMDdwpxtmeg@mail.gmail.com>
To: James Forster <jim@connectivitycap.com>,
 Jason Livingood <jason_livingood@comcast.com>
Cc: Cake List <cake@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>,
	codel@lists.bufferbloat.net,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>
Message-ID-Hash: 3KWSCVQDRMY53ERRJI7MZCQVIZGQU4ZC
X-Message-ID-Hash: 3KWSCVQDRMY53ERRJI7MZCQVIZGQU4ZC
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [LibreQoS] Re: [Starlink] Keynote: QoE/QoS - Bandwidth Is A Lie! at
 WISPAPALOOZA 2025 (October 16)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOjt+DajPifDNLNBOT_xwNWL_Wec5Gf_O91HMDdwpxtmeg@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzLCBKaW0uIFdlbGwsIHRydWUgdGhhdCAtIGJ1dCBJIHdhbnRlZCB0byBkbyBpdCBlaXRo
ZXIgd2F5LCBiZWNhdXNlIG9mDQpvdXIgZGVhciBEYXZlIGFuZCAtIGFzIGEgY29udmVyc2F0aW9u
IHN0YXJ0ZXIuDQpBcyBASmFzb24gTGl2aW5nb29kIDxqYXNvbl9saXZpbmdvb2RAY29tY2FzdC5j
b20+IHNhaWQgLSAiQmFuZHdpZHRoIGlzDQpkZWFkLiBMb25nIGxpdmUgbGF0ZW5jeS4iDQpodHRw
czovL3B1bHNlLmludGVybmV0c29jaWV0eS5vcmcvYmxvZy9iYW5kd2lkdGgtaXMtZGVhZC1sb25n
LWxpdmUtbGF0ZW5jeQ0KDQpJIHdpbGwgZG8gbXkgYmVzdCB0byBnZXQgdGhlIGF1ZGlvL3ZpZGVv
IHJpZ2h0IGFuZCB0byBzaGFyZSBpdCB3aXRoIHlvdSBhbGwuDQoNClBTOiBTZW5kaW5nIHlvdSBz
ZXBhcmF0ZSBlbWFpbC4NCg0KQWxsIHRoZSBiZXN0LA0KDQpGcmFuaw0KDQpGcmFudGlzZWsgKEZy
YW5rKSBCb3JzaWsNCg0KDQoqSW4gbG92aW5nIG1lbW9yeSBvZiBEYXZlIFTDpGh0OiAqMTk2NS0y
MDI1DQoNCmh0dHBzOi8vbGlicmVxb3MuaW8vMjAyNS8wNC8wMS9pbi1sb3ZpbmctbWVtb3J5LW9m
LWRhdmUvDQoNCg0KaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2luL2ZyYW50aXNla2JvcnNpaw0K
DQpTaWduYWwsIFRlbGVncmFtLCBXaGF0c0FwcDogKzQyMTkxOTQxNjcxNA0KDQppTWVzc2FnZSwg
bW9iaWxlOiArNDIwNzc1MjMwODg1DQoNClNreXBlOiBjYXNpb2E1MzAyY2ENCg0KZnJhbnRpc2Vr
LmJvcnNpa0BnbWFpbC5jb20NCg0KDQpPbiBUdWUsIFNlcCAzMCwgMjAyNSBhdCAxMDoyNeKAr1BN
IEphbWVzIEZvcnN0ZXIgPGppbUBjb25uZWN0aXZpdHljYXAuY29tPg0Kd3JvdGU6DQoNCj4gV293
LCB0aGF04oCZcyBmYW50YXN0aWMsIEZyYW50aXNlayEgIEdyZWF0IHdvcmsgbWFraW5nIHRoaXMg
aGFwcGVuLg0KPg0KPiBUaGVzZSBzb3J0IG9mIHRpdGxlcyBhcmVu4oCZdCBteSBmYXZvcml0ZS4g
SSB0aGluayBJIHVuZGVyc3RhbmQgdGhlDQo+IHNlbnRpbWVudCBidXQgZmluZCB0aGUgaXNzdWVz
IG1vcmUgbnVhbmNlZCB0aGFuIHRoYXQuIDotKQ0KPg0KPiBJZiB5b3UgY2FuIGdldCBjbGVhciBh
dWRpbywgbm90IG11Y2ggcXVhbGl0eSBpcyBuZWVkZWQgZm9yIHBhbmVscyBhbmQNCj4gdGFsa2lu
ZyBiZWFkcy4gICBCZXN0IHdvdWxkIGJlIGEgZmVlZCByaWdodCBpbnRvIGFuIGlQaG9uZS9hbmRy
b2lkLg0KPg0KPiBKaW0NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQK
