Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id CD529C417A6
	for <lists+cake@lfdr.de>; Fri, 07 Nov 2025 20:53:00 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id AB94292FE3D;
	Fri, 07 Nov 2025 20:52:43 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=connectivitycap.com header.i=@connectivitycap.com header.a=rsa-sha256 header.s=google header.b=kvs92iLg
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1762545163;
 b=vi6jFaC/yKXBlR2W6t6RRm8MTL1gCHZgOV9CP848DZs8nMUDQua5xiQtZc8yxlfhKL00C
 fJ4mOT+S2GNL6ZEJNNoiZLlW6zWVXDx6xh5j+TYYjmQIGf8Wui+ZYxw3EzAnaDH79v/KfVi
 WlDe5/5qV4E2/RqewgtEz4ct0hRmd5k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1762545163; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=zdYiqQUN59JK8k42xPXGh18P3T620ts7LQ1laga+jZw=;
 b=19yKReGUOgKeqLPJnGs1GO9fLI6pdViiCyxISUSg34Y854+pNoYgbFj52vb779QDVQUVH
 0EZO+z4Sg+dT4R3yy/GtwIbkEa5x5OyZKtPkxn4Rf+DQgXZuikiq0dZIiXSMrWBUgX4G1Yt
 JujWz7ukiAMpF1P3+SgVnK4/hecYgPA=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=connectivitycap.com;
 dkim=pass header.d=connectivitycap.com;
 arc=none;
 dmarc=none
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com
 [IPv6:2607:f8b0:4864:20::729])
	by mail.toke.dk (Postfix) with ESMTPS id 4923592EACC
	for <bloat@lists.bufferbloat.net>; Fri, 07 Nov 2025 17:19:17 +0100 (CET)
Received: by mail-qk1-x729.google.com with SMTP id
 af79cd13be357-8b19f149933so92497685a.0
        for <bloat@lists.bufferbloat.net>;
 Fri, 07 Nov 2025 08:19:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=connectivitycap.com; s=google; t=1762532355; x=1763137155;
 darn=lists.bufferbloat.net;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=a9yEc5tdbVs2NhSHSrERCjyIAB4CyZMBsK8rNGKagYg=;
        b=kvs92iLgz6dE3Ul0BjXr1hubb82xgcpH5ACPM6MiwXGIyTnNyADLjWd4QtOFQNMxda
         VC3cQXVihCpHTRmjuzOPiRHKRx3qhNv/ZULr9z1aK1ippUpyTG2LgufK6PCKGca1ES9S
         TLbTILYBz7bHoHgjUsFfzQi4fbZ/m6E60ZvfHd+gMnftnaIOjEyPOpREfLnFh5dbdq/v
         8tPOo5vvFciPe/ncbJLNqlnp/4PYgi1VCBOd8uZdv/HC4F0pyB8fmioRVY4e6vozB3Sk
         MwiQ9XypQej3YAsydZD9iDXJDbA2mAXP3jE5dHI36lJuULoXQQk19THtKa8zBz+jtWqH
         K1qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762532355; x=1763137155;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a9yEc5tdbVs2NhSHSrERCjyIAB4CyZMBsK8rNGKagYg=;
        b=Q3izJ3OvyxcjLRDgGKirWF7kgyuMhW33KYFO5FMx2DgM2sXzOXjbiwbxHJUJjaWDUw
         uIvP9ixNwjj5NMfetiGzF05iEBKErVl3F801hKPIQgVGHvNC6Gv2DoOJiP/ButpmvzBK
         52OonF1OewJvT+b2EeyAodqQ7vsUGFcs8GB1BkynXRXa1pCZ7SuntNVZYdGCuRT65LcV
         Fub8gy5ej4elHB77NVnRPxctZK4+c+qQPBRIFRMpaVGWTP3R/r0q+xxg0RGgNwBhXmRw
         D+wFjBUqICsf9gfRsQgVoLaZMHMUm7SoCt/rn+yhXVeQs3i24eeFN5RKVInkLDCR+uTv
         CRrw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWmKVRxWXM4ciHnNn9RBfFXnboGIa8HicFsuY6C+pA53Zgtj3rn41ITstLt026VhfLr5+aJQg==@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxKs7h1YRtGom5Jz1VANTZNEojnEKPqiVD5JhjvjSTMPej00yLM
	HRvtQ7+eD/+9nEIayCopCc3om1euGsGy/wTpDQjGm1b0JkXRxfRPVAfKoOEH7sywEkc=
X-Gm-Gg: ASbGncvmQ388oOQFEH25taRAvCYauTCTDw44gNkHhD7EFgBbb9FGSABdKV/ECw3Lr/A
	/M1FHIVVUTXqfLKUlO8q++h28M6CBXuw/XsE7M1Ea6DNfoFQhc3qqA4RfETRdI37Ps1VdNmCtA8
	nVXUzAZA37P24FKkKuWk1G2+aLcCtBaCMb/6NVn98OItZFGk1ubxXresnv5V0gyQgLwo36JlxEL
	/JqP34xCQKewD2xg6eAVMJ5Y7Hwuw+B/nPVC/BK4QCmN5v8VBcgYGh1YNws9F+CoyVtOYfqnDuD
	LJIN6KRM7xFNbJLm4rj4fxtSjkgMMs1iuao6gd2pgJ0J7qE2JOE5LRRoA33/Y2ZfyDrKMUQpIAB
	SjnSkSe/qUqzP8mjEo3NOsHTWxwzkro92wdDQGi4TyPy5HDI/LE9hKN1K/CsMNP3+rgKEABfdL6
	2YhEts1CTmJSeRZOfjFy3wDaD/570qBhMP9yS1vw==
X-Google-Smtp-Source: 
 AGHT+IG/TiUTwU1CXCmo8A5/oE9s4zd8Crv5Wl10WkQ9KWnhU5etT7pz1QmyAGgUwzmxKCZ59ZOgYg==
X-Received: by 2002:a05:620a:4110:b0:8b1:d8f5:6d08 with SMTP id
 af79cd13be357-8b24508745emr462140085a.0.1762532354656;
        Fri, 07 Nov 2025 08:19:14 -0800 (PST)
Received: from smtpclient.apple ([2600:4040:9d0b:2f00:1025:128e:e3be:c98f])
        by smtp.gmail.com with ESMTPSA id
 af79cd13be357-8b2355e7208sm439622785a.18.2025.11.07.08.19.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Nov 2025 08:19:14 -0800 (PST)
From: Jim Forster <jim@connectivitycap.com>
Message-Id: <2036296F-1567-4B66-BD8C-3AB49EBD5AA3@connectivitycap.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.200.81.1.6\))
Date: Fri, 7 Nov 2025 11:19:03 -0500
In-Reply-To: 
 <CAJUtOOhzJAymDiKsnRPho80B8GZ4wzd8W7FWccS=uhiQPd3KOg@mail.gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net,
 libreqos <libreqos@lists.bufferbloat.net>,
 l4s-discuss@ietf.org,
 starlink@lists.bufferbloat.net
To: Frantisek Borsik <frantisek.borsik@gmail.com>
References: <9390D9DA-3C77-429F-A41D-E0FECD52FF06@connectivitycap.com>
 <CAJUtOOjt+DajPifDNLNBOT_xwNWL_Wec5Gf_O91HMDdwpxtmeg@mail.gmail.com>
 <CAA_JP8XOeSOqbZJPH=1_oWMD055vOUxHipxJMs8sbsHLu5MHCA@mail.gmail.com>
 <CAJUtOOhiu8CVLARsiMKUkN4s87_VUr17su1Nr_4aManrwkCQAg@mail.gmail.com>
 <CAJUtOOhzJAymDiKsnRPho80B8GZ4wzd8W7FWccS=uhiQPd3KOg@mail.gmail.com>
X-Mailer: Apple Mail (2.3864.200.81.1.6)
X-MailFrom: jim@connectivitycap.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: 23I5VR2J6NIPTOGOC4O5OMQQZWV4YCH4
X-Message-ID-Hash: 23I5VR2J6NIPTOGOC4O5OMQQZWV4YCH4
X-Mailman-Approved-At: Fri, 07 Nov 2025 20:52:41 +0100
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [Starlink] [LibreQoS] Re: Keynote: QoE/QoS - Bandwidth Is A Lie! at
 WISPAPALOOZA 2025 (October 16)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/2036296F-1567-4B66-BD8C-3AB49EBD5AA3@connectivitycap.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJhbmsg4oCUIEnigJltIHdhdGNoaW5nIGl0IG5vdywgR3JlYXQgam9iIHB1bGxpbmcgdGhpcyBn
cm91cCB0b2dldGhlciwgYW5kIG5pY2UsIGJhbGFuY2VkIG9wZW5pbmcgc3RhdGVtZW50LiANCg0K
ICDigJQgSmltDQoNCj4gT24gTm92IDcsIDIwMjUsIGF0IDU6NTPigK9BTSwgRnJhbnRpc2VrIEJv
cnNpayB2aWEgU3RhcmxpbmsgPHN0YXJsaW5rQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6
DQo+IA0KPiANCj4gUmVjb3JkaW5nIG9mIG91ciBRb0UvUW9TIHBhbmVsIGRpc2N1c3Npb24gaXMg
b3V0ISBJdCB3YXMgcmVhbGx5IGdyZWF0IGFuZA0KPiBiZWxpZXZlIHlvdSB3aWxsIGxpa2UgaXQ6
DQo+IA0KPiBodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PVQxVkVUMFZZUTZjDQo+IA0K
PiBXZSBoYXZlIHRvdWNoIGJhbmR3aWR0aCwgTDRTLCBTdGFybGluayBhbmQgbW9yZS4NCj4gDQo+
IEhlcmUgYXJlIHRoZSBzbGlkZXMgd2l0aCBhZGRpdGlvbmFsIHJlYWRpbmc6DQo+IGh0dHBzOi8v
ZG9jcy5nb29nbGUuY29tL3ByZXNlbnRhdGlvbi9kLzFNTDBJM0F2M0RDdFFEaVA4RGpyX1lHSDJy
NC1VRFpQMjVWRWsteHlKY1pFL2VkaXQ/c2xpZGU9aWQucCNzbGlkZT1pZC5wDQo+IA0KPiBXZSBo
b3BlIHRvIGNvbnRpbnVlIHRoaXMgY29udmVyc2F0aW9uIGludG8gbW9yZSBwcmFjdGljYWwsIGRl
bW8tbGlrZQ0KPiBlbnZpcm9ubWVudCBvZiBzb3J0LCB0aGF0IHdlIGNhbiBzZWUgYXQgSUVURiBI
YWNrYXRob24gYW5kIHVzZWQgdG8gc2VlIGluDQo+IHRoZSBlYXJseSBXSVNQQSBldmVudCBkYXlz
LCB3aXRoIEFuaW1hbCBGYXJtLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cg==
