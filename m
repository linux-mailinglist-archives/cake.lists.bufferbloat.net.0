Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2CBC93443
	for <lists+cake@lfdr.de>; Fri, 28 Nov 2025 23:39:18 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id CDC009DC739;
	Fri, 28 Nov 2025 23:39:17 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=tZcgh3j7
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764369557;
 b=z+0GILu1JCrO2rJ4YegagkQYEfNwNTAkajNoenpx9s5Aioh4ooc695fprK40rjqg+zs66
 Ej79tERAB9SfxAJRdPqQpyZxO+B3k480Rs4MZR7uGiAVFbacyUKgEYea96RrbTQnCJ5sfmV
 vf11kzsBa2ngjLTLi0fBbGRE+U9y8yU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764369557; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=zuuCxGcvfqhqMO94Iflpy9GvfViAPlLrODAMm74aUKw=;
 b=wgZuvF9CmFEBkBGpYsTiLAmj6GvkoUgR7kLQERgIcXNmI8/ytJSJZpTIZqzA4jdCA0GWE
 qn1dDZcWkOYZO+O/v3IwOqhi8tj/VQszIkeuUbpPtiul3XaBRqOpjm5sNdyqbpdDSDq1YQI
 HQkSy7iaV1dS3yiL2AFgEHE8Nr6f/Lw=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com
 [IPv6:2607:f8b0:4864:20::72f])
	by mail.toke.dk (Postfix) with ESMTPS id F3F729DB727
	for <cake@lists.bufferbloat.net>; Fri, 28 Nov 2025 19:49:36 +0100 (CET)
Received: by mail-qk1-x72f.google.com with SMTP id
 af79cd13be357-8b2d56eaaceso207975585a.0
        for <cake@lists.bufferbloat.net>;
 Fri, 28 Nov 2025 10:49:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1764355773; x=1764960573;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VznajH2pBXEOBwf6S0r4CgidMsgXR3tvOfvsfM5bKGI=;
        b=tZcgh3j7AQaLvfe9RhPXq/9E9tvNdz3CXT0bGl1h0GRAf271TAggA0xRNnM9pIcR08
         VLtHp2pvaTcrqNGqCH1ohHmLONYAu9KdMgo5m1oeUXrXtY0c9sasRHKyh5UIN0VzIJOC
         kGQq83OhmowujfuYgjn3cD+lK6akIkGGHS4vXxUBsBnH+4WKFAtUHAv7Lr2rRH1FvvCw
         Ke7LCE8g0S7cAWoggyKfLjmiIPB4FhgHU3oqRJTqmbWrLOAy5DAPk0F0BSRB5MPJ21OA
         M/H8fLO+1NNEojSu5nYu32JXSd9Cknn2UqfM2yYFMmKb/r041WZfYPnWTHlPJO0B43EI
         7kBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764355773; x=1764960573;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VznajH2pBXEOBwf6S0r4CgidMsgXR3tvOfvsfM5bKGI=;
        b=rXgXfenVGhZqS2LW7b1AKHp8O9eFNcdZqfI00ir0c7mPWliLiEubq0GxVUjA6u6ygc
         0d40RAUNbJHq3V9WPPiWfmcxdOxxxvo3qLvhaA2wzP/ykEdItAs8wCRr2em4blk00U3y
         DfbbD4ddSgQCYySL3EKTywONz8t0ZujRa0i7mKOKnwBcvx3KFqQKYGGV0TivIqr8vDtw
         pDoEtI0vYVIwcsaCpSE47RRSpnDYSztviQv04C7A5XCE0ePoj63b8Hsz/2I+fNPpgyts
         yRGn/krKMY6dFyFsVWcy7pk6c7EjK4uMbaky5VFsjt/Is1ItN0noSrxz4LjL17thwPl3
         MjvA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX2EW0Pxdj2fnucw7A221aU/wv8xxh1SkGV+1VxG43JCYFQQpryDZ/QXG7ehL6+CgpwyQKk@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxTZAm5SNsmjOZNy49e0Usw/da70HPiBSaN7wA+imcHCCJG4wAm
	Ij07mFqkePZ0m0ef+xE55uFu81tKfuq5v9PyAm8X/Wa0vRV1zg98goLhU8313FlvPQl/+L7gH8H
	kHLTklkrsTvNKLT/2LfBou+wKZlyuFHcgunvJKQzV
X-Gm-Gg: ASbGncsSz5Cn7hbpo+2saEmvvie7Gw7YGDgSRmLXqnw+nlX/BxtqqBVpgbQdwYdPAMB
	DDJK7782xDOvUOwM0+HVlLUmu2nK+C71iBHv1Ki8zDTTk2C1TrAhQur3QhRkzdXz37WTMAbwjhB
	lfk+0TN3JYPRDRQEo1eqhJPjT6VCvRlUSfUKcSUXepMpusHx3py6XFakOiAc3ITpIL53EvQXOzY
	sCEXzYgM/jJZ3/iaa6MCl9eXEijmtys4pRt66U82e5iGr6DGBE2KWa32rpNXjVE7sgUeBPw
X-Google-Smtp-Source: 
 AGHT+IFjRM/6UPV7aI9MptxB6wVmvfk+0t+vYvB6qc3V2el4sHpZfuef0Mb9rT0DSWYVUSkWvMK3q3g4bKKlBIkAe9w=
X-Received: by 2002:a05:620a:29c7:b0:8b2:dcde:b668 with SMTP id
 af79cd13be357-8b33d4680a5mr3966542085a.62.1764355773575; Fri, 28 Nov 2025
 10:49:33 -0800 (PST)
MIME-Version: 1.0
References: <20251128001415.377823-1-xmei5@asu.edu> <87ikeubjqu.fsf@toke.dk>
In-Reply-To: <87ikeubjqu.fsf@toke.dk>
From: Xiang Mei <xmei5@asu.edu>
Date: Fri, 28 Nov 2025 11:49:21 -0700
X-Gm-Features: AWmQ_blicLCsN0iOkNUduAiLI6to9ue0rAibm96LtZjDLhZZqQLeIAnsmPbo0Qc
Message-ID: 
 <CAPpSM+SQzdQ4VHsW2Fw=wTuBs_yw4NCWrps88=EfoSRAVG1W8A@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
Cc: security@kernel.org, netdev@vger.kernel.org, xiyou.wangcong@gmail.com,
	cake@lists.bufferbloat.net, bestswngs@gmail.com
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: CITVZWQZYR4PB5G25PISDA5HGUVNES3L
X-Message-ID-Hash: CITVZWQZYR4PB5G25PISDA5HGUVNES3L
X-Mailman-Approved-At: Fri, 28 Nov 2025 23:39:16 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v8 1/2] net/sched: sch_cake: Fix incorrect qlen
 reduction in cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAPpSM+SQzdQ4VHsW2Fw=wTuBs_yw4NCWrps88=EfoSRAVG1W8A@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB0aGUgdGlwLiBJ4oCZbGwgcmV0YWluIHRoZSBleGlzdGluZyB0YWdzLg0KDQpP
biBGcmksIE5vdiAyOCwgMjAyNSBhdCAyOjE24oCvQU0gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu
IDx0b2tlQHRva2UuZGs+IHdyb3RlOg0KPg0KPiBYaWFuZyBNZWkgPHhtZWk1QGFzdS5lZHU+IHdy
aXRlczoNCj4NCj4gPiBJbiBjYWtlX2Ryb3AoKSwgcWRpc2NfdHJlZV9yZWR1Y2VfYmFja2xvZygp
IGlzIHVzZWQgdG8gdXBkYXRlIHRoZSBxbGVuDQo+ID4gYW5kIGJhY2tsb2cgb2YgdGhlIHFkaXNj
IGhpZXJhcmNoeS4gSXRzIGNhbGxlciwgY2FrZV9lbnF1ZXVlKCksIGFzc3VtZXMNCj4gPiB0aGF0
IHRoZSBwYXJlbnQgcWRpc2Mgd2lsbCBlbnF1ZXVlIHRoZSBjdXJyZW50IHBhY2tldC4gSG93ZXZl
ciwgdGhpcw0KPiA+IGFzc3VtcHRpb24gYnJlYWtzIHdoZW4gY2FrZV9lbnF1ZXVlKCkgcmV0dXJu
cyBORVRfWE1JVF9DTjogdGhlIHBhcmVudA0KPiA+IHFkaXNjIHN0b3BzIGVucXVldWluZyBjdXJy
ZW50IHBhY2tldCwgbGVhdmluZyB0aGUgdHJlZSBxbGVuL2JhY2tsb2cNCj4gPiBhY2NvdW50aW5n
IGluY29uc2lzdGVudC4gVGhpcyBtaXNtYXRjaCBjYW4gbGVhZCB0byBhIE5VTEwgZGVyZWZlcmVu
Y2UNCj4gPiAoZS5nLiwgd2hlbiB0aGUgcGFyZW50IFFkaXNjIGlzIHFmcV9xZGlzYykuDQo+ID4N
Cj4gPiBUaGlzIHBhdGNoIGNvbXB1dGVzIHRoZSBxbGVuL2JhY2tsb2cgZGVsdGEgaW4gYSBtb3Jl
IHJvYnVzdCB3YXkgYnkNCj4gPiBvYnNlcnZpbmcgdGhlIGRpZmZlcmVuY2UgYmVmb3JlIGFuZCBh
ZnRlciB0aGUgc2VyaWVzIG9mIGNha2VfZHJvcCgpDQo+ID4gY2FsbHMsIGFuZCB0aGVuIGNvbXBl
bnNhdGVzIHRoZSBxZGlzYyB0cmVlIGFjY291bnRpbmcgaWYgY2FrZV9lbnF1ZXVlKCkNCj4gPiBy
ZXR1cm5zIE5FVF9YTUlUX0NOLg0KPiA+DQo+ID4gVG8gZW5zdXJlIGNvcnJlY3QgY29tcGVuc2F0
aW9uIHdoZW4gQUNLIHRoaW5uaW5nIGlzIGVuYWJsZWQsIGEgbmV3DQo+ID4gdmFyaWFibGUgaXMg
aW50cm9kdWNlZCB0byBrZWVwIHFsZW4gdW5jaGFuZ2VkLg0KPiA+DQo+ID4gRml4ZXM6IDE1ZGU3
MWQwNmE0MCAoIm5ldC9zY2hlZDogTWFrZSBjYWtlX2VucXVldWUgcmV0dXJuIE5FVF9YTUlUX0NO
IHdoZW4gcGFzdCBidWZmZXJfbGltaXQiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6IFhpYW5nIE1laSA8
eG1laTVAYXN1LmVkdT4NCj4NCj4gUGxlYXNlIHJldGFpbiB0YWdzIHdoZW4gcmVwb3N0aW5nLi4u
DQo+DQo+IFJldmlld2VkLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAdG9rZS5k
az4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2Ug
bWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
