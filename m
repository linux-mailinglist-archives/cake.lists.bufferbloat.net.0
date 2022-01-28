Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C15844A4444
	for <lists+cake@lfdr.de>; Mon, 31 Jan 2022 12:32:04 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 041233CB40;
	Mon, 31 Jan 2022 06:32:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1643628723;
	bh=gINxJW8b7QzEfuN6o6/O7LffugvQtDj/7TlLr7G5rpg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pI/FNChewLUn8Il5v3BF/sIlp9BYzOB0y04j3QgM8FHfFx+grUvw84um3yaZbijoa
	 x55/SgAk1m2Yi95W+kW7HFRTAo5UBz5UfhJ9oBIDh7l25QLI6QjY6/3f1Bdwi07YEl
	 lkhSFhunOoII0Vzc5OUeG4FuFI+oVX4JqtP3MWaJJmpEGFv1AvVWB70WW+MtE475su
	 9MRqKVkkalDYBIwgIkb+lp/CQKCXawC1qPhhCWwTm9gHqjy8uYbYXXT/xgmrwYZa8T
	 p0RSc0+0NAqQWZ36Q+GtEhYMS1q216QoaWEYLFpYq8vcZN1wK4AVEM8CverLkY3vQV
	 WDD/7iQZbuxkQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5A19D3CB35
 for <cake@lists.bufferbloat.net>; Thu, 27 Jan 2022 23:31:20 -0500 (EST)
Received: from [192.168.12.102] (unknown [159.196.94.94])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id D6AD520205;
 Fri, 28 Jan 2022 12:31:09 +0800 (AWST)
Message-ID: <6eb22909c04bfb561805ba8980e7f07d121ee90e.camel@codeconstruct.com.au>
From: Matt Johnston <matt@codeconstruct.com.au>
To: Sebastian Moeller <moeller0@gmx.de>
Date: Fri, 28 Jan 2022 12:31:09 +0800
In-Reply-To: <82BBD116-4A04-4E19-9833-0DCB5134C73C@gmx.de>
References: <20220125060410.2691029-1-matt@codeconstruct.com.au>
 <87r18w3wvq.fsf@toke.dk> <242985FC-238B-442D-8D86-A49449FF963E@gmx.de>
 <db81c2b5bd1fb2fb6410ce0d04e577bbff61ee1e.camel@codeconstruct.com.au>
 <82BBD116-4A04-4E19-9833-0DCB5134C73C@gmx.de>
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 31 Jan 2022 06:32:01 -0500
Subject: Re: [Cake] [PATCH net] sch_cake: diffserv8 CS1 should be bulk
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
Cc: netdev@vger.kernel.org,
 Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>,
 cake@lists.bufferbloat.net,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCAyMDIyLTAxLTI3IGF0IDE3OjAwICswMTAwLCBTZWJhc3RpYW4gTW9lbGxlciB3cm90
ZToKPiA+IAo+ID4gVGhlIGRvY3VtZW50YXRpb24gZG9lc24ndCBtYXRjaCB0aGUgY29kZSB0aG91
Z2guCj4gCj4gCVNpbmNlIEkgZGlkIG5vdCBzZWUgeW91ciBvcmlnaW5hbCBtYWlsLCBvbmx5IFRv
a2UncyByZXNwb25zZSwgd2hpY2ggZG9jdW1lbnRhdGlvbiBpcyB3cm9uZyBoZXJlPwoKQWgsIEkg
aGFkIG1pc3NlZCB0aGF0IHRoZSBkb2NzIHdlcmUgdXBkYXRlZCBhbHJlYWR5IG9uIDYgSmFuIDIw
MjIuClNvcnJ5IGZvciB0aGUgbm9pc2UhCgo5ZWQ2Nzg2YzE5YWUgKCJzY2hfY2FrZTogZGlmZnNl
cnY4IENTMSBzaG91bGQgYmUgYnVsayIpCgpDaGVlcnMsCk1hdHQKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5m
by9jYWtlCg==
