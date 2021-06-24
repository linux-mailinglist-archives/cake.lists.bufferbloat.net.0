Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 470C73B3098
	for <lists+cake@lfdr.de>; Thu, 24 Jun 2021 15:59:54 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2507E3CB57;
	Thu, 24 Jun 2021 09:59:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1624543193;
	bh=Kja+HLs4AvjrKFFK2NlPtFQ9wjfCNeGMW8HiU9Fzqho=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ehAPEYuqYftCZUkIvwp22NcpCRuXSa+lf/RTXQu8Rr3Se8cW3RejUNPtbNb9PbHjp
	 G9wy1Ovq8lHkSFmXePM72frrrjCyYLyrYnroTVTOVPEooA9zX5tB3L4UneL8d0rWOq
	 WPxs1if/IQM1oeOwhRpMoubXhuP0eSjrjiZdi7mkrDvD9v0MUng0DJWx8YkOSXki1p
	 9Mc6aKQgDpHfMkzZPqAKiLiat+2e7iNsXVjyw3lTYsWoQ2cuhYKILhiK11ghTwdawe
	 RG6whc/1uFHN8OLTp4JUI94ObH1NOV8G96fi0Kss7ipNVQxKtDAWOIQaNXRPSU8GWj
	 WhKUum5+V2/7Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C983D3B2A4
 for <cake@lists.bufferbloat.net>; Thu, 24 Jun 2021 09:59:46 -0400 (EDT)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1624543184; bh=i0qOYnmvOe2HrEqNKXKzZRwDJ8TyXv22JRscgxrO8Ko=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=fgTbqs+864EZb3/+DENdGWmYfKveQEvkMJoaNspVoeDhuA9XB0yhsoSCcga7srmNV
 iZbbu/TkkZ5aV7DTodv/kV12XwsY3s9+FiBD9K2AIoFHje0F9dzjcQDnLS6/Nfyif1
 VVK8hLsZG/o+R3KPuzsq1KyiVDIEWdqKkKVrNrbMwIc4Z+14zbAHqlicXXW2UsDfv4
 uLScUhvKCZOg/y2S+lwAt/6pJHoxYJDltoTw3UbhK7fiMgKtcq9Qzj6lyiM7L/jrYn
 Ic1+7XtpVZ3Cv6CVeljUp8P3PZJ489LMNT2Hwbql606myh7MoD1A7Tk4x3+PYOo253
 1RiCFaSFlmVdg==
To: Pete Heist <pete@heistp.net>, Cake List <cake@lists.bufferbloat.net>
In-Reply-To: <3d529e0b78ef8ea54021d8f8e93285e9a474cba1.camel@heistp.net>
References: <3d529e0b78ef8ea54021d8f8e93285e9a474cba1.camel@heistp.net>
Date: Thu, 24 Jun 2021 15:59:43 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87h7hnmkhc.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] Cake memory usage after 1TB
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

UGV0ZSBIZWlzdCA8cGV0ZUBoZWlzdHAubmV0PiB3cml0ZXM6Cgo+IEknbSB1c2luZyBDYWtlIG9u
IGFuIEVkZ2VSb3V0ZXItWCBhdCBhIHNpdGUgdGhhdCBkb2VzIGFyb3VuZCA1MC0KPiAxMDBHQi9k
YXksIGFuZCB3ZSdyZSBxdWl0ZSBoYXBweSB3aXRoIGl0IHNvIGZhci4gRWdyZXNzIGFuZCBpbmdy
ZXNzCj4gc3RhdHMgYXJlIGJlbG93IGFmdGVyIH4xVEIgZG93bmxvYWQgYW5kIH4xMDBHQiB1cGxv
YWQuCj4KPiBJIHVzZSAibWVtbGltaXQgOE0iLCBhbmQgbm90aWNlZCB0aGF0IGl0J3MgcmVwb3J0
aW5nIDgzODk2OTYgYnl0ZXMgdXNlZAo+IG9uIGVncmVzcywgd2hpY2ggaXMgYXQgdGhlIG1heGlt
dW0gKHNsaWdodGx5IG92ZXIgYWN0dWFsbHkpLiBBcm91bmQgNk0KPiBpcyB1c2VkIG9uIGluZ3Jl
c3MuIFNob3VsZCBJIHRoZW4gcmFpc2UgdGhlc2UgbGltaXRzLCBvciBpcyBpdCBub3JtYWwKPiBm
b3IgaXQgdG8gc2V0dGxlIGluIGFyb3VuZCB0aGUgbWF4aW11bSBvdmVyIHRpbWU/CgpUaGF0IHN0
YXQgaXMgdGhlIG1heGltdW0gbWVtb3J5IGV2ZXIgdXNlZCwgbm90IHRoZSBjdXJyZW50IHVzYWdl
ICh0aGF0CmlzIHJlcG9ydGVkIGJ5ICJiYWNrbG9nIDBiIDBwIikuIFNvIGlmIHlvdXIgcXVldWUg
ZXZlciBvdmVyZmxvd3MgaXQnbGwKYmUgYXQgaXRzIG1heGltdW0uCgotVG9rZQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApD
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9s
aXN0aW5mby9jYWtlCg==
