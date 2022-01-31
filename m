Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D684A47CD
	for <lists+cake@lfdr.de>; Mon, 31 Jan 2022 14:11:02 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 79E133CB44;
	Mon, 31 Jan 2022 08:11:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1643634661;
	bh=uPaI1x5asIYY7FZg/deqv9Y343Cam6F+ocwcQgtZlYI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YBCFsgmPDjBWqy6lUd8yHcGlP41gR1IYHRBw6/DTQRRrp7zwvqdYuVmxtbLYfQwXl
	 ZirjlLG5bJuvQO9xnlPZOEUJaZV7j7/VyPgEUxsZj1lxAZi9sIsFBVBxnVL6NpMhs8
	 /yPyq0Jdv3X5XhwM/n8llX7WkRaIlkYkwcwBqJneR0NVKXsD2Us95K1dadVTVK3wlh
	 rdL+aCS+EPCYVBzDOPFnYb7KPas6Cu4EY6UZMeVJeOWQSuQAun3NhQTwZCQD5WNOGR
	 oul1joz8QBtiYTMDkBdRNza9tpx6bxlDnA2emFFPpDKN8dTrmsCAc7ei0vn8NA6HOr
	 cmzSAhoSiF6ag==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from nbd.name (nbd.name [IPv6:2a01:4f8:221:3d45::2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0625A3CB35;
 Mon, 31 Jan 2022 07:58:57 -0500 (EST)
Received: from [2a04:4540:1400:f600:38a4:8fb:af3f:40b1]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1nEWGl-0005p5-6G; Mon, 31 Jan 2022 13:58:55 +0100
Message-ID: <5728b3b1-d851-7c6f-c2d5-334be177bd94@phrozen.org>
Date: Mon, 31 Jan 2022 13:58:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.5.1
Content-Language: en-GB
To: Dave Taht <dave.taht@gmail.com>, Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
References: <CAA93jw4VU4jyjM463B6yYD_y-Nik9WMVjpD1QWs_=dcU1sj97A@mail.gmail.com>
From: John Crispin <john@phrozen.org>
In-Reply-To: <CAA93jw4VU4jyjM463B6yYD_y-Nik9WMVjpD1QWs_=dcU1sj97A@mail.gmail.com>
X-Mailman-Approved-At: Mon, 31 Jan 2022 08:11:00 -0500
Subject: Re: [Cake] starlink lede
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Ck9uIDMxLjAxLjIyIDEzOjQwLCBEYXZlIFRhaHQgd3JvdGU6Cj4gT2YgY291cnNlIEkgbm8gbG9u
Z2VyIHJlbWVtYmVyIHdoYXQgdGhlIHN0YXRlIG9mIGNha2Ugd2FzIGF0IHRoaXMKPiBwb2ludCwg
bm9yIHRoZSBtdDc2IHdpZmkgY29kZSwgYW5kIGhhdmUgbm8gaWRlYSBob3cgd2VsbCBtZWRpYXRl
aydzCj4gZGV2a2l0IGtlZXBzIHVwLi4uCj4gCj4gaHR0cHM6Ly9mb3J1bS5vcGVud3J0Lm9yZy90
L3N0YXJsaW5rLXdpZmktcm91dGVyLTItcnVucy1sZWRlLzExODg0NAo+IAoKdGhlIEdQTCBkcm9w
IGRvZXMgbm90IHVzZSB0aGUgbXQ3NiBkcml2ZXIgYnV0IHRoZSBTREsgZHJpdmVyLgoJSm9obgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxp
bmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
