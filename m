Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A9410216AD0
	for <lists+cake@lfdr.de>; Tue,  7 Jul 2020 12:55:09 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1DA3C3CBC7;
	Tue,  7 Jul 2020 06:55:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1594119308;
	bh=MXpr5+BaGcocIeP5inxzAx/0p4wgdG8Q0WN6WuR8PKI=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BrDs36Ql55fKRQmOcRCmFF3DHqGsTa7kVfShgevyDtwG0ua/TocyoHy8cYTK3lxpu
	 POFGOANJWESsR97BWHgllr2lT5wjqSp5VNZcYPxexsv9AEqwh/zjRhLHusG7+C+aBa
	 99rpEI9B2FM66Qrq8epKn0tJDyuO9Vg+vO40d5LsIl8x1f8KBuD0MVqpIHBt6tSH1a
	 Chn+zWpwfcS9QmGqkhQvLhFiIz6qSHPCCuIZ7XQP50SH5vCa0oG2atOGhDpc7Y3Xo8
	 KGH76JdqRF4Vd89oRCMEdPgw+EDtMTlr1wg6blAbAJQfrFdaovAWOh+SlHOCCwx6Tw
	 9zAGvSiS3IQAQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CDA4B3B29E
 for <cake@lists.bufferbloat.net>; Tue,  7 Jul 2020 06:55:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594119306;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RVRLvVOh+I/8281nFsXdg1u+5aMmAEt8iVhNSwqae+w=;
 b=FPYNlfKgoqi8Pd4TKnCP/zKRv/cHidv4L4uALt0G3eKTwKFe3fIKNJiSJF5UgOr0vPDwUV
 ws1dupnXmRo6cz6PqY5/7cT+8UPMW5BgONCDC9zrKQihjEkKFTLyqjH8hnluWdpUKe2ma3
 WZDLjMbXT7SjQcm+CBr8tLGhp3SrV94=
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-81-03ZL54_WNDiTxbvzrDzymg-1; Tue, 07 Jul 2020 06:55:02 -0400
X-MC-Unique: 03ZL54_WNDiTxbvzrDzymg-1
Received: by mail-pj1-f71.google.com with SMTP id e10so987011pjt.0
 for <cake@lists.bufferbloat.net>; Tue, 07 Jul 2020 03:55:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=u2CpusvBd4Nq44OvXUCk8t7JsvuTA+1iP5kw9pC+33g=;
 b=JHDIqeThEme671zMDk3ArIAms6GaO91FU7/W21iLAop9TsI/ZlKuBsCQbRzRi8NfKU
 Ko7imQhwZ1ry6QYtQIakILMuC/P8qw7gFy6DoP/0MkwKxdYSakfwdBhiWINe3YUGdNlD
 /Rc2bo1CNc5BHg332hVSbj0TZhYfR8RawydN0WURgXQKEtPyH3IRE5tteXSNUq9V9c+g
 k/eXeoWbK0ciSfNU8MzUZwI2jcw/TKc7dMVcBLGuUt6oxNGK/Lbkb+Ir3S2BRqOJ+1qT
 vSjTVx6FT3DaUpfyzsmjZOOjcf/ankpdW3PcNCh6LoCk68V+xWKslqypX4lVhmd9mdRz
 XZBw==
X-Gm-Message-State: AOAM530liHdsUv9oM0Aifc9H7gXWZevklajd66tsU0X5fSQgSV7k8raE
 M2Dx16As8YPNBEXQQooiacA2hTgAScd4tSdhX6aQDTd1gHA1v7IL3+r8UfvtsHad6u54/cqmyFI
 KRFuoy+90fOfLHOnfntcZQg==
X-Received: by 2002:a17:90b:2285:: with SMTP id
 kx5mr3959943pjb.83.1594119301857; 
 Tue, 07 Jul 2020 03:55:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy4JnOZBOCNfPhTFsfcp37K6iWRLJmt2TprWvUWBb8ar5C8YzMvfLEqXGkT97on2VKu3EKivA==
X-Received: by 2002:a17:90b:2285:: with SMTP id
 kx5mr3959922pjb.83.1594119301619; 
 Tue, 07 Jul 2020 03:55:01 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id e20sm5506830pfl.212.2020.07.07.03.55.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 03:55:00 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 0BB4F1804ED; Tue,  7 Jul 2020 12:54:56 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Toshiaki Makita <toshiaki.makita1@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, davem@davemloft.net
In-Reply-To: <934a694b-ae3f-8247-c979-3d062b9804e4@gmail.com>
References: <20200706122951.48142-1-toke@redhat.com>
 <4f7b2b71-8b2a-3aea-637d-52b148af1802@iogearbox.net> <87lfjwl0w7.fsf@toke.dk>
 <934a694b-ae3f-8247-c979-3d062b9804e4@gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 07 Jul 2020 12:54:56 +0200
Message-ID: <87fta3lhmn.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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
 netdev@vger.kernel.org, Jamal Hadi Salim <jhs@mojatatu.com>,
 cake@lists.bufferbloat.net, Cong Wang <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VG9zaGlha2kgTWFraXRhIDx0b3NoaWFraS5tYWtpdGExQGdtYWlsLmNvbT4gd3JpdGVzOgoKPiBP
biAyMDIwLzA3LzA3IDc6NDQsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4gRGFu
aWVsIEJvcmttYW5uIDxkYW5pZWxAaW9nZWFyYm94Lm5ldD4gd3JpdGVzOgo+Pj4gT24gNy82LzIw
IDI6MjkgUE0sIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4+PiBUb3NoaWFraSBw
b2ludGVkIG91dCB0aGF0IHdlIG5vdyBoYXZlIHR3byB2ZXJ5IHNpbWlsYXIgZnVuY3Rpb25zIHRv
IGV4dHJhY3QKPj4+PiB0aGUgTDMgcHJvdG9jb2wgbnVtYmVyIGluIHRoZSBwcmVzZW5jZSBvZiBW
TEFOIHRhZ3MuIEFuZCBEYW5pZWwgcG9pbnRlZCBvdXQKPj4+PiB0aGF0IHRoZSB1bmJvdW5kZWQg
cGFyc2luZyBsb29wIG1ha2VzIGl0IHBvc3NpYmxlIGZvciBtYWxpY2lvdXNseSBjcmFmdGVkCj4+
Pj4gcGFja2V0cyB0byBsb29wIHRocm91Z2ggcG90ZW50aWFsbHkgaHVuZHJlZHMgb2YgdGFncy4K
Pj4+Pgo+Pj4+IEZpeCBib3RoIG9mIHRoZXNlIGlzc3VlcyBieSBjb25zb2xpZGF0aW5nIHRoZSB0
d28gcGFyc2luZyBmdW5jdGlvbnMgYW5kCj4+Pj4gbGltaXRpbmcgdGhlIFZMQU4gdGFnIHBhcnNp
bmcgdG8gYW4gYXJiaXRyYXJpbHktY2hvc2VuLCBidXQgaG9wZWZ1bGx5Cj4+Pj4gY29uc2VydmF0
aXZlLCBtYXggZGVwdGggb2YgMzIgdGFncy4gQXMgcGFydCBvZiB0aGlzLCBzd2l0Y2ggb3Zlcgo+
Pj4+IF9fdmxhbl9nZXRfcHJvdG9jb2woKSB0byB1c2Ugc2tiX2hlYWRlcl9wb2ludGVyKCkgaW5z
dGVhZCBvZgo+Pj4+IHBza2JfbWF5X3B1bGwoKSwgdG8gYXZvaWQgdGhlIHBvc3NpYmxlIHNpZGUg
ZWZmZWN0cyBvZiB0aGUgbGF0dGVyIGFuZCBrZWVwCj4+Pj4gdGhlIHNrYiBwb2ludGVyICdjb25z
dCcgdGhyb3VnaCBhbGwgdGhlIHBhcnNpbmcgZnVuY3Rpb25zLgo+Pj4+Cj4+Pj4gUmVwb3J0ZWQt
Ynk6IFRvc2hpYWtpIE1ha2l0YSA8dG9zaGlha2kubWFraXRhMUBnbWFpbC5jb20+Cj4+Pj4gUmVw
b3J0ZWQtYnk6IERhbmllbCBCb3JrbWFubiA8ZGFuaWVsQGlvZ2VhcmJveC5uZXQ+Cj4+Pj4gRml4
ZXM6IGQ3YmYyZWJlYmMyYiAoInNjaGVkOiBjb25zaXN0ZW50bHkgaGFuZGxlIGxheWVyMyBoZWFk
ZXIgYWNjZXNzZXMgaW4gdGhlIHByZXNlbmNlIG9mIFZMQU5zIikKPj4+PiBTaWduZWQtb2ZmLWJ5
OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4KPj4+PiAtLS0KPj4+
PiAgICBpbmNsdWRlL2xpbnV4L2lmX3ZsYW4uaCB8IDU3ICsrKysrKysrKysrKysrKystLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCj4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMo
KyksIDM1IGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgv
aWZfdmxhbi5oIGIvaW5jbHVkZS9saW51eC9pZl92bGFuLmgKPj4+PiBpbmRleCA0MjdhNWI4NTk3
YzIuLjg1NWQxNjE5MmU2YSAxMDA2NDQKPj4+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2lmX3ZsYW4u
aAo+Pj4+ICsrKyBiL2luY2x1ZGUvbGludXgvaWZfdmxhbi5oCj4+Pj4gQEAgLTI1LDYgKzI1LDgg
QEAKPj4+PiAgICAjZGVmaW5lIFZMQU5fRVRIX0RBVEFfTEVOCTE1MDAJLyogTWF4LiBvY3RldHMg
aW4gcGF5bG9hZAkgKi8KPj4+PiAgICAjZGVmaW5lIFZMQU5fRVRIX0ZSQU1FX0xFTgkxNTE4CS8q
IE1heC4gb2N0ZXRzIGluIGZyYW1lIHNhbnMgRkNTICovCj4+Pj4gICAgCj4+Pj4gKyNkZWZpbmUg
VkxBTl9NQVhfREVQVEgJMzIJCS8qIE1heC4gbnVtYmVyIG9mIG5lc3RlZCBWTEFOIHRhZ3MgcGFy
c2VkICovCj4+Pj4gKwo+Pj4KPj4+IEFueSBpbnNpZ2h0IG9uIGxpbWl0cyBvZiBuZXN0aW5nIHdy
dCBRaW5RLCBtYXliZSBmcm9tIHNwZWMgc2lkZT8KPj4gCj4+IERvbid0IHRoaW5rIHNvLiBXaWtp
cGVkaWEgc2F5cyB0aGlzOgo+PiAKPj4gICA4MDIuMWFkIGlzIHVwd2FyZCBjb21wYXRpYmxlIHdp
dGggODAyLjFRLiBBbHRob3VnaCA4MDIuMWFkIGlzIGxpbWl0ZWQKPj4gICB0byB0d28gdGFncywg
dGhlcmUgaXMgbm8gY2VpbGluZyBvbiB0aGUgc3RhbmRhcmQgbGltaXRpbmcgYSBzaW5nbGUKPj4g
ICBmcmFtZSB0byBtb3JlIHRoYW4gdHdvIHRhZ3MsIGFsbG93aW5nIGZvciBncm93dGggaW4gdGhl
IHByb3RvY29sLiBJbgo+PiAgIHByYWN0aWNlIFNlcnZpY2UgUHJvdmlkZXIgdG9wb2xvZ2llcyBv
ZnRlbiBhbnRpY2lwYXRlIGFuZCB1dGlsaXplCj4+ICAgZnJhbWVzIGhhdmluZyBtb3JlIHRoYW4g
dHdvIHRhZ3MuCj4+IAo+Pj4gV2h5IG5vdCA4IGFzIG1heCwgZm9yIGV4YW1wbGUgKEknZCBwcm9i
YWJseSBldmVuIGNvbnNpZGVyIGEgZGVwdGggbGlrZQo+Pj4gdGhpcyBhcyB1dHRlcmx5IGJyb2tl
biBzZXR1cCAuLik/Cj4+IAo+PiBJIG9yaWdpbmFsbHkgd2VudCB3aXRoIDgsIGJ1dCBjaGlja2Vu
ZWQgb3V0IGFmdGVyIHNlZWluZyBob3cgbWFueSBwbGFjZXMKPj4gY2FsbCB0aGUgcGFyc2luZyBm
dW5jdGlvbi4gV2hpbGUgSSBkbyBhZ3JlZSB0aGF0IGVpZ2h0IHRhZ3MgaXMuLi4gc29tZXdoYXQK
Pj4gZXhjZXNzaXZlLi4uIEkgd2FzIHRyeWluZyB0byBtYWtlIGFic29sdXRlbHkgc3VyZSBubyBv
bmUgd291bGQgaGl0IHRoaXMKPj4gbGltaXQgaW4gbm9ybWFsIHVzZS4gU2VlIGFsc28gaHR0cHM6
Ly94a2NkLmNvbS8xMTcyLyA6KQo+Cj4gQ29uc2lkZXJpbmcgdGhhdCBYTUlUX1JFQ1VSU0lPTl9M
SU1JVCBpcyA4LCBJIGFsc28gdGhpbmsgOCBpcyBzdWZmaWNpZW50LgoKQWxyaWdodCwgZmFpciBl
bm91Z2gsIEknbGwgc2VuZCBhIHYyIHdpdGggYSBsaW1pdCBvZiA4IDopCgotVG9rZQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQo=
