Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB9630E875
	for <lists+cake@lfdr.de>; Thu,  4 Feb 2021 01:25:21 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E8B443CB38;
	Wed,  3 Feb 2021 19:25:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1612398319;
	bh=VCZ9dXqCvvbZdBmS4WuMq8j8DwzdJD6zhuZ2GqP6k34=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZJIieObfVHhMGmPwsZVE7H+P6/BxBJOVm39xSIBQTfKekkHSCL1818xu5bC5+JQBB
	 56aJYDZdLB1jyqAqrCJD6h7Y1lpfBEJTkVoYbnZ63PwycbVBLfuZ4zZ4n9Y45Hfm+I
	 nY2lxJHRqHuDr3BR9qFcaaeYhBGQO+RdfvCfSrTENOc9zc0z/vutW/SUoeWV7tP79J
	 HWlTbW5eh97xsR0XnZXlbLQSzBilUqh2QyK0Vkde/r9THOgqFdtsM9CXc/u3c7QkEy
	 quunm3SORccJQCvFa7y0aoW8Q6obJVPTHYlLRxZWEZj8aENyIMTAGEM8VXXG22uLDV
	 uxSzxgcOnZhMg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (unknown [66.167.227.145])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 508093B29E
 for <cake@lists.bufferbloat.net>; Wed,  3 Feb 2021 19:25:18 -0500 (EST)
Received: from dlang-laptop.lan (unknown [10.2.0.222])
 by mail.lang.hm (Postfix) with ESMTP id 93541E53AB;
 Wed,  3 Feb 2021 16:15:58 -0800 (PST)
Date: Wed, 3 Feb 2021 16:15:53 -0800 (PST)
From: David Lang <david@lang.hm>
X-X-Sender: dlang@dlang-laptop
To: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <91BCCD0A-BE88-49A8-AEE0-960A1B363A9D@gmail.com>
Message-ID: <nycvar.QRO.7.76.6.2102031612380.10981@qynat-yncgbc>
References: <nycvar.QRO.7.76.6.2102031317110.10981@qynat-yncgbc>
 <91BCCD0A-BE88-49A8-AEE0-960A1B363A9D@gmail.com>
User-Agent: Alpine 2.21.1 (DEB 209 2017-03-23)
MIME-Version: 1.0
Subject: Re: [Cake] bringing up a new router/connection
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
Cc: cake@lists.bufferbloat.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCA0IEZlYiAyMDIxLCBKb25hdGhhbiBNb3J0b24gd3JvdGU6Cgo+PiBPbiAzIEZlYiwg
MjAyMSwgYXQgMTE6MjQgcG0sIERhdmlkIExhbmcgPGRhdmlkQGxhbmcuaG0+IHdyb3RlOgo+Pgo+
PiB3aGVuIHBsdWdnZWQgZGlyZWN0bHkgaW50byB0aGUgSVNQIHJvdXRlciwgSSBhbSBnZXR0aW5n
IHRoZSBhZHZlcnRpc2VkIHNwZWVkcywgd2hlbiBnb2luZyB0aHJvdWdoIHRoZSBjMjYwMCBJIHRv
cCBvdXQgYXQgMjAwLTMwME1iIGRvd25sb2FkIGFuZCAxMC0xNW1iIHVwbG9hZAo+Cj4gVGhhdCBz
b3VuZHMgYWJvdXQgcmlnaHQgZm9yIGEgY29uc3VtZXIgQ1BFIHJvdXRlci4gIEkgYmVsaWV2ZSB0
aGVyZSBpcyB1c3VhbGx5IGEgaGFyZHdhcmUgYm90dGxlbmVjayBiZXR3ZWVuIHRoZSBTb0MgYW5k
IHRoZSBFdGhlcm5ldCBjb21wbGV4IHRoYXQgaXMgc2lnbmlmaWNhbnRseSBuYXJyb3dlciB0aGFu
IHRoZSBFdGhlcm5ldCBwb3J0cyBhbmQgc3dpdGNoIGZhYnJpYy4gIE9uY2UgdGhlIGRvd25zdHJl
YW0gZ2V0cyBzYXR1cmF0ZWQgdGhlcmUgaXMgYWxzbyBubyByb29tIGZvciB1cHN0cmVhbSB0cmFm
ZmljLgoKbm90ZSB0aGlzIGlzIHN0aWxsIHdpdGhvdXQgY2FrZSwgYW5kIG5laXRoZXIgY29yZSBz
ZWVtcyB0byBiZSBzYXR1cmF0ZWQgeWV0LgoKSSBkbyBoYXZlIGEgVHVycmlzIE9tbmkgdGhhdCBJ
IHBsYW4gdG8gbW92ZSB0aGlzIHRvLCBidXQgSSB3YXMgZXhwZWN0aW5nIHRoaXMgCm9uZSB0byBn
aXZlIG1lIHJlYXNvbmFibGUgc3BlZWRzIG9uIGp1c3QgYSByYXcgY29ubmVjdGlvbi4KCkkgd2ls
bCBuZWVkIGEgZGV2aWNlIHdpdGggYXQgbGVhc3QgMyBldGhlcm5ldCBwb3J0cyAoRFNMLCBjYWJs
bW9kZW0sIExBTikKCkRhdmlkIExhbmcKCj4gWW91IGNvdWxkIHNldCBpdCB1cCBmb3IgMTAwTWJp
dCBkb3duLCAyNU1iaXQgdXAgdXNpbmcgQ2FrZSwgYW5kIHNlZSBob3cgdGhhdCB3b3Jrcy4gIEl0
J2xsIGJlIGEgbWFqb3IgaW1wcm92ZW1lbnQgb3ZlciA4LzEgRFNMLCBldmVuIGlmIGl0IGlzbid0
IHVzaW5nIHRoZSBmdWxsIGFkdmVydGlzZWQgY2FwYWNpdHkgb2YgdGhlIGNhYmxlLgo+Cj4gT25l
IGRldmljZSB0aGF0IHNob3VsZCBiZSBhYmxlIHRvIGtlZXAgdXAgaXMgYSBSYXNwYmVycnkgUGkg
NCAobm90IHRoZSBlYXJsaWVyIHZlcnNpb25zKSBzdXBwbGVtZW50ZWQgd2l0aCBhIFVTQjMtYXR0
YWNoZWQgR2lnRSBkb25nbGUuICBQZXRlIEhlaXN0IGhhcyBlc3RhYmxpc2hlZCB0aGF0IGl0IGNh
biBzdXN0YWluIDYwME1iaXQgdGhyb3VnaCBDYWtlIHdpdGhvdXQgbXVjaCBDUFUgbG9hZCBvciBh
ZGRlZCBsYXRlbmN5LiAgQWJvdmUgdGhhdCBsZXZlbCB0aGUgY2hhcmFjdGVyaXN0aWNzIGRvIGRl
Z3JhZGUgYSBiaXQuCj4KPiAtIEpvbmF0aGFuIE1vcnRvbgo+Cj4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=
