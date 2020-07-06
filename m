Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B603F215FCF
	for <lists+cake@lfdr.de>; Mon,  6 Jul 2020 22:02:14 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1F7CD3CBC4;
	Mon,  6 Jul 2020 16:02:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1594065733;
	bh=6nI8dMhY/mhBl289o0cgr74B/97VE4NNjGiIikidKbY=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LaOCjnqrfBvuexWzvZlp35IgeSjqpgVRnqgKq7zRgvMFBpk8/EEpBkmmnEGXljjam
	 rRP3K67DtZlv3j9pu4KRB1y/myekzdudP0pJ6a0xUTTXQ3ekn4NV5i6NX//n0HKly2
	 HGzjws6gjc3hzGZSQ7YXw5GQHE8WLHPjSs9k+Xhy2jwG2nt+9Nc3Gohs5Oc9Kc8QvE
	 mVOwIkNRCIiNP+q7fbTzVH0tuFB2Su4XYIwsqX49Hxer8b568Md4KbqemYYgafnRqV
	 f3Qt0rePS8nILY2LcyTkQWg8ynQdD0vM2D+IzMzT/tFlUDzSpPjEfpj0U++Dctt5Qu
	 KW+3ECJh+PLRA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6A7593B2A4
 for <cake@lists.bufferbloat.net>; Mon,  6 Jul 2020 16:02:11 -0400 (EDT)
Received: from sslproxy05.your-server.de ([78.46.172.2])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jsXJP-0002nL-MO; Mon, 06 Jul 2020 22:01:59 +0200
Received: from [178.196.57.75] (helo=pc-9.home)
 by sslproxy05.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jsXJP-000BEO-F9; Mon, 06 Jul 2020 22:01:59 +0200
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 davem@davemloft.net
References: <20200706122951.48142-1-toke@redhat.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <4f7b2b71-8b2a-3aea-637d-52b148af1802@iogearbox.net>
Date: Mon, 6 Jul 2020 22:01:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200706122951.48142-1-toke@redhat.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.3/25865/Mon Jul  6 16:07:44 2020)
Subject: Re: [Cake] [PATCH net] vlan: consolidate VLAN parsing code and
 limit max parsing depth
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
Cc: Davide Caratti <dcaratti@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, Toshiaki Makita <toshiaki.makita1@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Cong Wang <xiyou.wangcong@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gNy82LzIwIDI6MjkgUE0sIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPiBUb3No
aWFraSBwb2ludGVkIG91dCB0aGF0IHdlIG5vdyBoYXZlIHR3byB2ZXJ5IHNpbWlsYXIgZnVuY3Rp
b25zIHRvIGV4dHJhY3QKPiB0aGUgTDMgcHJvdG9jb2wgbnVtYmVyIGluIHRoZSBwcmVzZW5jZSBv
ZiBWTEFOIHRhZ3MuIEFuZCBEYW5pZWwgcG9pbnRlZCBvdXQKPiB0aGF0IHRoZSB1bmJvdW5kZWQg
cGFyc2luZyBsb29wIG1ha2VzIGl0IHBvc3NpYmxlIGZvciBtYWxpY2lvdXNseSBjcmFmdGVkCj4g
cGFja2V0cyB0byBsb29wIHRocm91Z2ggcG90ZW50aWFsbHkgaHVuZHJlZHMgb2YgdGFncy4KPiAK
PiBGaXggYm90aCBvZiB0aGVzZSBpc3N1ZXMgYnkgY29uc29saWRhdGluZyB0aGUgdHdvIHBhcnNp
bmcgZnVuY3Rpb25zIGFuZAo+IGxpbWl0aW5nIHRoZSBWTEFOIHRhZyBwYXJzaW5nIHRvIGFuIGFy
Yml0cmFyaWx5LWNob3NlbiwgYnV0IGhvcGVmdWxseQo+IGNvbnNlcnZhdGl2ZSwgbWF4IGRlcHRo
IG9mIDMyIHRhZ3MuIEFzIHBhcnQgb2YgdGhpcywgc3dpdGNoIG92ZXIKPiBfX3ZsYW5fZ2V0X3By
b3RvY29sKCkgdG8gdXNlIHNrYl9oZWFkZXJfcG9pbnRlcigpIGluc3RlYWQgb2YKPiBwc2tiX21h
eV9wdWxsKCksIHRvIGF2b2lkIHRoZSBwb3NzaWJsZSBzaWRlIGVmZmVjdHMgb2YgdGhlIGxhdHRl
ciBhbmQga2VlcAo+IHRoZSBza2IgcG9pbnRlciAnY29uc3QnIHRocm91Z2ggYWxsIHRoZSBwYXJz
aW5nIGZ1bmN0aW9ucy4KPiAKPiBSZXBvcnRlZC1ieTogVG9zaGlha2kgTWFraXRhIDx0b3NoaWFr
aS5tYWtpdGExQGdtYWlsLmNvbT4KPiBSZXBvcnRlZC1ieTogRGFuaWVsIEJvcmttYW5uIDxkYW5p
ZWxAaW9nZWFyYm94Lm5ldD4KPiBGaXhlczogZDdiZjJlYmViYzJiICgic2NoZWQ6IGNvbnNpc3Rl
bnRseSBoYW5kbGUgbGF5ZXIzIGhlYWRlciBhY2Nlc3NlcyBpbiB0aGUgcHJlc2VuY2Ugb2YgVkxB
TnMiKQo+IFNpZ25lZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRo
YXQuY29tPgo+IC0tLQo+ICAgaW5jbHVkZS9saW51eC9pZl92bGFuLmggfCA1NyArKysrKysrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIyIGlu
c2VydGlvbnMoKyksIDM1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xp
bnV4L2lmX3ZsYW4uaCBiL2luY2x1ZGUvbGludXgvaWZfdmxhbi5oCj4gaW5kZXggNDI3YTViODU5
N2MyLi44NTVkMTYxOTJlNmEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9pZl92bGFuLmgK
PiArKysgYi9pbmNsdWRlL2xpbnV4L2lmX3ZsYW4uaAo+IEBAIC0yNSw2ICsyNSw4IEBACj4gICAj
ZGVmaW5lIFZMQU5fRVRIX0RBVEFfTEVOCTE1MDAJLyogTWF4LiBvY3RldHMgaW4gcGF5bG9hZAkg
Ki8KPiAgICNkZWZpbmUgVkxBTl9FVEhfRlJBTUVfTEVOCTE1MTgJLyogTWF4LiBvY3RldHMgaW4g
ZnJhbWUgc2FucyBGQ1MgKi8KPiAgIAo+ICsjZGVmaW5lIFZMQU5fTUFYX0RFUFRICTMyCQkvKiBN
YXguIG51bWJlciBvZiBuZXN0ZWQgVkxBTiB0YWdzIHBhcnNlZCAqLwo+ICsKCkFueSBpbnNpZ2h0
IG9uIGxpbWl0cyBvZiBuZXN0aW5nIHdydCBRaW5RLCBtYXliZSBmcm9tIHNwZWMgc2lkZT8gV2h5
IG5vdCA4IGFzIG1heCwgZm9yCmV4YW1wbGUgKEknZCBwcm9iYWJseSBldmVuIGNvbnNpZGVyIGEg
ZGVwdGggbGlrZSB0aGlzIGFzIHV0dGVybHkgYnJva2VuIHNldHVwIC4uKT8KClRoYW5rcywKRGFu
aWVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2Ug
bWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVm
ZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
