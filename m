Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB351E95BA
	for <lists+cake@lfdr.de>; Sun, 31 May 2020 06:52:51 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E48453CB38;
	Sun, 31 May 2020 00:52:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1590900767;
	bh=6GuAZ9MWtDCC9fCxwhbA1iUuO5z9qOGnFRgWmB1jTtc=;
	h=Date:To:From:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lLQS4+bQwP9bXcp8450ULh6v4E4X1eFE/Kov1Gvo4yEKMTiiy47r1lI5c6BroQVNM
	 yYLMbxHNzJS35y2gpg2W1zqs790YRQ7NqE+/hxKdp9HWHt0OtdqwToKEU/UervZEHa
	 NwwsoGWuxgKSeKkaLpVD5K4R0I34BWAauKl55zbnqXBfXlznuGpap090DHFZCUelA9
	 qJvmqOAd0ep/9aA0RutpuAU5Zfb09svriI2yGpRKmVQ5JYEmM5Et7Avo0HoCK1qvhh
	 bO2dLpOqw3+Few8b7R+DSb/kYsSJVDSazVsla/R5o2drBMh5vWk62uzuNMTMzZ+S1W
	 VPKzO4jteqz8A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DD7913B29D
 for <cake@lists.bufferbloat.net>; Sun, 31 May 2020 00:52:45 -0400 (EDT)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 678A3128FE1E8;
 Sat, 30 May 2020 21:52:44 -0700 (PDT)
Date: Sat, 30 May 2020 21:52:43 -0700 (PDT)
Message-Id: <20200530.215243.413220351888088239.davem@davemloft.net>
To: toke@redhat.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200529124344.355785-1-toke@redhat.com>
References: <20200529124344.355785-1-toke@redhat.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 30 May 2020 21:52:44 -0700 (PDT)
Subject: Re: [Cake] [PATCH net] sch_cake: Take advantage of skb->hash where
 appropriate
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CkRhdGU6IEZy
aSwgMjkgTWF5IDIwMjAgMTQ6NDM6NDQgKzAyMDAKCj4gV2hpbGUgdGhlIG90aGVyIGZxLWJhc2Vk
IHFkaXNjcyB0YWtlIGFkdmFudGFnZSBvZiBza2ItPmhhc2ggYW5kIGRvZXNuJ3QKPiByZWNvbXB1
dGUgaXQgaWYgaXQgaXMgYWxyZWFkeSBzZXQsIHNjaF9jYWtlIGRvZXMgbm90Lgo+IAo+IFRoaXMg
d2FzIGEgZGVsaWJlcmF0ZSBjaG9pY2UgYmVjYXVzZSBzY2hfY2FrZSBoYXNoZXMgdmFyaW91cyBw
YXJ0cyBvZiB0aGUKPiBwYWNrZXQgaGVhZGVyIHRvIHN1cHBvcnQgaXRzIGFkdmFuY2VkIGZsb3cg
aXNvbGF0aW9uIG1vZGVzLiBIb3dldmVyLAo+IGZvcmVnb2luZyB0aGUgdXNlIG9mIHNrYi0+aGFz
aCBlbnRpcmVseSBsb3NlcyBhIGZldyBpbXBvcnRhbnQgYmVuZWZpdHM6Cj4gCj4gLSBXaGVuIHNr
Yi0+aGFzaCBpcyBzZXQgYnkgaGFyZHdhcmUsIGEgZmV3IENQVSBjeWNsZXMgY2FuIGJlIHNhdmVk
IGJ5IG5vdAo+ICAgaGFzaGluZyBhZ2FpbiBpbiBzb2Z0d2FyZS4KPiAKPiAtIFR1bm5lbCBlbmNh
cHN1bGF0aW9ucyB3aWxsIGdlbmVyYWxseSBwcmVzZXJ2ZSB0aGUgdmFsdWUgb2Ygc2tiLT5oYXNo
IGZyb20KPiAgIGJlZm9yZSB0aGUgZW5jYXBzdWxhdGlvbiwgd2hpY2ggYWxsb3dzIGZsb3ctYmFz
ZWQgcWRpc2NzIHRvIGRpc3Rpbmd1aXNoCj4gICBiZXR3ZWVuIGZsb3dzIGV2ZW4gdGhvdWdoIHRo
ZSBvdXRlciBwYWNrZXQgaGVhZGVyIG5vIGxvbmdlciBoYXMgZmxvdwo+ICAgaW5mb3JtYXRpb24u
Cj4gCj4gSXQgdHVybnMgb3V0IHRoYXQgd2UgY2FuIHByZXNlcnZlIHRoZXNlIGRlc2lyYWJsZSBw
cm9wZXJ0aWVzIGluIG1hbnkgY2FzZXMsCj4gd2hpbGUgc3RpbGwgc3VwcG9ydGluZyB0aGUgYWR2
YW5jZWQgZmxvdyBpc29sYXRpb24gcHJvcGVydGllcyBvZiBzY2hfY2FrZS4KPiBUaGlzIHBhdGNo
IGRvZXMgc28gYnkgcmV1c2luZyB0aGUgc2tiLT5oYXNoIHZhbHVlIGFzIHRoZSBmbG93X2hhc2gg
cGFydCBvZgo+IHRoZSBoYXNoaW5nIHByb2NlZHVyZSBpbiBjYWtlX2hhc2goKSBvbmx5IGluIHRo
ZSBmb2xsb3dpbmcgY29uZGl0aW9uczoKPiAKPiAtIElmIHRoZSBza2ItPmhhc2ggaXMgbWFya2Vk
IGFzIGNvdmVyaW5nIHRoZSBmbG93IGhlYWRlcnMgKHNrYi0+bDRfaGFzaCBpcwo+ICAgc2V0KQo+
IAo+IEFORAo+IAo+IC0gTkFUIGhlYWRlciByZXdyaXRpbmcgaXMgZWl0aGVyIGRpc2FibGVkLCBv
ciBkaWQgbm90IGNoYW5nZSBhbnkgdmFsdWVzCj4gICB1c2VkIGZvciBoYXNoaW5nLiBUaGUgbGF0
dGVyIGlzIGltcG9ydGFudCB0byBtYXRjaCBsb2NhbC1vcmlnaW4gcGFja2V0cwo+ICAgc3VjaCBh
cyB0aG9zZSBvZiBhIHR1bm5lbCBlbmRwb2ludC4KPiAKPiBUaGUgaW1tZWRpYXRlIG1vdGl2YXRp
b24gZm9yIGZpeGluZyB0aGlzIHdhcyB0aGUgcmVjZW50IHBhdGNoIHRvIFdpcmVHdWFyZAo+IHRv
IHByZXNlcnZlIHRoZSBza2ItPmhhc2ggb24gZW5jYXBzdWxhdGlvbi4gQXMgc3VjaCwgdGhpcyBp
cyBhbHNvIHdoYXQgSQo+IHRlc3RlZCBhZ2FpbnN0OyB3aXRoIHRoaXMgcGF0Y2gsIGFkZGVkIGxh
dGVuY3kgdW5kZXIgbG9hZCBmb3IgY29tcGV0aW5nCj4gZmxvd3MgZHJvcHMgZnJvbSB+OCBtcyB0
byBzdWItMW1zIG9uIGFuIFJSVUwgdGVzdCBvdmVyIGEgV2lyZUd1YXJkIHR1bm5lbAo+IGdvaW5n
IHRocm91Z2ggYSB2aXJ0dWFsIGxpbmsgc2hhcGVkIHRvIDFHYnBzIHVzaW5nIHNjaF9jYWtlLiBU
aGlzIG1hdGNoZXMKPiB0aGUgcmVzdWx0cyB3ZSBzYXcgd2l0aCBhIHNpbWlsYXIgc2V0dXAgdXNp
bmcgc2NoX2ZxX2NvZGVsIHdoZW4gdGVzdGluZyB0aGUKPiBXaXJlR3VhcmQgcGF0Y2guCj4gCj4g
Rml4ZXM6IDA0NmY2ZmQ1ZGFlZiAoInNjaGVkOiBBZGQgQ29tbW9uIEFwcGxpY2F0aW9ucyBLZXB0
IEVuaGFuY2VkIChjYWtlKSBxZGlzYyIpCj4gU2lnbmVkLW9mZi1ieTogVG9rZSBIw7hpbGFuZC1K
w7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CgpBcHBsaWVkIHRvIG5ldC1uZXh0LCB0aGFua3Mu
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
