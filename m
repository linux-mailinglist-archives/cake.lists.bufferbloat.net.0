Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 122CA9A3F8
	for <lists+cake@lfdr.de>; Fri, 23 Aug 2019 01:39:26 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A76D93CB38;
	Thu, 22 Aug 2019 19:39:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566517164;
	bh=98J92DT1L7Qi/o9TKhTXS6OxNZtj6UXBQvfbMv0LsAY=;
	h=From:To:References:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FphrlrJJkOB0PY2j+/Ci6deYWR35gacwJbE8XSLGYdWjkO7oG04V2BPHCWiQpCIYS
	 jtDwLeM+PwTgJlXJOXE8nKbBvQ9LCKK3p8GkyGIuF9uu5aBD4pOhqBe9NakQil4gpt
	 gleQ/8tCbOaQd8aB+vc171b75y85F67j+MA5F2PR22A+cS6UcsKJbe8G8KBqIgzg4Q
	 FnS/oVFgxIPRHWhIbippBDChYJ7V+j3iHnOscgXRmnpyWn4AuA1vNJE7/pevmJLLOs
	 qExf9NzWBTE+8Cpe2dcMcFrIFRMTpMuUQ5R3H3EOstV7kjiGWUEOZBSCYDx6Drgmdw
	 NHfNiuPZuUupA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.taht.net (mail.taht.net
 [IPv6:2a01:7e00::f03c:91ff:feae:7028])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 00EF93B29E;
 Thu, 22 Aug 2019 19:39:22 -0400 (EDT)
Received: from dancer.taht.net (unknown
 [IPv6:2603:3024:1536:86f0:eea8:6bff:fefe:9a2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.taht.net (Postfix) with ESMTPSA id 8F90821425;
 Thu, 22 Aug 2019 23:39:20 +0000 (UTC)
From: Dave Taht <dave@taht.net>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com>
 <87sgpvflo4.fsf@taht.net> <87wof6rf7t.fsf@toke.dk>
 <7656FCDE-C590-4B0C-B191-B9FAC928A762@gmail.com>
 <CAA93jw4sEE_oQsX66xLkE+YUv=wM7AchfpUspC0y_Bf2nLdVOQ@mail.gmail.com>
 <5eb4c395-c718-2d28-65a7-9762cf8d5bea@newmedia-net.de>
 <47AD5102-B66F-44A5-AADE-D167ECB94A61@gmx.de>
 <1d772664-b6cc-a528-9725-96a431032875@newmedia-net.de>
 <87v9uqea3x.fsf@taht.net> <87tvaap57q.fsf@toke.dk>
 <CAA93jw6f0kedxwoN-ER3W1QKeg0sMxVCy6YYk_gRbrVwhD42jQ@mail.gmail.com>
 <5bbd2b81-9846-3a7a-130c-0f59e04fd2d1@newmedia-net.de>
 <CAA93jw4=13D-+WHLYPiV4NPqeVJwrLJe=nkr+a9D9Cqvq49pEQ@mail.gmail.com>
 <dcb92eaf-928e-f909-981d-c2baf74fbc90@newmedia-net.de>
 <87ftltdter.fsf@taht.net>
 <e7e08148-5791-2afc-f26c-6c4a0a3f1a9d@newmedia-net.de>
 <87pnkxnjo4.fsf@toke.dk>
 <CAA93jw7kSn9gwZsqqgO9w031oz5PgpUw1nhQwt5Y1x9dQ63MoA@mail.gmail.com>
 <981dd67a-7fb8-1e6a-3e50-6f63a414f1a1@newmedia-net.de>
Date: Thu, 22 Aug 2019 16:39:08 -0700
In-Reply-To: <981dd67a-7fb8-1e6a-3e50-6f63a414f1a1@newmedia-net.de> (Sebastian
 Gottschall's message of "Thu, 22 Aug 2019 22:30:45 +0200")
Message-ID: <877e74epnn.fsf@taht.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
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
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Battle of the Mesh Mailing List <battlemesh@ml.ninux.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

U2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyaXRl
czoKCj4+Pj4gYnV0IHdpdGggY3VycmVudCBtYWM4MDIxMSB2ZXJzaW9ucyAoY3VycmVudCBtZWFu
cyBsYXN0IDItMyB5ZWFycykuIHRoZXkKPj4+PiBhcmUganVzdCB1bnN0YWJsZSBhbmQgcnVubmlu
ZyBvdXQgb2YgbWVtb3J5IGFmdGVyIGEgd2hpbGUKPj4+PiB0aGUgb25seSB0aGluZyB3aGljaCBo
ZWxwZWQgd2FzIGN1dHRpbmcgb2YgdGhlIG1lbW9yeSBsaW1pdCBvZiBmcV9jb2RlbAo+Pj4+IGlu
c2lkZSBtYWM4MDIxMQo+Pj4+IGkgYWxzbyBoYXZlIGFub3RoZXIgZmFuY3kgdGVzdHVuaXQgd2hp
Y2ggaXMgYSBsaW5rc3lzIHdydDQwMCB3aXRoIDMyIG1iCj4+Pj4gcmFtIGFuZCAyIGF0aDlrIGJh
c2VkIHdpZmkgY2hpcHNldHMuIG5vIGhvcGUgaGVyZSBmb25yIHJ1bm5pbmcgc3RhYmxlCj4+Pj4g
Zm9yIG9ubHkgNSBtaW51dGVzIGV2ZW4gd2l0aCBhIHNpbmdsZSBjb25uZWN0aW9uIHVuZGVyIGxv
YWQgKG15IGNyYXNoaW5nCj4+Pj4gdGVzdCBpcyBydW5uaW5nIGEgaGR0diBpcHR2IHN0cmVhbSBj
b252ZXJ0ZWQgdG8gdW5pY2FzdCB1c2luZyBhCj4+Pj4gc3RhdGVsZXNzIGVvaXAgdHVubmVsKQo+
Pj4+Cj4+Pj4+IEkgdHJ5IHRvIGVuY291cmFnZSBmb2xrIHRvIHJ1biB0aGUgcnR0X2ZhaXIgdGVz
dHMgaW4gZmxlbnQgd2hlbgo+Pj4+PiB0d2lkZGxpbmcgd2l0aCB3aWZpLiBUaG9zZSByZWFsbHkg
c2hvd3MgaG93IGJhZCB0aGluZ3MgYXJlIHdoZW4geW91Cj4+Pj4+IGRvbid0IGhhdmUgQVRGICsg
RlEgKyBQZXIgc3RhdGlvbiBhZ2dyZWdhdGlvbiBhbmQgbG90cyBvZgo+Pj4+PiBjbGllbnRzLiBT
aW5nbGUgdGhyZWFkZWQgdGVzdHMgYXJlIG1pc2xlYWRpbmcuCj4+Pj4gaSBrbm93IGJ1dCBldmVu
IHNpbmdsZSB0aHJlYWRlZCB0ZXN0cyBhcmVudCB3b3JraW5nIGdvb2Qgb24gc3VjaAo+Pj4+IGRl
dmljZXMuIHNvIHRoZXJlIGlzIG5vIG5lZWQgdG8gdGFsayBhYm91dCB0aGUgYmVuZWZpdHMgb2Yg
YXRmLGZxX2NvZGVsIGV0Yy4KPj4+PiBidXQgdGhlcmUgaXMgbmVlZCB0byB0YWxrIGFib3V0IGNv
bmZpZ3VyYWJsZSB1c2Ugb2YgaXQgd2hpY2ggYWxzbyBhbGxvd3MKPj4+PiB0byBkaXNhYmxlIGl0
IGlmIHJlcXVpcmVkLgo+PiBJIDExMCUgYWdyZWUgdGhhdCBhIHN5c3RlbSB0aGF0IGNhbiBzdGF5
IHVwIGZvciB5ZWFycyBpcyBtdWNoIGJldHRlcgo+PiB0aGFuIG9uZSB0aGF0IGlzIGZhc3QgZm9y
IDUgbWludXRlcyEKPj4KPj4gSG93ZXZlciBJJ2QgbGlrZSBhIGNoYW5jZSwgaW4gY29sbGFib3Jh
dGluZyB3aXRoIHlvdSBhbmQgeW91ciB1cGNvbWluZwo+PiBwYXRjaGVzIC0gdG8gdHJ5IGFuZCBu
YXJyb3cKPj4gZG93biBjcmFzaCBidWdzIHRvIHZhcmlvdXMgc3Vic3lzdGVtcyBhbmQgYmUgYWJs
ZSB0byBnZXQgc29tZQo+PiBiZW5jaG1hcmtzIGRvbmUgdGhhdCBJIHNpbXBseQo+PiBjb3VsZG4n
dCBkbyBhbnltb3JlIGF0IHRoZSBmaW5hbmNpYWwgY29uY2x1c2lvbiBvZiB0aGUgbWFrZS13aWZp
LWZhc3QKPj4gYW5kIGNha2UgcHJvamVjdHMuCj4+Cj4+IEkgdGhpbmsgSSBoYXZlIGEgbG90IG9m
IGdlYXIgdGhhdCBpcyBkZC13cnQgY29tcGF0aWJsZSAtIGFwdTIsCj4+IHduZHIzNzAwcywgMzgw
MHMuLi4uCj4gaWYgaXRzIHY0LCB0aGVzZSBhcmUgaGF2aW5nIDEyOCBtYiAoaSBoYXZlIHRoZW0g
dG9vKS4KClRoZXNlIGFyZSBmcm9tIHRoZSBjZXJvd3J0IGVyYSwgc28sIDMyIG9yIDY0TUIgb2Yg
cmFtLgoKPiBhbmQgYXB1MiBoYXMgMgo+IGdiLiBzbyBpdHMgZ2V0dGluZyByZWFsIGludGVyZXN0
aW5nCj4gaWYgeW91IGNob29zZSBzdWNoIGEgYmFkIG9uZSB3aXRoIDMyIG1iIHJhbSB3aGljaCBh
cmUgc3RpbGwgY29tbW9ubHkKPiB1c2VkIGJ5ICJmcmVpZnVuayIKCk9uZSB0aGluZyB3ZSBjYW4g
c3RhcnQgZG9pbmcgbW9yZSAncm91bmQgaGVyZSBpcyB0byBib290IHRoZSB4ODYgYm94ZXMKd2l0
aCBtZW09MzJNQiBvciBzb21ldGhpbmcgc2ltaWxhciAoNDAlIGxhcmdlciBkdWUgdG8gNjQgYml0
cz8gbm8gaWRlYSwKbWF5YmUgbG9vayBhdCBmcmVlIG1lbSBvbiBhIHNpbWlsYXIgY29uZmlnKSB0
byBzZWUgd2hhdCBzaG93cyB1cC4gCgpGb3IgZXhhbXBsZSwgb25lIG9mIG15IEFQVTJzIGhhcyBk
dWFsIGF0aDkvYXRoMTBrIGNhcmRzIHdoaWNoIGlzIGEKYSByZWFzb25hYmxlIHNpbSBvZiBvbmUg
b2YgeW91ciBjb25maWdzLiAKCj4+IFRoZSByZWR1Y2UgdHJ1ZXNpemUgcGF0Y2ggaGFkIGhlbHBl
ZCBhIGxvdCBhdCB0aGUgdGltZSAoMjAxMikuIFRoZXJlCj4+IHdlcmUgYWxsIGtpbmRzIG9mIGZs
YWt5IGJ1Z3MgdGhhdCBkaXNhcHBlYXJlZC4KPiBpIHRlc3RlZCBhbmQgaXQgaGVscGVkIHRvIG1h
a2UgZXRoZXJuZXQgdW5hdmFpbGFibGUuIGl0IHdvcmtlZCBmb3IKCnRoeCBmb3IgbWFraW5nIG1l
IGNob3J0bGUgaW4gc2FkIGVtcGF0aHkuCgo+IHdpZmkgaW50ZXJmYWNlcy4gYnV0IHRoZSBldGgw
IGFuZCBldGgxIG9uIG15IGlwcTgwNjQgYmFzZWQKPiB0ZXN0Ym9hcmQgZGlkIG5vdCB3b3JrIGFu
eW1vcmUuIG5vIGRoY3AgbGVhc2UsIG5vIHBpbmcuIGJ1dCBpIHdhcyBhYmxlCj4gdG8gY2FwdHVy
ZSBpbmJvdW5kIHBhY2tldHMuIChxb3Mgd2FzIG5vdCBldmVuIGVuYWJsZWQgd2hpbGUgdGVzdGlu
ZywKPiBzbyBubyBjYWtlLCBmcV9jb2RlIGxldGMuIGp1c3Qgc3RhbmRhcmQgc2ZxIHNjaGVkdWxl
cikKPiBzbyBpIHJldmVydGVkIGFuZCBhbGwgd29ya2VkIGFnYWluCgpPSy4gVGh4IGZvciB0cnlp
bmcuIHRoZXJlIGhhdmUgYmVlbiBzbyBtYW55IGJ1Z3MgaW4gZ3NvL2dybyBhbmQgaGFyZHdhcmUK
b2ZmbG9hZHMgdGhhdCBJIGZpZ3VyZSB0aGF0IHRoYXQncyB3aHkgdGhlIHBhdGNoIHdhcyBkcm9w
cGVkIG92ZXIgdGltZS4KCmlzIGNha2UncyBnc28tc3BsaXR0aW5nIHdvcmtpbmcgb24gdGhhdCBz
YW1lIGhhcmR3YXJlPyBJJ20gbm90IHN1cmUKdG8gd2hhdCBleHRlbnQgdGhhdCByZWR1Y2VzIHBh
Y2tldCBzaXplIG9yIG5vdCB0aGVzZSBkYXlzLgoKSSdsbCB0cnkgdGhhdCBhZ2FpbiBvbiB4ODYs
IG1heWJlIGl0IG5lZWRlZCB0byBwdWxsc2tiLi4uLgoKPj4KPj4gdGhlIG5ldyBkcm9wIG1vbml0
b3IgcGF0Y2hzZXQgbG9va3MgV09OREVSRlVMIGZvciBzZWVpbmcgbW9yZSBhYm91dAo+PiBwYWNr
ZXQgZHJvcCBiZWhhdmlvciBpbiB0aGUgc3RhY2ssIGJ1dAo+PiBpdCdzIGEgNS4zKD8pIGZlYXR1
cmUgb25seS4KPiBpIGxvdmUgYmFja3BvcnRpbmcgOi0pCgpJIHVzZWQgdG8gYnV0IHRoZXNlIGRh
eXMgSSdtIGNvbnRlbnQgdG8gd29yayBvdXQgb2YgbmV0LW5leHQgeC55LjAtcmM0Cm9yIGxhdGVy
LiBJIGdldCBtb3JlIHNsZWVwIHRoYXQgd2F5LiBPaCwgd2FpdCwgaXQganVzdCBoaXQgdGhhdC4u
Li4KCj4+Cj4+IEkgbm90ZSB0aGF0IEkgcnVuIDE4LjA2LjEgb24gbXkgMzJNQiBwaWNvIGFuZCBu
YW5vc3RhdGlvbnMgb24gdGhlCj4+IGx1cGluIGNhbXB1cywgYnV0IEkgcnVuIG5vIGd1aSwgZmV3
IGFkZGl0aW9uYWwgYXBwbGljYXRpb25zIGF0IGFsbAo+PiAoZXhjZXB0IGJhYmVsLCBzbm1wZCwg
bmV0cGVyZiwgYW5kIHRoZSBvdGhlciBjb3JlIG5lZWRlZCBkYWVtb25zKS4gIE15Cj4+IHVwdGlt
ZXMgYXJlIHByaW5jaXBhbGx5IGdvdmVybmVkIGJ5IHBvd2VyIGZhaWx1cmVzLiBJIGNhbid0IHJl
bWVtYmVyCj4+IHRoZSBsYXN0ICAiY3Jhc2gsIGNyYXNoIiBJIGhhZCwgYW5kIEkgZG8gdHJhY2sg
bWVtb3J5IGxlYWtzIChub25lKS4KPj4gVGhhdCBzYWlkLCBJJ20gcGFpbmZ1bGx5IGF3YXJlIHRo
YXQgSSBzaG91bGQgcHJvYmFibHkgZ2l2ZSBkZC13cnQgYW5kCj4+IG9wZW53cnQgMTkueCBzb21l
IHRlc3RpbmcganVzdCB0byBtYWtlIHN1cmUgdGhlcmUncyBubyByZWdyZXNzaW9ucywKPj4gYnV0
IGhhdmUgYmVlbiByZWx1Y3RhbnQgdG8gZ2V0IGludm9sdmVkIGFnYWluIHdpdGhvdXQgbW9yZSBw
YXJ0bmVycyBpbgo+PiBjcmltZSwgYmVjYXVzZSB0aGUgc2NhcnMgZnJvbSBkZXBsb3lpbmcgMTgu
eCB3aWRlbHkgYXJlIG9ubHkgYmVnaW5uaW5nCj4+IHRvIGhlYWwuLi4gYW5kIG9ubHkgbGFzdCB3
ZWVrIGRpZCB0aGUgbmVlZGVkIGJhYmVsIDEuOSB1cGdyYWRlIGFycml2ZQo+PiBzbyBJIGNhbiBm
aW5hbGx5IHJlZGVwbG95IGlwdjYgdW5pdmVyc2FsbHkuIEkgZmVhciBteSBjdXJyZW50Cj4+IHJl
bGlhYmlsaXR5IG1ldHJpY3MgYXJlIHNvIGdvb2QgYmVjYXVzZSBJIHRvb2sgZG93biBpcHY2IGxh
c3QgeWVhci4uLi4KPiBteSB3b3JrYXJvdW5kIHdpdGggbWVtb3J5IHByb2JsZW1zIGlzIGFsc28g
ZGlzYWJsaW5nIGh0dHAgbm9ybWFsbHkuIGkKPiBoYXZlIHNvbWUgb2YgdGhlc2UgbmFub3N0YXRp
b25zIGluIHRoZSBmaWVsZAo+Cj4ganVzdCBydW5uaW5nIGhvc3RhcGQsIHNubXAsIHN5c2xvZy4g
YnV0IGFueXRoaW5nIGVsc2UgaXMgZGlzYWJsZWQgZHVlCj4gdGhlIG9vbSBwcm9ibGVtYXRpY3Mu
IGl0IG5ldmVyIHdhcyBhIHJlYWwgY3Jhc2guCj4KPiBidXQgb29tLiBidXQgaSBuZXZlciBwbGF5
ZWQgd2l0aCBiYWJlbC4gb3NwZiBldGMuIGFsbCB3b3JraW5nIG91dCBvZgo+IHRoZSBib3ggYmFz
ZWQgb24gcXVhZ2dhIG9uIGxvdyBlbmQgZGV2aWNlcyBhbmQgZnJyIG9uIGJpZ2dlciBvbmVzLgo+
Cj4+Cj4+IFBpY286Cj4+Cj4+IHJvb3RAcG9vbDI6fiMgZnJlZQo+PiAgICAgICAgICAgICAgIHRv
dGFsICAgICAgICAgdXNlZCAgICAgICAgIGZyZWUgICAgICAgc2hhcmVkICAgICAgYnVmZmVycwo+
PiBNZW06ICAgICAgICAgMjg0ODAgICAgICAgIDIzNzk2ICAgICAgICAgNDY4NCAgICAgICAgICAg
OTIgICAgICAgICAxODY4Cj4+IC0vKyBidWZmZXJzOiAgICAgICAgICAgICAgMjE5MjggICAgICAg
ICA2NTUyCj4+IFN3YXA6ICAgICAgICAgICAgMCAgICAgICAgICAgIDAgICAgICAgICAgICAwCj4+
Cj4+IHJvb3RAcG9vbDI6fiMgdXB0aW1lCj4+ICAgMTE6Mzg6MDkgdXAgNDMgZGF5cywgMjE6Mzcs
ICBsb2FkIGF2ZXJhZ2U6IDAuMDQsIDAuMDMsIDAuMDQKPj4KPj4gU2FtZSB3b3JrbG9hZCBvdmVy
IGhlcmUsIG9uIGEgd25kcjM4MDAsIGFsbW9zdCBleGFjdGx5IHRoZSBzYW1lIGNvbmZpZwo+Pgo+
PiByb290QGNvdWNoOn4jIGZyZWUKPj4gICAgICAgICAgICAgICB0b3RhbCAgICAgICB1c2VkICAg
ICAgIGZyZWUgICAgIHNoYXJlZCAgICBidWZmZXJzICAgICBjYWNoZWQKPj4gTWVtOiAgICAgICAg
IDYwMzIwICAgICAgMjI4NzIgICAgICAzNzQ0OCAgICAgICAgIDY4ICAgICAgIDE5NjAgICAgICAg
NjEyMAo+PiAtLysgYnVmZmVycy9jYWNoZTogICAgICAxNDc5MiAgICAgIDQ1NTI4Cj4+IFN3YXA6
ICAgICAgICAgICAgMCAgICAgICAgICAwICAgICAgICAgIDAKPgo+IE5TMgo+Cj4gcm9vdEBUUk8x
On4jIGZyZWUKPgo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRvdGFswqDCoMKgwqDCoMKg
wqAgdXNlZMKgwqDCoMKgwqDCoMKgIGZyZWXCoMKgwqDCoMKgIHNoYXJlZCBidWZmL2NhY2hlwqDC
oAo+IGF2YWlsYWJsZQo+IE1lbTrCoMKgwqDCoMKgwqDCoMKgwqAgMjkxMjTCoMKgwqDCoMKgwqAg
MTkyMjjCoMKgwqDCoMKgwqDCoCAzNTUywqDCoMKgwqDCoMKgwqDCoMKgwqAgMCA2MzQ0wqDCoMKg
wqDCoMKgwqAgNzc1Mgo+IFN3YXA6wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAwwqDCoMKgwqDCoMKgwqDCoMKgwqAgMAoKSXQgbG9va3MgbGlrZSB5b3UgYXJl
IHJ1bm5pbmcgZXZlbiBsZXNzIHN0dWZmIHRoYW4gSSBhbS4gQW5kIHRoaXMKbWFjaGluZSBpcyBy
dW5uaW5nIHdpdGggMjU2ayBidWZzPwoKPiB3bmRyMzcwMHY0Cj4KPiByb290QERELVdSVDp+IyBm
cmVlCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdG90YWzCoMKgwqDCoMKgwqDCoCB1c2Vk
wqDCoMKgwqDCoMKgwqAgZnJlZcKgwqDCoMKgwqAgc2hhcmVkIGJ1ZmYvY2FjaGXCoMKgCj4gYXZh
aWxhYmxlCj4gTWVtOsKgwqDCoMKgwqDCoMKgwqAgMTI1ODg0wqDCoMKgwqDCoMKgIDIzMDQ4wqDC
oMKgwqDCoMKgIDkyOTQwwqDCoMKgwqDCoMKgwqDCoMKgwqAgMCA5ODk2wqDCoMKgwqDCoMKgIDk5
ODI0Cj4gU3dhcDrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMMKgwqDCoMKgwqDCoMKgwqDCoMKg
IDDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwCj4gcm9vdEBERC1XUlQ6fiMKPgo+Cj4+Cj4+PiBEaXNh
YmxpbmcgdGhlIGZxIHBhcnQgd29uJ3QgYWN0dWFsbHkgZ2FpbiB5b3UgbXVjaCBpbiB0ZXJtcyBv
ZiBtZW1vcnkKPj4+IHVzYWdlLCB0aG91Z2gsIGFzIG1vc3Qgb2YgaXQgaXMgcGFja2V0IG1lbW9y
eSB3aGljaCBpcyBhbHJlYWR5Cj4+PiBjb25maWd1cmFibGUuCj4+Pgo+Pj4gVGhlIG9uZSBleGNl
cHRpb24gdG8gdGhpcyBpcyB0aGUgc3RhdGljIG92ZXJoZWFkIG9mICdzdHJ1Y3QgZnFfZmxvdycs
IG9mCj4+PiB3aGljaCBtYWM4MDIxMSBjdXJyZW50bHkgYWxsb2NhdGVzIDRrLiBUaGF0J3MgMzAw
ayBvZiBtZW1vcnkgd2hpY2ggaXMKPj4+IGN1cnJlbnRseSBub3QgY29uZmlndXJhYmxlLiBCdXQg
dGhhdCBjb3VsZCBiZSBmaXhlZCA6KQo+Pj4KPj4+IC1Ub2tlCj4+IC0tCj4+Cj4+IERhdmUgVMOk
aHQKPj4gQ1RPLCBUZWtMaWJyZSwgTExDCj4+IGh0dHA6Ly93d3cudGVrbGlicmUuY29tCj4+IFRl
bDogMS04MzEtMjA1LTk3NDAKPj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
