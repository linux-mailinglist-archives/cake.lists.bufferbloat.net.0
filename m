Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF86C8D8EB
	for <lists+cake@lfdr.de>; Thu, 27 Nov 2025 10:31:22 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 45D1C9D3FA1;
	Thu, 27 Nov 2025 10:31:22 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=sIfnrWUa
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764235882;
 b=LOgdgsEuNcn/3HCN2hODGYEzXqSTKLBUlj82t0SpfYpmnsSQRadn/aF2uHiMOGs3aZKSC
 /VVBZQzcDf2lXwYiAhClveLiQoD1hANIg9IXTf8ihzvjAOc+7pRKT2T9C9oieiJUHR38taU
 0Eq80/idimjHJNKWsKi7l5+R1zl4TRM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764235882; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=C01q8vhN8R8FAqDFzT181XbWMugbuQySzFPwbcBsytA=;
 b=5A96K7ojMZEKA9zvO/uuvehBHHm9X2K1IpQWrmm6TCWClCsHYTxEEEnzHjTPFl0kjmE/u
 xLAjLGDfQguFEGcLjKEmfsBrlVntdj1i3Ai1KN1Dts53D48D0c6Jt7N5/yZWIIXnjEHtehq
 12dubu7QEYKhZo2KoHp+Qft7rYCu5/w=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com
 [IPv6:2607:f8b0:4864:20::731])
	by mail.toke.dk (Postfix) with ESMTPS id 1B51A9D20DD
	for <cake@lists.bufferbloat.net>; Wed, 26 Nov 2025 20:48:37 +0100 (CET)
Received: by mail-qk1-x731.google.com with SMTP id
 af79cd13be357-8b2dcdde65bso16638385a.0
        for <cake@lists.bufferbloat.net>;
 Wed, 26 Nov 2025 11:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1764186516; x=1764791316;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PFotFf9eRXbFpwRIPK8Y1pStWXq1Ooupie4cSLAWHYE=;
        b=sIfnrWUaIiiKL1rUyC7hdjutLWtF+eUhugIoJuK/tkk0fVpiLWYazk0AtqTHAFyEBN
         K7H6NbrzANLhWn6XZr+FI5zSvwFElDrYWUgibZzmzzQsEqK4/0OenfKyYH6QrTIPKSyP
         yKMXzeSkxbmgxRQubfXHp/vleg71qI829G8z1GOOa+jPPmzHnHRKvge3EfXzU6ZtyTsF
         WeYlfeTivyve1SAGMW7tbpZTvdc1JqYXU6lwUjL7TNfr/QAhvmrpvK+5SvD9jV+4lCfC
         Rp9uWl2CsQQWunwf+k0+dNRUyoM5fXZxQEXnKpyWYK6jqNNT/GQXb58tDdyHSfg7XBbJ
         Xx7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764186516; x=1764791316;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PFotFf9eRXbFpwRIPK8Y1pStWXq1Ooupie4cSLAWHYE=;
        b=b/FhwgSVYfLsbatk1MzM8qYKRrDCgJyP9EAVQSSqRCbDp99yyhslMXvDDnm+9fakXv
         iKOzYQotQ+gOwQliXpUUweRwsSuOABUsAA3hZVmhWsoRjQlrdiLWrulzLmZjak/q9KlD
         CGBPS0oOr3gwQ0/Q+0J1f+UxbAOE4cot+U4L6S/cL7w3sYwAEm1jsjezMcn+CJGPGcF4
         w/ToxB29QoLBwqAD/jOm2nNr13qnR7AhgvksrI9Kkv13yT6V5Brc6T4E1t/2+jDD4XlR
         lVYURuawlo6lTVo1HaM5agGEimxb1jqhbBAduR0S317IR6fDWHcurR2tfnk56OpLNcyp
         vhaQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVdOYb0jkOZ3U1qcbxV/DZ3i+heYP5wGCMKytQAe2lqlwp6T/rizEQaXqK/43UEC1k7heCq@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yy7dczgbxprvY/01mJHxPycgNkPEQOLvjOy3UDo2rBmNJIcjEIc
	28Oz8UWXfbjNx+AWq4MlkBuZu7MX0XxipWhLO9Mt5V8HFNWgYZZamQZCUCrfy6Gal/TUAC1ouF2
	c2bafQFpya0CVmZexa0u7Z8Yy9lhlM/yoYiCRvtn7
X-Gm-Gg: ASbGncscL+31jgaqOa5gI4daU+FPZgLxyExWgzwAruL+LsXp/RP/3hYrvhxcuJRlVxY
	3zLcB1z9YWgP94lzsDX7n7qPmceY34CaGJlSyfxsZ0Grg+S8OP/hDJ7o+QC2BUSn5P6Ly6RCa2s
	2nqrbGzwGz/AR9fqDEfzdx57LxRV67E8eB5TwvuTP45lbRYemwnebQ3PHgnlJ/yeXNHGWlfX3z6
	ql2Og+NCCkl8R4AmvrICYC2tI2gyL2X4ffmVDuseonhFITVa/jKTri24gbFLxB1fxRQO342
X-Google-Smtp-Source: 
 AGHT+IENrgViP+CJjX20jMp6vNHT546q8bzoXHJFb0lfZj5ixlrK/z5Tv9Mq9Nyut67ffu4w/nPa/B0AUGPOFzYFx4c=
X-Received: by 2002:a05:620a:2a14:b0:8b2:ef6c:802f with SMTP id
 af79cd13be357-8b4ebdbd606mr951117585a.59.1764186516257; Wed, 26 Nov 2025
 11:48:36 -0800 (PST)
MIME-Version: 1.0
References: <20251125220213.3155360-1-xmei5@asu.edu>
 <20251125220213.3155360-2-xmei5@asu.edu>
 <aSZ9QhUImq0nH8mi@pop-os.localdomain>
In-Reply-To: <aSZ9QhUImq0nH8mi@pop-os.localdomain>
From: Xiang Mei <xmei5@asu.edu>
Date: Wed, 26 Nov 2025 12:48:25 -0700
X-Gm-Features: AWmQ_bnZLgaO-xI4nwZnXo7XsCIxODjbujQeVlbyfZNDMBHPfOXW9JHL9HQrTRY
Message-ID: 
 <CAPpSM+TZoqTUYvy=NjNJVN5QaScJ+YuCGghikAW5nxCr1R0VLw@mail.gmail.com>
To: Cong Wang <xiyou.wangcong@gmail.com>
Cc: security@kernel.org, netdev@vger.kernel.org, toke@toke.dk,
	cake@lists.bufferbloat.net, bestswngs@gmail.com
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: WGGQZHXK7QF7ERUJ5GDV5FE5ASZPMBFL
X-Message-ID-Hash: WGGQZHXK7QF7ERUJ5GDV5FE5ASZPMBFL
X-Mailman-Approved-At: Thu, 27 Nov 2025 10:31:21 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v6 2/2] selftests/tc-testing: Check Cake Scheduler when
 enqueue drops packets
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAPpSM+TZoqTUYvy=NjNJVN5QaScJ+YuCGghikAW5nxCr1R0VLw@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB0aGUgdGlwcy4gSSBoYXZlIHNlbnQgdGhlIG5ldyBwYXRjaDogSSBtb3ZlZCB0
aGUgdGVzdCB0bw0KcWRpc2MuanNvbiBhbmQgdGVzdGVkIGl0IHdpdGggdGhlIHBhdGNoIGluIDEv
Mi4gQXBwcmVjaWF0ZSB5b3VyDQpyZXZpZXcuDQoNCkJlc3QsDQpYaWFuZw0KDQoNCk9uIFR1ZSwg
Tm92IDI1LCAyMDI1IGF0IDk6MDjigK9QTSBDb25nIFdhbmcgPHhpeW91Lndhbmdjb25nQGdtYWls
LmNvbT4gd3JvdGU6DQo+DQo+IE9uIFR1ZSwgTm92IDI1LCAyMDI1IGF0IDAzOjAyOjEzUE0gLTA3
MDAsIFhpYW5nIE1laSB3cm90ZToNCj4gPiBBZGQgdGVzdHMgdGhhdCB0cmlnZ2VyIHBhY2tldCBk
cm9wcyBpbiBjYWtlX2VucXVldWUoKS4gVGhlIHRlc3RzIHVzZQ0KPiA+IENBS0UgdW5kZXIgYSBR
RlEgcGFyZW50L2NsYXNzLCB0aGVuIHJlcGxhY2UgQ0FLRSB3aXRoIE5FVEVNIHRvIGV4ZXJjaXNl
DQo+ID4gdGhlIHByZXZpb3VzbHkgZml4ZWQgYnVnIHdoZXJlIGNha2VfZW5xdWV1ZSgpIGRyb3Bz
IGEgcGFja2V0IGluIHRoZQ0KPiA+IHNhbWUgZmxvdyBhbmQgcmV0dXJucyBORVRfWE1JVF9DTi4N
Cj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFhpYW5nIE1laSA8eG1laTVAYXN1LmVkdT4NCj4gPiAt
LS0NCj4gPiAgLi4uL3RjLXRlc3RpbmcvdGMtdGVzdHMvcWRpc2NzL2Nha2UuanNvbiAgICAgIHwg
MjggKysrKysrKysrKysrKysrKysrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0aW9u
cygrKQ0KPiA+DQo+DQo+IFVzdWFsbHkgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvdGMtdGVzdGlu
Zy90Yy10ZXN0cy9pbmZyYS9xZGlzY3MuanNvbg0KPiBpcyBhIGJldHRlciBwbGFjZSBmb3IgdGVz
dGluZyBRZGlzYyBjb21iaW5hdGlvbnMuDQo+DQo+IFJlZ2FyZHMsDQo+IENvbmcNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0
IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
