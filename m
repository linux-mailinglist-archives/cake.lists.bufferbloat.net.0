Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id ED190195E03
	for <lists+cake@lfdr.de>; Fri, 27 Mar 2020 20:00:08 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A2CA43CB3C;
	Fri, 27 Mar 2020 15:00:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1585335606;
	bh=ANeyKazntxAQWPmQw+TkdE3Wz2W1jZXT6uVDLHSlnWs=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Bk6R0aOEilap/zcGRnq/E6HxAKxuKlv9jwK4fwrsAbc6yf/+JmP2pvQSf23TQ71AR
	 XzzAltmjznT/muaUM0dVJPTBd9VHu6AVqI/DkVpDMMeiRd5H5LTQzFM2lO6K8yOwqk
	 LT5eJ8onzELx0/jRQcnsIq3GhMUlLXyVlk6g2DttbxoKH8Zvd6K2LfP42jav7PXiXy
	 w78W2WDPTn0GNu8nLiYHFGslZf2MmFiGIp5lUh8PLxTK22flyyOD/L8JhxvmscU2kg
	 azfJlHgI5iwsOME13pbYs5F+S0n3Vk5WNcvV7wZToDNIH6VnVJSIQVy7poUTHG2d4S
	 IMEyxFZ6LrY3A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp108.iad3a.emailsrvr.com (smtp108.iad3a.emailsrvr.com
 [173.203.187.108])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 61F443CB35
 for <cake@lists.bufferbloat.net>; Fri, 27 Mar 2020 15:00:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1585335605;
 bh=+YdGh6uj8178P3tv+Y824/YauSOoUtmbPhRnWYrOZk0=;
 h=Date:Subject:From:To:From;
 b=HUjcaDndMhFaKjJji935oqbFOOonFOtgvs7Dy2yHVJAqdygR5iD8qTlyDLPOSQERG
 Ha9KMKTUcL0i9Jd3Jb1QU135AUsD8RAlQfKs86k09IdqBRB30wYrErGPpW9istZON2
 6pDuhi0+h/3OddCeWduJzov0+vtS6U/IDo+Z+RsE=
Received: from app51.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp6.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id E57C255F7;
 Fri, 27 Mar 2020 15:00:04 -0400 (EDT)
X-Sender-Id: dpreed@deepplum.com
Received: from app51.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140]) by 0.0.0.0:25 (trex/5.7.12);
 Fri, 27 Mar 2020 15:00:05 -0400
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app51.wa-webapps.iad3a (Postfix) with ESMTP id CE357A12D4;
 Fri, 27 Mar 2020 15:00:04 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Fri, 27 Mar 2020 15:00:04 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Fri, 27 Mar 2020 15:00:04 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Dave Taht" <dave.taht@gmail.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: plain
In-Reply-To: <CAA93jw7u5xtq9fzx9iCMd5StW4A=rY7D74YYbKRgAo+5YVajHw@mail.gmail.com>
References: <CAA93jw7u5xtq9fzx9iCMd5StW4A=rY7D74YYbKRgAo+5YVajHw@mail.gmail.com>
Message-ID: <1585335604.839628636@apps.rackspace.com>
X-Mailer: webmail/17.3.3-RC
X-Classification-ID: 7c6b1e4c-e1f4-4f6f-b938-07764c892702-1-1
Subject: Re: [Cake]
 =?utf-8?q?mo_bettah_open_source_multi-party_videoconfernci?=
 =?utf-8?q?ng_in_an_age_of_bloated_uplinks=3F?=
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
Cc: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Anthony Minessale II <anthm@freeswitch.org>,
 Cake List <cake@lists.bufferbloat.net>, Ken Rice <krice@freeswitch.org>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Q29uZ2VzdGlvbiBjb250cm9sIGZvciByZWFsLXRpbWUgdmlkZW8gaXMgcXVpdGUgZGlmZmVyZW50
IHRoYW4gZm9yIHN0cmVhbWluZy4gU3RyZWFtaW5nIHJlYWxseSBpcyBkZWFsdCB3aXRoIGJ5IGEg
YmlnIGVub3VnaCAobXVsdGktc2Vjb25kKSBidWZmZXJpbmcsIGFuZCBjYW4gaW4gcHJpbmNpcGxl
IHdvcmsgZ3JlYXQgb3ZlciBUQ1AgKGlmIGRlYmxvYXRlZCkuCgpVRFAgY29uZ2VzdGlvbiBjb250
cm9sIE1VU1QgYmUgZW5kLXRvLWVuZCBhbmQgZG9uZSBpbiB0aGUgYXBwbGljYXRpb24gbGF5ZXIs
IHdoaWNoIGlzIHVzdWFsbHkgb3V0c2lkZSB0aGUgT1Mga2VybmVsLiBUaGlzIG1ha2VzIGl0IHRy
aWNreSwgYmVjYXVzZSB5b3UgZW5kIHVwIHdpdGggbGF0ZW5jeSB2YXJpYXRpb24gZHVlIHRvIGVo
IE9TJ3MgcHJvY2VzcyBzY2hlZHVsZXIgdGhhdCBpcyBvbiB0aGUgb3JkZXIgb2YgbWFnbml0dWRl
IG9mIHRoZSByZWFsLXRpbWUgcmVxdWlyZW1lbnRzIGZvciBhaXItdG8tYWlyIG9yIGxpZ2h0LXRv
LWxpZ2h0IHJlc3BvbnNlIChtZWFuaW5nIHRoZSBwaHlzaWNhbCB0cmFuc2l0aW9uIGZyb20gc291
bmQgb3IgcGljdHVyZSB0byBhbmQgZnJvbSB0aGUgdHJhbnNkdWNlcikuCgpUaGlzIGNyZWF0ZXMg
YSBnb2Rhd2Z1bCBtZXNzIHdoZW4gdHJ5aW5nIHRvIGRvIGFuIGFwcC4gV2hldGhlciBpbiBXZWJS
VEMgKHBlZXIgdG8gcGVlciBVRFApIG9yIGluIGEgTGludXggdXNlcnNwYWNlIGFwcCwgdGhlIHNj
aGVkdWxlciBoYXMgaHVnZSB2YXJpYW5jZSBpbiBkZWxheS4KCk5vdyBnZXR0aW5nIHJpZCBvZiBi
bG9hdCBjdXJyZW50bHkgcmVxdWlyZXMgVENQIHRvIHJlc3BvbmQgdG8gY29uZ2VzdGlvbiBzaWdu
YWxsaW5nLiBVRFAgaW4gdGhlIGtlcm5lbCBkb2Vzbid0IGRvIHRoYXQsIGFuZCBpdCBkb2Vzbid0
IHRlbGwgdXNlcnNwYWNlIG11Y2ggZWl0aGVyICh5b3UgY2FuIHRyeSB0byBkZXRlY3QgcGFja2V0
IGRyb3BzIGluIHVzZXJzcGFjZSwgYnV0IGNvZGluZyB0aGF0IHVwIGlzIHF1aXRlIGhhcmQgYmVj
YXVzZSB0aGUgc2NoZHVsZXJzIGdldCBpbiB0aGUgd2F5IG9mIG1lYXN1cmVtZW50LCBhbmQgZm9y
Z2V0IGFib3V0IEVDTiBiZWluZyBzZWVuIGluIHVzZXJzcGFjZSkKClRoaXMgaXMgT1MgYXJjaGl0
ZWN0dXJlIG1lc3NpbmVzcywgbm90IGEgbGF5ZXIgMiBvciAzIGlzc3VlLgoKSSd2ZSB0aG91Z2h0
IGFib3V0IHRoaXMgYSBsb3QuIEhlcmUncyBteSB0aG91Z2h0czoKCkkgaGF0ZSBwdXR0aW5nIHRo
aW5ncyBpbiB0aGUga2VybmVsISBJdCdzIGluc2VjdXJlLiBCdXQgd2hhdCB0aGlzIHNheXMgaXMg
dGhhdCBmb3IgdmVyeSBoaXN0b3JpY2FsIGFuZCBzdHVwaWQgcmVhc29ucyAocmVsYXRlZCB0byB0
aGUgaWRlYXMgb2YgZWFybHkgdGltZXNoYXJpbmcgc3lzdGVtcyBsaWtlIFVuaXggYW5kIE11bHRp
Y3MpIGZvbGtzIHRyeSB0byBtYWtlIHJlYWwtdGltZSBhbGdvcml0aG1zIGxvb2sgbGlrZSBvcmRp
bmFyeSAicHJvY2Vzc2VzIiB3aG9zZSBub3Rpb24gb2YgY29udHJvbGxpbmcgdGVtcG9yYWwgYmVo
YXZpb3IgaXMgYWJzdHJhY3RlZCBhd2F5LgoKU286IAoxLiBXZSByZWFsbHkgc2hvdWxkIHJldGhp
bmsgaG93IHRpbWluZy1zZW5zaXRpdmUgYWxnb3JpdGhtcyBhcmUgZXhwcmVzc2VkLCBhbmQgaXQg
aXNuJ3QgZ29ubmEgYmUgZ29vZCB0byBiYXNlIHRoZW0gb24gc2VtYXBob3JlcyBhbmQgdGhyZWFk
cyB0aGF0IHJ1biBhdCByYW5kb20gcmF0ZXMuIFRoYXQgbWVhbnMgYSB2ZXJ5IGRpZmZlcmVudCBP
UyBjb25jZXB0dWFsIGZyYW1ld29yay4gQ2FuIHRoaXMgc2hhcmUgd2l0aCwgc2F5LCB0aGUgTGlu
dXggd2Uga25vdyBhbmQgbG92ZSAtIHllcywgdGhlIGhhcmR3YXJlIGNhbiBiZSBzaGFyZWQuIE9u
ZSBzaG91bGQgYmUgYWJsZSB0byBkZWRpY2F0ZSB2aXJ0dWFsIHByb2Nlc3NvcnMgdGhhdCBhcmUg
bm90IHJ1bm5pbmcgTGludXggcHJvY2Vzc2VzLCBidXQgaW5zdGVhZCBhbm90aGVyIGNvbXB1dGF0
aW9uYWwgbW9kZWwgKGRhdGFmbG93PykuCkFuIGV4YW1wbGUgb2YgdGhpcyAodGhvdWdoIGNsdW5r
eSBhbmQgdW5zdXBwb3J0ZWQgYnkgZ29vZCB0b29scykgaXMgaW4gRnJlZUJTRCwgaXQncyBjYWxs
ZWQgKm5ldGdyYXBoKi4gSXQncyBhIHN0cnVjdHVyZWQgd2F5IHRvIHdyaXRlIHJlYWN0aXZlIGFs
Z29yaXRobXMgdGhhdCBhcmUgZGVtYW5kIG9yIGFycml2YWwgZHJpdmVuLiBJdCBhbHNvIGhhcyBz
b21lIHNlY3VyaXR5IGlzc3VlcywgYW5kIHNpbmNlIGl0IGlzIGhlYXZpbHkgYmFzZWQgb24gcGFz
c2luZyBtYnVmcyBhcm91bmQgaXQncyByZWFsbHkgcXVpcmt5LiBCdXQgSSBoYXZlIGZvdW5kIGl0
IHVzZWZ1bCBmb3IgdGhlIGtpbmQgb2YgdGhpbmdzIHRoYXQgbmVlZCB0byBnZXQgZG9uZSBpbiB0
ZWxlY29uZmVyZW5jaW5nIHZvaWNlIGFuZCB2aWRlby4KCjIuIEVCUEYgaXMgaW50ZXJlc3Rpbmcs
IGJlY2F1c2UgaXQgaXMgbW9yZSBzZWN1cmUsIGFuZCBpcyBhZ2FpbiBmb2N1c2VkIG9uIHJ1bm5p
bmcgY29kZSBhdCBrZXJuZWwgbGV2ZWwsIGV2ZW50LWRyaXZlbi4gIEkgdGhpbmsgaXQgd291bGQg
YmUgYSBzZXJpb3VzbHkgZGlmZmljdWx0IGxpZnQgdG8gZ2V0IGl0IHRvIHRoZSBwb2ludCB3aGVy
ZSBvbmUgY291bGQgcHJvZ3JhbSB0aGUgbmV0d29ya2VkIG1lZGlhIHByb2Nlc3NpbmcgaW4gQlBG
LgoKMy4gT25lIG9mIHRoZSBuaWNlIHRoaW5ncyBhYm91dCBLVk0gKGhhcmR3YXJlIHZpcnR1YWxp
emF0aW9uKSBpcyB0aGF0IHBvdGVudGlhbGx5IGl0IGxldHMgZGlmZmVyZW50IGxvdyBsZXZlbCBt
YWNoaW5lIG1vZGVscyBzaGFyZSBhIGNvbW1vbiBtYWNoaW5lLiBJdCBvY2N1cnMgdG8gbWUgdGhh
dCB1c2luZyBWSVJUSU8gbmV0d29yayBkZXZpY2VzIGFuZCBzb21lIGtpbmQgb2YgVklSVElPIG1l
ZGlhIHByb2Nlc3NpbmcgZGV2aWNlcywgdGhhdCBhIEtWTSB2aXJ0dWFsIG1hY2hpbmUgY291bGQg
YmUgaG9va2VkIHVwIHRvIHRoZSBwYWNrZXQtbGV2ZWwgbmV0d29ya2luZyBkcml2ZXJzIGluIHRo
ZSBlbmQgZGV2aWNlLCBpc29sYXRpbmcgdGhlIHRlbGVjb25mZXJlbmNpbmcgZnJvbSB0aGUgcmVz
dCBvZiB0aGUgZW5kcG9pbnQgT1MsIGFuZCBjcmVhdGluZyB0aGUgcmlnaHQga2luZCBvZiBuZWFy
LWJhcmUtLW1ldGFsIGVudmlyb25tZW50IGZvciBtYW5hZ2luZyB0aGUgdGltaW5nIG9mIG5ldHdv
cmsgcGFja2V0cyBhbmQgdGhlIHBhdGhzIHRvIHRoZSBzY3JlZW4gYW5kIGF1ZGlvIHRoYXQgd291
bGQgYmUgc2ltcGxlIGFuZCBjbGVhbiBhbmQgdGlnaHRseSBzY2hlZHVsZWQuIEtWTSBjb3VsZCAi
b3duIiBvbmUgb3IgbW9yZSBvZiB0aGUgcGh5c2ljYWwgY29yZXMgZHVyaW5nIHRoZSB0ZWxlY29u
ZmVyZW5jZS4KCllvdSBjYW4gc2VlLCB0aG91Z2gsIHRoYXQgdGhpcyBpc24ndCBqdXN0IGEgIm5l
dHdvcmsgcHJvdG9jb2wgZGVzaWduIiBwcm9ibGVtLiBUaGlzIGlzIG9ubHkgcGFydGx5IGEgbmV0
d29yayBwcm90b2NvbCBpc3N1ZSwgYnV0IG9uZSB0aGF0IGlzIGNvdXBsZWQgd2l0aCB0aGUgYXJj
aGl0ZWN0dXJlIG9mIHRoZSBlbmQgc3lzdGVtcy4KCkkgcmVtaW5pc2NlIGEgbGl0dGxlIGJpdCB0
aGlua2luZyBiYWNrIHRvIHRoZSAxOTcwJ3MgYW5kIDgwJ3Mgd2hlbiBUQ1AvSVAgYW5kIFVEUC9J
UCB3ZXJlIGJlaW5nIGRlc2lnbmVkLiBTYWRseSwgaXQgd2FzIG9uZSBvZiB0aGUgYmlnIHByb2Js
ZW1zIG9mIGNvbW11bmljYXRpbmcgYmV0d2VlbiB0aGUgT1MgY29tbXVuaXR5IGFuZCB0aGUgcHJv
dG9jb2wgY29tbXVuaXR5IHRoYXQgdGhlIE9TIGNvbW11bml0eSBjb3VsZG4ndCB0aGluayBvdXRz
aWRlIHRoZSAidGltZXNoYXJpbmciIHN5c3RlbSBib3gsIGFuZCB0aGUgcHJvdG9jb2wgY29tbXVu
aXR5IHRob3VnaHQgb2YgbmV0d29ya2luZyBsaWtlIHBob25lIGNhbGxzIChzZXNzaW9ucykuIFRo
aXMgaXMgd2hlcmUgdGhlIG5lZWQgZm9yIGNvbnRyb2wgb2YgdGltaW5nIGFuZCBidWZmZXJpbmcg
Z290IGxvc3QuIFRoZSB0aW1lc2hhcmluZyBmb2xrcyBsYXJnZWx5IHRob3VnaHQgb2YgbmV0d29y
a3MgYXMgZm9yIHJlbGlhYmxlIHRpbWVsZXNzIHNlcXVlbnRpYWwgInN0cmVhbXMiIG9mIGRhdGEg
dGhhdCBoYWQgbm8gcGFydGljdWxhciB1cmdlbmN5LiBUaGUgbmV0d29yayBwcm90b2NvbCBmb2xr
cyB3ZXJlIGZvY3VzZWQgb24gQVJRLgpPbmx5IGEgZmV3IG9mIHVzIGNhcmVkIGFib3V0IGVuZC10
by1lbmQgbGF0ZW5jeSBib3VuZHMgKHdoZXJlIGVuZHMgbWVhbnQga2V5Ym9hcmQgY2xpY2sgb3Ig
YXVkaW8gc2FtcGxlIHRvIHNjcmVlbiBkaXNwbGF5IGNoYW5nZSBvciBzcGVha2VyIG1vdGlvbiku
IFRoZSBwYWNrZXQgc3BlZWNoIGd1eXMgZGlkLCBidXQgbW9zdCBuZXR3b3JraW5nIGd1eXMgd2Fu
dGVkIHRvIHRvc3MgdGhlbSB1bmRlciB0aGUgYnVzIGFzIGFubm95aW5nLiBBbmQgdGhvc2Ugb2Yg
dXMgZG9pbmcgZGlzdHJpYnV0ZWQgbXVsdGlub2RlIGFsZ29yaXRobXMgZGlkLCBidXQgdGhlIHJl
bW90ZSBsb2dpbiBhbmQgRlRQIGd1eXMgd2VyZSBza2VwdGljYWwgdGhhdCB3b3VsZCBldmVyIG1h
dHRlci4KCkl0J3MgdGhlIGxhdGVuY3ksIHN0dXBpZC4gTm90IHRoZSByZWxpYWJpbGl0eSwgbm9y
IHRoZSBjb25zaXN0ZW5jeSwgbm9yIHRocm91Z2hwdXQuIFVubGVzcyBib3RoIHRoZSBPUyBhbmQg
dGhlIHBhdGggYXJlIGZvY3VzZWQgb24gbWluaW1pemluZyBsYXRlbmN5LCBhIHZhc3Qgc2V0IG9m
IGFwcGxpY2F0aW9ucyB3aWxsIHN1Y2suIFVuZm9ydHVuYXRlbHksIGJvdGggdGhlIE9TIGFuZCBu
ZXR3b3JrIGNvbW11bml0aWVzIGFyZSAqc3R1Y2sqIGluIGEgd29ybGQgd2hlcmUgbGF0ZW5jeSBp
cyB1bmNvbnRyb2xsYWJsZSwgYW5kIHRoZXJlIGFyZSBubyB0b29scyBmb3IgZ2V0dGluZyBpdCBi
ZXR0ZXIuCgogCgpPbiBGcmlkYXksIE1hcmNoIDI3LCAyMDIwIDE6MjdwbSwgIkRhdmUgVGFodCIg
PGRhdmUudGFodEBnbWFpbC5jb20+IHNhaWQ6Cgo+IHNvcnQgb2YgYW4gb3V0Z3Jvd3RoIG9mIHRo
aXMgY29udm86Cj4gCj4gaHR0cHM6Ly9sd24ubmV0L1N1YnNjcmliZXJMaW5rLzgxNTc1MS83ODZk
MTYxZDA2YTkwZjBlLwo+IAo+IEkgaW1hZ2luZSB3b3JsZHdpZGUgdmlkZW9jb25mZXJlbmNpbmcg
cXVhbGl0eSBjb3VsZCBiZSBtdWNoIGJldHRlciBpZgo+IHdlIGNvdWxkIGNvbnZpbmNlIG1vcmUg
Zm9sayB0bwo+IGZpbmFsbHkgaW5zdGFsbCBzcW0gb3IgdXBncmFkZSB0byBhIHdvcmtpbmcgZG9j
c2lzIDMuMSBzb2x1dGlvbiwgZXRjLgo+IE1heWJlIHNvbWUgcmFnIHNvbWV3aGVyZSB3aWxsIGZp
bmFsbHkgcGljayB1cCBvbiBidWZmZXJibG9hdCBzb2x1dGlvbnMKPiBhbmQgcnVuIHdpdGggaXQ/
IE9yIHdlIGNhbiB3cml0ZSBzb21lIGFydGljbGVzPyBPciByZWFjaCBvdXQgdG8gc2Nob29sCj4g
c3lzdGVtcz8gT3I/Cj4gCj4gSSd2ZSBiZWVuIGZpZGRsaW5nIHdpdGggaml0c2ksIGFuZCBhbSBh
Ym91dCB0byBnaXZlIGZyZWVzd2l0Y2ggYSB0cnkuCj4gTGFzdCBJIGxvb2tlZCBmcmVlc3dpdGNo
J3Mgb3RoZXJ3aXNlIHByZXR0eSBuaWZ0eSBjb25mZXJlbmNlIGJyaWRnZQo+IGRpZG4ndCBkeW5h
bWljYWxseSBhZGp1c3QgYXQgYWxsIGR1ZSB0byBlMmUgc2lnbmFsbGluZywgYnV0IHRoYXQgd2Fz
Cj4geWVhcnMgYWdvLiAoPykKPiAKPiBJIGhhdmUgdG8gYWRtaXQgdGhhdCBwMnAgbXVsdGlwYXJ0
eSB2aWRlb2NvbmZlcmVuY2luZyBzZWVtcyBtb3JlCj4gcGxhdXNpYmxlIGluIGEgZGUtYnVmZmVy
YmxvYXRlZCBhZ2UsIGJ1dAo+IGhhdmVuJ3QgZXhwbG9yZWQgd2hhdCB0b29scyBhcmUgYXZhaWxh
YmxlLiAoPykKPiAKPiBUaGVyZSdzIGFsc28gYmVlbiB0aGlzIHNvbWV3aGF0IGVudGVydGFpbmlu
ZyBjb252byBvbiB0aGUgaWV0ZiBtYm9uZQo+IGxpc3Q6IGh0dHBzOi8vbWFpbGFyY2hpdmUuaWV0
Zi5vcmcvYXJjaC9tc2cvbWJvbmVkLzJ0aEZRa19JWW4zOFhDWkJRYXZoVW1PZDZ0ay8KPiAKPiBB
cm91bmQgbWUgdGhlcmUgaGFzIGJlZW4gdGhpcyBodWdlIGludGVyZXN0IGluICJzdHJlYW1pbmci
LiBUaGUgdXNlcgo+IGFncmVlbWVudCBmb3IgdGhlc2UgKHNlZSByZXN0cmVhbS5pbydzKSBpcyBz
Y2FyeSAtIGFuZCB0aGUgY29weXJpZ2h0Cj4gcG9saWNlIGhhdmUgY29udHJvbC4uLiBidXQgSSBh
bSB2ZXJ5IGhhcHB5IHRvIHJlcG9ydCB0aGF0IGV2ZW4gYQo+IGNvdXBsZSByZWFsbHkgbG91c3kg
bG9uZyBkaXN0YW5jZSBmcV9jb2RlbCdkIGF0aDlrIGxpbmtzIHdvcmsgKnJlYWxseSoKPiB3ZWxs
ICh3aXRoIGZhY2Vib29rJ3MgaW1wbGVtZW50YXRpb24pLCB3aGVyZSBhIG5vbiBmcV9jb2RlbGVk
IGxpbmsKPiAoYXRoMTBrKSBmYWlsZWQgbWlzZXJhYmx5Li4uIGFuZCBzZXR0aW5nIHVwIGEgcmVm
bGVjdG9yIGluIG5naW54IGFsc28KPiBmYWlsZWQgbWlzZXJhYmx5Lgo+IAo+IEFueW9uZSB3b3Jr
aW5nIG9uIHRoZSBhdGgxMGsgQVFMIGJhY2twb3J0IGZvciBvcGVud3J0IGFzIHlldD8KPiAKPiAt
LQo+IE1ha2UgTXVzaWMsIE5vdCBXYXIKPiAKPiBEYXZlIFTDpGh0Cj4gQ1RPLCBUZWtMaWJyZSwg
TExDCj4gaHR0cDovL3d3dy50ZWtsaWJyZS5jb20KPiBUZWw6IDEtODMxLTQzNS0wNzI5Cj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1haWxp
bmcgbGlzdAo+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVy
YmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
