Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD3930E4E4
	for <lists+cake@lfdr.de>; Wed,  3 Feb 2021 22:24:41 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F1E7E3CB38;
	Wed,  3 Feb 2021 16:24:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1612387480;
	bh=/UHsFgkRtYflaEwtcHSvyg0Fh66rkY2sgv4w9B9Nsvg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=d93SXgm7bTme8VAgg6GRk1fYvZeU1tmfuHW1kC9ybAXX51n7BkcBe9Kspm7yogMN8
	 2bi+/h0FI8SyElxlJCw9XYE3VR7E/545gI1n6I3zA3jTv+6fE+9OIIE5oRcE1rJEgc
	 MARYIf515lw457cHZ4xIdCA4ngWY+Zfmy74oARTGSo/4TbvoO1DhRcHlBVnWOhQmtn
	 copzxtIDGsTIygox9WtUH3O/5N8tUCdRAkFJoFt4SVs1RDScbuN358p7sNZKua7PTJ
	 YS/Ufkr94mq6w+imSjFDYavhK4/fn1NqLtw10ob/jktFth65f4vilM9bwoyXkeJz0S
	 Zm+UT9FpNUyZA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (unknown [66.167.227.145])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B1D283B29E
 for <cake@lists.bufferbloat.net>; Wed,  3 Feb 2021 16:24:38 -0500 (EST)
Received: from dlang-laptop.lan (unknown [10.2.0.222])
 by mail.lang.hm (Postfix) with ESMTP id 5642EE5359
 for <cake@lists.bufferbloat.net>; Wed,  3 Feb 2021 13:24:37 -0800 (PST)
Date: Wed, 3 Feb 2021 13:24:32 -0800 (PST)
From: David Lang <david@lang.hm>
X-X-Sender: dlang@dlang-laptop
To: cake@lists.bufferbloat.net
Message-ID: <nycvar.QRO.7.76.6.2102031317110.10981@qynat-yncgbc>
User-Agent: Alpine 2.21.1 (DEB 209 2017-03-23)
MIME-Version: 1.0
Subject: [Cake] bringing up a new router/connection
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

SSBmaW5hbGx5IGdvdCBhIGRlY2VudCBzcGVlZCBjb25uZWN0aW9uIChjYWJsZW1vZGVtIDYwMC8z
NSkgdG8gc3VwcGxlbWVudCBteSBkc2wgCig4LzEpIGFuZCBhbSB0cnlpbmcgdG8gdGVzdCBpdCdz
IGN1cnJlbnQgcGVyZm9ybWFuY2UgYmVmb3JlIEkgaW5zdGFsbC9jb25maWd1cmUgCmNha2UgYW5k
IGFtIHJ1bm5pbmcgaW50byBzb21lIGdyaWVmLiBJIGFtIGhvcGluZyB0byBnZXQgc29tZSBwb2lu
dGVycyB0byBmaW5kIAp0aGUgYm90dGxlbmVjay4KCnRoZSBJU1AgZGV2aWNlcyBoYXZlIGJhZCBi
dWZmZXJibG9hdCwgcGluZyB0aW1lcyBnbyBmcm9tIH4yMG1zIHRvIDguOC44LjggdG8gdCAKbGVh
c3QgMTIwbXMsIGFuZCBJIHNhdyBvbmUgdGltZSB3aGVuIHRoZXkgd2VudCB0byAxMjAwbXMKCkkn
bSB1c2luZyBhIGMyNjAwIHJvdXRlciBydW5uaW5nIHRoZSBjdXJyZW50IG9wZW53cnQgCmh0dHBz
Oi8vb3BlbndydC5vcmcvdG9oL3RwLWxpbmsvdHAtbGlua19hcmNoZXJfYzI2MDBfdjEgYW5kIGhh
dmUgbXdhbjMgCmNvbmZpZ3VyZWQgdG8gcHJvdmlkZSBmYWlsb3ZlciBiZXR3ZWVuIG15IHdhbiBj
b25uZWN0aW9ucy4KCkkgaGF2ZSBhIGJsb2NrIG9mIHN0YXRpYyBhZGRyZXNzZXMgZm9yIHRoZSBy
b3V0ZXIgd2l0aCB0aGUgSVNQIHJvdXRlciBpbiBicmlkZ2UgCm1vZGUKCndoZW4gcGx1Z2dlZCBk
aXJlY3RseSBpbnRvIHRoZSBJU1Agcm91dGVyLCBJIGFtIGdldHRpbmcgdGhlIGFkdmVydGlzZWQg
c3BlZWRzLCAKd2hlbiBnb2luZyB0aHJvdWdoIHRoZSBjMjYwMCBJIHRvcCBvdXQgYXQgMjAwLTMw
ME1iIGRvd25sb2FkIGFuZCAxMC0xNW1iIHVwbG9hZAoKZXRoMC4yIGlzIHRoZSBoaWdoIHNwZWVk
IGNhYmxlbW9kZW0KCiMgdGMgcWRpc2MKcWRpc2Mgbm9xdWV1ZSAwOiBkZXYgbG8gcm9vdCByZWZj
bnQgMgpxZGlzYyBtcSAwOiBkZXYgZXRoMCByb290CnFkaXNjIGZxX2NvZGVsIDA6IGRldiBldGgw
IHBhcmVudCA6MSBsaW1pdCAxMDI0MHAgZmxvd3MgMTAyNCBxdWFudHVtIDE1MTQgdGFyZ2V0IAo1
LjBtcyBpbnRlcnZhbCAxMDAuMG1zIG1lbW9yeV9saW1pdCA0TWIgZWNuCnFkaXNjIG1xIDA6IGRl
diBldGgxIHJvb3QKcWRpc2MgZnFfY29kZWwgMDogZGV2IGV0aDEgcGFyZW50IDoxIGxpbWl0IDEw
MjQwcCBmbG93cyAxMDI0IHF1YW50dW0gMTUxNCB0YXJnZXQgCjUuMG1zIGludGVydmFsIDEwMC4w
bXMgbWVtb3J5X2xpbWl0IDRNYiBlY24KcWRpc2Mgbm9xdWV1ZSAwOiBkZXYgYnItbGFuIHJvb3Qg
cmVmY250IDIKcWRpc2Mgbm9xdWV1ZSAwOiBkZXYgZXRoMS4xIHJvb3QgcmVmY250IDIKcWRpc2Mg
bm9xdWV1ZSAwOiBkZXYgZXRoMC40IHJvb3QgcmVmY250IDIKcWRpc2Mgbm9xdWV1ZSAwOiBkZXYg
d2xhbjAgcm9vdCByZWZjbnQgMgpxZGlzYyBub3F1ZXVlIDA6IGRldiBldGgwLjIgcm9vdCByZWZj
bnQgMgoKRGF2aWQgTGFuZwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
