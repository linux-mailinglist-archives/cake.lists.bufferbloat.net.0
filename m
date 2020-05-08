Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D81561CB291
	for <lists+cake@lfdr.de>; Fri,  8 May 2020 17:12:14 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B1BF43CB39;
	Fri,  8 May 2020 11:12:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588950733;
	bh=21VmYno8RMiTSndGZfpFuO5K7cCEROk3sIhPmlX4V6E=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KCPjGw0WD3c8RJml18KZutXinIhONTPplCUA65hLVcIz0zuoxfro6leJ9VG6CECFC
	 AAYwdpIIqeks9auQDoW5g78kfNc0SgS4Eqvc4muuW4deb8/QcAqnQl/bQzWT4rfwxh
	 sTzv9xrw0WSHhh2Q/bXLM/5jOVrRdBj/0r6tWaejXxqIqmcbjcKBoMM3/udPwc+ya5
	 x2mLD7fe5Kz8Gy1Scvko6w9oGn66sVKS3KBGB5HAMlXVkA1PvipPBQJFVOCWGx2wom
	 4KDuU3n0LzAQtX/LyMPQGX/Jzl2AaYbqcf/gxlt5HTNTBzptVug6CAwqvayF18lj47
	 cEcdWw4j1y/zw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com
 [IPv6:2607:f8b0:4864:20::141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DFC363B29E
 for <cake@lists.bufferbloat.net>; Fri,  8 May 2020 11:12:11 -0400 (EDT)
Received: by mail-il1-x141.google.com with SMTP id e8so1703719ilm.7
 for <cake@lists.bufferbloat.net>; Fri, 08 May 2020 08:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=AobdXLN9zo4GvdH/dkLVlkbjw47518N9zGBvwxcHFow=;
 b=eXARyRSqq0GkRNXom+W/wpQNjKSK6/WXsAGAEcrauR3QhpCWmWsThvolxaO/U3WvRd
 bYFCek+pW5giVM/3Pf0hmTHuoAz5PyqM8nOzrrYTOVmaOxxlUGaKPjMtvL5OkNjTcW63
 QfO4+qK5K8JwqUKOFiIleD30kFU3gQc0ajAlgM5/EPXCBYQ0ACda1nLFBpgSIcGV9TNb
 27UTst73EsH+RouUb8B6q5lS+hXrnLRohVDtiVInK7M7j48Ax8aWuRv1SsHDj5HMIxl9
 R50OAuLV1DwUf0E6YM59kLrL0ig5qAGI6rptjz5xBx4vMNBpC66BFJeQTCj7cMoBlCve
 gjFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AobdXLN9zo4GvdH/dkLVlkbjw47518N9zGBvwxcHFow=;
 b=C1my2jIcD7W6rgcofchdI5NKJTaj9UtK4vrraeYMnSpQldVWa0e1uI+NyiSsskqzgi
 phAAOTD6/zADh4lZa1PgMNpdV4slpMN8iLDid91buZqwMiI2N0jVdOh3IyE9iaSXyzZp
 Yf9r9Wnd5oq3b8LTMG7yjp34IQLZvHxL84glUWEpl0tzsR0ywUbA7hHa0DNLF4nAjaqL
 Z1U8JVKocspvsRNBinsJQxPXk/iyOc7uEueV0drbMsWbrzVpVToOReQDyCVOFNd8Su8W
 rSczX4fkb4sFu720DkyGOjZ3XGHyfLDz0PgILDEWlgC52BfdaDvvLQYPuXq2kGaRe0g8
 6IEQ==
X-Gm-Message-State: AGi0PuYP76znvHu56MWByX4azlO8m4SF7nMjjVrCPFx4JCwWvrXbw+yf
 E/lY2EA/pAfnSxb9tDKymRGGJ4TQbgpnf8vjgTw=
X-Google-Smtp-Source: APiQypLyDzdaOE+N9t4mYt5QKRTwceT35hIOla6PLC0FucOsFqwfD1BriIFrW8x16JzaugjyMZgPiOugRyOk+RtrCmE=
X-Received: by 2002:a92:77c4:: with SMTP id s187mr3467430ilc.45.1588950731394; 
 Fri, 08 May 2020 08:12:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com> <87wo5okhbo.fsf@toke.dk>
 <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
 <A85845BB-010A-4F39-99F4-C6206F7FEA65@gmx.de>
 <CAC8NkTBRWrhAQneAf6ZacTzWLYyM5TqX6jmD4-fafAD=7iPgfQ@mail.gmail.com>
 <CAA93jw6xZRcUerJ8JuxjtjW2_C+wyAUKRtqDojPj6hLdg1w0Dg@mail.gmail.com>
 <875zd6h3bu.fsf@toke.dk>
In-Reply-To: <875zd6h3bu.fsf@toke.dk>
From: Dave Taht <dave.taht@gmail.com>
Date: Fri, 8 May 2020 08:11:59 -0700
Message-ID: <CAA93jw5OP3EfedB5zDPZNYdQaH+LkhUiwaLzMDbyvnTpxZdqSw@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Subject: Re: [Cake] Query on ACK
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
Cc: Avakash bhat <avakash261@gmail.com>,
 Vybhav Pai <vybhavpai1999.vp@gmail.com>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>,
 Cake List <cake@lists.bufferbloat.net>,
 "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gRnJpLCBNYXkgOCwgMjAyMCBhdCA4OjA4IEFNIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8
dG9rZUByZWRoYXQuY29tPiB3cm90ZToKPgo+IERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNv
bT4gd3JpdGVzOgo+Cj4gPiBPbiBUaHUsIE1heSA3LCAyMDIwIGF0IDExOjM2IFBNIEF2YWthc2gg
YmhhdCA8YXZha2FzaDI2MUBnbWFpbC5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gT2sgdGhhbmtzIHNv
IG11Y2ggZm9yIHRoZSBjbGFyaWZpY2F0aW9ucy4KPiA+PiBUaGF0IGNsZWFyZWQgaXQgdXAgcXVp
dGUgYSBiaXQuCj4gPgo+ID4gSSBub3RlIHRoYXQgdGhlcmUgd2FzIHNvbWV0aGluZyByZWFsbHkg
c3VidGxlIHRoYXQgY291bGQgaGF2ZSBiZWVuCj4gPiBkb25lIHRvIGltcHJvdmUgY2FrZSdzIGFj
ayBoYW5kbGluZywgYW5kIGZvciBhbGwgSSBrbm93Cj4gPiBpdCBhY3R1YWxseSBoYXBwZW5lZCBp
biB0aGUgZmluYWwgY29kZWJhc2UuCj4gPgo+ID4gc28sIHBsZWFzZSwgZ28gZm9ydGggYW5kIGR1
cGxpY2F0ZSB0aGUgZXhpc3RpbmcgaW1wbGVtZW50YXRpb24sIGFuZAo+ID4gaWdub3JlIG1lLCBj
YXVzZSBsb29raW5nIGF0IHRoaXMgaGFpcnkgY29kZSBnaXZlcyBtZSBhCj4gPiBoZWFkYWNoZS4K
PiA+Cj4gPiBhbnl3YXksIHRvIHRyeSBhbmQgZGVzY3JpYmUgd2hhdCBJIHRob3VnaHQgSSBzYXcg
YW4gaW50ZXJhY3Rpb24gd2l0aAo+ID4gdGhlIHNjaGVkdWxlciBiYWNrIGluIHRoZSBkYXkuCj4g
Pgo+ID4gVGhlIGFjay1maWx0ZXIgcnVucywgZGVsZXRpbmcgYWxsIGJ1dCBvbmUgcGFja2V0IGZy
b20gdGhlIGFjayBxdWV1ZSwKPiA+IGFuZCBkZWxpdmVycyB0aGF0Lgo+ID4gdGhlIHNjaGVkdWxl
ciBydW5zLCBzZXJ2ZXMgYSBidW5jaCBvZiBvdGhlciBmbG93cywgdGhlbiByZXR1cm5zIHRvIHRo
ZQo+ID4gYWNrIHF1ZXVlLCB3aGljaCBoYXMgYWNjdW11bGF0ZWQgYSBjb3VwbGUgbW9yZSBwYWNr
ZXRzLAo+ID4gdGhlIGFjay1maWx0ZXIgcnVucywgZGVsZXRpbmcgYWxsIGJ1dCBvbmUgcGFja2V0
IGZyb20gdGhlIGFjayBxdWV1ZSwKPiA+IGFuZCBkZWxpdmVycyB0aGF0LCBidXQgZG9lc24ndCBl
eGhhdXN0IGl0cyBxYXVudHVtCj4KPiBUaGUgQUNLIGZpbHRlciBydW5zIG9uIGVucXVldWUsIHNv
IGlmIGEgcXVldWUgaGFzIG9ubHkgQUNLcyBpbiBpdCwgaXQKPiB3aWxsIG5ldmVyIGFjY3VtdWxh
dGUgYW55dGhpbmcgaW4gdGhlIGZpcnN0IHBsYWNlLi4uCgpidXQgdGhlIHNpZGUgZWZmZWN0IGlz
IHRoYXQgb24gZGVxdWV1ZSwgaXQgZmxpcHMgaXQgaW50byB0aGUgZmFzdApxdWV1ZSBkcnIgcm90
YXRpb24sIG5vdCB0aGUgc2xvdywgc28gaXQgY2FuJ3QgYWNjdW11bGF0ZQphcyBtYW55IGFja3Mg
YmVmb3JlIGRlbGl2ZXJpbmcgdGhlIG9uZSBpdCBoYXMgbGVmdC4KCk9yIHNvIEkgdGhvdWdodCwg
d2F5IGJhY2sgd2hlbi4uLi4KCj4KPiAtVG9rZQo+CgoKLS0gCk1ha2UgTXVzaWMsIE5vdCBXYXIK
CkRhdmUgVMOkaHQKQ1RPLCBUZWtMaWJyZSwgTExDCmh0dHA6Ly93d3cudGVrbGlicmUuY29tClRl
bDogMS04MzEtNDM1LTA3MjkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
