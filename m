Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4FC3E099B
	for <lists+cake@lfdr.de>; Wed,  4 Aug 2021 22:49:12 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 51D553CB41;
	Wed,  4 Aug 2021 16:49:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628110151;
	bh=0qv4onRM7oPuajVIOXmVTn0PS/xKkRVyv0JJdKWgQHs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hO2iw/o9ZXX24HHKO+xUUPvHi2ihAzPG13fDkWchyuXcuXIw3shSh1B/ZYggW/3XT
	 oPS9hAwQYNlfgav8A5E2hLamUNDhq5UAihG6us52w51ckXT2QJoFQNN1UJaMz0OADL
	 xDQZl9Q9zpzVl344w2FvJBbIKvKuGZxcTEdUHvI7vfEm9jlpzma+wWLbuZHA+WLBWH
	 HY7ZJNkNtlwQ/N3EW+V8s//vI4UE5vSDMyXT347rjPw7qvrSikSRb8Xxvbdg9A+ITe
	 RYM73O5UtFLSnlhxb7u2do9Z0tDYQ3XCsE1nW2eme/JCSmKInkGrgT7UQxOFLXwfkF
	 1ZN2SMnOfWZgA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6221D3CB38
 for <cake@lists.bufferbloat.net>; Wed,  4 Aug 2021 16:49:09 -0400 (EDT)
Received: by mail-ej1-x62e.google.com with SMTP id e19so5648848ejs.9
 for <cake@lists.bufferbloat.net>; Wed, 04 Aug 2021 13:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=heistp.net; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=bxxsVHHhQM2xLIanDQOr7NgXJNmXVKBQ5e5F6n6lS/Y=;
 b=Sc6D76LFabhaUM3bwDeaqgDutLnLJbFk+Z1rghb35hggM50y8Fm+et+fjagg5nLtr+
 T10zucqjn9ttu+l8vlNKEDouBJQYjCSgfWqoO3XZSOnsa3hH7YlkbkvHCvjQdwZ0clX0
 3u8rE3J1+FwUecZ2qYiLL5WlAeqixaK6FvC1ssaoSxcoRixd/35jSnL1DnchbKiHJ9J6
 XemwFi/+1HsvziF/KutroOUMMSP1WacK9Nh6WMAzt4mJw5yyorHhd3Zh1eqKkExvnSlz
 f3CNYL/nJzTSMrmNG5vQpWDIHKDHlBixQ0Z47KzHsh++JMJaEYVNjE6IXVMfFkBjVcG8
 vqbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=bxxsVHHhQM2xLIanDQOr7NgXJNmXVKBQ5e5F6n6lS/Y=;
 b=CfFsSodZAPDGkTSe2wEijjqYp7Iyix6VLrkaaHP/1Kj2tILUTlPpSNU1cwcmeOZeD6
 XaaR/rQsZTESUL9UX8eoxD/Bf1vomNf6C7Z+MJDZZARiaQdlDZ4GX+oEmm59dVqdL8lw
 uO09xMZ0/5FtxsWMd8Fpc9/3yd0cnQyLzOWtZFlaUPBK4qZnrlnNBcukKXac/puAl+2c
 62ScCkUbUmXUN4gst2BEU2kh8cYVNJpdLPKSYhVaxw6C0w5eUCIOhu+kKj0mLems7lKY
 bVjnsWrePUAc28e+4bjW2S4dl63CmUFHvAEuj7AvHzsQPbdbsvxZ6oaYyn6qiGgTC0jf
 WsWQ==
X-Gm-Message-State: AOAM531p6E93jNbhcGq0CPoRiU/WRJqigOyHm7vnf77avd4p9ZPQT24I
 CLgNb2aoqpUyqHZp/66JY6KNzHMQp5rTpg==
X-Google-Smtp-Source: ABdhPJw9uTqWignraaGelkhO3/+00WvJoKOaSDbBUx9/a+gGCZR93OdX7wF5WulHTvRh+1XbjwUQnQ==
X-Received: by 2002:a17:906:1c07:: with SMTP id
 k7mr1000943ejg.173.1628110148472; 
 Wed, 04 Aug 2021 13:49:08 -0700 (PDT)
Received: from [10.72.0.88] (h-1169.lbcfree.net. [185.193.85.130])
 by smtp.gmail.com with ESMTPSA id f15sm984353ejt.75.2021.08.04.13.49.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Aug 2021 13:49:07 -0700 (PDT)
Message-ID: <5964374bee9979ee9f1b4b86d32b002722d628fc.camel@heistp.net>
From: Pete Heist <pete@heistp.net>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@toke.dk>
Date: Wed, 04 Aug 2021 22:49:07 +0200
In-Reply-To: <87r1f95und.fsf@toke.dk>
References: <ae9f4679222f4eb3daa0e092446cb56da2fb85f6.camel@heistp.net>
 <3ebc0a3ccdcfa67a48c5ad764ce3389782633fef.camel@heistp.net>
 <87r1f95und.fsf@toke.dk>
User-Agent: Evolution 3.40.3 
MIME-Version: 1.0
Subject: Re: [Cake] cake srchost/dsthost stopped working?
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

R3JlYXQsIHRoYXQgc2VlbXMgdG8gZml4IGl0LiA6KSBGb3Igc2FuaXR5LCBJIGNvbmZpcm1lZCB0
aGF0IEkgY2FuCmFwcGx5L3VuYXBwbHkgdGhlIHBhdGNoIHRvIGZpeC9icmVhayBpdCwgc28gYWxs
IHNlZW1zIHdlbGwuCgpJcyB0aGVyZSBhbnl0aGluZyB0aGF0IHlvdSdkIHdhbnQgdG8gbWFrZSBz
dXJlIHN0aWxsIHdvcmtzIGFmdGVyIHRoZQpwYXRjaD8gSSBkb24ndCBoYXZlIGFueSBvZmZpY2lh
bCByZWdyZXNzaW9uIHRlc3RzIHRvIHJ1biwgYnV0IHdpdGggdGhpcwpzZXR1cCByZWFkeSBJIHNo
b3VsZCBiZSBhYmxlIHRvIHRlc3Qgc29tZXRoaW5nIGVhc2lseSBpZiBuZWVkZWQuLi4KClBldGUK
Ck9uIFdlZCwgMjAyMS0wOC0wNCBhdCAxMzoxNCArMDIwMCwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vu
c2VuIHdyb3RlOgo+IFBldGUgSGVpc3QgPHBldGVAaGVpc3RwLm5ldD4gd3JpdGVzOgo+IAo+ID4g
T25lIG1vcmUgdGlwLCByZXZlcnRpbmcgdGhpcyBjb21taXQgc2VlbXMgdG8gZml4IGl0Ogo+ID4g
Cj4gPiBodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvY29tbWl0L2IwYzE5ZWQ2MDg4
YWI0MWRkMmE3MjdiNjA1OTRiNzI5N2MxNWQ2Y2UKPiAKPiBBaCwgSSB0aGluayBJIHNlZSB3aGF0
IHRoZSBwcm9ibGVtIGlzOyBjb3VsZCB5b3UgcGxlYXNlIHRyeSB0aGUgcGF0Y2gKPiBiZWxvdz8K
PiAKPiAtVG9rZQo+IAo+IGRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2NoX2Nha2UuYyBiL25ldC9z
Y2hlZC9zY2hfY2FrZS5jCj4gaW5kZXggOTUxNTQyODQzY2FiLi5hODNjNGQ0MzI2ZGEgMTAwNjQ0
Cj4gLS0tIGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMKPiArKysgYi9uZXQvc2NoZWQvc2NoX2Nha2Uu
Ywo+IEBAIC03MjAsNyArNzIwLDcgQEAgc3RhdGljIHUzMiBjYWtlX2hhc2goc3RydWN0IGNha2Vf
dGluX2RhdGEgKnEsCj4gY29uc3Qgc3RydWN0IHNrX2J1ZmYgKnNrYiwKPiDCoHNraXBfaGFzaDoK
PiDCoMKgwqDCoMKgwqDCoCBpZiAoZmxvd19vdmVycmlkZSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZmxvd19oYXNoID0gZmxvd19vdmVycmlkZSAtIDE7Cj4gLcKgwqDCoMKgwqDC
oCBlbHNlIGlmICh1c2Vfc2tiaGFzaCkKPiArwqDCoMKgwqDCoMKgIGVsc2UgaWYgKHVzZV9za2Jo
YXNoICYmIGZsb3dfbW9kZSAmIENBS0VfRkxPV19GTE9XUykKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZmxvd19oYXNoID0gc2tiLT5oYXNoOwo+IMKgwqDCoMKgwqDCoMKgIGlmICho
b3N0X292ZXJyaWRlKSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRzdGhvc3Rf
aGFzaCA9IGhvc3Rfb3ZlcnJpZGUgLSAxOwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
