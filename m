Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D213E281A
	for <lists+cake@lfdr.de>; Fri,  6 Aug 2021 12:08:22 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BBAA13CB41;
	Fri,  6 Aug 2021 06:08:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628244500;
	bh=CjEP4Vy+COPfmWkL+wGPLQU05j48wFRBU6GbzkUEmfQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ddo0PlToee54jwToZhejD00+0IMsuFqVUaC3PGNBC/RFB99QV5Id4HDgTTxETvwSd
	 4FKQ59HnRipbDgq8xUojLYCq05nycbHqWoV0gOPQqkvuwW4H0YuLu+Iqr+OjGGLsys
	 m6xgRwhPhWME1tv0L8TeA8wWWQWyiBxDV21wuGYKrduUfLLNd778cM9FDEh8SdYJXN
	 tL2d9H4yQtc8MRA/dPE/jTbGfHHi078QalSgn33Oef/Ch1+XXeSgbI96OphBocwS4O
	 mQK1sFCU5SgLM1BfGlTZ4BXG2/Gz+2WJS5OMA1C54bk7g3fgUeuLM99bLwQ9yQyiM+
	 YcDrmlnulYrQA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8432E3B29D
 for <cake@lists.bufferbloat.net>; Fri,  6 Aug 2021 06:08:18 -0400 (EDT)
Received: by mail-wr1-x431.google.com with SMTP id m12so10341660wru.12
 for <cake@lists.bufferbloat.net>; Fri, 06 Aug 2021 03:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=heistp.net; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=pk8fW1GBwP/khvuthl/q4HYfcWxhvs2/JM19MfPMNbk=;
 b=NZ79pTnjDNv64qbuZnwatD19JoPztADgdX9RQRuyS2/nUZ1yQBv9AQkTWOjWhhJAgV
 ej7XfqCQHTtwjGGWZ0Hz4qIXQlJOw5jPkxyWn9vCvJbUM1t97MOsNM4G9+b0G5Yylp8M
 eDw1+iK6ATIyKhZuWvRY8cIgnA3CegwaC+xOYe4xsnVoe46UIE4/X0JdiNDY2tpfGHha
 6t6NWIxlwM0XWOE/3H3lY2Jvnvc4Si8CRocjEKIXd2OUbvAA6jTwcgQZ3zJZopaxY7E/
 XMRpkhr2P/FZJowpgk+9Yupyp3M0y4gHcqsr7eYFc3hqnuGVeZ9FW9++cAjFHVS6t58n
 kQOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=pk8fW1GBwP/khvuthl/q4HYfcWxhvs2/JM19MfPMNbk=;
 b=pu1sxU0vgv7QPYtzM9bKHmWth85O30YPPJVq5GmtAq7P6QI3VBUijkzJ/yZdgy1EjS
 YnZriCA7vLJJ5gdrMs2/Lu+VIjYd05GyJMShsknkZ1/2JGwQSxPHcdFTv/T3CYOzlaed
 M2eb0pMuV6DXuPJwkWJmCrvZzKTXVlY9IiHXbYoOP5Lqs4J1WamHH9//aNBeYYQFoS3v
 24FXjsSJQdI3lwjs4PVfL9lm6Hz26uM7i6/1mG6PwUf3yCguTQFiwzzIYvRPJfX1Qg15
 dxtcVlifZ2yBwMTQ+Npi8HmwvBaZHjWLaTiorN1AtruHFZdbjiRr0UcyonR+YnvkxkS0
 OBjA==
X-Gm-Message-State: AOAM530G36Zcz8BeQMtT2bHUHMR+zxroU6a+9/5sul2LlMZyggmEyAYY
 7nGRPjnZDUkdjQRCiw4MSNk6zg==
X-Google-Smtp-Source: ABdhPJzS11kLh9r/HdvnOV2hZriIHvlcbRiki2/wLxEeMDU+22xKM8nJ0f7Nje95Wvuk4dRtL2y9jg==
X-Received: by 2002:a5d:59aa:: with SMTP id p10mr9995046wrr.0.1628244497147;
 Fri, 06 Aug 2021 03:08:17 -0700 (PDT)
Received: from [10.72.0.81] (h-1169.lbcfree.net. [185.193.85.130])
 by smtp.gmail.com with ESMTPSA id p2sm9251816wrr.21.2021.08.06.03.08.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Aug 2021 03:08:16 -0700 (PDT)
Message-ID: <23c5c22159479906817d8680cbeedbcc75cd8009.camel@heistp.net>
From: Pete Heist <pete@heistp.net>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@toke.dk>
Date: Fri, 06 Aug 2021 12:08:16 +0200
In-Reply-To: <87im0k54ab.fsf@toke.dk>
References: <ae9f4679222f4eb3daa0e092446cb56da2fb85f6.camel@heistp.net>
 <3ebc0a3ccdcfa67a48c5ad764ce3389782633fef.camel@heistp.net>
 <87r1f95und.fsf@toke.dk>
 <5964374bee9979ee9f1b4b86d32b002722d628fc.camel@heistp.net>
 <37822e2cebd977f2c5c0758b48a191f2644d7589.camel@heistp.net>
 <fb6cb1e5015b0e28ebf13869eb329acc0a2b79e2.camel@heistp.net>
 <87im0k54ab.fsf@toke.dk>
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

RnlpIEkgdGhyZXcgdGhlIHRlc3Qgc2NyaXB0IHVwIGluIGEgcmVwbywgc28gaW4gY2FzZSB3ZSBu
ZWVkIHRvIHRlc3QKdGhlIGZsb3cgaXNvbGF0aW9uIGtleXdvcmRzIGFnYWluIHdlIGNhbiBqdXN0
IHJ1biB0aGF0OgoKaHR0cHM6Ly9naXRodWIuY29tL2hlaXN0cC9jYWtlLWZsb3dpc28KClBldGUK
Ck9uIFRodSwgMjAyMS0wOC0wNSBhdCAxNjo1NiArMDIwMCwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vu
c2VuIHdyb3RlOgo+IFBldGUgSGVpc3QgPHBldGVAaGVpc3RwLm5ldD4gd3JpdGVzOgo+IAo+ID4g
QXMgZm9yIHRyaXBsZS1pc29sYXRlLCBJIGFkZGVkIGEgdGVzdCBKb24gc3VnZ2VzdGVkOgo+ID4g
Cj4gPiAiSSB3b3VsZCByZWNvbW1lbmQgYSBXIGNvbmZpZ3VyYXRpb24gb2YgZmxvd3MKPiA+IAo+
ID4gb25lIG9mIHRoZSB0aHJlZSBob3N0cyBzZW5kcyB0byBvciBmcm9tIGJvdGggb2YgdGhlIHR3
byBob3N0cywgd2hpbGUKPiA+IHRoZSBvdGhlciB0d28gc2VuZCB0byBvciBmcm9tIG9ubHkgb25l
IGVhY2gKPiA+IAo+ID4gdGhpcyBzaG91bGQgcmVzdWx0IGluIHRoZSB0d28gaG9zdHMgZ2V0dGlu
ZyBlcXVhbCB0aHJvdWdocHV0IGVhY2gsCj4gPiBhbmQKPiA+IGVxdWFsIHRocm91Z2hwdXQgaW4g
ZWFjaCBvZiB0aGVpciB0d28gZmxvd3MiCj4gPiAKPiA+IFRoaXMgaXMgdGhlIGxhc3QgdGVzdCBp
biB0aGUgb3V0cHV0LCBhbmQgSSB0aGluayB0aGUgYmVoYXZpb3IgbG9va3MKPiA+IGNvcnJlY3Qg
Zm9yIGJvdGggdGhlIHVucGF0Y2hlZCBhbmQgcGF0Y2hlZCB2ZXJzaW9uczoKPiA+IAo+ID4gaHR0
cHM6Ly93d3cuaGVpc3RwLm5ldC9kb3dubG9hZHMvY2FrZS1ob3N0ZmFpci9jYWtlLWhvc3RmYWly
LXVucGF0Y2hlZC50eHQKPiA+IAo+ID4gaHR0cHM6Ly93d3cuaGVpc3RwLm5ldC9kb3dubG9hZHMv
Y2FrZS1ob3N0ZmFpci9jYWtlLWhvc3RmYWlyLXBhdGNoZWQudHh0Cj4gPiAKPiA+IFRoYW5rcyBn
dXlzLCBhbmQgdGhhdCwgSSBiZWxpZXZlLCBpcyBmaW5hbGx5IGl0IGZvciBub3cuLi4gOikKPiAK
PiBBd2Vzb21lLCB0aGFuayB5b3UgYm90aCEgSSdsbCBzZW5kIGEgcHJvcGVyIHBhdGNoIHVwc3Ry
ZWFtIDopCj4gCj4gLVRva2UKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
