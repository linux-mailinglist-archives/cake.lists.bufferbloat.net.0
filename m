Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 211EE22C518
	for <lists+cake@lfdr.de>; Fri, 24 Jul 2020 14:26:09 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 984FB3CB38;
	Fri, 24 Jul 2020 08:26:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595593567;
	bh=CdiyVFoBBMAviluDvmC/oTkcn6z9qvY3pHvAxjXQLGY=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=ioMdWQwgbS+yzhk0zGt29pVeds4IWsSde/R8GCAUpMSTjOcHfDhm1XDyqgeZV+rbm
	 lVI0Bzha9nFtHZeWIL8iDfJhKP+PwQPlhyfRec+U7pMSSJ0BuvPe9yVs8YxKflKj9q
	 wuO+AqZDBZ29ZQAaIXILY0xvs/w4Yy97JL5AAFCoTWnmD+1G/xZhTHnGE2wO2jp1AV
	 AWTp5X5VXT1IXqA+doXkVSoRPm6H+rklX50mTlp6GbIdUxy4d93syM9PBscgcKi2Vr
	 h1MsFmh8WayADIwAgodzFfiqDGe/9ad8vUUkWgdVScF/rMxAfTc+oKtLvXs6AniNmp
	 rlhsQtVTNZd2Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 463B13B2A4
 for <cake@lists.bufferbloat.net>; Fri, 24 Jul 2020 08:26:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1595593563; bh=hcMkdRHpG5eiJo5rzuwhu533OSGwU1GYfl6ULEf2E/8=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=yz6ctLmnRbaihb40BMGCiiz1r2GZNUyFEFRizOCbKNAd00YNSwIsRVeraCCv6ZjgT
 rpK0R8PHW5xRTPmodaxn3r4l4qifgEZKTJmyWAlyVBAOvzHE/PULRZOOLiLZ9+RDq6
 L4NTGOziedpX1OrteYtPh1ziJBObiv5J3u+bQFE/TKaFNohMahRw7HPItnvXVIgCsQ
 9Js+n8wYlK2tTtlxOR5oR7bxQLm+TA5G1lsl6DYzGbofEfCLnSERJZVnDXH0Jc1HSX
 1IQtJFbf+hHRZj/tv0f4d7widhLSLnJxzNjPEj0CqB8t+8b7CMZu0VXh/0dSVvPCLP
 g29gpBXkgWNRA==
To: Luca Muscariello <muscariello@ieee.org>,
 Cake List <cake@lists.bufferbloat.net>
In-Reply-To: <CAH8sseTbx=f4EsAw1cF7JiJNWytM+1_DRS98W=fAQtOyPYG1XQ@mail.gmail.com>
References: <CAH8sseTbx=f4EsAw1cF7JiJNWytM+1_DRS98W=fAQtOyPYG1XQ@mail.gmail.com>
Date: Fri, 24 Jul 2020 14:26:01 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87lfj95cbq.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] quantum configuration
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

THVjYSBNdXNjYXJpZWxsbyA8bXVzY2FyaWVsbG9AaWVlZS5vcmc+IHdyaXRlczoKCj4gSXMgdGhl
cmUgYSByZWFzb24gd2h5IGluIGNha2UgdGhlIHF1YW50dW0gY2Fubm90IGJlIGNvbmZpZ3VyZWQg
dG8gYQo+IGRpZmZlcmVudCB2YWx1ZSBsaWtlIGluIGZxX2NvZGVsPwoKSSB0aGluayB0aGlzIHdh
cyBtb3N0bHkgdG8gYmUgYXMgbm8ta25vYiBhcyBwb3NzaWJsZTsgc28gdGhlIHF1YW50dW0gaXMK
YXV0by1zY2FsZWQgd2l0aCB0aGUgdGluIGJhbmR3aWR0aHMsIGluc3RlYWQgb2YgYmVpbmcgY29u
ZmlndXJhYmxlLgoKSm9uYXRoYW4gY2FuIHByb2JhYmx5IGV4cGFuZCBvbiB0aGlzLi4uCgotVG9r
ZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1h
aWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
