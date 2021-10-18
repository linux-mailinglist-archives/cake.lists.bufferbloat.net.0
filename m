Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 79753431A4F
	for <lists+cake@lfdr.de>; Mon, 18 Oct 2021 15:02:19 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6296D3CB61;
	Mon, 18 Oct 2021 09:02:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634562136;
	bh=Bp7OZc0ikw1SyHlv7eZIx+/MQkMDb+UzZ+wVK97wTik=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=IIAgitBCvaHfcRLobcPhqNPSRtdO3w9ZD7wj/zuv5rY2r2b6818Swru7pnPSRmiuI
	 AwdhYmo0KTFNbl70vHpwU4RYWv1D0UWlrnTsYmsd6WCAFlHOqVkjlhcohNtbPJdAPE
	 DLbrNlJF1b6KVKJpt3GsXYmYYk0tHw/mMS4m88zxBPACWWxZfKYZ9MJcRs0ACiHnGu
	 RhGsD5VsT0lsdclVCDwfiYLhU9aSYnZHw21Yf3ydMC4IqIkAg9DyX+G8d+OA9vUp02
	 iFrG6fU8GzIT/8lvjCwFMz8wx7pk6Nq731SY7yTJattPuAhSHekLXJK3iEoGqhKQgO
	 fA5O8msL4h5Nw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2C7443B2A4;
 Mon, 18 Oct 2021 09:02:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1634562129; bh=S50gYepILtjGKyBRIzuw23u9IevaX3aRyBxtgsIyEJE=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=Ug46UbsQuMOTUyKQGyAwCDQhy4md1aoqiFr2FR/en6XarzHMA10R9W3yLBhqZUFZs
 hXpt7C1aMD8jT0k9myDa5m/cfJ1oiERiCu0ZNM3Xl0H20AQQG+g1qeHeJhAxznQ9hr
 U4VN+eEgkYrx1fhWJZG6pm1nEuYxE8qwyy4Azd7NIvHjpaGIpxaUitf8+cGZvOY2po
 1q10M5Cau5VWwYPekcL0/pxq1ceSKUk3xr42WqgZfGhsQsuiCPu3DOosWPX1gZQggb
 SkM76uxczZtIiRpOYYDQeMdRi6oDRAEbsLPNEX7Jk1HSCJF8GwBC/pyDy3z/5vXByi
 cc5HJxPQhTAvg==
To: Dave Taht <dave.taht@gmail.com>
In-Reply-To: <CAA93jw7kwCc9HmfA7X4BzSCS+9UgngXj31d3gb7Aw=XQtQHZMA@mail.gmail.com>
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
 <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
 <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
 <87sfx31dt5.fsf@toke.dk>
 <CAA93jw43kC8a4_8YL3dobgvpkLO5UPbOm8yeFvwhh0dgV9eiuw@mail.gmail.com>
 <87pms71cmr.fsf@toke.dk>
 <CAA93jw7VVX_6UxyqczSZ3YoDRo9QvRZTqWqY9+0PC=rOB7FjeQ@mail.gmail.com>
 <CAA93jw7kwCc9HmfA7X4BzSCS+9UgngXj31d3gb7Aw=XQtQHZMA@mail.gmail.com>
Date: Mon, 18 Oct 2021 15:02:09 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <878ryqjxke.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [Ecn-sane]  l4s kernel submission
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Cc: Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cml0ZXM6Cgo+IEFuIG9wZW4gcXVlc3Rp
b24gZm9yIG1lOgo+Cj4gV2hhdCBoYXBwZW5zIHdoZW4gYSBHU08gcGFja2V0IGlzIG1hcmtlZD8g
RG8gYWxsIHRoZSBwYWNrZXRzIGdldCB0aGUKPiBtYXJraW5nLCBvciBqdXN0IHRoZSBmaXJzdD8K
CldoZW4gc2VnbWVudGluZyBhIEdTTyBwYWNrZXQsIHRoZSBJUCBoZWFkZXIgaXMgY29waWVkIHRv
IGFsbCBzZWdtZW50cy4KVGhlIGNvZGUgaGFzIGdyb3duIHF1aXRlIGNvbXBsZXggb3ZlciB0aGUg
eWVhcnMsIGJ1dCBpdCdzIGVhc2llciB0byBzZWUKaW4gdGhlIG9yaWdpbmFsIHN1Ym1pc3Npb24g
ZnJvbSAyMDA2OgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMDYwNjIyMDgxNDAwLkdD
MjI2NzFAZ29uZG9yLmFwYW5hLm9yZy5hdS8KCldoaWNoIG1lYW5zIGFsbCBwYWNrZXRzIGluIGEg
R1NPIHNlZ21lbnQgd2lsbCBlbmQgdXAgbWFya2VkIG9uIHRoZQp3aXJlLi4uCgotVG9rZQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldC9saXN0aW5mby9jYWtlCg==
