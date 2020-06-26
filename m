Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 40ECE20BC0E
	for <lists+cake@lfdr.de>; Sat, 27 Jun 2020 00:01:11 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1E4273CB38;
	Fri, 26 Jun 2020 18:01:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593208870;
	bh=bfzD/EHinydgZVDJOan9APqBkpLa0cL5PXcVMt36wc0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RQH31CkA9zcr+K1Q9Aa2T8twsIKYBPf4GaYLnXT9S5BHPfKYvVaOPaA/q8qIr7BCF
	 K+YKfh9ce4KZHAL5eoDHljoEWylIo5FxgcpXEanncEEFGhWJNrsNhi0LRyQJ4HPka8
	 jZKRMH/FM6SllZNFf/4V88Q8K23M1xuEw+LvYeiKCckaUgMYb+ZNlCwgqasQhQfJDN
	 es0s89bGfs/9pKP6DExrOL+eHTYA83d/nEeiD9mLLYlyr70SfykG6TqsY64rzY+VOF
	 bs1sOvHbW/fPtSd3Rh8yQMj7q7+jnv7mYA9XuMYdTarIpeFhuE0SgtgEOG4b5ZQB75
	 Y2q8/M1BqH5dA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com
 [IPv6:2607:f8b0:4864:20::443])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A17E83B29E
 for <cake@lists.bufferbloat.net>; Fri, 26 Jun 2020 18:01:08 -0400 (EDT)
Received: by mail-pf1-x443.google.com with SMTP id j12so5187776pfn.10
 for <cake@lists.bufferbloat.net>; Fri, 26 Jun 2020 15:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lxaxMyrU1zNhtGVJmQYInG+3Ux8u7KVzHER9Vu5WtSA=;
 b=WUAB3OFcFWr/Qundtoha7tOL4LlKlslF33Jo3j3deKUSAi55fCHDTcY4WCe/VWNvQy
 JEqnEKIed1wocgzJYiv9wTUWFQZHJVRyBlOosWqZwFHoHbtUo9O/jZ4KkgR9DcmvWw4e
 xF+SrPlVMJuhoppXjCORikTmlr9ukjVsnviJAHcPrNJ75ATaGhrN+/mnZOkYm4uM+ejf
 EdaQ5crcQLzW1HlwF/fcryce2cBRZXPwdwNW9rD36cOrjqd+dvcImCxbYW+qpCqycDrf
 Y9nl/ZKLthltRgAnTmdgmRoZOpEKOI0kifRhZKJ5CVatgrFuFzEmAG1L/Wbbh94bLBvd
 /YRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lxaxMyrU1zNhtGVJmQYInG+3Ux8u7KVzHER9Vu5WtSA=;
 b=EHjoMx7P6bRMUzCfMdeh+bbKnTEBTsOSmIaJpm06y0Z5Gj2QFBnbWa0xHysqtUtYk9
 XfKk7fut1+8kQArFN9JVNQ+UT7jugJ8zw44qiYDHcfwpmhNkYdjCjrLi+bA+XErzDV8q
 /MfDy+tuUUZSY2kDbUIK1wStmy9WpMCcQVyhOwrsbOhXLIsYsbSZu9lVH5THt9AF5XTZ
 00nr9K54hCy476RlxeRQvU3a8nbgdsosbn9UKzZ250jBATxYHHMljFB/KWU8Ho+AUhh1
 aCRCpY6BeopRERSE5asoy+Xr4gn1y81rHVfXBzdy6SKXrh7xOr6KyLZYe261JG7i22uK
 qxRQ==
X-Gm-Message-State: AOAM530NjAKaSgXriwiMzj1ET1SUIudfpGZ7qmahjKC2HlxTAUUdtpaE
 oG8kbI2nc3Iz7oROJ1ftVZDlYg==
X-Google-Smtp-Source: ABdhPJwJ1vnSzzWMtQio9AJ5Iz/GuTGwDRYr7ySqsk/wFoTr8/YS5IsiG75Sd0BN5mZKr74dyHA1Ug==
X-Received: by 2002:a65:4507:: with SMTP id n7mr742674pgq.180.1593208867651;
 Fri, 26 Jun 2020 15:01:07 -0700 (PDT)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id 140sm26547791pfz.154.2020.06.26.15.01.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 15:01:07 -0700 (PDT)
Date: Fri, 26 Jun 2020 15:00:59 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Jonathan Morton <chromatix99@gmail.com>
Message-ID: <20200626150059.785647cb@hermes.lan>
In-Reply-To: <78C16717-5EB2-49BF-A377-21A9B22662E1@gmail.com>
References: <159308610282.190211.9431406149182757758.stgit@toke.dk>
 <159308610390.190211.17831843954243284203.stgit@toke.dk>
 <20200625.122945.321093402617646704.davem@davemloft.net>
 <87k0zuj50u.fsf@toke.dk>
 <240fc14da96a6212a98dd9ef43b4777a9f28f250.camel@redhat.com>
 <78C16717-5EB2-49BF-A377-21A9B22662E1@gmail.com>
MIME-Version: 1.0
Subject: Re: [Cake] [PATCH net-next 1/5] sch_cake: fix IP protocol handling
 in the presence of VLAN tags
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org,
 Davide Caratti <dcaratti@redhat.com>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gRnJpLCAyNiBKdW4gMjAyMCAxNjoxMTo0OSArMDMwMApKb25hdGhhbiBNb3J0b24gPGNocm9t
YXRpeDk5QGdtYWlsLmNvbT4gd3JvdGU6Cgo+IFRva2UgaGFzIGFscmVhZHkgcmVwbGllZCwgYnV0
Ogo+IAo+ID4gU3VyZSwgbXkgcHJvcG9zYWwgZG9lcyBub3QgY292ZXIgdGhlIHByb2JsZW0gb2Yg
bWFuZ2xpbmcgdGhlIENFIGJpdCBpbnNpZGUKPiA+IFZMQU4tdGFnZ2VkIHBhY2tldHMsIGkuZS4g
aWYgd2Ugc2hvdWxkIHVuZGVyc3RhbmQgaWYgcWRpc2NzIHNob3VsZCBhbGxvdwo+ID4gaXQgb3Ig
bm90LiAgCj4gCj4gVGhpcyBpcyBjbGVhcmx5IHdyb25nLWhlYWRlZCBieSBpdHNlbGYuCj4gCj4g
RXZlcnl0aGluZyBJJ3ZlIGhlYXJkIGFib3V0IFZMQU4gdGFncyB0aHVzIGZhciBpbmRpY2F0ZXMg
dGhhdCB0aGV5IHNob3VsZCBiZSAqdHJhbnNwYXJlbnQqIHRvIG5vZGVzIHdoaWNoIGRvbid0IGNh
cmUgYWJvdXQgdGhlbTsgdGhleSBkZXRlcm1pbmUgd2hlcmUgdGhlIHBhY2tldCBnb2VzIHdpdGhp
biB0aGUgTEFOLCBidXQgbm90IGhvdyBpdCBiZWhhdmVzLiAgSW4gcGFydGljdWxhciB0aGlzIG1l
YW5zIHRoYXQgQVFNIHNob3VsZCBiZSBhYmxlIHRvIGFwcGx5IGNvbmdlc3Rpb24gY29udHJvbCBz
aWduYWxzIHRvIHRoZW0gaW4gdGhlIG5vcm1hbCB3YXksIGJ5IG1vZGlmeWluZyB0aGUgRUNOIGZp
ZWxkIG9mIHRoZSBJUCBoZWFkZXIgZW5jYXBzdWxhdGVkIHdpdGhpbi4KPiAKPiBUaGUgbW9zdCBJ
IHdvdWxkIGVudGVydGFpbiBpcyB0byBpbmNvcnBvcmF0ZSBhIFZMQU4gdGFnIGludG8gdGhlIGhh
c2hlcyB0aGF0IENha2UgdXNlcyB0byBkaXN0aW5ndWlzaCBob3N0cyBhbmQvb3IgZmxvd3MuICBU
aGlzIHdvdWxkIGFjY291bnQgZm9yIHRoZSBjYXNlIHdoZXJlIHR3byBob3N0cyBvbiBkaWZmZXJl
bnQgVkxBTnMgb2YgdGhlIHNhbWUgcGh5c2ljYWwgbmV0d29yayBoYXZlIHRoZSBzYW1lIElQIGFk
ZHJlc3MuCj4gCj4gIC0gSm9uYXRoYW4gTW9ydG9uCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGlu
Zm8vY2FrZQoKVGhlIGltcGxlbWVudGF0aW9uIG9mIFZMQU4ncyBpcyBhd2t3YXJkL2ZsYXdlZC4g
VGhlIG91dGVyIFZMQU4gdGFnIGlzIHRyYW5zcGFyZW50CmJ1dCB0aGUgaW5uZXIgVkxBTiBpcyB2
aXNpYmxlLiBTaW1pbGFybHkgdGhlIG91dGVyIFZMQU4gdGFnIGRvZXNuJ3QgY291bnQgdG93YXJk
cwp0aGUgTVRVIGJ1dCBpbm5lciBvbmUgZG9lcy4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
