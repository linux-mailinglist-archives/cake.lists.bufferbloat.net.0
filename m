Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0C4105C5A
	for <lists+cake@lfdr.de>; Thu, 21 Nov 2019 22:53:40 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6D6663CB38;
	Thu, 21 Nov 2019 16:53:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1574373219;
	bh=o+m8OQG4Jp6aRBCY2eIiF5bWQoxJVkpGiPfcGtA5Z50=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nquUaYoiClGTgFiiFWojy+TqlAK6lnV+XFyEsIq15DtfBX1ZSVjwXIQS//IYygH3g
	 jDrnWcuPxI7EERBsvBshsmLQ4RZFNiYjVDlZF4dWGg6hqjblBie5wBAaiptIMYBClD
	 P9GP4Ylga3c4Nrs1UXxg8mBzxDPJ6ngcGTBwT/C3iK+/0c77nb8P38T15zn7UcIYmL
	 MuH/oh44kcQY8LrWbwxuKiLaXgGxlaW+2bKZx40NyEt6HrLNDj/qcBOrytes/5szi5
	 wQjG1CN2CkiZUnCYOEbrHayKIwD3l12lkVv+NADse/Bw22TOtvFgHnct+xbeYPAnLO
	 GvJ649SLstf1Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com
 [IPv6:2607:f8b0:4864:20::d2d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 45F163B29E
 for <cake@lists.bufferbloat.net>; Thu, 21 Nov 2019 16:53:38 -0500 (EST)
Received: by mail-io1-xd2d.google.com with SMTP id k13so5306500ioa.9
 for <cake@lists.bufferbloat.net>; Thu, 21 Nov 2019 13:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=I1iBAqwwKUzfSJbIjEBbmro2TquTlAxaahQlGU04x4M=;
 b=c2ybk1XqQ5NhCC0goBr8g1uQe9AkxiRKA08Z0f7stndeZNANbs2uKS+EMs7l6pBoxJ
 xHZwmsQoppF1dONIvjYP3uNzhb0nmZUowIpJkXOr+rZb+W3iuTItwdAGeCdBK8vmLUe7
 shF8rXTG5j45W7F/BS2MWpbIfrDnnWGTjGSaCqA8lad2zY3JpDPJh45PPbbVS/0m62u8
 fsvcwWYDl6s0nTRo0yFdVDdGoDaDjNTBWsqgQwAxpGHsCeFcG4wikOy/M/HaaUqsTPZD
 3xNMzngM5bmlWKQEbqxbUIWNIc3B5sTzdtPjzu8V+NuZNujMro5n37dgzeWdbA0g4Izr
 qrrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=I1iBAqwwKUzfSJbIjEBbmro2TquTlAxaahQlGU04x4M=;
 b=F5L9yubhrgsCT5IX67WH9NWre3i8THxWpW8jEx8HXhq7LjXWuhA+43KuABrBiQ0Ksw
 Nu4WIDfunV0+3FpzcXpjSKDv/uG4VeJy1CBW0StrOzpy8Q0jW8XwU2HfGc/3t54n/kzM
 k3kbccVr7lmlDumYZu3l5csKI2QuQxMuGiJfqiY75Qh+qgqvlmeEjqDa2+bOwnTp0xMr
 8LVQkWrsdXFcXbXeeJmowHK6XcmIcFi5GMfQEA0eopAZHINP2WjluYz6s18vPn9INTiz
 iNqAHCjlQEKHhLDIX1RPHCL9JfDBb0sglafe0DB7QGjxHkn0AOsXCih8jePj+G16wZ6c
 P8pA==
X-Gm-Message-State: APjAAAXcJi/WkYn2ehvDoandNuiTnKQ13sz6dB+OlLJDlWnKtVwUs4oh
 WLbFUR1czBeWHykitZLpjqgZf5xdmE7Cyw5C23aCoskNYns=
X-Google-Smtp-Source: APXvYqyuBFYa69rKtMrbh16WJ0SucB52f5S7vXkpienHbfQUIg+UCsV97AYXKYYvxDz1kVp5Jpvs0k+9/ajqykx93tQ=
X-Received: by 2002:a02:92c4:: with SMTP id c4mr4701617jah.61.1574373217460;
 Thu, 21 Nov 2019 13:53:37 -0800 (PST)
MIME-Version: 1.0
References: <em287ad38a-b2b3-4e82-9836-99fab879ad14@adam-pc>
In-Reply-To: <em287ad38a-b2b3-4e82-9836-99fab879ad14@adam-pc>
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 21 Nov 2019 13:53:26 -0800
Message-ID: <CAA93jw4N_-5bui532Ad5QwGn=GH2CnqWYm=BRn75Fgo93R6aJw@mail.gmail.com>
To: Adam Moffett <adam@plexicomm.net>
Subject: Re: [Cake] Cake implementations
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCBOb3YgMjEsIDIwMTkgYXQgMTowNSBQTSBBZGFtIE1vZmZldHQgPGFkYW1AcGxleGlj
b21tLm5ldD4gd3JvdGU6Cj4KPiBBIGNvbGxlYWd1ZSBqdXN0IHR1cm5lZCBtZSBvbnRvIENha2Uu
Cj4KPiBNeSBpbXByZXNzaW9uIGlzIHRoYXQgdGhpcyBpcyBhIHJlc2VhcmNoIHByb2plY3QsIGFu
ZCB0aGF0IHRoZSBob3BlIGlzIGZvciBjb21tZXJjaWFsIHByb2R1Y3RzIHRvIGltcGxlbWVudCBj
YWtlIGFsZ29yaXRobXMgaW4gdGhlaXIgZXF1aXBtZW50LiAgSXMgdGhhdCBhYm91dCByaWdodD8K
Ckl0IGVzc2VudGlhbGx5IHdlbnQgcHJvZHVjdGlvbiB3aXRoIHRoZSByZWxlYXNlIG9mIG9wZW53
cnQgMTguNiwgYW5kCmluY29ycG9yYXRpb24gaW50byBsaW51eCBtYWlubGluZSBhcyBvZiB2ZXJz
aW9uIDQuMTkgaW4gYXVndXN0IG9mIGxhc3QKeWVhci4KCkNlcnRhaW5seSBieSBwdWJsaXNoaW5n
IHRoZSBhbGdvcml0aG1zIGFuZCBhbmFseXNlcyAoYXMgd2VsbCBhcyB0aGUKY29kZSB1bmRlciBk
dWFsIGdwbC9ic2QpIHdlIGhvcGVkIHRvIHNlZSBzb21lIHVwdGFrZSBvdXRzaWRlIG9mIGxpbnV4
LgpodHRwczovL2FyeGl2Lm9yZy9wZGYvMTgwNC4wNzYxNy5wZGYgaXMgb25lIGZvIHRoZSB0d28g
bWFpbiBwYXBlcnMgb24KaXQuCgpDYWtlIGlzIHRoZSB3cmFwIHVwIG9mIDggeWVhcnMgb2YgZGV2
ZWxvcG1lbnQgb2YgdGhlIFNRTSAocW9zKSBzeXN0ZW0KKHdoaWNoIHdhcyBodGIrZnFfY29kZWwp
LiBEZXJpdmF0aXZlcyBvZiBTUU0gYXJlIHZlcnkgd2lkZWx5IGRlcGxveWVkCndpdGggbWFueSBs
b29rYWxpa2VzIChib3RoIGluIGxpbnV4IGFuZCBic2QpIHVuZGVyIHZhcmlvdXMgdHJhZGUgbmFt
ZXMKbGlrZSAiYWRhcHRpdmUgcW9zIiBvciAiYW50aS1idWZmZXJibG9hdCIuIFdlIHRpcmVkIG9m
IHNvbWUgb2YgdGhvc2UKZGVyaXZhdGl2ZXMncyBpc3N1ZXMgYW5kIHdlbnQgZm9yIHRoZSBiZXN0
IG9mIHRoZSBiZXN0IGlkZWFzIGZyb20gdGhlCnNxbSBkZXBsb3ltZW50LiBTb21lIGFyZSB3cml0
dGVuIHVwIGhlcmU6CgpodHRwczovL2FyeGl2Lm9yZy9wZGYvMTgwNC4wNzYxNy5wZGYgLSBvZiBu
b3RlIGFyZSBhIHJldmlzZWQgY29kZWwKYWxnb3JpdGhtLCBwZXIgaG9zdC9wZXIgZmxvdyBmcSAo
cHJvYmFibHkgdGhlIG1vc3QgcmVxdWVzdGVkIGZlYXR1cmUpLAphbmQgYWNrLWZpbHRlcmluZywg
d3JhcHBlZCB1cCBpbiBhIHNoYXBlciBkZXNpZ25lZCB0byBkZWZlYXQgaHRiIGJhc2VkCm9uZXMu
CgpTdGlsbCB0aGUgbWFpbiAob3V0c2lkZSBvZiBsaW51eCkgY2FrZSByZXBvIGlzIGJlaW5nIHVz
ZWQgZm9yCmFkZGl0aW9uYWwgYWR2YW5jZWQgcmVzZWFyY2gsIG5vdGFibHkgbm93YWRheXMgaW50
byB0aGUgU0NFIC0gInNvbWUKY29uZ2VzdGlvbiBleHBlcmllbmNlZCIgY29uY2VwdCAtIGNpcmN1
bGF0aW5nIHdpdGhpbiB0aGUgaWV0Zi4KaHR0cHM6Ly90b29scy5pZXRmLm9yZy9odG1sL2RyYWZ0
LW1vcnRvbi10c3Z3Zy1zY2UtMDEgLSBhbmQKCkhvbmVzdGx5IG15IGhvcGUgaGFzIGJlZW4gdGhh
dCBtb3JlIGdlYXIgd291bGQgYWRvcHQgdGhlIEJRTCAob3IgQVFMCmZvciB3aXJlbGVzcykgc3Vi
c3lzdGVtcyB3aGljaCB3b3VsZCBlbGltaW5hdGUgdGhlIG5lZWQgZm9yIHNoYXBpbmcgaW4KbWFu
eSBjYXNlcywgcmF0aGVyIHRoYW4gZ28gd2hvbGUgaG93ZyBvbiBzaGFwaW5nIGV2ZXJ5dGhpbmcg
dmlhIGNha2UuCj4KPiBBcmUgdGhlcmUgYW55IGNvbW1lcmNpYWwgcHJvZHVjdHMgYWxyZWFkeSB1
c2luZyBDYWtlPwoKRXZlbnJvdXRlLCBlZXJvLCB1Ym50IHRvcCB0aGF0IGxpc3QuIEV2ZW5yb3V0
ZSdzIGltcGxlbWVudGF0aW9uIGlzCnN1cGVyYiwgdGhlIGZpcnN0IG9uZSB0aGF0IHVzZWQgYWN0
aXZlIGxpbmUgbWVhc3VyZW1lbnRzIHRvIGhhbmRsZQoic2FnIi4gQW55dGhpbmcgZGVyaXZlZCBm
cm9tIG9wZW53cnQgKHNvbWV3aGVyZSBiZXR3ZWVuIDEwLTMwJSBvZiB0aGUKaG9tZSByb3V0ZXIg
bWFya2V0KS4gSSdtIG5vdCBzdXJlIGlmIHByZXNlZW0gaXMgdXNpbmcgaXQgb3Igbm90LgpkZC13
cnQuIE1vc3Qgb3RoZXIgdGhpbmdzIGRvaW5nICJTUU0iIGFyZSBkb2luZyBpdCB2aWEgaHRiICsg
ZnFfY29kZWwuCgoKPgo+Cj4gLS0gQWRhbSBNb2ZmZXR0LCBOZXR3b3JrIEVuZ2luZWVyCj4gUGxl
eGljb21tIC0gSW50ZXJuZXQgU29sdXRpb25zIHwgd3d3LnBsZXhpY29tbS5uZXQKPiBPZmZpY2U6
IDEuODY2Ljc1OS40Njc4IHwgRmF4OiAxLjg2Ni44NTIuNDY4OAo+Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQv
bGlzdGluZm8vY2FrZQoKCgotLSAKCkRhdmUgVMOkaHQKQ1RPLCBUZWtMaWJyZSwgTExDCmh0dHA6
Ly93d3cudGVrbGlicmUuY29tClRlbDogMS04MzEtMjA1LTk3NDAKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=
