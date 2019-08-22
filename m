Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 956019987F
	for <lists+cake@lfdr.de>; Thu, 22 Aug 2019 17:49:54 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9039A3CB38;
	Thu, 22 Aug 2019 11:49:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566488993;
	bh=n8Lcid0r7BzZHujywpiP6333AYG3AOaPvTUbckqfI9k=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HMCNh1PjtnqbiKmqSuBOiEVEMaxYt+tF0rhnaldjpXfJBs5BfnP8zS1zKAXraHS35
	 eLV89UxshX5A4nHfhgNnn25QsZGlfAQzDnjYrelkDV9ddAu1QGeAbXZlRfVuCZWssv
	 BnXp+xY1KGjWzzRo6LEIAOs0+qRX3rsQhPz03LdtE3mC6uIzYrAt8uOvNgwLKzmu+c
	 UbJmR1UcXwrc9d9N1cbjE0VslJmQeN7KebYawFBSiJAjC9Xku6R49RXjo2m+7+jg7n
	 krQYc6oYNnfLUgSfm1TSe62p/3xQnkPnHJfvjSPmg3VaYuI3q3Nu0mQqiLf04Eha6O
	 r9pjt/04v34tQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AFDC23B29E
 for <cake@lists.bufferbloat.net>; Thu, 22 Aug 2019 11:49:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=7hgMsaxKVjsLK5GtqiKERUEwm/5sWYVNhp1fkoUQtsI=; 
 b=QaYJ56BNhFbdJhOQ2g3xeVdeUF0gbQQehnzetHEVqpxBKHsP67aRd1SVav81RyrJIXiC3AgYzz3iAfm1Wh7FXqdkHDSDgYmn+cEiK0Bvr0PY1sH1EwxDzdtKf4tfG8NFXuoOFrXW+g7i4t2CzAv7t192raTcECAx2ke1FJnWIc8=;
To: Dave Taht <dave.taht@gmail.com>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
 <87tvabsp99.fsf@toke.dk>
 <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
 <87r25fsn70.fsf@toke.dk>
 <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com> <87sgpvflo4.fsf@taht.net>
 <87wof6rf7t.fsf@toke.dk> <7656FCDE-C590-4B0C-B191-B9FAC928A762@gmail.com>
 <CAA93jw4sEE_oQsX66xLkE+YUv=wM7AchfpUspC0y_Bf2nLdVOQ@mail.gmail.com>
 <5eb4c395-c718-2d28-65a7-9762cf8d5bea@newmedia-net.de>
 <47AD5102-B66F-44A5-AADE-D167ECB94A61@gmx.de>
 <1d772664-b6cc-a528-9725-96a431032875@newmedia-net.de>
 <87v9uqea3x.fsf@taht.net> <87tvaap57q.fsf@toke.dk>
 <CAA93jw6f0kedxwoN-ER3W1QKeg0sMxVCy6YYk_gRbrVwhD42jQ@mail.gmail.com>
 <5bbd2b81-9846-3a7a-130c-0f59e04fd2d1@newmedia-net.de>
 <CAA93jw4=13D-+WHLYPiV4NPqeVJwrLJe=nkr+a9D9Cqvq49pEQ@mail.gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <dcb92eaf-928e-f909-981d-c2baf74fbc90@newmedia-net.de>
Date: Thu, 22 Aug 2019 17:48:47 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAA93jw4=13D-+WHLYPiV4NPqeVJwrLJe=nkr+a9D9Cqvq49pEQ@mail.gmail.com>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i0pLa-0005zB-Hm; Thu, 22 Aug 2019 17:49:58 +0200
Subject: Re: [Cake] Wifi Memory limits in small platforms
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Battle of the Mesh Mailing List <battlemesh@ml.ninux.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CkFtIDIyLjA4LjIwMTkgdW0gMTU6MTUgc2NocmllYiBEYXZlIFRhaHQ6Cj4gSXQncyB2ZXJ5IGdv
b2QgdG8ga25vdyBob3cgbXVjaCBmb2xrIGhhdmUgYmVlbiBzdHJ1Z2dsaW5nIHRvIGtlZXAKPiB0
aGluZ3MgZnJvbSBPT01pbmcgb24gMzJNQiBwbGF0Zm9ybXMuIEknZCBsaWtlIHRvIGhvcGUgdGhh
dCB0aGUKPiB1bmlmaWVkIG1lbW9yeSBtYW5hZ2VtZW50IGluIGNha2UgKHZzIGEgY29sbGVjdGlv
biBvZiBRb1MgcWRpc2NzKSBhbmQKPiB0aGUgbmV3IGZxX2NvZGVsIGZvciB3aWZpIHN0dWZmIChj
dXR0aW5nIGl0IGRvd24gdG8gMSBhbGxvYyBmcm9tIGZvdXIpCj4gaGVscCwgbWFzc2l2ZWx5IG9u
IHRoaXMgaXNzdWUsIGJ1dCB1bnRpbCB0b2RheSBJIHdhcyB1bmF3YXJlIG9mIGhvdwo+IG11Y2gg
dGhlIGZpZWxkIG1heSBoYXZlIGJlZW4gcGF0Y2hpbmcgdGhpbmdzIG91dC4KPgo+IFRoZSBkZWZh
dWx0IDMyTUIgbWVtb3J5IGxpbWl0cyBpbiBmcV9jb2RlbCBjb21lcyBmcm9tIHRoZSBzdHJlc3Np
bmcKPiBhYm91dCAxMEdpZ0UgbmV0d29ya2luZyBmcm9tIGdvb2dsZS4gNE1CIGlzIGxpbWl0IGlu
IG9wZW53cnQsCj4gd2hpY2ggaXMgc3VpdGFibGUgZm9yIH4xR2JpdCwgYW5kIGlzIHNvcnQgb2Yg
dGhlcmUgIGR1ZSB0byA4MDIuMTFhYydzCj4gbWF4aW11bSAoaW1wb3NzaWJsZSB0byBoaXQpIG9m
IGEgdHhvcCB0aGF0IGxhcmdlLgo+Cj4gU29tZXRoaW5nIGFzIHNtYWxsIGFzIDI1NksgaXMgZXNz
ZW50aWFsbHkgYWJvdXQgMTI4IGZ1bGwgc2l6ZSBwYWNrZXRzCj4gKGFuZCBvZnRlbiwgYWNrcyBm
cm9tIGFuIGV0aGVybmV0IGRldmljZSdzIHJ4IHJpbmcgZWF0IDJrKS4KCndoYXQgaSBtaXNzIGlu
IG1hYzgwMjExIGlzIHRoZSBmb2xsb3dpbmcgb3B0aW9uICJmcV9jb2RlbCA9IG9mZiIKaXRzIGVz
c2VudGlhbCBhbmQgaSB3aWxsIGRlZmluaXRseSB3b3JrIG9uIGEgcGF0Y2ggdG8gZGVhbCB3aXRo
IHRoaXMgd2F5IApmb3IgbG93IG1lbW9yeSA4MDIuMTFuIHBsYXRmb3Jtcy4KCj4KPiBUaGUgc3Ry
dWN0dXJlIG9mIHRoZSBuZXcgZnFfY29kZWwgZm9yIHdpZmkgc3Vic3lzdGVtIGlzICJvbmUgaW4g
dGhlCj4gaGFyZHdhcmUsIG9uZSByZWFkeSB0byBnbywgYW5kIHRoZSByZXN0IGFjY3VtdWxhdGlu
ZyIuIEkKPiB0eXBpY2FsbHkgc2VlIGFib3V0IDEzLTIwIHBhY2tldHMgaW4gYW4gYWdncmVnYXRl
LiAyNTZrIHN0cmlrZXMgbWUgYXMKPiBhIGJpdCBzbWFsbC4KZnJvbSB0aGUgcnVsZXMgaXRzIHRo
YXQgMjU2IGlzIHVzZWQgZm9yIGh0IG9ubHkgYW5kIGlmIHZodCBpcyBpbnZvbHZlZCAKdGhlIGxp
bWl0IG9mIDRtYiBpcyB1c2VkLgpidXQgbm93IGNvbWVzIHRoZSBwb2ludC4gYWxsIDgwMi4xMWFj
IHBsYXRmb3JtcyBoYXZpbmcgNjRtYiByYW0gb3IgbW9yZS4gCmJ1dCBhdGgxMGsgY2hpcHNldHMg
YXJlIHVzaW5nCmFib3V0IDQwIG1iIG9mIHNoYXJlZCBtZW1vcnkuIHNvIG1taCB3ZSBhcmUgaGl0
dGluZyB0aGUgd2FsbCBhZ2Fpbi4gbW9zdCAKcm91dGVycyBoYXZlIDEyOCBtYiB3aXRoIDgwMi4x
MWFjLCBidXQgc29tZSAobm90aWNhYmxlIGRsaW5rKSBoYXZlIGp1c3QgNjRtYgo+Cj4gSSBoYXZl
bid0IGNoZWNrZWQsIGJ1dCBkb2VzIHRoaXMgcGF0Y2ggc3RpbGwgZXhpc3QgaW4gb3BlbndydC9k
ZC13cnQ/Cj4gSXQgaGFkIGhlbHBlZCBhIGxvdCB3aGVuIHVuZGVyIG1lbW9yeSBwcmVzc3VyZSBm
cm9tCj4gYSBsb3Qgb2Ygc21hbGwgcGFja2V0cy4KPgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9kdGFo
dC9jZXJvd3J0LTMuMTAvYmxvYi9tYXN0ZXIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGF0Y2hlcy0z
LjEwLzY1Ny1xZGlzY19yZWR1Y2VfdHJ1ZXNpemUucGF0Y2gKPgo+IEFyZ3VhYmx5IHRoaXMgY291
bGQgYmUgbWFkZSBtb3JlIGFnZ3Jlc3NpdmUsIGJ1dCBpdCBtYXNzaXZlbHkgcmVkdWNlZAo+IG1l
bW9yeSBidXJkZW5zIGF0IHRoZSB0aW1lIEkgZGlkIGl0IHdoZW4KPiBmbG9vZGluZyB0aGUgZGV2
aWNlLCBvciBoYXZpbmcgbG90cyBvZiBhY2tzLCBhbmQgd2hpbGUgaXQgY29zdCBjcHUgaXQKPiBz
YXZlZCBvbiBvb21pbmcuCm1taCBsZXQgbWUgY2hlY2sgLT4gbm9wZSBpdHMgYXQgbGVhc3Qgbm90
IGluIG15IHRyZWUuIGJ1dCB3aWxsIGJlIHNvb24gOi0pCj4KPiBUaGVyZSdzIHR3byBvdGhlciBk
dWJpb3VzIHRoaW5ncyBpbiB0aGUgZnFfY29kZWwgZm9yIHdpZmkgc3RhY2sKPiBwcmVzZW50bHku
IFJpZ2h0IG5vdyB0aGUgY29kZWwgdGFyZ2V0IGlzIHNldCB0b28gaGlnaCBmb3IgcDJwIHVzZQo+
ICgyMG1zLCB3aGVyZSA2bXMgc2VlbXMgbW9yZSByaWdodCksIGFuZCBpdCBhbHNvIGZsaXBzIHVw
IHRvIGEgcmVhbGx5Cj4gaGlnaCB0YXJnZXQgYW5kIGludGVydmFsIEFORCB0dXJucyBvZmYgZWNu
IHdoZW4gdGhlcmUncyBtb3JlIHRoYW4gYQo+IGZldyBzdGF0aW9ucyBhdmFpbGFibGUgKHJhdGhl
ciB0aGFuICJhY3RpdmUiKSAtIGl0J3MgYW4gb3Zlcmx5Cj4gY29uc2VydmF0aXZlIGZpZ3VyZSB3
ZSB1c2VkIGJhY2sgd2hlbiB3ZSBoYWQgbWFqb3IgaXNzdWVzIHdpdGgKPiBwb3dlcnNhdmUKPiBh
bmQgbXVsdGljYXN0IHRoYXQgSSdkIGhvcGVkIHdlIGNvdWxkIGN1dCBiYWNrIHRvIG5vcm1hbCBh
ZnRlciB3ZSBnb3QKPiBhbm90aGVyIHJvdW5kIG9mIHJlc2VhcmNoIGZ1bmRpbmcgYW5kIGZlZWRi
YWNrIGZyb20gdGhlIGZpZWxkICh3aGljaAo+IGRpZG4ndCBoYXBwZW4sIGFuZCB3ZSBuZXZlciBn
b3QgYXJvdW5kIHRvIG1ha2luZyBpdCBjb25maWd1cmFibGUsIGFuZAo+IGJlaW5nIDI1eCBiZXR0
ZXIgdGhhbiBpdCB3YXMgYmVmb3JlIHNlZW1lZCAiZW5vdWdoIikKPgo+IEkgd2FzIHB1enpsZWQg
YXQgYmF0dGxlbWVzaCBhcyB0byB3aHkgSSBoYWQgZHJvcHBpbmcgYXQgYWJvdXQgNTBtcwo+IGRl
bGF5IHJhdGhlciB0aGFuIGVjbiwgYW5kIHRob3VnaHQgaXQgd2FzIHNvbWV0aGluZwo+IGVsc2Us
IGFuZCB0aGlzIG1vcm5pbmcgSSdtIHRoaW5raW5nIHRoYXQgZm9sayBoYXZlIGJlZW4gcmVkdWNp
bmcgdGhlCj4gbWVtbGltaXQgdG8gMjU2ayByYXRoZXIuLi4uCj4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=
