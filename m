Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id C2455CAE60
	for <lists+cake@lfdr.de>; Thu,  3 Oct 2019 20:41:48 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A539F3CB38;
	Thu,  3 Oct 2019 14:41:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1570128107;
	bh=ZG+wZFvHxOvxP72bBavEp8Fb3aupE4XKglQrATHGdv8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EIKELFB0LCqOvf63ig5FAFeMdHWkx7Y8rvhphjJ8WIbCuhSlULDwETYwoK2kFNamQ
	 CTEoadWB+WgsrkpF1IXvMvhDTj6jbX/pi9qvKmGjSnYUsx5asKxjxMIOxWS37mgdVu
	 1OnbghClU2aBPOWZ66igPaFSx5OCF/0pwZIoIn2tQYTJNnCBPDYPVwP0pINPX0J+Q2
	 hUgpzmXZK0mksGs8vNamiHUgL0/8ahg55LcAr9eAynphPx84vlo1GpwZbkc4ruG43S
	 x0ry8ODJZmnE7k6EitF81JUJ37HTA5tQD2riBTM3kZF0JccNJuXnMkwbCyghcP8qQU
	 nDWnRvPJ/ki4g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com
 [IPv6:2607:f8b0:4864:20::d2d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 609153B2A4
 for <cake@lists.bufferbloat.net>; Thu,  3 Oct 2019 14:41:46 -0400 (EDT)
Received: by mail-io1-xd2d.google.com with SMTP id a1so7947763ioc.6
 for <cake@lists.bufferbloat.net>; Thu, 03 Oct 2019 11:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=eXPjNldGqUd5Eitl2i+NGXE2MOOiEsx39UxURz2qoe0=;
 b=mezeiYVkOqGPjmMHjgRZgrAl4Q5hn+TENsVFzxjf7fMCsa4p/BU9U9/hUWKnPHPF0l
 xjumUyzKcQCRcBrX0CKt6mEo6W3T6Zv/9aEz4aZHWesoNsn4F9B2b0aOXk/4VxrR10JA
 6zaPuaslinuia8ToLrtAHNJ7WXXveBtkdghM90AEJprF8Aj77mnaBdAML+/9diOP9gFp
 3zq0e1nWg3g6Fzxh5LUHqySNDZ1f+XwaclRibc/QkrhgvFA+p07OtwRRL16PJcYxrYcX
 XCGtmCZTlNpVZt11OJujlDVfn68IXuQby7cVpk7S3lDXHtbpFG2ztS7gdR5Cktuj9tLm
 Hovw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=eXPjNldGqUd5Eitl2i+NGXE2MOOiEsx39UxURz2qoe0=;
 b=oXkI2UrfzqSCCU6fKC/bfBvAAyxTRXQMWSXhVxjwZUKx+7eRbOjlrlZChYA3xxfdV7
 4YLmmG9lavrhqql2t6iLGOZowebavYknbC2TUgCyYqc06bSnp+ZYh16yV71fhzmrJY0E
 JUT6BtA45dNJI0uT3/OGlzLvz72XqOIwwrDfV8Vi9EJRDsV3oQBbewYw90Spq4H5x4UM
 y6LRnTpjVhNmVyaVSKbcC0xIZ1rBCdwXmzFbx8ZfkzRTE9PbwCZ44d5xNYwfdGScuyR5
 02rzvy1dFJB45qBYRidOg1cEBDe+x0sPJCk4N25vm1jhkdZqc8w/5YX6Y+Kqz9X5mM5P
 4vDA==
X-Gm-Message-State: APjAAAUXxSRNMzc/u5OVKw4fRgd8ZNuHZf0+KdT1ZuWxjyB/fGva9c1E
 L+JuD23ocgjBNyxo/wV24tp/MFyQTYat0Skn2PYyMMY3
X-Google-Smtp-Source: APXvYqynpGyCO6Ou7wnAg/a/shQgYmotEBkkg9F03ywXgc2Rso9kfdHvoukWgVSckhxLLEMluEbG89o8z86Cl52gZe4=
X-Received: by 2002:a5d:8911:: with SMTP id b17mr9554613ion.287.1570128105704; 
 Thu, 03 Oct 2019 11:41:45 -0700 (PDT)
MIME-Version: 1.0
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
 <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
 <a856e8a0-b454-465d-9112-8fab3eabade2@www.fastmail.com>
In-Reply-To: <a856e8a0-b454-465d-9112-8fab3eabade2@www.fastmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 3 Oct 2019 11:41:33 -0700
Message-ID: <CAA93jw6pwO+D6HB5BoJ+qL-=Vh9mikApL=dBBxNAeWBbTcH7LA@mail.gmail.com>
To: Justin Kilpatrick <justin@althea.net>
Subject: Re: [Cake] Fighting bloat in the face of uncertinty
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

SGVoLiBXZSBuZWVkIGEgdC1zaGlydC4uLgoKZnJvbSBUdW5uZWxNYW5hZ2VyOjpmcm9tX3JlZ2lz
dHJ5KCkuZG9fc2VuZChHb3RCbG9hdCB7CgouLgoKR290QmxvYXQoKSA/IG1vcmVfZnFfY29kZWwg
OiBmcV9jb2RlbDsKCgpPbiBUaHUsIE9jdCAzLCAyMDE5IGF0IDEwOjUyIEFNIEp1c3RpbiBLaWxw
YXRyaWNrIDxqdXN0aW5AYWx0aGVhLm5ldD4gd3JvdGU6Cj4KPiBJJ3ZlIGRldmVsb3BlZCBhIHJv
dWdoIHZlcnNpb24gb2YgdGhpcyBhbmQgcHV0IGl0IGludG8gcHJvZHVjdGlvbiBNb25kYXkuIEFm
dGVyIGEgZmV3IHR3ZWFrcyB3ZSdyZSBzZWVpbmcgYSB+MTB4IHJlZHVjdGlvbiBpbiB0aGUgbWFn
bml0dWRlIG9mIGxhdGVuY3kgc3Bpa2VzIGF0IGhpZ2ggdXNhZ2UgdGltZXMuCj4KPiBodHRwczov
L2dpdGh1Yi5jb20vYWx0aGVhLW5ldC9hbHRoZWFfcnMvYmxvYi9tYXN0ZXIvcml0YS9zcmMvcml0
YV9jb21tb24vbmV0d29ya19tb25pdG9yL21vZC5ycyNMMjg4Cj4KPiBUaGUgYXZlcmFnZSBhbmQg
c3RhbmRhcmQgZGV2aWF0aW9uIG9mIGxhdGVuY3kgdG8gYSBnaXZlbiBuZWlnaGJvciBpcyBzY3Jh
cGVkIGZyb20gQmFiZWwgYW5kIHdoZW4gdGhlIHN0YW5kYXJkIGRldmlhdGlvbiBleGNlZWRzIDEw
eCAgdGhlIGF2ZXJhZ2Ugd2UgcmVkdWNlIHRoZSB0aHJvdWdocHV0IG9mIHRoZSBjb25uZWN0aW9u
IGJ5IDIwJS4KPgo+IEl0J3Mgbm90IHRoZW9yZXRpY2FsbHkgc291bmQgeWV0IGJlY2F1c2UgSSBz
dGlsbCBuZWVkIHRvIGV4cG9zZSBzaW5nbGUgZGlyZWN0aW9uIGxhdGVuY3kgaW4gQmFiZWwgcmF0
aGVyIHRoYW4gb25seSByb3VuZCB0cmlwLiBCbG9hdCBjYXVzZWQgYnkgdGhlIG90aGVyIHNpZGUg
b2YgdGhlIGxpbmsgY3VycmVudGx5IGNhdXNlcyBjb25uZWN0aW9ucyB0byBiZSByZWR1Y2VkIGFs
bCB0aGUgd2F5IGRvd24gdG8gdGhlIHRocm91Z2hwdXQgbWluaW11bSB1bm5lY2Vzc2FyaWx5Lgo+
Cj4gSXQgd291bGQgYWxzbyBiZSBhZHZhbnRhZ2VvdXMgdG8gb2JzZXJ2ZSB3aGF0IHRocm91Z2hw
dXQgd2UndmUgcmVjb3JkZWQgZm9yIHRoZSBsYXN0IDUgc2Vjb25kcyBhbmQgcHV0IGEgdGhyZXNo
b2xkIHRoZXJlLiBSYXRoZXIgdGhhbiBkb2luZyBhbnkgcHJvYmluZyBvdXJzZWx2ZXMgd2UgY2Fu
IGp1c3Qgb2JzZXJ2ZSBpZiB0aGUgdXNlciB3YXMgc2F0dXJhdGluZyB0aGUgY29ubmVjdGlvbiBv
ciBpZiBpdCB3YXMgYSB0cmFuc2llbnQgcmFkaW8gcHJvYmxlbS4KPgo+IElmIGFueW9uZSBlbHNl
IGlzIGludGVyZXN0ZWQgaW4gdXNpbmcgdGhpcyBJIGNhbiBzcGxpdCBpdCBvZmYgZnJvbSBvdXIg
YXBwbGljYXRpb24gYW5kIGludG8gYSBzdGFuZCBhbG9uZSAoaWYgc29tZXdoYXQgYnVsa3kpIGJp
bmFyeSB3aXRob3V0IG11Y2ggdHJvdWJsZS4KPgo+IC0tCj4gICBKdXN0aW4gS2lscGF0cmljawo+
ICAganVzdGluQGFsdGhlYS5uZXQKPgo+IE9uIFN1biwgU2VwIDgsIDIwMTksIGF0IDE6MjcgUE0s
IEpvbmF0aGFuIE1vcnRvbiB3cm90ZToKPiA+ID4+IFlvdSBjb3VsZCBhbHNvIHNldCBpdCBiYWNr
IHRvICdpbnRlcm5ldCcgYW5kIHByb2dyZXNzaXZlbHkgcmVkdWNlIHRoZQo+ID4gPj4gYmFuZHdp
ZHRoIHBhcmFtZXRlciwgbWFraW5nIHRoZSBDYWtlIHNoYXBlciBpbnRvIHRoZSBhY3R1YWwgYm90
dGxlbmVjay4KPiA+ID4+IFRoaXMgaXMgdGhlIGNvcnJlY3QgZml4IGZvciB0aGUgcHJvYmxlbSwg
YW5kIHlvdSBzaG91bGQgbm90aWNlIGFuCj4gPiA+PiBpbnN0YW50IGltcHJvdmVtZW50IGFzIHNv
b24gYXMgdGhlIGJhbmR3aWR0aCBwYXJhbWV0ZXIgaXMgY29ycmVjdC4KPiA+ID4KPiA+ID4gSGFu
ZCB0dW5pbmcgdGhpcyBvbmUgbGluayBpcyBub3QgYSBwcm9ibGVtLiBJJ20gc2VhcmNoaW5nIGZv
ciBhIHNldCBvZiBzZXR0aW5ncyB0aGF0IHdpbGwgcHJvdmlkZSBnZW5lcmFsbHkgZ29vZCBwZXJm
b3JtYW5jZSBhY3Jvc3MgYSB3aWRlIHJhbmdlIG9mIGRldmljZXMsIGxpbmtzLCBhbmQgc2l0dWF0
aW9ucy4KPiA+ID4KPiA+ID4gRnJvbSB3aGF0IHlvdSd2ZSBpbmRpY2F0ZWQgc28gZmFyIHRoZXJl
J3Mgbm90aGluZyBhcyBlZmZlY3RpdmUgYXMgYSBjb3JyZWN0IGJhbmR3aWR0aCBlc3RpbWF0aW9u
IGlmIHdlIGNvbnNpZGVyIHRoZSBhbnRlbm5hIChsaW5rKSBhIGJsYWNrIGJveC4gRXhwZWN0aW5n
IHRoZSB1c2VyIHRvIGlucHV0IGV4cGVjdGVkIHRocm91Z2hwdXQgZm9yIGV2ZXJ5IGxpbmsgYW5k
IHRoZW4gbWFuYWdpbmcgdGhhdCBpbmZvcm1hdGlvbiBpcyBlc3NlbnRpYWxseSBhIG5vbi1zdGFy
dGVyLgo+ID4gPgo+ID4gPiBSYWRpbyB0dW5pbmcgcHJvdmlkZXMgc29tZSBpbXByb3ZlbWVudCwg
YnV0IHVudGlsIHViaXF1aXRpIHN0YXJ0cyBzaGlwcGluZyB3aXRoIENvZGVsIG9uIG5vbi1yb3V0
ZXIgZGV2aWNlcyBJIGRvbid0IHRoaW5rIHRoZXJlJ3MgYSBnb29kIHNvbHV0aW9uIGhlcmUuCj4g
PiA+Cj4gPiA+IEFueSB3YXkgdG8gaGF2ZSB0aGUgcmVjZWl2aW5nIGRldmljZSBkZXRlY3QgYmxv
YXQgYW5kIGluc2VydCBhbiBFQ04/Cj4gPgo+ID4gVGhhdCdzIHdoYXQgdGhlIHFkaXNjIGl0c2Vs
ZiBpcyBzdXBwb3NlZCB0byBkby4KPiA+Cj4gPiA+IEkgZG9uJ3QgdGhpbmsgdGhlIHRpbWUgc3Bl
bnQgaW4gdGhlIGludGVybWVkaWF0ZSBkZXZpY2UgaXMgZGV0ZWN0YWJsZSBhdCB0aGUga2VybmVs
IGxldmVsIGJ1dCB3ZSBrZWVwIHRyYWNrIG9mIGxhdGVuY3kgZm9yIHJvdXRpbmcgZGVjaXNpb25z
IGFuZCBjb3VsZCBkZXRlY3QgYmxvYXQgd2l0aCBzb21lIGFjY3VyYWN5LCB0aGUgcHJvYmxlbSBp
cyBob3cgdG8gcmVzcG9uZC4KPiA+Cj4gPiBBcyBsb25nIGFzIHlvdSBjYW4gZGV0ZWN0IHdoaWNo
IGxpbmsgdGhlIGJsb2F0IGlzIG9uIChhbmQgaW4gd2hpY2gKPiA+IGRpcmVjdGlvbiksIHlvdSBj
YW4gcmVzcG9uZCBieSByZWR1Y2luZyB0aGUgYmFuZHdpZHRoIHBhcmFtZXRlciBvbiB0aGF0Cj4g
PiBoYWxmLWxpbmsgYnkgYSBzbWFsbCBhbW91bnQuICBTaW5jZSB5b3UgaGF2ZSBhIGNvb3BlcmF0
aW5nIG5ldHdvcmssCj4gPiBtYWludGFpbmluZyBhIHRpbWUgc3RhbmRhcmQgb24gZWFjaCBub2Rl
IHN1ZmZpY2llbnQgdG8gb2JzZXJ2ZSBvbmUtd2F5Cj4gPiBkZWxheXMgc2VlbXMgZmVhc2libGUs
IGFzIGlzIGVzdGFibGlzaGluZyBhIG5vcm1hbCBiYXNlbGluZSBsYXRlbmN5IGZvcgo+ID4gZWFj
aCBsaW5rLgo+ID4KPiA+IFRoZSBjaGFyYWN0ZXJpc3RpY3Mgb2YgdGhlIGJhbmR3aWR0aCBwYXJh
bWV0ZXIgYmVpbmcgdG9vIGhpZ2ggYXJlIGVhc3kKPiA+IHRvIG9ic2VydmUuICBOb3Qgb25seSB3
aWxsIHRoZSBvbmUtd2F5IGRlbGF5IGdvIHVwLCBidXQgdGhlIHJlY2VpdmVkCj4gPiB0aHJvdWdo
cHV0IGluIHRoZSBzYW1lIGRpcmVjdGlvbiBhdCB0aGUgc2FtZSB0aW1lIHdpbGwgYmUgbG93ZXIg
dGhhbgo+ID4gY29uZmlndXJlZC4gIFlvdSBtaWdodCB1c2UgdGhlIGxhdHRlciBhcyBhIGhpbnQg
YXMgdG8gaG93IGZhciB5b3UgbmVlZAo+ID4gdG8gcmVkdWNlIHRoZSBzaGFwZWQgYmFuZHdpZHRo
Lgo+ID4KPiA+IERlY2lkaW5nIHdoZW4gYW5kIGJ5IGhvdyBtdWNoIHRvICppbmNyZWFzZSogYmFu
ZHdpZHRoLCB3aGljaCBpcwo+ID4gcHJlc3VtYWJseSBkZXNpcmFibGUgd2hlbiBsaW5rIGNvbmRp
dGlvbnMgaW1wcm92ZSwgaXMgYSBtb3JlIGRpZmZpY3VsdAo+ID4gcHJvYmxlbSB3aGVuIHRoZSBs
aW5rIGhhcmR3YXJlIGRvZXNuJ3QgY29vcGVyYXRlIGJ5IGluZm9ybWluZyB5b3Ugb2YKPiA+IGl0
cyBzdGF0dXMuICAoVGhpcyBpcyBzb21ldGhpbmcgeW91IGNvdWxkIHJlYXNvbmFibHkgYXNrIFVi
aXF1aXRpIHRvCj4gPiBhZGRyZXNzLikKPiA+Cj4gPiBJIHdvdWxkIGFzc3VtZSB0aGF0IGxpbmsg
Y2hhcmFjdGVyaXN0aWNzIHdpbGwgY2hhbmdlIHNsb3dseSwgYW5kIHJ1biBhbgo+ID4gb2NjYXNp
b25hbCBleHBsaWNpdCBiYW5kd2lkdGggcHJvYmUgdG8gc2VlIGlmIHNwYXJlIGJhbmR3aWR0aCBp
cwo+ID4gYXZhaWxhYmxlLiAgSWYgdGhhdCBwcm9iZSBjb21lcyB0aHJvdWdoIHdpdGhvdXQgZXho
aWJpdGluZyBibG9hdCwgKmFuZCoKPiA+IHRoZSBsaW5rIGlzIG90aGVyd2lzZSBsb2FkZWQgdG8g
Y2FwYWNpdHksIHRoZW4gaW5jcmVhc2UgdGhlIHNoYXBlciBieQo+ID4gYW4gYW1vdW50IHdpdGhp
biB0aGUgcHJvYmUncyBjYXBhY2l0eSBvZiBtZWFzdXJlbWVudCAtIGFuZCBzY2hlZHVsZSBhCj4g
PiByZXBlYXQuCj4gPgo+ID4gQSBzdWl0YWJsZSBwcm9iZSBtaWdodCBiZSAxMDB4IDE1MDBiIHBh
Y2tldHMgcGFjZWQgb3V0IG92ZXIgYSBzZWNvbmQsCj4gPiBieXBhc3NpbmcgdGhlIHNoYXBlci4g
IFRoaXMgd2lsbCBvY2N1cHkganVzdCBvdmVyIDFNYnBzIG9mIGJhbmR3aWR0aCwKPiA+IGFuZCBj
YW4gYmUgZXhwZWN0ZWQgdG8gaW5kdWNlIDEwbXMgb2YgZGVsYXkgaWYgaW5qZWN0ZWQgaW50byBh
Cj4gPiBzYXR1cmF0ZWQgMTAwTWJwcyBsaW5rLiAgT2JzZXJ2ZSB0aGUgZGVsYXkgZXhwZXJpZW5j
ZWQgYnkgZWFjaCBwYWNrZXQKPiA+ICphbmQqIHRoZSBxdWFudGl0eSBvZiBvdGhlciB0cmFmZmlj
IHRoYXQgYXBwZWFycyBiZXR3ZWVuIHRoZW0uICBPbmx5IGlmCj4gPiBib3RoIGFyZSBmYXZvdXJh
YmxlIGNhbiB5b3Ugc2FmZWx5IG9wZW4gdGhlIHNoYXBlciwgYnkgMU1icHMuCj4gPgo+ID4gU2lu
Y2Ugd2lyZWxlc3MgbGlua3MgY2FuIGJlIGV4cGVjdGVkIHRvIGNoYW5nZSB0aGVpciBjYXBhY2l0
eSBvdmVyCj4gPiB0aW1lLCBkdWUgdG8gZWcuIHdlYXRoZXIgYW5kIHRyZWUgZ3Jvd3RoLCB0aGlz
IHNlZW1zIHRvIGJlIG1vcmUKPiA+IGdlbmVyYWxseSB1c2VmdWwgdGhhbiBhIHN0YXRpYyBndWVz
cy4gIFlvdSBjb3VsZCBkZXBsb3kgYSBuZXcgbGluayB3aXRoCj4gPiBhIGNvbnNlcnZhdGl2ZSAi
Z3Vlc3MiIG9mIHNheSAxME1icHMsIGFuZCBqdXN0IHByb2JlIGZyb20gdGhlcmUuCj4gPgo+ID4g
IC0gSm9uYXRoYW4gTW9ydG9uCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQoKCgotLSAK
CkRhdmUgVMOkaHQKQ1RPLCBUZWtMaWJyZSwgTExDCmh0dHA6Ly93d3cudGVrbGlicmUuY29tClRl
bDogMS04MzEtMjA1LTk3NDAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
