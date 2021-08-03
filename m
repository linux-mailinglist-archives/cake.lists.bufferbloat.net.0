Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 395003DF5F3
	for <lists+cake@lfdr.de>; Tue,  3 Aug 2021 21:46:41 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CF9453CB40;
	Tue,  3 Aug 2021 15:46:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628019999;
	bh=WhGbPvTh0hnr99/sM/4JVdZ0OlFwo89kLW7WmgBxQN0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=icIRkKTcSuJrXjWFg2QCZku6pLtj2lrYHPT3QLdP+H8l2DBRONgYJa2nt10p7ta9P
	 NtuYRYP1UAiJfqjt3gsYgtpFYz8XimKnT8QYcrdPyY7FcqgSeKnsYs93v3FxW3l7Pb
	 9MQWe0QIxzMLz8iBmwqGmEnZvuyPFEKkyjj0xiPS2uTDJs7PqwfzqxubwRxkyK6qZQ
	 3nXy6g6K5n8WBLFX7MbIKeEiv+r8EpN+FN+aK4w19n3UEUbA2vCUB1NBcqp+MMKM3o
	 yyKdCvabM4RqlAZQ3cxqlo7YptGorlRhcv25u+JXxAecYRHGzzzCQYHNlkhCdheKwh
	 YPOb3caaloUZw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 023673B2A4
 for <cake@lists.bufferbloat.net>; Tue,  3 Aug 2021 15:46:37 -0400 (EDT)
Received: by mail-wm1-x330.google.com with SMTP id
 l11-20020a7bcf0b0000b0290253545c2997so92547wmg.4
 for <cake@lists.bufferbloat.net>; Tue, 03 Aug 2021 12:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=heistp.net; s=google;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=kNsIM04/KN4afo4p+qtTjR2OZLI+KLAM0XoK2/Ur85U=;
 b=C6q2oEdZV3cjUFwtjs8VdQp3qdCXjxHsZnaVRX04PvHogmwFHyq5w7aJOeC0wYwWyW
 LVLWLTQJwMP5T+gLhfSp3DYrXZSh9QFD//Jh7bPG0POCKpFtvrZjrJPGVXcF481qcl3v
 LTwvJYCanxL8++6Db72rwzsRF5pq4xbQlDjFdYE9viwkbVvYFUBjci04a8EIr/6sfDsK
 2ZXlsU2rebPRhvHpfLNrZirlJLIxxuRn3Ec8vQsxEYNPg6tREMQPOxOg7XM4HJtxKVu+
 PgNTvLNeCGl8CHyTnLpuarxGo1DssNGl92OTWDu19TAPeD5G0ydSCIJa5ucqUPpVQ1Ey
 K2MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=kNsIM04/KN4afo4p+qtTjR2OZLI+KLAM0XoK2/Ur85U=;
 b=drDU1mpjtqwi4DgK/uXMCjQ/T3xdITkKWikXCOqHg/jeev67dwqsdtqosSYqMZ3Ez+
 a12jGdEcThWxS3lzbJ0ZDlKbEyRN06l8QgiCWTX8V2jBCpV+9cshGq/6+xE5RbxgXhau
 XlwBrVssc8CYcBUSU2hYeX1kxY6uJHFoIDlAt7m1aHx11zw6WWBA25Dt6WmnqUVRFg3K
 IS21uHs4pRERKwcoZPDB+YyImJKgMv5v7qXaKXWM1njwrrE6xOZU8fDtpIckmJ59ZQMh
 wdL6RAOkmbk6qdLt1LqoYcK1sObJndj7FVc4IDMoZSUnnbV+qZE7Xs1gclP6E4vmflKk
 TqYg==
X-Gm-Message-State: AOAM533SLo4iAtk/+TkRuB/cekH0QsJYvmDoHAbJqmTQBZR3ds2cXIf1
 kuPhFAuIOmdV3T4APaV4QUiDt1krJwAnJg==
X-Google-Smtp-Source: ABdhPJzixIPP6NTQ1KYTOzDA1TFRGsEmQsapvkKwNh/t5RXoiZ58l1vwGYFjkLMG9Sc36vt8InNzLA==
X-Received: by 2002:a7b:c255:: with SMTP id b21mr24126490wmj.100.1628019996657; 
 Tue, 03 Aug 2021 12:46:36 -0700 (PDT)
Received: from sova.luk.heistp.net (h-1169.lbcfree.net. [185.193.85.130])
 by smtp.gmail.com with ESMTPSA id j19sm4493242wmi.3.2021.08.03.12.46.36
 for <cake@lists.bufferbloat.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Aug 2021 12:46:36 -0700 (PDT)
Message-ID: <3ebc0a3ccdcfa67a48c5ad764ce3389782633fef.camel@heistp.net>
From: Pete Heist <pete@heistp.net>
To: Cake List <cake@lists.bufferbloat.net>
Date: Tue, 03 Aug 2021 21:46:35 +0200
In-Reply-To: <ae9f4679222f4eb3daa0e092446cb56da2fb85f6.camel@heistp.net>
References: <ae9f4679222f4eb3daa0e092446cb56da2fb85f6.camel@heistp.net>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T25lIG1vcmUgdGlwLCByZXZlcnRpbmcgdGhpcyBjb21taXQgc2VlbXMgdG8gZml4IGl0OgoKaHR0
cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2NvbW1pdC9iMGMxOWVkNjA4OGFiNDFkZDJh
NzI3YjYwNTk0YjcyOTdjMTVkNmNlCgpQZXRlCgpPbiBUdWUsIDIwMjEtMDgtMDMgYXQgMTg6MDMg
KzAyMDAsIFBldGUgSGVpc3Qgd3JvdGU6Cj4gSXQgc2VlbXMgbGlrZSBDYWtlJ3Mgc3JjaG9zdCBh
bmQgZHN0aG9zdCBrZXl3b3JkcyBtYXkgaGF2ZSBzdG9wcGVkCj4gd29ya2luZyBzb21lIHRpbWUg
YmV0d2VlbiBrZXJuZWwgNS40IGFuZCA1LjEwLgo+IAo+IFdoZW4gdGhlIGJ1ZyBvY2N1cnMsIHRo
ZXJlIHNlZW1zIHRvIG5vdCBiZSBmYWlybmVzcyBiZXR3ZWVuIGhvc3RzLCBidXQKPiByYXRoZXIg
ZmFpcm5lc3MgYmV0d2VlbiBmbG93cy4gSXQgcmVwcm9kdWNlcyBvbiBhbnkgNS4xMCBzZXJpZXMg
a2VybmVsCj4gSSd2ZSB0cmllZCwgYW5kIGRvZXMgbm90IHJlcHJvZHVjZSBvbiBhbnkgNS40IHNl
cmllcyBvciBsb3dlci4gSGVyZSdzIGEKPiBzdGFuZGFsb25lIHNjcmlwdCB0byByZXByb2R1Y2Ug
aXQgd2l0aCBuZXRucywgYW5kIHNvbWUgc2FtcGxlIG91dHB1dDoKPiAKPiBodHRwczovL3d3dy5o
ZWlzdHAubmV0L2Rvd25sb2Fkcy9jYWtlLWhvc3RmYWlyLwo+IAo+IEl0IGNyZWF0ZXMgY29tcGV0
aXRpb24gZnJvbSBvbmUgSVAgdG8gdHdvIElQcywgYW5kIGZyb20gdHdvIElQcyB0byBvbmUKPiBJ
UCwgdXNpbmcgdGhlIHNyYy9kc3Rob3N0IGtleXdvcmRzIGFzIGFwcHJvcHJpYXRlLiBJdCBhbHNv
IHRlc3RzCj4gZnFfY29kZWwgd2l0aCBhIHRjLWZsb3cgZmlsdGVyLCBhbmQgY2FrZSAqZHVhbCot
KHNyY3xkc3QpaG9zdCwgd2hpY2gKPiBhcmUgYm90aCB1bmFmZmVjdGVkIGJ5IHRoaXMuCj4gCj4g
QW55IGlkZWFzPwo+IAo+IFBldGUKPiAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
