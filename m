Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A80AB3B73
	for <lists+cake@lfdr.de>; Mon, 16 Sep 2019 15:32:51 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7BE6B3CB41;
	Mon, 16 Sep 2019 09:32:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568640770;
	bh=d+ygLNyDbZXs4JvvjdY1VmU+6BoepkSTE1pMaxCbHVQ=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XbU55wZT2SEfLnONjmETgeA/I4BWrcp5eL9cYtR3SGnelXpRuFL4gLjlYpVrSCauS
	 mZ/GrVXiSu6eWimzfL0U4yIiaHdme0PZ0NncJMdd2uTcnBc05MbBkV3rUuut1wmp6c
	 WDFmQnR6LvWru6f+5ow52ykC8181j/ek/wsNljxgwVQ0vT8SPZ56FluiazMulNv9eJ
	 UXIsEHmPQNGIuuXQH5bFftyklLPCLGE/A/mRGlM1ZxF8llMJVEhuh5zAlv1cnp+aV8
	 KbPxzUV+uB7Kjyu3sglOk8USg4AzHdEuJh9cm6YJZCeoYCSTRAnsLTDMxirl3mt+9e
	 QPfmjrbtwMkkA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A11643B2A4
 for <cake@lists.bufferbloat.net>; Mon, 16 Sep 2019 09:32:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=PJCPgA2iZrhhfv3H9M7WZxbSVoEfq7lZsfN6Q0qKrZQ=; 
 b=s/ADivcnq+UHAO5WJgYwMD69r+HsVG+mVscCKeizt6E37NWY7XalT47oSiNhGshh7GN12PWLpJCuWhtvB3u+8cA5rZBg95A7l5mw4woDQkdTKsm8hZaBZQkm3lZRwBoW4RgH/565yiceLyit6wFsSbL9ojftie3Yw60hc/DikFM=;
To: Dave Taht <dave.taht@gmail.com>
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
 <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
 <057ea708-6797-23f5-ef01-9d3d7b002578@newmedia-net.de>
 <CAA93jw6+=SuQhFbvVWMbL3m3r_0pRWSMmgScHbhZ=sSN9prntw@mail.gmail.com>
 <CAA93jw6Uu-v+CEZy=XdtJ2PSDVXMEaDmAYXuDGo+20y+1Um0FA@mail.gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <1cb748b4-2def-7095-2445-ad29c83e1b8e@newmedia-net.de>
Date: Mon, 16 Sep 2019 15:31:17 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CAA93jw6Uu-v+CEZy=XdtJ2PSDVXMEaDmAYXuDGo+20y+1Um0FA@mail.gmail.com>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i9r7f-0007gc-8b; Mon, 16 Sep 2019 15:32:55 +0200
Subject: Re: [Cake] cake memory consumption
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CkFtIDE2LjA5LjIwMTkgdW0gMTQ6NTEgc2NocmllYiBEYXZlIFRhaHQ6Cj4gUGVyaGFwcyB0aGUg
ZGlmZmVyZW5jZXMgaW4gbWVtb3J5IHVzZSBhcmUgYSBtZW1vcnkgbGVhayBvZiBzb21lIGtpbmQ/
CnRoZW4gaXQgd291bGQgYmUgYSBsZWFrIGluIGNha2UgOi0pCj4gSWYgeW91IGNvdWxkIHJ1biB0
aGUgc2FtZSBudW1iZXIgb2YgcGFja2V0cyB0aHJvdWdoIGVhY2ggY29uZmlndXJhdGlvbgo+IGFu
ZCBsb29rIGF0IG1lbW9yeSB1c2UsIHRoYXQgbWlnaHQgcG9pbnQgc29tZXdoZXJlLgo+Cj4gY2Fr
ZSAtIHdpdGggZ3NvLXNwbGl0dGluZyAtIHNob3VsZCBmcmFnbWVudCBtZW1vcnkgbW9yZSB0aGFu
IHRoZSBvdGhlcgo+IGFsdGVybmF0aXZlcywgYXMgd2lsbCBmcV9jb2RlbF9mYXN0IHdpdGggc2Nl
IGVuYWJsZWQuCgphbGwgaXMgdXNlZCB3aXRob3V0IG1vZHMuIG9ubHkgdGhlIGZxX2NvZGVsX2Zh
c3QgbW9kdWxlIGlzIHJlc3RyaWN0ZWQgdG8gCnVzZSA0IG1iIG1heCBvbmx5IG9uIHRoaXMgc3Bl
Y2lmaWMgbW9kZWwuIGxpa2UgY2FrZSB0b28uIGZxX2NvZGVsX2Zhc3QgCmlzIHVzZWQgYXMgZHJv
cCBpbiByZXBsYWNlbWVudApmb3IgZnFfY29kZWwgaWYgc2VsZWN0ZWQuIHNvIGNlX3RocmVzaG9s
ZCBpcyBub3QgdXNlZCBub3IgaXMgc3BsaXRfZ3NvIAp1c2VkIGZvciBjYWtlCgoKPgo+IE9uIE1v
biwgU2VwIDE2LCAyMDE5IGF0IDE6MDAgUE0gRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29t
PiB3cm90ZToKPj4gSSBhbSBwdXp6bGVkIGFzIHRvIHdoeSBmcV9jb2RlbF9mYXN0IHdvdWxkIHVz
ZSBtb3JlIHJhbSB0aGFuIGZxX2NvZGVsCj4+IHdvdWxkLCB3YXMgc2NlIChnc28tc3Bsb3R0aW5n
KSBlbmFibGVkPwo+Pgo+PiBzaW1pbGFybHksIHRoZSBkaWZmZXJlbmNlcyBiZXR3ZWVuIGhmc2Mg
YW5kIGh0YiBhcmUgaW50ZXJlc3RpbmcuIEkKPj4gZG9uJ3QgZ2V0IHRoYXQgZWl0aGVyLgo+Pgo+
PiBIb3cgbWFueSBjYWtlIGluc3RhbmNlcyBhcmUgYmVpbmcgY3JlYXRlZD8KPj4KPj4gQW5kIGZv
ciB0aGUgc2FrZSBvZiBkaXNjdXNzaW9uLCB3aGF0IGRvZXMgY2FrZSBzdGFuZGFsb25lIGNvbnN1
bWU/Cj4+Cj4+IE9uIE1vbiwgU2VwIDE2LCAyMDE5IGF0IDExOjIyIEFNIFNlYmFzdGlhbiBHb3R0
c2NoYWxsCj4+IDxzLmdvdHRzY2hhbGxAbmV3bWVkaWEtbmV0LmRlPiB3cm90ZToKPj4+IGFmdGVy
IHdlIGZvdW5kIG91dCBzZXJpb3VzIG91dCBvZiBtZW1vcnkgaXNzdWVzIG9uIHNtYWxsZXIgZW1i
ZWRkZWQgZGV2aWNlcyAoMTI4IG1iIHJhbSkgd2UgbWFkZSBzb21lIGJlbmNobWFya3Mgd2l0aCBk
aWZmZXJlbnQgc2NoZWR1bGVycwo+Pj4gd2l0aCB0aGUgcmVzdWx0IHRoYXQgY2FrZSB0YWtlcyBh
IHNlcmlvdXMgYW1vdW50IG9mIG1lbW9yeS4gd2UgdXNlIHRoZSBvdXQgb2YgdHJlZSBjYWtlIG1v
ZHVsZSBhbmQgd2UgdXNlIGl0IGNsYXNzIGJhc2VkIHNpbmNlIHdlIGhhdmUgY29tcGxleCBtZXRo
b2RzIG9mIGRvaW5nIHFvcyBwZXIgaW50ZXJmYWNlLCBwZXIgbWFjIGFkZHJlc3NlIG9yIGV2ZW4g
cGVyCj4+IEkgbm90ZSB0aGF0IEkgb2Z0ZW4gdGhvdWdodCBhYm91dCBoYXZpbmcgbWFjIGFkZHJl
c3MgZnVuY3Rpb25hbGl0eQo+PiBtaWdodCBiZSBhIHZhbHVhYmxlIG1vZGUgZm9yIGNha2UuCj4+
Cj4+PiBpcC9uZXR3b3JrLiBzbyBpdHMgbm90IGp1c3Qgc2ltcGxlIGNha2Ugb24gYSBzaW5nbGUg
aW50ZXJmYWNlIHNvbHV0aW9uLiB3ZSBtYWRlIHNvbWUgYmVuY2htYXJrcyB3aXRoIGRpZmZlcmVu
dCBzY2hlZHVsZXJzLiBkb2VzIGFueWJvZHkgaGF2ZSBhIHNvbHV0aW9uIGZvciBtYWtpbmcgdGhh
dCBiZXR0ZXI/Cj4+IFdpdGggc3VjaCBjb21wbGV4aXR5IHJlcXVpcmVkIEknZCBzdGljayB0byBo
ZnNjICsgZnFfWCByYXRoZXIgdGhhbgo+PiBsYXllciBpbiBjYWtlLgo+Pgo+PiBVbmRlcnN0YW5k
aW5nIHRoZSBtb2RlbCAoc2ggLXggdGhlIHRjIGNvbW1hbmRzIGZvciwgc2F5LCBoZnNjICsKPj4g
c29tZXRoaW5nIGFuZCBodGIgKyBzb21ldGhpbmcgKSB5b3VyIHVzZXJzIHJlcXVpcmUsIHRob3Vn
aCwgd291bGQgYmUKPj4gaGVscGZ1bC4gV2UgdHJpZWQgdG8gZGVzaWduIGNha2Ugc28gdGhhdCBh
IGppbGxpb24gb3B0aW1pemF0aW9ucyBzdWNoCj4+IGFzIGFjayBwcmlvcml0aXphdGlvbiwgcGVy
IG5ldHdvcmsgZnEgKGluc3RlYWQgcGVyIGZsb3cvcGVyIGhvc3QpIC0KPj4gYnV0IHdlIGNvdWxk
bid0IHBvc3NpYmx5IGNvdmVyIGFsbCB1c2UgY2FzZXMgaW4gaXQgd2l0aCBvdXQgbW9yZQo+PiBm
ZWVkYmFjayBmcm9tIHRoZSBmaWVsZC4KPj4KPj4gU3RpbGwuLi4gc3VjaCBhIGJpZyBkaWZmZXJl
bmNlIGluIG1lbW9yeSB1c2UgZG9lc24ndCBhZGQgdXAuIENha2UgaGFzCj4+IGEgbGFyZ2VyIGZp
eGVkIG1lbW9yeSBhbGxvY2F0aW9uCj4+IHRoYW4gZnFfY29kZWwsIGJ1dCB0aGUgcmVzdCBpcyBq
dXN0IHBhY2tldHMgd2hpY2ggY29tZSBmcm9tIGdsb2JhbCBtZW1vcnkuCj4+Cj4+IENhbiB5b3Ug
cG9pbnQgdG8gYSBidWlsZCBhbmQgYSBjb3VwbGUgdGFyZ2V0cyB3ZSBjb3VsZCB0cnk/IEkgYW0K
Pj4gcHJlc2VudGx5IHRyYXZlbGxpbmcgKGluIHBvcnR1Z2FsKSBhbmQgd29uJ3QKPj4gYmUgYmFj
ayBvbmxpbmUgdW50aWwgbGF0ZXIgdGhpcyB3ZWVrLgo+Pj4gSFRCL0ZRX0NPREVMIC0tLS0tLS3v
g6AgNjJNCj4+PiBIVEIvU0ZRIC0tLS0tLS3vg6AgNjJNCj4+PiBIVEIvUElFIC0tLS0tLS3vg6Ag
NjJNCj4+PiBIVEIvRlFfQ09ERUxfRkFTVCAtLS0tLS0t74OgIDY3TQo+Pj4gSFRCL0NBS0UgLS0t
LS0tLe+DoDExMU0KPj4+Cj4+PiBIRlNDL0ZRX0NPREVMX0ZBU1QgLS0tLS0tLe+DoCA0N00KPj4+
IEhUQi9QSUUgLS0tLS0tLe+DoCA0OU0KPj4+IEhUQi9TRlEgLS0tLS0tLe+DoCA1ME0KPj4+IEhG
U0MgL0ZRX0NPREVMIC0tLS0tLS3vg6AgNTJNCj4+PiBIRlNDL0NBS0UgLS0tLS0tLe+DoDEwOU0K
Pj4+Cj4+Pgo+Pj4gY29uc2lkZXIgdGhhdCB0aGUgYmVuY2htYXJrIGRvZXNudCBzaG93IHRoZSBy
ZWFsIHZhbHVlcy4gaXRzIHN5c3RlbSBvdmVyYWxsIGFuZCBkb2VzIG5vdCBjb25zaWRlciBtZW1v
cnkgdGFrZW4gYnkgdGhlIHdpcmVsZXNzIGRyaXZlciBmb3IgaW5zdGFuY2Ugd2hpY2ggaXMgYWJv
dXQgNDUgbWIgb2YgcmFtIGZvciBhdGgxMGsKPj4+IHNvIHRoaXMgbWFrZXMgYWxsIGV2ZW4gbW9y
ZSB3b3JzZSB1bmZvcnR1bmF0bHkgc2luY2UgdGhlcmUgaXMgbm90IHRoYXQgbWFueSByYW0gbGVm
dCBmb3IgY2FrZS4ganVzdCBhYm91dCA3MG1iIG1heWJlLgo+Pj4gQW0gMDguMDkuMjAxOSB1bSAx
OToyNyBzY2hyaWViIEpvbmF0aGFuIE1vcnRvbjoKPj4+Cj4+PiBZb3UgY291bGQgYWxzbyBzZXQg
aXQgYmFjayB0byAnaW50ZXJuZXQnIGFuZCBwcm9ncmVzc2l2ZWx5IHJlZHVjZSB0aGUKPj4+IGJh
bmR3aWR0aCBwYXJhbWV0ZXIsIG1ha2luZyB0aGUgQ2FrZSBzaGFwZXIgaW50byB0aGUgYWN0dWFs
IGJvdHRsZW5lY2suCj4+PiBUaGlzIGlzIHRoZSBjb3JyZWN0IGZpeCBmb3IgdGhlIHByb2JsZW0s
IGFuZCB5b3Ugc2hvdWxkIG5vdGljZSBhbgo+Pj4gaW5zdGFudCBpbXByb3ZlbWVudCBhcyBzb29u
IGFzIHRoZSBiYW5kd2lkdGggcGFyYW1ldGVyIGlzIGNvcnJlY3QuCj4+Pgo+Pj4gSGFuZCB0dW5p
bmcgdGhpcyBvbmUgbGluayBpcyBub3QgYSBwcm9ibGVtLiBJJ20gc2VhcmNoaW5nIGZvciBhIHNl
dCBvZiBzZXR0aW5ncyB0aGF0IHdpbGwgcHJvdmlkZSBnZW5lcmFsbHkgZ29vZCBwZXJmb3JtYW5j
ZSBhY3Jvc3MgYSB3aWRlIHJhbmdlIG9mIGRldmljZXMsIGxpbmtzLCBhbmQgc2l0dWF0aW9ucy4K
Pj4+Cj4+PiAgRnJvbSB3aGF0IHlvdSd2ZSBpbmRpY2F0ZWQgc28gZmFyIHRoZXJlJ3Mgbm90aGlu
ZyBhcyBlZmZlY3RpdmUgYXMgYSBjb3JyZWN0IGJhbmR3aWR0aCBlc3RpbWF0aW9uIGlmIHdlIGNv
bnNpZGVyIHRoZSBhbnRlbm5hIChsaW5rKSBhIGJsYWNrIGJveC4gRXhwZWN0aW5nIHRoZSB1c2Vy
IHRvIGlucHV0IGV4cGVjdGVkIHRocm91Z2hwdXQgZm9yIGV2ZXJ5IGxpbmsgYW5kIHRoZW4gbWFu
YWdpbmcgdGhhdCBpbmZvcm1hdGlvbiBpcyBlc3NlbnRpYWxseSBhIG5vbi1zdGFydGVyLgo+Pj4K
Pj4+IFJhZGlvIHR1bmluZyBwcm92aWRlcyBzb21lIGltcHJvdmVtZW50LCBidXQgdW50aWwgdWJp
cXVpdGkgc3RhcnRzIHNoaXBwaW5nIHdpdGggQ29kZWwgb24gbm9uLXJvdXRlciBkZXZpY2VzIEkg
ZG9uJ3QgdGhpbmsgdGhlcmUncyBhIGdvb2Qgc29sdXRpb24gaGVyZS4KPj4+Cj4+PiBBbnkgd2F5
IHRvIGhhdmUgdGhlIHJlY2VpdmluZyBkZXZpY2UgZGV0ZWN0IGJsb2F0IGFuZCBpbnNlcnQgYW4g
RUNOPwo+Pj4KPj4+IFRoYXQncyB3aGF0IHRoZSBxZGlzYyBpdHNlbGYgaXMgc3VwcG9zZWQgdG8g
ZG8uCj4+Pgo+Pj4gSSBkb24ndCB0aGluayB0aGUgdGltZSBzcGVudCBpbiB0aGUgaW50ZXJtZWRp
YXRlIGRldmljZSBpcyBkZXRlY3RhYmxlIGF0IHRoZSBrZXJuZWwgbGV2ZWwgYnV0IHdlIGtlZXAg
dHJhY2sgb2YgbGF0ZW5jeSBmb3Igcm91dGluZyBkZWNpc2lvbnMgYW5kIGNvdWxkIGRldGVjdCBi
bG9hdCB3aXRoIHNvbWUgYWNjdXJhY3ksIHRoZSBwcm9ibGVtIGlzIGhvdyB0byByZXNwb25kLgo+
Pj4KPj4+IEFzIGxvbmcgYXMgeW91IGNhbiBkZXRlY3Qgd2hpY2ggbGluayB0aGUgYmxvYXQgaXMg
b24gKGFuZCBpbiB3aGljaCBkaXJlY3Rpb24pLCB5b3UgY2FuIHJlc3BvbmQgYnkgcmVkdWNpbmcg
dGhlIGJhbmR3aWR0aCBwYXJhbWV0ZXIgb24gdGhhdCBoYWxmLWxpbmsgYnkgYSBzbWFsbCBhbW91
bnQuICBTaW5jZSB5b3UgaGF2ZSBhIGNvb3BlcmF0aW5nIG5ldHdvcmssIG1haW50YWluaW5nIGEg
dGltZSBzdGFuZGFyZCBvbiBlYWNoIG5vZGUgc3VmZmljaWVudCB0byBvYnNlcnZlIG9uZS13YXkg
ZGVsYXlzIHNlZW1zIGZlYXNpYmxlLCBhcyBpcyBlc3RhYmxpc2hpbmcgYSBub3JtYWwgYmFzZWxp
bmUgbGF0ZW5jeSBmb3IgZWFjaCBsaW5rLgo+Pj4KPj4+IFRoZSBjaGFyYWN0ZXJpc3RpY3Mgb2Yg
dGhlIGJhbmR3aWR0aCBwYXJhbWV0ZXIgYmVpbmcgdG9vIGhpZ2ggYXJlIGVhc3kgdG8gb2JzZXJ2
ZS4gIE5vdCBvbmx5IHdpbGwgdGhlIG9uZS13YXkgZGVsYXkgZ28gdXAsIGJ1dCB0aGUgcmVjZWl2
ZWQgdGhyb3VnaHB1dCBpbiB0aGUgc2FtZSBkaXJlY3Rpb24gYXQgdGhlIHNhbWUgdGltZSB3aWxs
IGJlIGxvd2VyIHRoYW4gY29uZmlndXJlZC4gIFlvdSBtaWdodCB1c2UgdGhlIGxhdHRlciBhcyBh
IGhpbnQgYXMgdG8gaG93IGZhciB5b3UgbmVlZCB0byByZWR1Y2UgdGhlIHNoYXBlZCBiYW5kd2lk
dGguCj4+Pgo+Pj4gRGVjaWRpbmcgd2hlbiBhbmQgYnkgaG93IG11Y2ggdG8gKmluY3JlYXNlKiBi
YW5kd2lkdGgsIHdoaWNoIGlzIHByZXN1bWFibHkgZGVzaXJhYmxlIHdoZW4gbGluayBjb25kaXRp
b25zIGltcHJvdmUsIGlzIGEgbW9yZSBkaWZmaWN1bHQgcHJvYmxlbSB3aGVuIHRoZSBsaW5rIGhh
cmR3YXJlIGRvZXNuJ3QgY29vcGVyYXRlIGJ5IGluZm9ybWluZyB5b3Ugb2YgaXRzIHN0YXR1cy4g
IChUaGlzIGlzIHNvbWV0aGluZyB5b3UgY291bGQgcmVhc29uYWJseSBhc2sgVWJpcXVpdGkgdG8g
YWRkcmVzcy4pCj4+Pgo+Pj4gSSB3b3VsZCBhc3N1bWUgdGhhdCBsaW5rIGNoYXJhY3RlcmlzdGlj
cyB3aWxsIGNoYW5nZSBzbG93bHksIGFuZCBydW4gYW4gb2NjYXNpb25hbCBleHBsaWNpdCBiYW5k
d2lkdGggcHJvYmUgdG8gc2VlIGlmIHNwYXJlIGJhbmR3aWR0aCBpcyBhdmFpbGFibGUuICBJZiB0
aGF0IHByb2JlIGNvbWVzIHRocm91Z2ggd2l0aG91dCBleGhpYml0aW5nIGJsb2F0LCAqYW5kKiB0
aGUgbGluayBpcyBvdGhlcndpc2UgbG9hZGVkIHRvIGNhcGFjaXR5LCB0aGVuIGluY3JlYXNlIHRo
ZSBzaGFwZXIgYnkgYW4gYW1vdW50IHdpdGhpbiB0aGUgcHJvYmUncyBjYXBhY2l0eSBvZiBtZWFz
dXJlbWVudCAtIGFuZCBzY2hlZHVsZSBhIHJlcGVhdC4KPj4+Cj4+PiBBIHN1aXRhYmxlIHByb2Jl
IG1pZ2h0IGJlIDEwMHggMTUwMGIgcGFja2V0cyBwYWNlZCBvdXQgb3ZlciBhIHNlY29uZCwgYnlw
YXNzaW5nIHRoZSBzaGFwZXIuICBUaGlzIHdpbGwgb2NjdXB5IGp1c3Qgb3ZlciAxTWJwcyBvZiBi
YW5kd2lkdGgsIGFuZCBjYW4gYmUgZXhwZWN0ZWQgdG8gaW5kdWNlIDEwbXMgb2YgZGVsYXkgaWYg
aW5qZWN0ZWQgaW50byBhIHNhdHVyYXRlZCAxMDBNYnBzIGxpbmsuICBPYnNlcnZlIHRoZSBkZWxh
eSBleHBlcmllbmNlZCBieSBlYWNoIHBhY2tldCAqYW5kKiB0aGUgcXVhbnRpdHkgb2Ygb3RoZXIg
dHJhZmZpYyB0aGF0IGFwcGVhcnMgYmV0d2VlbiB0aGVtLiAgT25seSBpZiBib3RoIGFyZSBmYXZv
dXJhYmxlIGNhbiB5b3Ugc2FmZWx5IG9wZW4gdGhlIHNoYXBlciwgYnkgMU1icHMuCj4+Pgo+Pj4g
U2luY2Ugd2lyZWxlc3MgbGlua3MgY2FuIGJlIGV4cGVjdGVkIHRvIGNoYW5nZSB0aGVpciBjYXBh
Y2l0eSBvdmVyIHRpbWUsIGR1ZSB0byBlZy4gd2VhdGhlciBhbmQgdHJlZSBncm93dGgsIHRoaXMg
c2VlbXMgdG8gYmUgbW9yZSBnZW5lcmFsbHkgdXNlZnVsIHRoYW4gYSBzdGF0aWMgZ3Vlc3MuICBZ
b3UgY291bGQgZGVwbG95IGEgbmV3IGxpbmsgd2l0aCBhIGNvbnNlcnZhdGl2ZSAiZ3Vlc3MiIG9m
IHNheSAxME1icHMsIGFuZCBqdXN0IHByb2JlIGZyb20gdGhlcmUuCj4+Pgo+Pj4gICAtIEpvbmF0
aGFuIE1vcnRvbgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPj4+IENha2UgbWFpbGluZyBsaXN0Cj4+PiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dAo+Pj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo+Pj4KPj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBDYWtl
IG1haWxpbmcgbGlzdAo+Pj4gQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPj4+IGh0dHBzOi8v
bGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UKPj4KPj4KPj4gLS0KPj4KPj4gRGF2
ZSBUw6RodAo+PiBDVE8sIFRla0xpYnJlLCBMTEMKPj4gaHR0cDovL3d3dy50ZWtsaWJyZS5jb20K
Pj4gVGVsOiAxLTgzMS0yMDUtOTc0MAo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
