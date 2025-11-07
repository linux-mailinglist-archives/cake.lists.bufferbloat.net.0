Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A20F9C417A9
	for <lists+cake@lfdr.de>; Fri, 07 Nov 2025 20:53:02 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id E6DB392FE65;
	Fri, 07 Nov 2025 20:52:45 +0100 (CET)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1762545165;
 b=64aWfNhRuJQ7iXDliecUwFHGRFNEX7/+zby1C6FPLIBJYBUDAfy2YL7dp8i4EJi1drNPo
 oya/ioD4NZfNsUU4Ye9Z55tdln/G8GLoYbRENFCmPsqK4iA3+G606V54Qk2+BjHYAxnAStO
 XW6bwqsK/WCLA5w6KAh/XoKZ8gODBuo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1762545165; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=aD/oxbi5PGkFqESqZl6jnfUyqrrETVUezNfz5XrvUvs=;
 b=IV+zn30ikTR7EmMepylnWu849P2VPzD9fmIRtBfI8aB5Bs1TT5Uo7H0IhP8JQoqZfC4sY
 uUpjF8tXm0Hm7HTmGo4khOcWtPMdBSW9P0c0nNm2FahFFlt8ALWj3KNa5YBHZtpby6qoj8T
 Qt/itNZ903Uj53i8QpWa6jOCuqGW2oY=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=fail;
 arc=none;
 dmarc=fail header.from=uvic.ca policy.dmarc=none
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=uvic.ca policy.dmarc=none
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com
 [74.125.224.52])
	by mail.toke.dk (Postfix) with ESMTPS id 730E392F2B9
	for <cake@lists.bufferbloat.net>; Fri, 07 Nov 2025 18:52:38 +0100 (CET)
Received: by mail-yx1-f52.google.com with SMTP id
 956f58d0204a3-63fd2b18c40so900522d50.0
        for <cake@lists.bufferbloat.net>;
 Fri, 07 Nov 2025 09:52:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762537957; x=1763142757;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=owmrg5onFoYoIY9FTiCp4HzRuGeEsgr6TOrm57tjRd4=;
        b=sY1jI5VAEUvnUIu+j47h3FJlGBWRLeHg0PAOzVWO1nep9uFMDyLUqoPvSNYBgWJKts
         d8RLa2KP2tX7bhujrZEvJ7vsqJPit5EfFeHKBnW6cdNa9cxKMSYgHpSS6/QxjTwLF7PG
         IaJFmwNk1LSWYxwvs8/50Tghx3t0tEInuj8W2MGdFG3vudbyWJvh9Olhrr/EttQL6XuG
         AEv5VXYv2HNTazWDrtrrku6xafBEyHmUHGZCExZ+zkYTuf6KFCEUdyZsEP7NOpgEuQgh
         yH+RmGXX1S1NEs/hTTSt5zHaPbtchcaoV3xbJaf7NCDOOzUWEdiWR/iKBhlonGdy1P3+
         ohqA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXk9JfmLZNAAZclJPMwPoDbY2WbZKbtaERzpMHCIBxwlQu9egCSUdZ68//vgTycejJW3F5d@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzLGlfAT324nwAegOCAzbvhub1QxR/TnKaSPmzn2QyfLU77t/EE
	x7F5XzhYA08G8wY40V2yPxr+wTLQpajXvPImKwBQL7g52zBLq4IU34M/FNzcvbyYbOR5zzXislp
	Z7ztg1IeIyw5UmiZ8qTVlA0y74txBolA=
X-Gm-Gg: ASbGncsPwKJyt480It+kpkgVR2DkYafbcAjaSLC2Nrq93Cj0LFDgT0xobofAr34LyiT
	gdg0kLO28yXRBDZeH6OTZkjQCAqz8cftXaV0QIT7hsxKE4cIYySzJgUXpMIyOaCuW8z5Y2JMy/M
	17UnxGsoXSAVJq27ldyVi5KXZ5kl1vbvEeSB8ly3fMDmOIrwdjRg+JmDGK8+/v54eN0itoNDmVA
	rPDS3JFyItMYJ6Vr7pCJ9gBLAX4aCIrt0Q7klGuqfy+kvCV5AN54b+HhO97GlMYUAHf9FQ=
X-Google-Smtp-Source: 
 AGHT+IE13Bjj6hrZeB/+eavzWtDUQhHXMXKOj7TQWhLb/VWVHu/i8OrfSkiXbePcTWcnc0d1RqM30uN3olSvIIf+dGA=
X-Received: by 2002:a05:690e:4346:b0:63f:c61a:5075 with SMTP id
 956f58d0204a3-640c43718f9mr2745845d50.52.1762537956719; Fri, 07 Nov 2025
 09:52:36 -0800 (PST)
MIME-Version: 1.0
References: <9390D9DA-3C77-429F-A41D-E0FECD52FF06@connectivitycap.com>
 <CAJUtOOjt+DajPifDNLNBOT_xwNWL_Wec5Gf_O91HMDdwpxtmeg@mail.gmail.com>
 <CAA_JP8XOeSOqbZJPH=1_oWMD055vOUxHipxJMs8sbsHLu5MHCA@mail.gmail.com>
 <CAJUtOOhiu8CVLARsiMKUkN4s87_VUr17su1Nr_4aManrwkCQAg@mail.gmail.com>
 <CAJUtOOhzJAymDiKsnRPho80B8GZ4wzd8W7FWccS=uhiQPd3KOg@mail.gmail.com>
 <2036296F-1567-4B66-BD8C-3AB49EBD5AA3@connectivitycap.com>
In-Reply-To: <2036296F-1567-4B66-BD8C-3AB49EBD5AA3@connectivitycap.com>
From: J Pan <Pan@uvic.ca>
Date: Fri, 7 Nov 2025 09:52:25 -0800
X-Gm-Features: AWmQ_blDI_oBV-Wlqvihh8Wq4w6NVeajpWPFjnjuJXwlGyHe5Q31VOY89eNNy6I
Message-ID: 
 <CAHn=e4iyb6FDc+Jrwx+5jdhZ35qoM8Weoz=Ktvth-NdUKZ7VmA@mail.gmail.com>
To: Jim Forster <jim@connectivitycap.com>
Cc: Frantisek Borsik <frantisek.borsik@gmail.com>,
 Cake List <cake@lists.bufferbloat.net>,
	bloat <bloat@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
	libreqos <libreqos@lists.bufferbloat.net>, l4s-discuss@ietf.org,
	starlink@lists.bufferbloat.net
X-MailFrom: panatuvicdotca@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: F7LZPRFP2ZQXFUZKSW6DWZGAYVQXWDBY
X-Message-ID-Hash: F7LZPRFP2ZQXFUZKSW6DWZGAYVQXWDBY
X-Mailman-Approved-At: Fri, 07 Nov 2025 20:52:44 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [Starlink] Re: [LibreQoS] Re: Keynote: QoE/QoS - Bandwidth Is A
 Lie! at WISPAPALOOZA 2025 (October 16)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAHn=e4iyb6FDc+Jrwx+5jdhZ35qoM8Weoz=Ktvth-NdUKZ7VmA@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

bGF0ZW5jeSBpcyBiYXNlZCBvbiByb3VuZC10cmlwIHRpbWUsIGFuZCBvbmUtd2F5IGRlbGF5IGlu
Y2x1ZGVzDQp0cmFuc21pc3Npb24gZGVsYXksIHByb3BhZ2F0aW9uIGRlbGF5LCBxdWV1aW5nIGRl
bGF5IGFuZCBwcm9jZXNzaW5nDQpkZWxheS4gYmFuZHdpZHRoIGRvZXMgYWZmZWN0IHRyYW5zbWlz
c2lvbiBkZWxheSAob3Igc2VyaWFsaXphdGlvbg0KZGVsYXkpLCBwcm9wYWdhdGlvbiBkZWxheSBp
cyBkZXRlcm1pbmVkIGJ5IHRoZSBsaW5rIGxlbmd0aCBhbmQgdGhlDQoidHJhdmVsIiBzcGVlZCBv
ZiB0aGUgc2lnbmFsLCBxdWV1aW5nIGRlbGF5IGlzIHRoZSBoYXJkZXN0IHBhcnQgYW5kDQphZmZl
Y3RlZCBieSB0aGUgYnVmZmVyIGJsb2F0IGEgbG90LCBhbmQgcHJvY2Vzc2luZyBkZWxheSBpcyBh
bm90aGVyDQp2YXJpYWJsZS4gb2YgY291cnNlLCB0cmFuc21pc3Npb24gZGVsYXkgdGFrZXMgbGVz
cyBhbmQgbGVzcyBwb3J0aW9uIG9mDQp0aGUgZW5kLXRvLWVuZCBkZWxheSBub3cgZHVlIHRvIGhp
Z2hlciBhbmQgaGlnaGVyICJzcGVlZCIgbGlua3MNCg0KY29uc3VtZXJzIG1heSBtaXN0YWtlbiB0
aGUgc3BlZWQgb2YgdGhlIGxpbmsgKHRoZSAid2lkdGgiIG9mIHRoZWlyDQpwaXBlKSBhcyBob3cg
ZmFzdCB0aGVpciBpbnRlcm5ldCBpcyAodGhlICJsZW5ndGgiIG9mIHRoZSBwaXBlKSwgZHVlIHRv
DQp0aGUgcG9vciB0ZXJtaW5vbG9neSB3ZSBoYXZlIGJlZW4gdXNpbmcgOy0pDQotLQ0KSiBQYW4s
IFVWaWMgQ1NjLCBFQ1M1NjYsIDI1MC00NzItNTc5NiAoTk8gVk0pLCBQYW5AVVZpYy5DQSwgV2Vi
LlVWaWMuQ0EvfnBhbg0KDQpPbiBGcmksIE5vdiA3LCAyMDI1IGF0IDg6MTnigK9BTSBKaW0gRm9y
c3RlciB2aWEgU3RhcmxpbmsNCjxzdGFybGlua0BsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3Rl
Og0KPg0KPiBGcmFuayDigJQgSeKAmW0gd2F0Y2hpbmcgaXQgbm93LCBHcmVhdCBqb2IgcHVsbGlu
ZyB0aGlzIGdyb3VwIHRvZ2V0aGVyLCBhbmQgbmljZSwgYmFsYW5jZWQgb3BlbmluZyBzdGF0ZW1l
bnQuDQo+DQo+ICAg4oCUIEppbQ0KPg0KPiA+IE9uIE5vdiA3LCAyMDI1LCBhdCA1OjUz4oCvQU0s
IEZyYW50aXNlayBCb3JzaWsgdmlhIFN0YXJsaW5rIDxzdGFybGlua0BsaXN0cy5idWZmZXJibG9h
dC5uZXQ+IHdyb3RlOg0KPiA+DQo+ID4NCj4gPiBSZWNvcmRpbmcgb2Ygb3VyIFFvRS9Rb1MgcGFu
ZWwgZGlzY3Vzc2lvbiBpcyBvdXQhIEl0IHdhcyByZWFsbHkgZ3JlYXQgYW5kDQo+ID4gYmVsaWV2
ZSB5b3Ugd2lsbCBsaWtlIGl0Og0KPiA+DQo+ID4gaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0
Y2g/dj1UMVZFVDBWWVE2Yw0KPiA+DQo+ID4gV2UgaGF2ZSB0b3VjaCBiYW5kd2lkdGgsIEw0Uywg
U3RhcmxpbmsgYW5kIG1vcmUuDQo+ID4NCj4gPiBIZXJlIGFyZSB0aGUgc2xpZGVzIHdpdGggYWRk
aXRpb25hbCByZWFkaW5nOg0KPiA+IGh0dHBzOi8vZG9jcy5nb29nbGUuY29tL3ByZXNlbnRhdGlv
bi9kLzFNTDBJM0F2M0RDdFFEaVA4RGpyX1lHSDJyNC1VRFpQMjVWRWsteHlKY1pFL2VkaXQ/c2xp
ZGU9aWQucCNzbGlkZT1pZC5wDQo+ID4NCj4gPiBXZSBob3BlIHRvIGNvbnRpbnVlIHRoaXMgY29u
dmVyc2F0aW9uIGludG8gbW9yZSBwcmFjdGljYWwsIGRlbW8tbGlrZQ0KPiA+IGVudmlyb25tZW50
IG9mIHNvcnQsIHRoYXQgd2UgY2FuIHNlZSBhdCBJRVRGIEhhY2thdGhvbiBhbmQgdXNlZCB0byBz
ZWUgaW4NCj4gPiB0aGUgZWFybHkgV0lTUEEgZXZlbnQgZGF5cywgd2l0aCBBbmltYWwgRmFybS4N
Cj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4g
U3RhcmxpbmsgbWFpbGluZyBsaXN0IC0tIHN0YXJsaW5rQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldA0K
PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHN0YXJsaW5rLWxlYXZlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldAo=
