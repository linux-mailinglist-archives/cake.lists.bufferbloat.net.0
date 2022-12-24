Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 75891655AFC
	for <lists+cake@lfdr.de>; Sat, 24 Dec 2022 19:52:11 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4D3F93CB40;
	Sat, 24 Dec 2022 13:52:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1671907929;
	bh=Q4xXZQJ5zyPmQAg3qIF2AJrERLkybI+n1pRZKmNxL50=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=RaZjsicuBaQG2trv0v7Rch6AWetctcw1JaPtTNSKy1GJU9OGI6gXeC60qDMRTW7TV
	 NHksnhD3tOcokNSUJPDrNHCwyK/iFhsHbzbXbwGFidnE9nLS1TUIKEquWzhwHSPA8E
	 rJRVwp4W4JFTN2E4ataC9UEKqY99+iwbD+GrYlq8vefM9dXtzaOoQb77dxTrkdno6e
	 eBzxJcRmcv3EgQ/cDYynRHITWskGGgYgplSpwGami6UMJblZnr1Y1SsxOOu4O0YB+x
	 bkdlUc0ORuRI5vBGcZ1+yKkfllyHHfa1KT7RUz8M3oAvDt0mRHIWxzqXGbOwKeRncq
	 uNwKOXyI/nYGg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.as201155.net (mail.as201155.net [185.84.6.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EECF93B2A4
 for <cake@lists.bufferbloat.net>; Sat, 24 Dec 2022 13:52:07 -0500 (EST)
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]:58862
 helo=webmail.newmedia-net.de)
 by mail.as201155.net with esmtps (TLS1) tls TLS_DHE_RSA_WITH_AES_256_CBC_SHA
 (Exim 4.95) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1p99cq-0007T2-2a for cake@lists.bufferbloat.net;
 Sat, 24 Dec 2022 19:52:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID;
 bh=CSrmReILgvP1fbxE7q31/+mxR7aAGenK8W/YuvppB0M=; 
 b=b1RVq4Fe1GkhP6s6pERilGaAHHZAOj45V6XUQ2VdrRaWzk+tWM1E6glGS8uIoGeZvUHc/X3w8ayt3m1KlA6L6UlR48pxoh+gUtXXOulI/O6JinLM8gzCYk2TslPBUoeNm8j7bHp7zOYhelyJwu0VLgR9l2Lah26Nvmeufnpik1s=;
Message-ID: <0b8ef844-5c23-d8d9-0207-38fc2a0105c6@newmedia-net.de>
Date: Sat, 24 Dec 2022 19:52:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101
 Thunderbird/109.0
To: cake@lists.bufferbloat.net
References: <B48E5791-DFD7-4EFF-8B7E-4626CE89954B@gmx.de>
 <CAA93jw7JBZJLPZgW4sBPTqQ+1zpxsJAV4+zSw6--CBXaZE3Rdg@mail.gmail.com>
In-Reply-To: <CAA93jw7JBZJLPZgW4sBPTqQ+1zpxsJAV4+zSw6--CBXaZE3Rdg@mail.gmail.com>
X-Received: from [81.201.155.134] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1p99cq-000DkU-Ge
 for cake@lists.bufferbloat.net; Sat, 24 Dec 2022 19:52:04 +0100
Subject: Re: [Cake] AVM seems to be shipping cake
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
From: Sebastian Gottschall via Cake <cake@lists.bufferbloat.net>
Reply-To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

dGhlcmUgYXJlIGp1c3QgMTk1CgpBbSAyMC4xMi4yMDIyIHVtIDE3OjEyIHNjaHJpZWIgRGF2ZSBU
YWh0IHZpYSBDYWtlOgo+IFlheSEgMjYwIG1vcmUgY291bnRyaWVzIHRvIGdvIQo+Cj4gT24gVHVl
LCBEZWMgMjAsIDIwMjIgYXQgNzo0NiBBTSBTZWJhc3RpYW4gTW9lbGxlciB2aWEgQ2FrZQo+IDxj
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cj4+IERlYXIgYWxsLAo+Pgo+PiBqdXN0
IGhhZCBhIGxvb2sgaW4gYSByZWNlbnQgZmlybXdhcmUgYXJjaGl2ZSBmb3IgQVZNJ3MgZnJpdHpi
b3ggNzUzMCwgYW5kICdzdHJpbmdzIGRzbGQnIChkc2xkIGlzIEFWTSdzIHNpbmdsZSBibG9iICJt
YWdpYyBiaW5hcnkgZHNsIGRlYW1vbiIgdGhhdCBlbmNhcHN1bGF0ZXMgYSBsb3Qgb2YgdGhlaXIg
dmFsdWUgcHJvcG9zaXRpb24pIHJldmVhbHMgdGhhdCB0aGV5IGxpa2VseSBhcmUgdXNpbmcgY2Fr
ZSo6Cj4+Cj4+IHFkaXNjIGFkZCBkZXYgJXMgaGFuZGxlIDEwOjAgcm9vdCBjYWtlIGJhbmR3aWR0
aCAldWtiaXQgYmVzdGVmZm9ydCAlcyAlcyBkdWFsLWRzdGhvc3QgaW5ncmVzcwo+PiBxZGlzYyBh
ZGQgZGV2ICVzIGhhbmRsZSAxMDowIHJvb3QgY2FrZSBiYW5kd2lkdGggJXVrYml0IGJlc3RlZmZv
cnQgb3ZlcmhlYWQgJWQgZHVhbC1kc3Rob3N0IGluZ3Jlc3MKPj4KPj4KPj4gSSBmYWlsZWQgdG8g
ZmluZCB0aGUgbWF0Y2hpbmcgZHVhbC1zcmNob3N0IGVudHJ5IHNvIHRoZXkgbWlnaHQgdXNlIHNv
bWV0aGluZyBlbHNlIGZvciBlZ3Jlc3MuIEkgaGF2ZSBubyBpbnNpZ2h0IHdoZXRoZXIvaG93IHRo
aXMgY2FuIGJlIGFjdGlhdGVkIChub3QgdXNpbmcgYSBmYjc1MzAgbXlzZWxmKSwgYnV0IGF0IGxl
YXN0IHRoaXMgaXMgbWFraW5nIGl0IG91dCB0byB0aGUgdW53YXNoZWQgbWFzc2VzIGluIEdlcm1h
bnkuLi4gKFRoZSBGQjc1MzAgaXMgdGhlICJ2YWx1ZSIgYm94IGZvciB0aGUgbW9zdCByZWNlbnQg
RFNMIHZhcmlhbnQgZGVwbG95ZWQgaW4gR2VybWFueSwgcHJvZmlsZSAzNWIgdmVjdG9yaW5nLCBz
b2xkIHVuZGVyIHRoZSBtb25pa2VyICJzdXBlci12ZWN0b3JpbmciKS4KPj4KPj4KPj4gKikgbWFr
ZXMgc2Vuc2Ugc29tZSBtb250aHMgYWdvIHRoZXkgcG9zdGVkIGEgdmlkZW8gcHJvbWlzaW5nIGVu
aGFuY2VzIGZhaXJuZXNzIGZvciBpbnRlcm5hbCB1c2VycywgSSB3YXMgcHV6emxlZCBhdCB0aGUg
dGltZSBob3cgdGhleSB3b3VsZCBpbXBsZW1lbnQgdGhhdCwgYnV0IGl0IHNlZW1zIHRoYXQgdGhl
eSBkaWQgbm90IHJlLWludmVudCB0aGUgd2hlZWwgaGVyZSBidXQgd2VudCBmb3IKPj4KPj4gUmVn
YXJkcwo+PiAgICAgICAgICBTZWJhc3RpYW4KPj4KPj4gUC5TLjogVG8gbXkgam95IHRoZXkgYWxz
byBzZWVtIHRvIGRpbGlnZW50bHkgc2V0IG92ZXJoZWFkLCBmb3IgdGhlaXIgSFRCL1RCRiBpbnN0
YW5jZXMgdXNpbmcgdGMtc3RhYi4uLgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+PiBDYWtlIG1haWxpbmcgbGlzdAo+PiBDYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldAo+PiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtl
Cj4KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtl
IG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
