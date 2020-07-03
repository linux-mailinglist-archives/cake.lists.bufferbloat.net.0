Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3900A214041
	for <lists+cake@lfdr.de>; Fri,  3 Jul 2020 22:20:16 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 009AB3CB41;
	Fri,  3 Jul 2020 16:20:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593807615;
	bh=SXe7ilkTi/cSL2mKKqCbzFSOYkjYG7t9pfOKQNOS04E=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CWtm7dS2AhJ8aibrBBB3A1Qc5dmDi9scaoZu4FDwDqsJ3/1oBfvVjgn5qUY2fh8v4
	 nqkb1O7J6cjtQ0BFvH3K0dnhaHTQRnT+c3prvbeNbEiFsVBjWKh0+0SJuKt0E1lxbH
	 JMYbLBTyUyMmMNFK7quAMAlHmQIRd7TSJzVtRCW4ETaDCnr7XmRQapOunwU7N0Ex+F
	 pj295AM0Zkd/Omfb27D1fTWgt0Tr58Z+ML2Xc5ZSX3zTrKmq0vHdnGqbQ5Opyz1kdM
	 6EzXRQB/qEWzgN4u4BB0O0WMXkGsqakFFxCq06UGFtkDjX9WihKJOJ93oSQ6sM85OG
	 6KddqEJA78dGg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com
 [IPv6:2607:f8b0:4864:20::d43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AB3693B2A4
 for <cake@lists.bufferbloat.net>; Fri,  3 Jul 2020 15:19:50 -0400 (EDT)
Received: by mail-io1-xd43.google.com with SMTP id q8so33413626iow.7
 for <cake@lists.bufferbloat.net>; Fri, 03 Jul 2020 12:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2pwLCKZCNv25/ycwjdAenhsrMK+b58nPM8d8dSR+7SE=;
 b=DtdrgqErUK3c5YjV64C8OWLvykRDZ389aTxOkt4cPA5HWPnnaXriMqwZm+6fSYW3EZ
 tMfobZWhFCjhG9sOKz+XBDT3zo4tUWF3fFpB4KhvmGen6ePaVOWj6ROSf7tVGCeHRFMt
 LMb2X69plIZImrQ3rJV6/0JYoPhYjhygfdt5THmirUmilFkTjs7483srvU6033PA+TBS
 s5nw0IIncBmz/oEv2M6EizhWJV3qcybzlZknoL+8TsJzO3cvnDSod4KY5/zONSXBgqk5
 vBzdv0q1yDpcCM78Kob3gAB4kZq/lhc+SklertUTjo8j/yGsgUPhqyXGD09/O7zxPOBK
 18aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2pwLCKZCNv25/ycwjdAenhsrMK+b58nPM8d8dSR+7SE=;
 b=eWkcjF7gHkPtqAXEUfYBDqWqtkKZbmYXKSHBsG/JH/ZsmqCpRE/Z182osIcIq06A9F
 buKxoyVIruMDBKKEDIH2YrJycT2jHCozWyf42gwFijB1S3fqHB86vOHUb/TwvM05SvSF
 d1VWRmhYvop5H7y70emyK9nCprTZcVGU//3nGRY0/tffJ2PIJjsDlYJ35EzWbvCx9CNk
 JK7HXN4yfYMROY3GUf3PK1ZnHHW3PAzWSb1VWS7l4G0U1j9lETAW0NfpREJubxG4d+if
 8WXKcKINlh6V3ILSprLfH4WHVNipztACd2BrgAy3Eb8urW/COlD41TU6LK9xWBVAeldv
 ntYQ==
X-Gm-Message-State: AOAM531lc4jJNJmM4dMimYKbbZ3M47r55qQewB7LnecztOaNWjel916K
 jCesCbPC2F7kOfpRxv+xSwLnpk1wS+ziNDwI7HI=
X-Google-Smtp-Source: ABdhPJyFDPIYWvawKCXN60JR2HLAbtjgphufK6rP/A31cYE1M/JyM3hpW6jQFAUhpk18/xzki6rcZ7MULLMjbs5hYw0=
X-Received: by 2002:a02:1a08:: with SMTP id 8mr39596917jai.124.1593803990094; 
 Fri, 03 Jul 2020 12:19:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200703152239.471624-1-toke@redhat.com>
In-Reply-To: <20200703152239.471624-1-toke@redhat.com>
From: Cong Wang <xiyou.wangcong@gmail.com>
Date: Fri, 3 Jul 2020 12:19:38 -0700
Message-ID: <CAM_iQpVbm0DGGjsdtJD0esuyx9Xmjo=3VCg=C5feqDDbFM+6XQ@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
X-Mailman-Approved-At: Fri, 03 Jul 2020 16:20:14 -0400
Subject: Re: [Cake] [PATCH net v2] sched: consistently handle layer3 header
 accesses in the presence of VLANs
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
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Cake List <cake@lists.bufferbloat.net>,
 Ilya Ponetayev <i.ponetaev@ndmsystems.com>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gRnJpLCBKdWwgMywgMjAyMCBhdCA4OjIyIEFNIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8
dG9rZUByZWRoYXQuY29tPiB3cm90ZToKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9pZl92
bGFuLmggYi9pbmNsdWRlL2xpbnV4L2lmX3ZsYW4uaAo+IGluZGV4IGIwNWU4NTVmMWRkZC4uZDBj
MWNiMGQyNjRkIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvaWZfdmxhbi5oCj4gKysrIGIv
aW5jbHVkZS9saW51eC9pZl92bGFuLmgKPiBAQCAtMzA4LDYgKzMwOCwzNSBAQCBzdGF0aWMgaW5s
aW5lIGJvb2wgZXRoX3R5cGVfdmxhbihfX2JlMTYgZXRoZXJ0eXBlKQo+ICAgICAgICAgfQo+ICB9
Cj4KPiArLyogQSBnZXR0ZXIgZm9yIHRoZSBTS0IgcHJvdG9jb2wgZmllbGQgd2hpY2ggd2lsbCBo
YW5kbGUgVkxBTiB0YWdzIGNvbnNpc3RlbnRseQo+ICsgKiB3aGV0aGVyIFZMQU4gYWNjZWxlcmF0
aW9uIGlzIGVuYWJsZWQgb3Igbm90Lgo+ICsgKi8KPiArc3RhdGljIGlubGluZSBfX2JlMTYgc2ti
X3Byb3RvY29sKGNvbnN0IHN0cnVjdCBza19idWZmICpza2IsIGJvb2wgc2tpcF92bGFuKQo+ICt7
Cj4gKyAgICAgICB1bnNpZ25lZCBpbnQgb2Zmc2V0ID0gc2tiX21hY19vZmZzZXQoc2tiKSArIHNp
emVvZihzdHJ1Y3QgZXRoaGRyKTsKPiArICAgICAgIF9fYmUxNiBwcm90byA9IHNrYi0+cHJvdG9j
b2w7Cj4gKyAgICAgICBzdHJ1Y3Qgdmxhbl9oZHIgdmhkciwgKnZoOwo+ICsKPiArICAgICAgIGlm
ICghc2tpcF92bGFuKQo+ICsgICAgICAgICAgICAgICAvKiBWTEFOIGFjY2VsZXJhdGlvbiBzdHJp
cHMgdGhlIFZMQU4gaGVhZGVyIGZyb20gdGhlIHNrYiBhbmQKPiArICAgICAgICAgICAgICAgICog
bW92ZXMgaXQgdG8gc2tiLT52bGFuX3Byb3RvCj4gKyAgICAgICAgICAgICAgICAqLwo+ICsgICAg
ICAgICAgICAgICByZXR1cm4gc2tiX3ZsYW5fdGFnX3ByZXNlbnQoc2tiKSA/IHNrYi0+dmxhbl9w
cm90byA6IHByb3RvOwo+ICsKPiArICAgICAgIHdoaWxlIChldGhfdHlwZV92bGFuKHByb3RvKSkg
ewo+ICsgICAgICAgICAgICAgICB2aCA9IHNrYl9oZWFkZXJfcG9pbnRlcihza2IsIG9mZnNldCwg
c2l6ZW9mKHZoZHIpLCAmdmhkcik7Cj4gKyAgICAgICAgICAgICAgIGlmICghdmgpCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gKwo+ICsgICAgICAgICAgICAgICBwcm90byA9IHZo
LT5oX3ZsYW5fZW5jYXBzdWxhdGVkX3Byb3RvOwo+ICsgICAgICAgICAgICAgICBvZmZzZXQgKz0g
c2l6ZW9mKHZoZHIpOwo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIHJldHVybiBwcm90bzsKPiAr
fQo+ICsKPiArCj4gKwoKSnVzdCBuaXQ6IHRvbyBtYW55IG5ld2xpbmVzIGhlcmUuIFBsZWFzZSBy
dW4gY2hlY2twYXRjaC5wbC4KCgo+ICBzdGF0aWMgaW5saW5lIGJvb2wgdmxhbl9od19vZmZsb2Fk
X2NhcGFibGUobmV0ZGV2X2ZlYXR1cmVzX3QgZmVhdHVyZXMsCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIF9fYmUxNiBwcm90bykKPiAgewo+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL25ldC9pbmV0X2Vjbi5oIGIvaW5jbHVkZS9uZXQvaW5ldF9lY24uaAo+IGluZGV4
IDBmMGQxZWZlMDZkZC4uODI3NjNiYTU5N2YyIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbmV0L2lu
ZXRfZWNuLmgKPiArKysgYi9pbmNsdWRlL25ldC9pbmV0X2Vjbi5oCj4gQEAgLTQsNiArNCw3IEBA
Cj4KPiAgI2luY2x1ZGUgPGxpbnV4L2lwLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9za2J1ZmYuaD4K
PiArI2luY2x1ZGUgPGxpbnV4L2lmX3ZsYW4uaD4KPgo+ICAjaW5jbHVkZSA8bmV0L2luZXRfc29j
ay5oPgo+ICAjaW5jbHVkZSA8bmV0L2RzZmllbGQuaD4KPiBAQCAtMTcyLDcgKzE3Myw3IEBAIHN0
YXRpYyBpbmxpbmUgdm9pZCBpcHY2X2NvcHlfZHNjcCh1bnNpZ25lZCBpbnQgZHNjcCwgc3RydWN0
IGlwdjZoZHIgKmlubmVyKQo+Cj4gIHN0YXRpYyBpbmxpbmUgaW50IElORVRfRUNOX3NldF9jZShz
dHJ1Y3Qgc2tfYnVmZiAqc2tiKQo+ICB7Cj4gLSAgICAgICBzd2l0Y2ggKHNrYi0+cHJvdG9jb2wp
IHsKPiArICAgICAgIHN3aXRjaCAoc2tiX3Byb3RvY29sKHNrYiwgdHJ1ZSkpIHsKPiAgICAgICAg
IGNhc2UgY3B1X3RvX2JlMTYoRVRIX1BfSVApOgo+ICAgICAgICAgICAgICAgICBpZiAoc2tiX25l
dHdvcmtfaGVhZGVyKHNrYikgKyBzaXplb2Yoc3RydWN0IGlwaGRyKSA8PQo+ICAgICAgICAgICAg
ICAgICAgICAgc2tiX3RhaWxfcG9pbnRlcihza2IpKQo+IEBAIC0xOTEsNyArMTkyLDcgQEAgc3Rh
dGljIGlubGluZSBpbnQgSU5FVF9FQ05fc2V0X2NlKHN0cnVjdCBza19idWZmICpza2IpCj4KPiAg
c3RhdGljIGlubGluZSBpbnQgSU5FVF9FQ05fc2V0X2VjdDEoc3RydWN0IHNrX2J1ZmYgKnNrYikK
PiAgewo+IC0gICAgICAgc3dpdGNoIChza2ItPnByb3RvY29sKSB7Cj4gKyAgICAgICBzd2l0Y2gg
KHNrYl9wcm90b2NvbChza2IsIHRydWUpKSB7Cj4gICAgICAgICBjYXNlIGNwdV90b19iZTE2KEVU
SF9QX0lQKToKPiAgICAgICAgICAgICAgICAgaWYgKHNrYl9uZXR3b3JrX2hlYWRlcihza2IpICsg
c2l6ZW9mKHN0cnVjdCBpcGhkcikgPD0KPiAgICAgICAgICAgICAgICAgICAgIHNrYl90YWlsX3Bv
aW50ZXIoc2tiKSkKClRoZXNlIHR3byBoZWxwZXJzIGFyZSBjYWxsZWQgYnkgbm9uLW5ldF9zY2hl
ZCB0b28sIGFyZSB5b3Ugc3VyZQp5b3VyIGNoYW5nZSBpcyBjb3JyZWN0IGZvciB0aGVtIHRvbz8K
CkZvciBleGFtcGxlLCBJUDZfRUNOX2RlY2Fwc3VsYXRlKCkgdXNlcyBza2ItPnByb3RvY29sIHRo
ZW4gY2FsbHMKSU5FVF9FQ05fZGVjYXBzdWxhdGUoKSB3aGljaCBjYWxscyB0aGUgYWJvdmUsIGFm
dGVyIHlvdXIgY2hhbmdlCnRoZXkgdXNlIHNrYl9wcm90b2NvbCgpLiBUaGlzIGxvb2tzIGluY29u
c2lzdGVudCB0byBtZS4KClRoYW5rcy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
