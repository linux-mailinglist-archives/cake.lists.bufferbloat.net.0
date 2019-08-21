Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 5579A973E1
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 09:52:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 524683CB38;
	Wed, 21 Aug 2019 03:52:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566373920;
	bh=0gFvi8PVgn7JZ2JtPnkAe4o9IgI8EWTPpGn9Ob17YBg=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Auoqtf46v2vyJdvCzdRZyttoDqYbJUSBuW+45U91VOvYde/w7lRTI/Kvpk6toydIp
	 7N4m/5V4u1Tg5edGizuHz02PHg9TFAOHPH9SGca59A/FJdZLUx2/u4rSWORIFPcxxz
	 e4AsdnjskPZSks041LkgFTAkZIhgNuoNVK++/yjRqY7yWaoLdbHT3CXAb7XeHk5Xsg
	 jWqSMWpmnb46pe7cnOPjG7vwsg/pJ2z9BU+nSSGL1CtK/ooFFUcrcxWxPunpJlSp22
	 M7bBUBt9CbNI6Bb7A0MH7CJIEfjnR5RenUWA80tJ90wJCJ+VB2Kg8vh61ndU4UtpN1
	 r9b878n9rADEg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 45E713B2A4
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 03:51:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=UvjjeDvIOnJjcGFYPN7dur0erYZh86I+fh5libEvkmU=; 
 b=a+NpxSUMlezU67J463W1wvtl7VR3NZM68D0GqnEwJ9VDxPQ0/9xUXVh8TShcsV/hmYT4cal1Wdbm/xaoqIctrxn5MueLFh/bjF00ipW/5knpWMdPxKR9cvrh7TzdjQLSqjVupo2b7daNyCfwP2bDpe3V26H2XQI0G1g2HeAtEuo=;
To: Sebastian Moeller <moeller0@gmx.de>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <EDCD1D95-BEA1-45A8-B6A2-4FD4BE418450@gmx.de>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <d9f3d04b-61e7-a77f-e242-b4b99c49fe9a@newmedia-net.de>
Date: Wed, 21 Aug 2019 09:50:56 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <EDCD1D95-BEA1-45A8-B6A2-4FD4BE418450@gmx.de>
X-Received: from [2003:c9:3f25:1300:e947:ab73:1d88:4792]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i0LPZ-00083k-Ja; Wed, 21 Aug 2019 09:52:05 +0200
Subject: Re: [Cake] cake in dd-wrt
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
Cc: "cake@lists.bufferbloat.net >> Cake List" <cake@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Pj4gaSBoYXZlIHNlZW4gdGhpcyBhbHJlYWR5LiBvdXQgcGxhbiBoZXJlIGlzIHRoYXQgdGhlIHVz
ZXIgc3BlY2lmaWVzIHRoZSBpbnRlcm5ldCBjb25uZWN0aW9uIHR5cGUgbGlrZSB2ZHNsMiwgY2Fi
bGUsIHdoYXRldmVyIGluIGNhc2Ugb2YgY2FrZSB3aGljaCB0aGVuIHdpbGwgYmUgdXNlZAo+PiBh
cyBhcmd1bWVudAo+IAlHb29kIGdvYWwsIHRoYXQgYWxzbyBpcyB0aGVvcmV0aWNhbGx5IHdlbGwg
c3VwcG9ydGVkIGJ5IGNha2Ugd2l0aCBpdHMgbXVsdGl0dWRlIG9mIGVuY2Fwc3VsYXRpb24vb3Zl
cmhlYWQgcmVhbGF0ZWQga2V5d29yZHMuIFVuZm9ydHVuYXRlbHkgcmVhbGl0eSBpcyBub3QgYXMg
bmljZSBhbmQgdGlkeSBhcyB0aGlzIGNvbGxlY3Rpb24gb2Yga2V5d29yZHMgaW1wbGllcywgVGhl
cmUgYXJlIDgga2V5d29yZHMgZm9yIEFUTS9BQUw1IGJhc2VkIGVuY2Fwc3VsYXRpb25zIChBRFNM
LCBBRFNMMiwgQURTTDIrLCAuLi4pLCAyIGZvciBWRFNMMiwgMSBmb3IgRE9DU0lTLCAxIGZvciBl
dGhlcm5ldCwgZm9yIGEgdG90YWwgb2YgMTIgdGhhdCBhbGwgY2FuIGJlIGNvbWJpbmVkIHdpdGgg
b25lIG9yIG1vcmUgVkxBTi10YWcga2V5d29yZHMsIGZvciBhIHRvdGFsIG9mIDI0IHRvIDM2IGNv
bWJpbmF0aW9ucy4gKEFuZCB0aGVzZSBhcmUgbm90IGV2ZW4gZXhoYXVzdGl2ZSwgYXMgZS5nLiB0
aGUgdXNlIG9mIGRzLWxpdGUgY2FuIGluY3JlYXNlIHRoZSBwZXItcGFja2V0IG92ZXJoZWFkIGZv
ciBJUHY0IHBhY2tldHMgYnkgYW5vdGhlciAyMCBieXRlcykuCj4gCUlkZWFsbHkgb25lIHdvdWxk
IGp1c3QgZW1waXJpY2FsbHkgbWVhc3VyZSB0aGUgZWZmZWN0aXZlIG92ZXJoZWFkIGFuZCB1c2Ug
dGhlICJvdmVyaGVhZCBOTiBtcHUgTk4iIGtleXdvcmRzIGluc3RlYWQsIGJ1dCB0aGF0IGhhcyBp
c3N1ZXMgYXMgbWVhc3VyaW5nIG92ZXJoZWFkIGVtcGlyaWNhbGx5IGlzIHNpbXBseSBoYXJkLi4u
IFRoZSBiZXN0IGJldCB3b3VsZCBiZSB0byBsZXZlcmFnZSBCRVJFQyB0byByZXF1aXJlIElTUHMg
dG8gZXhwbGljaXRseSBpbmZvcm0gdGhlaXIgY3VzdG9tZXJzIG9mIHRoZSBlZmZlY3RpdmUgZ3Jv
c3MtcmF0ZXMgYW5kIGFwcGxpY2FibGUgb3ZlcmhlYWRzIGZvciBlYWNoIGxpbmssIGJ1dCBJIGFt
IG5vdCBob2xkaW5nIG15IGJyZWF0aC4gT3ZlciBhdCBodHRwczovL29wZW53cnQub3JnL2RvY3Mv
Z3VpZGUtdXNlci9uZXR3b3JrL3RyYWZmaWMtc2hhcGluZy9zcW0gd2UgdHJpZWQgdG8gZ2l2ZSBz
aW1wbGlmaWVkIGluc3RydWN0aW9ucyBmb3Igc2V0dGluZyB0aGUgb3ZlcmhlYWRzIGZvciBkaWZm
ZXJlbnQgYWNjZXNzIHRlY2hub2xvZ2llcywgYnV0IHRoZXNlIGFyZSBub3QgZ3VhcmFudGVlZCB0
byBmaXQgZXZlcnlib2R5IChub3QgZXZlbiBtb3N0IHVzZXJzLCBhcyB3ZSBoYXZlIG5vIG51bWJl
cnMgYWJvdXQgdGhlIHJlbGF0aXZlIGRpc3RyaWJ1dGlvbnMgb2YgdGhlIGRpZmZlcmVudCBlbmNh
cHN1bGF0aW9uIG9wdGlvbnMpLgo+Cj4gQmVzdCBSZWdhcmRzCj4gCSJhbm90aGVyIiBTZWJhc3Rp
YW4KCmFzIGkgc2FpZC4gaSBqdXN0IHN0YXJ0ZWQuIGxldHMgc2VlIGlmIGkgY2FuIGZpbmQgYSBi
ZXR0ZXIgc29sdXRpb24gb3IgYSAKY2xldmVyIHdheSBvZiBhdXRvIGRldGVjdGluZy9tZWFzdXJp
bmcgdGhlIG92ZXJoZWFkCgpTZWJhc3RpYW4KCj4KPgo+Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
