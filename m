Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4397C9B7F
	for <lists+cake@lfdr.de>; Sun, 15 Oct 2023 22:29:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AD5F63CB42;
	Sun, 15 Oct 2023 16:29:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1697401794;
	bh=joWuO6o7b7xJurW/FodXiEngibq5Yvc5eboRTBbNzK0=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=dr6Ve2OyviX0arqJgtWExnFRQ1c9fcrUQ7rZzSMmA///8T0r67zFeulJqU7ee9cGp
	 yjK9mUB66aPCb/STX5H0yo/woWW2sXLauJmvmVoGVmLLVWnglei5ZnFdJ7fn3PrJ53
	 WxSoIraaA1OPKJa8BbfUZadvNqMl4lPEr0eUNbI1lzvouYKJ9A7jfqB6H4Qrb+bovu
	 KQSc5TKqVy14V0S8xo2FHFMHimaRUiBUPNsGYo/gINjgGcsXooXU6L9fcIU3wb3GPN
	 PlM/JSnCop1278AduxKDCx4KnWIRJjAr+GUymlpU66rkv2o5jzSlM9eJA+yLVe1htl
	 wIMJyd6wUoPlg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp97.iad3a.emailsrvr.com (smtp97.iad3a.emailsrvr.com
 [173.203.187.97])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3DBF93CB39
 for <cake@lists.bufferbloat.net>; Sun, 15 Oct 2023 16:29:53 -0400 (EDT)
Received: from app68.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp13.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 6B4941928;
 Sun, 15 Oct 2023 16:29:52 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app68.wa-webapps.iad3a (Postfix) with ESMTP id 50B61E0154;
 Sun, 15 Oct 2023 16:29:52 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sun, 15 Oct 2023 16:29:52 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sun, 15 Oct 2023 16:29:52 -0400 (EDT)
To: "dave seddon" <dave.seddon.ca@gmail.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: plain
In-Reply-To: <CANypexT3z0=Avm1pb5wmajZ83HfCswappF2wvOjCiWiW00FJBQ@mail.gmail.com>
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com> 
 <CANypexR5p7Lekzk7+ktfEWjFXJP2zRHC_BgGWRRzKc5QdaxubA@mail.gmail.com> 
 <1695068690.78066946@apps.rackspace.com> 
 <A1F18F7E-2A27-4F13-87B1-D55594FB69F7@gmail.com> 
 <6D098714-69DC-41D9-A7DC-E94FD9C77625@gmail.com> 
 <B892D72D-0198-454B-BC15-170B22829351@gmx.de> 
 <79EC8CB2-0912-4D66-9FA3-990E9C38C281@gmail.com> 
 <FFCCB1ED-3CB4-4F97-9B3B-ADF10F2FE730@gmx.de> 
 <r9268rp5-8sr8-262s-7975-q68q6434sp6s@ynat.uz> 
 <B1098CE9-AFEA-4B49-94AB-F423BBBC564A@gmx.de> 
 <CANypexR9-Cpxup83w9tgcer7Dv48Hsun6+JR=qLPAdhhnRP58w@mail.gmail.com> 
 <CANypexS=7eP0eU4xTO62swRp2o+fM0rg4rG0OSMqq6ybKx2omA@mail.gmail.com> 
 <CANypexRZaxEDATZbK78NdzWrBSs6nnH_kyP_HA4HT2Ka7N8f5Q@mail.gmail.com> 
 <EADF76C6-5C1A-47DB-BDD1-10BC0D7C4522@gmx.de> 
 <CANypexT3z0=Avm1pb5wmajZ83HfCswappF2wvOjCiWiW00FJBQ@mail.gmail.com>
X-Client-IP: 209.6.168.128
Message-ID: <1697401792.32573388@apps.rackspace.com>
X-Mailer: webmail/19.0.24-RC
X-Classification-ID: e5ada36d-5612-4526-9a5d-01c07f380be5-1-1
Subject: Re: [Cake] some comprehensive arm64 w/cake results
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
From: "David P. Reed via Cake" <cake@lists.bufferbloat.net>
Reply-To: "David P. Reed" <dpreed@deepplum.com>
Cc: dave seddon via Cake <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

NjBLIHBpbmdzIHBlciBzZWNvbmQ/IFdlbGwsIHRoYXQncyBwcm9iYWJseSBmYXN0IGVub3VnaCBm
b3IgQ2FrZSB3b3JrLi4uLCBidXQgSSdtIHN1cmUgeW91IGNhbiBkbyBhIExPVCBiZXR0ZXIuLi4g
VHJ5IEFGX1hEUCBhbmQvb3IgRFBESy4gSSB0aGluayBBRl9YRFAgd29ya3Mgb24gQVJNLgoKaHR0
cHM6Ly9hZGFyc2gta3VtYXItcGhlMTUubWVkaXVtLmNvbS9yZWNlaXZpbmctMTQtbWlsbGlvbi1u
ZXR3b3JrLXBhY2tldHMtcGVyLXNlY29uZC1hOWQ1Y2MxNDA4YjYKCk5vdyBhZG1pdHRlZGx5LCBt
eSBkYXRhY2VudGVyIG5ldHdvcmtpbmcgd29yayBpcyBmb2N1c2VkIG9uIHNpbmdsZS1kaWdpdCBt
aWNyb3NlY29uZCBSVFQgcHJvdG9jb2xzIChhbmQgZG9pbmcgdGhlbSBpbiBMaW51eCkuIEJ1dCB3
ZSByZWFsbHkgbmVlZCB0byBnZXQgY2xlYXIgb24gd2hhdCAiZmFzdCIgbWVhbnMgaW4gbW9kZXJu
IGNvbXB1dGVycy4gSXQgZG9lcyBidWcgbWUgdGhhdCB0aGUgZm9sa3Mgd29ya2luZyBvbiBuZXR3
b3JrIHBlcmZvcm1hbmNlIGFyZSBzdGlsbCBmb2N1c2VkIGFzIGlmIG5ldHdvcmtzIGhhdmUgdG8g
YmUgc2xvdy4KClRoZSBzYW1lIHByb2JsZW1zIGNhbiBiZSBmb3VuZCB0aHJvdWdob3V0IHRoZSBM
aW51eCBrZXJuZWwsIHdoZXJlIGFzc3VtcHRpb25zIHN0aWxsIHNlZW0gdG8gYmUgaG9sZGluZyBv
biB0byB3aGF0IHdvcmtlZCBpbiBMaW51cydzIG9yaWdpbmFsIFBDIChzaW5nbGUgY29yZSwgc2xv
dyByb3RhdGluZyBkaXNrcywgLi4uKS4gSSByZWNlbnRseSBmb3VuZCBhIGNvbW1lbnQgKGluIHRo
ZSBkaXNrIHBhZ2Ugc3dhcCBjb2RlKSB3aGVyZSB0aGUgaWRlYSB0aGF0IGRpc2sgY3lsaW5kZXJz
IGFyZSBmYXN0LCBidXQgc2Vla3MgYXJlIHNsb3csIGlzIGltcGxpY2l0IGluIHRoZSBkZXNpZ24u
IEl0J3MgdGhlIHdvcmxkJ3MgbW9zdCAibW9kZXJuIiAibGVnYWN5IHN5c3RlbSIgLSB3aXRoIGxv
dHMgb2YgZGVzaWduIGRlY2lzaW9ucyB0aGF0IG1ha2Ugbm8gc2Vuc2UgYW55bW9yZSwgYnV0IGNh
bid0IGJlIHVuZG9uZS4KCk9mIGNvdXJzZSwgSW50ZXJuZXQgY29uZ2VzdGlvbiBjb250cm9sLCBp
biBnZW5lcmFsLCBpcyBzdGlsbCBzdHVjayBpbiB0aGUgb3JpZ2luYWwgVmFuIEphY29ic2VuIHNh
d3Rvb3RoIGVyYS4gTXkgZ3Vlc3MgaXMgaXQgd29uJ3QgZ2V0IGZpeGVkLCB0aG91Z2ggSSBhcHBs
YXVkIENha2UsIGFuZCBkZXNwYWlyIHRoZSBoYXJkd2FyZSBmb2xrcyB3aG8ga2VlcCBhZGRpbmcg
YnVmZmVycy4KCgpPbiBTdW5kYXksIE9jdG9iZXIgMTUsIDIwMjMgMTI6MjRwbSwgImRhdmUgc2Vk
ZG9uIHZpYSBDYWtlIiA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHNhaWQ6Cgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQ2FrZSBtYWlsaW5n
IGxpc3QKPiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UKPiBPaCB0aGFua3MgU2ViYXN0aWFuLiAgSSBoYXZlIGly
dHQgaW5zdGFsbGVkLCBidXQgaXQgbG9va3MgbGlrZSBJIG5lZWQgdG8KPiBzdGFydCB0aGUgc2Vy
dmVyLiAgIFRoYXQncyBlYXN5LiAgRG9pbmcgaXQgbm93Lgo+IAo+ICggSW5jaWRlbnRhbGx5LCBJ
IGRpZCB3cml0ZSBhIGdvbGFuZyBiYXNlZCBpY21wIHBpbmdlci4gIEl0IGNhbiBwaW5nIGF0Cj4g
dmVyeSBoaWdoIHJhdGVzOiBodHRwczovL2dpdGh1Yi5jb20vZWRnaW8vaWNtcGVuZ2luZS4gIFJl
YWxseSBzaG91bGQgd3JpdGUKPiBvbmUgd2l0aCBydXN0IHVzaW5nIGlvX3VyaW5nLi4uICkKPiAK
PiAKPiAKPiBPbiBTdW4sIE9jdCAxNSwgMjAyMyBhdCA4OjUz4oCvQU0gU2ViYXN0aWFuIE1vZWxs
ZXIgPG1vZWxsZXIwQGdteC5kZT4gd3JvdGU6Cj4gCj4+IElmIEkgcmVjYWxsIGNvcnJlY3RseSwg
ZmxlbnQgd2lsbCB1c2UgaXJ0dCBmb3IgaXRzIGRlbGF5IHByb2JlcyBpZgo+PiBhdmFpbGFibGUg
b24gYm90aCBlbmRzLiBTdXJlIGZpeGluZyBmcGluZyBzZWVtcyBsaWtlIGEgZ29vZCB0aGluZyBs
b25nZXIKPj4gdGVybSwgYnV0IHRvIGdldCBkYXRhIGluIHF1aWNrbHksIG1heWJlIHRyeSBpcnR0
IGluc3RlYWQ/Cj4+Cj4+Cj4+IE9uIDE1IE9jdG9iZXIgMjAyMyAxNzoxMToyMyBDRVNULCBkYXZl
IHNlZGRvbiB2aWEgQ2FrZSA8Cj4+IGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToK
Pj4KPj4+IEcnZGF5LAo+Pj4KPj4+IEkndmUgcHV0IG1vcmUgd29yayBpbnRvIGEgdGVzdCBmcmFt
ZXdvcmsgYXJvdW5kIHRoZSBxZGlzYyB0ZXN0cywgYnV0Cj4+PiB1bmZvcnR1bmF0ZWx5IGZsZW50
IGRvZXNuJ3Qgd29yayBlYXNpbHkgd2l0aCBVYnVudHUgTFRTICgKPj4+IGh0dHBzOi8vZ2l0aHVi
LmNvbS90b2hvam8vZmxlbnQvaXNzdWVzLzIzMiwgd2hpY2ggSSB0aGluayBpcyBhbiBpc3N1ZQo+
Pj4gd2l0aCBmbGVudCBwYXJzaW5nIHRoZSBmcGluZyBvdXRwdXQgKS4KPj4+Cj4+PiBSZXN1bHRz
IGFuZCBncmFwaHMgaW4gdGhpcyBzaGVldDoKPj4+Cj4+PiBodHRwczovL2RvY3MuZ29vZ2xlLmNv
bS9zcHJlYWRzaGVldHMvZC8xVDU5UXdFZE53SkZtNFRnREZBX05ZOThnaWNPbThBQlhLdkRzU0lN
ejlhZy9lZGl0I2dpZD0xMjAzNjQxMTI1Cj4+Pgo+Pj4gUmF3IHJlc3VsdHMgb2YgeDIgdGVzdCBy
dW5zIGFyZSBoZXJlOgo+Pj4KPj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9yYW5kb21pemVkY29kZXIv
cWRpc2NfcmVzdWx0cy9ibG9iL21haW4vcWRpc2MvcmVwb3J0LmNzdgo+Pj4KPj4+IEVhY2ggcnVu
Ogo+Pj4KPj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9yYW5kb21pemVkY29kZXIvcWRpc2NfcmVzdWx0
cy9ibG9iL21haW4vcWRpc2MvMjAyMy0xMC0xM1QxOCUzQTQ1JTNBNDUvcmVwb3J0LmNzdgo+Pj4K
Pj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9yYW5kb21pemVkY29kZXIvcWRpc2NfcmVzdWx0cy9ibG9i
L21haW4vcWRpc2MvMjAyMy0xMC0xNFQxNCUzQTIyJTNBNTMvcmVwb3J0LmNzdgo+Pj4KPj4+IEZ1
bGwgaXBlcmYgb3V0cHV0cyBhcmUgYXZhaWxhYmxlIHRvbywgZm9yIGV4YW1wbGU6Cj4+PiBodHRw
czovL2dpdGh1Yi5jb20vcmFuZG9taXplZGNvZGVyL3FkaXNjX3Jlc3VsdHMvYmxvYi9tYWluL3Fk
aXNjLzIwMjMtMTAtMTNUMTglM0E0NSUzQTQ1L25hbm9waS1yMnMvZnFfY29kZWwvaXBlcmYvdGVz
dC8xNl9pcGVyZi9zdGRvdXQKPj4+Cj4+Pgo+Pj4gTG9ncyBmb3IgZWFjaCBydW4gYXJlIGFsc28g
YXZhaWxhYmxlLCBmb3IgZXhhbXBsZToKPj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9yYW5kb21pemVk
Y29kZXIvcWRpc2NfcmVzdWx0cy9ibG9iL21haW4vcWRpc2MvMjAyMy0xMC0xM1QxOCUzQTQ1JTNB
NDUvbG9nLmpzb24KPj4+Cj4+PiBUaGUgY29kZSByZXBvIHVwZGF0ZWQgaGVyZTogaHR0cHM6Ly9n
aXRodWIuY29tL3JhbmRvbWl6ZWRjb2Rlci9jYWtlICwKPj4+IHdpdGggdGhlaHR0cHM6Ly9naXRo
dWIuY29tL3JhbmRvbWl6ZWRjb2Rlci9jYWtlL2Jsb2IvbWFpbi9SRUFETUUubWQKPj4+IHdoaWNo
IGV4cGxhaW5zIGhvdyB0aGUgdGVzdCB3b3JrLgo+Pj4gVXBkYXRlZCBnb29nbGUgZG9jIGlzIHN0
YXJ0ZWQgaGVyZToKPj4+IGh0dHBzOi8vZG9jcy5nb29nbGUuY29tL2RvY3VtZW50L2QvMWZZS2oz
QlM4OWFCOWRyZ19Ec1NxMjg5eFNkVlFobjF6VUpZQ2owV3VDczAvZWRpdD91c3A9c2hhcmluZwo+
Pj4KPj4+IEJhc2VkIG9uIHRoZSBxdWVzdGlvbnMgb24gdGhpcyBsaXN0IGVhcmxpZXIsIHRoZXJl
IGlzIGEgZm9sZGVyIHdpdGgKPj4+IGRldmljZSBpbmZvcm1hdGlvbiBmb3IgZWFjaCBvZiB0aGUg
ZGV2aWNlcwo+Pj4gaHR0cHM6Ly9naXRodWIuY29tL3JhbmRvbWl6ZWRjb2Rlci9jYWtlL3RyZWUv
bWFpbi9kZXZpY2VfaW5mbwo+Pj4KPj4+IEZvciBleGFtcGxlLCB0aGUgUGk0IGFuZCB0aGUgTGlj
aGVlIFBpIChyaXNjLXYpIGhhcmR3YXJlIGxheW91dCBpcyBoZXJlOgo+Pj4gLQo+Pj4gaHR0cHM6
Ly9naXRodWIuY29tL3JhbmRvbWl6ZWRjb2Rlci9jYWtlL2Jsb2IvbWFpbi9kZXZpY2VfaW5mby9w
aTQvaHdsb2MtbHMtcGk0LnBuZwo+Pj4KPj4+IC0KPj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9yYW5k
b21pemVkY29kZXIvY2FrZS9ibG9iL21haW4vZGV2aWNlX2luZm8vbHBpNGEvaHdsb2MtbHMtbHBp
NGEucG5nCj4+Pgo+Pj4gVGhlIHN3aXRjaCBoYXMgYWxzbyBiZWVuIHVwZ3JhZGVkIHRvIGEgQ2lz
Y28gMzc1MHgsIHdoaWNoIEkgdGhpbmsgYmFzZWQKPj4+IG9uIHRoZSAic2hvdyBpbnRlcmZhY2Ui
IG91dHB1dCBoYXMgYSBtYXggcXVldWUgc2l6ZSBvZiA0MCBmcmFtZXMuICBUaGUgdGVzdAo+Pj4g
cHJvY2VzcyBjbGVhcnMgdGhlIGNvdW50ZXJzIGJlZm9yZSBlYWNoIHRlc3QgYW5kIGdhdGhlcnMg
dGhlICJzaG93Cj4+PiBpbnRlcmZhY2UiIG91dHB1dCBhdCB0aGUgZW5kLgo+Pj4KPj4+IFRoZSBM
aWNoZWUgUGkgNEEgZG9lc24ndCBsb29rIGdvb2QgKAo+Pj4gaHR0cHM6Ly93aWtpLnNpcGVlZC5j
b20vaGFyZHdhcmUvZW4vbGljaGVlL3RoMTUyMC9scDRhLmh0bWwgKQo+Pj4KPj4+IFtpbWFnZTog
aW1hZ2UucG5nXQo+Pj4gSSByZWFsbHkgd2lzaCB0aGUgZmxlbnQgd2FzIHdvcmtpbmcsIHNvIEkn
bGwgcHJvYmFibHkgc2VlIGlmIEkgY2FuIHdvcmsKPj4+IG91dCB0aGUgcGFyc2luZy4KPj4+Cj4+
PiBUaGFua3MsCj4+PiBEYXZlIFNlZGRvbgo+Pj4KPj4+IE9uIEZyaSwgT2N0IDEzLCAyMDIzIGF0
IDEwOjI14oCvQU0gZGF2ZSBzZWRkb24gPGRhdmUuc2VkZG9uLmNhQGdtYWlsLmNvbT4KPj4+IHdy
b3RlOgo+Pj4KPj4+PiBNeSBiYWQuICBUaGVyZSdzIGEgYnVnIGZvciB0aGlzLi4uLiBMb29rcyBs
aWtlIEkgaGF2ZSB0byBkb3duZ3JhZGUgZnBpbmcKPj4+Pgo+Pj4+IGh0dHBzOi8vZ2l0aHViLmNv
bS90b2hvam8vZmxlbnQvaXNzdWVzLzIzMgo+Pj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9zY2h3ZWlr
ZXJ0L2ZwaW5nL2lzc3Vlcy8yMDMKPj4+Pgo+Pj4+IE9uIEZyaSwgT2N0IDEzLCAyMDIzIGF0IDg6
NTnigK9BTSBkYXZlIHNlZGRvbiA8ZGF2ZS5zZWRkb24uY2FAZ21haWwuY29tPgo+Pj4+IHdyb3Rl
Ogo+Pj4+Cj4+Pj4+IEcnZGF5LAo+Pj4+Pgo+Pj4+PiBJJ3ZlIGJlZW4gd29ya2luZyBhd2F5IG9u
IGF1dG9tYXRpb24gb2YgdGhlIHRlc3RzLiAgUHJldHR5IGNsb3NlIHRvCj4+Pj4+IGhhdmluZyBt
dWNoIG5pY2VyIHRlc3RzIHdpdGggYSBsb3QgbW9yZSBkZXRhaWxzLiAgSSd2ZSBhbHNvIGdvdCB0
aGUgcmlzYy12Cj4+Pj4+IGRldmljZSB3b3JraW5nLgo+Pj4+Pgo+Pj4+PiBIb3dldmVyLCBJJ3Zl
IHJ1biBpbnRvIHNvbWV0aGluZyBmdW5ueSB3aXRoIGZsZW50LiAgRmxlbnQgaXMgbm90IGhhcHB5
Cj4+Pj4+IHdpdGggZnBpbmcgb3IgcGluZy4KPj4+Pj4KPj4+Pj4gZGFzQDNyZDp+L0Rvd25sb2Fk
cy9jYWtlL2NtZC9ydW5fcWRpc2NzX3Rlc3RzJCAvdXNyL2Jpbi9zdWRvCj4+Pj4+IC91c3Ivc2Jp
bi9pcCBuZXRucyBleGVjIG5ldHdvcmsxMDEgL3Vzci9iaW4vZmxlbnQgcnJ1bCAtLW91dHB1dAo+
Pj4+PiAgL3RtcC9xZGlzYy8yMDIzLTEwLTEzVDE1OjUzOjIxL3BpNC9ub3F1ZXVlL2ZsZW50L3Rl
c3QvMTVfZmxlbnQvZmxlbnRfcGk0X25vcXVldWUucG5nCj4+Pj4+IC0tZGF0YS1kaXIgL3RtcC9x
ZGlzYy8yMDIzLTEwLTEzVDE1OjUzOjIxL3BpNC9ub3F1ZXVlL2ZsZW50L3Rlc3QvMTVfZmxlbnQv
Cj4+Pj4+IC0tZm9ybWF0IHN1bW1hcnkgLS1wbG90IGFsbF9zY2FsZWQgLS10aXRsZS1leHRyYQo+
Pj4+PiAyMDIzLTEwLTEzVDE1OjUzOjIxX3BpNF9ub3F1ZXVlIC0tbm90ZSAyMDIzLTEwLTEzVDE1
OjUzOjIxX3BpNF9ub3F1ZXVlCj4+Pj4+IC0tZXh0ZW5kZWQtbWV0YWRhdGEgLS1ob3N0IDE3Mi4x
Ny41MS4xMCAtLWxlbmd0aCA2MCAtLWlwdjQgLS1zb2NrZXQtc3RhdHMKPj4+Pj4gU3RhcnRpbmcg
RmxlbnQgMi4wLjEgdXNpbmcgUHl0aG9uIDMuMTAuMTIuCj4+Pj4+IFN0YXJ0aW5nIHJydWwgdGVz
dC4gRXhwZWN0ZWQgcnVuIHRpbWU6IDcwIHNlY29uZHMuCj4+Pj4+IFdBUk5JTkc6IEZvdW5kIGZw
aW5nLCBidXQgY291bGRuJ3QgcGFyc2UgaXRzIG91dHB1dC4gTm90Cj4+Pj4+IHVzaW5nLiAgICAg
ICAgICAgICAgPC0tLS0tLS0tLS0tLS0tLS0gPz8/Cj4+Pj4+IEVSUk9SOiBSdW5uZXIgUGluZyAo
bXMpIElDTVAgZmFpbGVkIGNoZWNrOiBDYW5ub3QgcGFyc2Ugb3V0cHV0IG9mIHRoZQo+Pj4+PiBz
eXN0ZW0gcGluZyBiaW5hcnkgKC91c3IvYmluL3BpbmcpLiBQbGVhc2UgaW5zdGFsbCBmcGluZyB2
My41Ky4gICAgPC0tLS0tID8/Cj4+Pj4+Cj4+Pj4+IGRhc0AzcmQ6fi9Eb3dubG9hZHMvY2FrZS9j
bWQvcnVuX3FkaXNjc190ZXN0cyQgZHBrZyAtLWxpc3QgfCBncmVwIHBpbmcKPj4+Pj4gaWkgIGZw
aW5nICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgNS4xLTEKPj4+Pj4gICAgICAgICAg
IGFtZDY0ICAgICAgICBzZW5kcyBJQ01QIEVDSE9fUkVRVUVTVCBwYWNrZXRzIHRvIG5ldHdvcmsg
aG9zdHMKPj4+Pj4gaWkgIGlwdXRpbHMtcGluZyAgICAgICAgICAgICAgICAgICAgICAgICAgMzoy
MDIxMTIxNS0xCj4+Pj4+ICAgICAgICAgICAgYW1kNjQgICAgICAgIFRvb2xzIHRvIHRlc3QgdGhl
IHJlYWNoYWJpbGl0eSBvZiBuZXR3b3JrIGhvc3RzCj4+Pj4+IGlpICBrcGFydHggICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDAuOC44LTF1YnVudHUxLjIyLjA0LjEKPj4+Pj4gICAgICAg
ICAgICBhbWQ2NCAgICAgICAgY3JlYXRlIGRldmljZSBtYXBwaW5ncyBmb3IgcGFydGl0aW9ucwo+
Pj4+PiBpaSAgbGliaGFyZmJ1enowYjphbWQ2NCAgICAgICAgICAgICAgICAgICAyLjcuNC0xdWJ1
bnR1My4xCj4+Pj4+ICAgICAgICAgICAgYW1kNjQgICAgICAgIE9wZW5UeXBlIHRleHQgc2hhcGlu
ZyBlbmdpbmUgKHNoYXJlZCBsaWJyYXJ5KQo+Pj4+PiBkYXNAM3JkOn4vRG93bmxvYWRzL2Nha2Uv
Y21kL3J1bl9xZGlzY3NfdGVzdHMkIGZwaW5nIC0tdmVyc2lvbgo+Pj4+PiBmcGluZzogVmVyc2lv
biA1LjEKPj4+Pj4gZGFzQDNyZDp+L0Rvd25sb2Fkcy9jYWtlL2NtZC9ydW5fcWRpc2NzX3Rlc3Rz
JCBwaW5nIC1WCj4+Pj4+IHBpbmcgZnJvbSBpcHV0aWxzIDIwMjExMjE1Cj4+Pj4+Cj4+Pj4+IGRh
c0AzcmQ6fi9Eb3dubG9hZHMvY2FrZS9jbWQvcnVuX3FkaXNjc190ZXN0cyQgY2F0IC9ldGMvbHNi
LXJlbGVhc2UKPj4+Pj4gRElTVFJJQl9JRD1VYnVudHUKPj4+Pj4gRElTVFJJQl9SRUxFQVNFPTIy
LjA0Cj4+Pj4+IERJU1RSSUJfQ09ERU5BTUU9amFtbXkKPj4+Pj4gRElTVFJJQl9ERVNDUklQVElP
Tj0iVWJ1bnR1IDIyLjA0LjMgTFRTIgo+Pj4+Pgo+Pj4+PiBJIGRpZCBpbnN0YWxsIHZpYSAiYXB0
IGluc3RhbGwgZnBpbmciCj4+Pj4+Cj4+Pj4+IEFueSB0aG91Z2h0cyBwbGVhc2U/Cj4+Pj4+Cj4+
Pj4+IEtpbmQgcmVnYXJkcywKPj4+Pj4gRGF2ZQo+Pj4+Pgo+Pj4+PiBPbiBUaHUsIFNlcCAyOCwg
MjAyMyBhdCA2OjI34oCvQU0gU2ViYXN0aWFuIE1vZWxsZXIgdmlhIENha2UgPAo+Pj4+PiBjYWtl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+
ID4gT24gU2VwIDI4LCAyMDIzLCBhdCAxNToxOSwgRGF2aWQgTGFuZyA8ZGF2aWRAbGFuZy5obT4g
d3JvdGU6Cj4+Pj4+PiA+Cj4+Pj4+PiA+IE9uIFRodSwgMjggU2VwIDIwMjMsIFNlYmFzdGlhbiBN
b2VsbGVyIHZpYSBDYWtlIHdyb3RlOgo+Pj4+Pj4gPgo+Pj4+Pj4gPj4gUC5TLjogSSBhbSB0ZW1w
dGVkLCBidXQgd2lsbCBsaWtlbHkgd2FpdCB1bnRpbCB0aGV5IGFyZSBhdmFpbGFibGUKPj4+Pj4+
IGluIHF1YW50aXR5IGFuZCBob3BlIHRoYXQgdGhlIHN0cmVldCBwcmljZSBjb21lcyBkb3duIGEg
Yml0IGJlZm9yZSBnZXR0aW5nCj4+Pj4+PiBvbmUgOykKPj4+Pj4+ID4KPj4+Pj4+ID4gVGhleSBh
cmVuJ3QgYXZhaWxhYmxlIGF0IGFsbCB5ZXQsIGFuZCBpdCdzIG5vdCBjbGVhciB3aGVuIHRoZXkg
d2lsbAo+Pj4+Pj4gYmUgYXZhaWxhYmxlLgo+Pj4+Pj4KPj4+Pj4+ICAgICAgICAgVGhlIGFubm91
bmNlbWVudCB3YXMgZW5kIG9mIE9jdG9iZXIsIGJ1dCBJIHRoaW5rIEkgY291bGQKPj4+Pj4+IHBy
ZS1vcmRlciByaWdodCBub3cgaWYgSSB3YXMgZmVlbGluZyBhbiB1cmdlLiBZb3UgYXJlIHJpZ2h0
IHRob3VnaCwKPj4+Pj4+IGFubm91bmNlZCAhPSBhdmFpbGFibGUgb3IgZGVsaXZlcmVkLgo+Pj4+
Pj4KPj4+Pj4+IFJlZ2FyZHMKPj4+Pj4+ICAgICAgICAgU2ViYXN0aWFuCj4+Pj4+Pgo+Pj4+Pj4g
UC5TLjogSSBoYXZlIGEgcGk0MDAgaW4gdXNlIGFzICJkZXNrdG9wIiBmb3IgbXkgb2xkZXN0IGtp
ZCwgdGhpcyBpcwo+Pj4+Pj4gY2xvc2UgdG8gYmUgYWN0dWFsbHkgZ2VuZXJhbGx5IHVzYWJsZSwg
SSB3b3VsZCBndWVzcyB0aGF0IGNoYW5naW5nIGEKPj4+Pj4+IHBvdGVudGlhbCBwNTAwIGZyb20g
dGhlIHBpNDAwJ3MgNEdCIHRvIDggR0IgdG9nZXRoZXIgd2l0aCB0aGUgb3RoZXIKPj4+Pj4+IGlt
cHJpdmVtZW50cyB0aGUgNSBicmluZ3MgbWlnaHQgcHVzaCBpdCBvdmVyIHRoZSB0aHJlc2hvbGQg
aW50byB0aGUgdHJ1bHkKPj4+Pj4+IHVzZWZ1bCBjYXRlZ29yeS4gV2hpY2ggcHJvYmFibHkgbWVh
bnMgdGhhdCBlaXRoZXIgYSBwb3RlbnRpYWwgcGk1MDAgd2lsbAo+Pj4+Pj4gY29tZSBsYXRlIGFu
ZCBwcm9iYWJseSB3aXRoIG9ubHkgNCBHQiwgYnV0IGxldCdzIHNlZSBob3cgdGhpcyB3b3JrcyBv
dXQgbm93Cj4+Pj4+PiB0aGF0IHRoZSBzdXBwbHkgc2l0dWF0aW9uIGlzIGxlc3MgcHJvYmxlbWF0
aWMuCj4+Pj4+PiBBbmQgSSB1bmRlcnN0YW5kIHRoYXQgdGhlcmUgYXJlIG90aGVyIGNhcGFibGUg
QVJNIGJhc2VkIFNvQ3MgZm9yCj4+Pj4+PiBob21lcm91dGVyL2Rlc2t0b3AgZHV0eSwgSSBqdXN0
IGhhcHBlbiBvdCBoYXZlIGEgc29mdCBzcG90IGZvciB0aGUKPj4+Pj4+IHJhc3BiZXJyeSBwcm9q
ZWN0IDspCj4+Pj4+Pgo+Pj4+Pj4gPgo+Pj4+Pj4gPiBEYXZpZCBMYW5nCj4+Pj4+Pgo+Pj4+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+IENh
a2UgbWFpbGluZyBsaXN0Cj4+Pj4+PiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+Pj4+Pj4g
aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo+Pj4+Pj4KPj4+Pj4K
Pj4+Pj4KPj4+Pj4gLS0KPj4+Pj4gUmVnYXJkcywKPj4+Pj4gRGF2ZSBTZWRkb24KPj4+Pj4gKzEg
NDE1IDg1NyA1MTAyCj4+Pj4+Cj4+Pj4KPj4+Pgo+Pj4+IC0tCj4+Pj4gUmVnYXJkcywKPj4+PiBE
YXZlIFNlZGRvbgo+Pj4+ICsxIDQxNSA4NTcgNTEwMgo+Pj4+Cj4+Pgo+Pj4gLS0KPj4gU2VudCBm
cm9tIG15IEFuZHJvaWQgZGV2aWNlIHdpdGggSy05IE1haWwuIFBsZWFzZSBleGN1c2UgbXkgYnJl
dml0eS4KPj4KPiAKPiAKPiAtLQo+IFJlZ2FyZHMsCj4gRGF2ZSBTZWRkb24KPiArMSA0MTUgODU3
IDUxMDIKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
