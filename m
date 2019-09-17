Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E069B4B5D
	for <lists+cake@lfdr.de>; Tue, 17 Sep 2019 11:56:48 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7F0373CB38;
	Tue, 17 Sep 2019 05:56:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568714207;
	bh=fOMyy/mkDt5IqH/imbc/ig4PEY7O4L8HM6gNQnA7AOo=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WGbcpWcdy4UB4F6EDXcBw1q4qnaaaRoMALg+1cavfC31at1rxr2s2A7aAu+H3SoV+
	 pVejVOu7IV4iku9E/vzCmXPkPHlfr4yWsIY85rdG22m3WouNYqrifeeJ8gMZ4GdFhT
	 RAC0QGJFWmhy7ZFJeVuum/cD8ojpAp4gxmTAD6G+D2bSk69b2i1s2TzXGUuTQJPsDU
	 dH/GxltNdvPqjNBStrNs+Jl7ZMyvo3sXvmezCCE4vqtDPPVEU9+SJ5G30duKusNL6D
	 drVws+fR6Eyqiws7UwGOy1LexZwI+ERp8WA5xzJIIDJ4rFBIvX1H2i8YdyBGrW8qiy
	 FYj9kxfTEYAGQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DBA1F3B2A4
 for <cake@lists.bufferbloat.net>; Tue, 17 Sep 2019 05:56:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=HYvHxKgsqjvU7i9UkxV5y+DHff0BvJj2wQ0zgCsm5Ow=; 
 b=QIwi6i/6IvMhQdmeA/NNIA5o1nWtVLLdGAFArhEofuYmQ+Qog0WOnwNFSxrBS/Q4eg3ePNxQbu3bH/yEJhn+BEaK1TS+GPiS/cB2d34HUatqjJihxjGWpqBWIzbMLi8de7rDjQh3jVvLAuGjrOI1B5d7Y+j35twuR5sKLSMjh0g=;
To: Jonathan Morton <chromatix99@gmail.com>
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
 <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
 <057ea708-6797-23f5-ef01-9d3d7b002578@newmedia-net.de>
 <878sqomoj4.fsf@toke.dk>
 <b52b59ac-c5f7-8015-c7dc-b82406b9002c@newmedia-net.de>
 <87h85cl4qk.fsf@toke.dk>
 <65e68948-6464-23ac-5df0-91735fc298af@newmedia-net.de>
 <44AD9976-DC81-47F7-BBB3-0D884C880A29@gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <cf9270f0-90b4-2157-123c-245c87b95d0f@newmedia-net.de>
Date: Tue, 17 Sep 2019 11:55:08 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <44AD9976-DC81-47F7-BBB3-0D884C880A29@gmail.com>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1iAAE7-00073L-7C; Tue, 17 Sep 2019 11:56:51 +0200
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
Cc: cake@lists.bufferbloat.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CkFtIDE3LjA5LjIwMTkgdW0gMTE6MjEgc2NocmllYiBKb25hdGhhbiBNb3J0b246Cj4+IE9uIDE3
IFNlcCwgMjAxOSwgYXQgODozMSBhbSwgU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFs
bEBuZXdtZWRpYS1uZXQuZGU+IHdyb3RlOgo+Pgo+PiBhY2NvcmRpbmcgdG8gdGhlIG91dHB1dCB0
aGVyZSBpcyBhIGZsYXcvYnVnIGluIHRoZSBtZW1vcnkgbGltaXQgY2FsY3VsYXRpb24KPj4gY2Fr
ZV9yZWNvbmZpZ3VyZSAgICAgbWF5IHNldCBidWZmZXJfbGltaXQgdG8gIH4wIGlmIG5vIHJhdGUg
aXMgc2V0Lgo+Pgo+PiB0aGUgZm9sbG93aW5nIGxpbmUgIm1pbihidWZmZXJfbGltaXQsIG1heChz
Y2gtPmxpbWl0ICogcHNjaGVkX210dShxZGlzY19kZWMoc2NoKSwgcS0+YnVmZmVyX2NvbmZpZ19s
aW1pdCkpIiBkb2VzbnQgbWFrZSBpdCBiZXR0ZXIgc2luY2UgYnVmZmVyX2NvbmZpZ19saW1pdCBp
cyBub3QgY29uZmlndXJlZAo+PiBzbyB3ZSBnb3QgYSBwb3NzaWJsZSBtZW1vcnkgb3ZlcnVzZSBo
ZXJlLgo+IEluIEMsIH4wIG1lYW5zICJhcyBuZWFyIHRvIGluZmluaXR5IGFzIGFuIHVuc2lnbmVk
IGludGVnZXIgY2FuIGdldCIsIG9yIGVmZmVjdGl2ZWx5IDRHQi4gIFRoYXQgY29uc3RydWN0IGlz
IHVzZWQgdG8gZ2V0IHRoYXQgcGFydCBvZiB0aGUgY2FsY3VsYXRpb24gb3V0IG9mIHRoZSB3YXks
IHNvIHRoYXQgaXQgaGFzIG5vIGVmZmVjdCBpbiB0aGUgZm9sbG93aW5nIG5lc3RlZCBtYXgoKSBh
bmQgbWluKCkgbWFjcm9zLgo+Cj4gV2hhdCBhY3R1YWxseSBoYXBwZW5zIGhlcmUgaXMgdGhhdCB0
aGUgInBhY2tldCBsaW1pdCIgcHJvcGVydHkgb2YgdGhlIGludGVyZmFjZSBiZWNvbWVzIGdvdmVy
bmluZywgYW5kIGlzIHJlY2FsY3VsYXRlZCBpbiB0ZXJtcyBvZiBhIGJ5dGUgY291bnQgYnkgbXVs
dGlwbHlpbmcgaXQgYnkgdGhlIE1UVS4gIFNvIHRoZSBsaW1pdCBjb25maWd1cmVkIGZvciBlYWNo
IENha2UgaW5zdGFuY2UgaW4geW91ciBwYXJ0aWN1bGFyIGNhc2UgaXMgMTVNQiwgY29ycmVzcG9u
ZGluZyB0byAxMCwwMDAgcGFja2V0czoKPgo+PiAgIG1lbW9yeSB1c2VkOiAwYiBvZiAxNTE0MEti
Cj4gV2l0aCBzbyBtYW55IENha2UgaW5zdGFuY2VzIGxvYWRlZCAodmVyeSBtdWNoICpub3QqIHRo
ZSBub3JtYWwgY29uZmlndXJhdGlvbiEpIGFuZCBvbmx5IDEyOE1CIHRvdGFsIFJBTSwgMTVNQiBp
cyBvYnZpb3VzbHkgdG9vIGhpZ2ggYSBsaW1pdCB0byBiZSBjb21wbGV0ZWx5IHNhZmUgLSBldmVu
IHRob3VnaCBDYWtlJ3MgQVFNIGFjdGlvbiB3aWxsIGtlZXAgdGhlICphdmVyYWdlKiBxdWV1ZSBk
ZXB0aCB3ZWxsIGJlbG93IHRoYXQgbGltaXQuCj4KPiBUaGUgY29ycmVjdCBmaXggaGVyZSBpcyBu
b3QgdG8gY2hhbmdlIHRoZSBjb2RlLCBidXQgdG8gdXNlIHRoZSBtZW1saW1pdCBwYXJhbWV0ZXIg
dG8gb3ZlcnJpZGUgdGhlIGRlZmF1bHQuICBUaGVzZSB1bnVzdWFsIGNvbmZpZ3VyYXRpb25zLCB3
aGVyZSB0aGUgZGVmYXVsdCBsb2dpYyBicmVha3MsIGFyZSBwcmVjaXNlbHkgd2h5IGl0IHdhcyBh
ZGRlZC4Kb2theS4gc28gaSB3aWxsIGhhbmRsZSBpdCBjdXN0b20gaW4gbXkgY29kZSBkZXBlbmRp
bmcgb24gdGhlIGRldmljZSBtZW1vcnkKPgo+ICAgLSBKb25hdGhhbiBNb3J0b24KPgo+Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBs
aXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQu
bmV0L2xpc3RpbmZvL2Nha2UK
