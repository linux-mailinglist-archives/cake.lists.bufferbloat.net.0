Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC49214590
	for <lists+cake@lfdr.de>; Sat,  4 Jul 2020 13:42:51 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DB0643CB39;
	Sat,  4 Jul 2020 07:42:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593862969;
	bh=1c/iZyQR4e1NNeFg4+97977pUu2Kx3D6074Rqigf/lE=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fiSA56doC/g+iLtZR//ssRNF+9beC7IfpQsA2+1VMg2gLs1xPy9fQoPPFDbX8c2sF
	 UEvWdvZ8gayIC9NqeGHKNm1lSSVVowkcoMlClAJNxXv3kiwf3/I+Gnee0WYNlZaYKu
	 4B7u6x+JzkvKNhhi1Q/gAOT4ipq4RtK+ocnWRWEZUEZg7WYrm9yEEQJ1tgjF6ahYQr
	 BSarDM7oz/lQfuQ3SmJZT2x/u+npX5iCBL7X0o+gBBJhTGBK2UrGBLN3Q0iK1Br3+8
	 +Fh87fSDzvXWTI4PA4thDkAi1wZIIy26exm//Rbx8ibkraihXSCYRPPdUO3N31iOsM
	 53VHOOdVFhQwQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B5A773B29D
 for <cake@lists.bufferbloat.net>; Sat,  4 Jul 2020 07:28:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593862132;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=s/eCYGcB59EkKwHh5xh9Gy3szAHZtGBQ/6EjON5BFVg=;
 b=iTC8OCCvifoE6yDtww4w+tJsBvjLRtn3XoVlyhWJb86vfmf+8d1OvJsAqvfhhnx/YWdBaj
 KNKxqYx0nTvpo2OJnnWsk/Pfl7tj75vku0czU7aUG+I5Y1mMYl+QtRZn6xJPtpOmNUFF2B
 4xugg4DICSmUBx8kFUImDCNlVeOXGTI=
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-33-YDokPUk4MNSLPIYpxC5ltQ-1; Sat, 04 Jul 2020 07:28:48 -0400
X-MC-Unique: YDokPUk4MNSLPIYpxC5ltQ-1
Received: by mail-pj1-f71.google.com with SMTP id i24so18362653pjx.9
 for <cake@lists.bufferbloat.net>; Sat, 04 Jul 2020 04:28:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=c1wCfKnVDpe0dEjK4URgb65tlwRZLWw1AKcquMUamB0=;
 b=AKztbzvW94H+RFwQl9AdXx+s5VM83o+tKk6IXXRumcnTQ8A7ZCCQNmTwYOTKK1ujpB
 xlkP+ZhJNlazbMo+vXcJglmjImifeQFZae0F1i5OVaAzR3sHPp+lbXE6ZvI26IsqTYrG
 Ox0OLszpPQWmkuwRVhvGAhacbpVStrxxQLM4/hioeVZvTuCTjTrKAh0ArSA5iXb1Cg3P
 xQC77W85C9qQlRfxOWlsxO4O25/8ldDctGXum2+Fji4pfTl27WygIdiT7/RS0VuQoopx
 4WIvBL6Yax6asXnjQzSV6lTyPTWeWX1wiqgkw3Mg0CuzkGiHTwt0/YLprkZrzNrPyTY9
 9mJg==
X-Gm-Message-State: AOAM532TAJ0etBJh3tIfs+lhO/46PoMi3pC/GQONRsRVMC3mi38GK/k3
 Cd1HcZ5+IUYX/5VRRmMkPQnAACkz00cDLAZF4GyBwwwTmjva1kJidIkdu142XifkexgwTOrcNE4
 oOTs7DHUxW6h94f1l90R5Yw==
X-Received: by 2002:a17:90b:b0a:: with SMTP id
 bf10mr1420545pjb.220.1593862127375; 
 Sat, 04 Jul 2020 04:28:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzz8Mnd3qM4HLLyqY66AiUqb25L+nmbvskZglZl3eBMgbSUyB/rVthDE92BcdVmL9eFJ4UTUQ==
X-Received: by 2002:a17:90b:b0a:: with SMTP id
 bf10mr1420530pjb.220.1593862127081; 
 Sat, 04 Jul 2020 04:28:47 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id x22sm14613433pfr.11.2020.07.04.04.28.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jul 2020 04:28:46 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id B16721804A8; Sat,  4 Jul 2020 13:28:40 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Daniel Borkmann <daniel@iogearbox.net>
In-Reply-To: <003ff65d-fc24-cd25-9e46-95e7ca2aa31f@iogearbox.net>
References: <20200703202643.12919-1-toke@redhat.com>
 <003ff65d-fc24-cd25-9e46-95e7ca2aa31f@iogearbox.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Sat, 04 Jul 2020 13:28:40 +0200
Message-ID: <87blkvmsd3.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Sat, 04 Jul 2020 07:42:48 -0400
Subject: Re: [Cake] [PATCH net v3] sched: consistently handle layer3 header
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
Cc: Lawrence Brakmo <brakmo@fb.com>, Davide Caratti <dcaratti@redhat.com>,
 Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, kafai@fb.com, cake@lists.bufferbloat.net,
 edumazet@google.com, Roman Mashak <mrv@mojatatu.com>,
 Ilya Ponetayev <i.ponetaev@ndmsystems.com>,
 Cong Wang <xiyou.wangcong@gmail.com>, bpf@vger.kernel.org,
 alexei.starovoitov@gmail.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGFuaWVsIEJvcmttYW5uIDxkYW5pZWxAaW9nZWFyYm94Lm5ldD4gd3JpdGVzOgoKPiBPbiA3LzMv
MjAgMTA6MjYgUE0sIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4gVGhlcmUgYXJl
IGEgY291cGxlIG9mIHBsYWNlcyBpbiBuZXQvc2NoZWQvIHRoYXQgY2hlY2sgc2tiLT5wcm90b2Nv
bCBhbmQgYWN0Cj4+IG9uIHRoZSB2YWx1ZSB0aGVyZS4gSG93ZXZlciwgaW4gdGhlIHByZXNlbmNl
IG9mIFZMQU4gdGFncywgdGhlIHZhbHVlIHN0b3JlZAo+PiBpbiBza2ItPnByb3RvY29sIGNhbiBi
ZSBpbmNvbnNpc3RlbnQgYmFzZWQgb24gd2hldGhlciBWTEFOIGFjY2VsZXJhdGlvbiBpcwo+PiBl
bmFibGVkLiBUaGUgY29tbWl0IHF1b3RlZCBpbiB0aGUgRml4ZXMgdGFnIGJlbG93IGZpeGVkIHRo
ZSB1c2VycyBvZgo+PiBza2ItPnByb3RvY29sIHRvIHVzZSBhIGhlbHBlciB0aGF0IHdpbGwgYWx3
YXlzIHNlZSB0aGUgVkxBTiBldGhlcnR5cGUuCj4+IAo+PiBIb3dldmVyLCBtb3N0IG9mIHRoZSBj
YWxsZXJzIGRvbid0IGFjdHVhbGx5IGhhbmRsZSB0aGUgVkxBTiBldGhlcnR5cGUsIGJ1dAo+PiBl
eHBlY3QgdG8gZmluZCB0aGUgSVAgaGVhZGVyIHR5cGUgaW4gdGhlIHByb3RvY29sIGZpZWxkLiBU
aGlzIG1lYW5zIHRoYXQKPj4gdGhpbmdzIGxpa2UgY2hhbmdpbmcgdGhlIEVDTiBmaWVsZCwgb3Ig
cGFyc2luZyBkaWZmc2VydiB2YWx1ZXMsIHN0b3BzCj4+IHdvcmtpbmcgaWYgdGhlcmUncyBhIFZM
QU4gdGFnLCBvciBpZiB0aGVyZSBhcmUgbXVsdGlwbGUgbmVzdGVkIFZMQU4KPj4gdGFncyAoUWlu
USkuCj4+IAo+PiBUbyBmaXggdGhpcywgY2hhbmdlIHRoZSBoZWxwZXIgdG8gdGFrZSBhbiBhcmd1
bWVudCB0aGF0IGluZGljYXRlcyB3aGV0aGVyCj4+IHRoZSBjYWxsZXIgd2FudHMgdG8gc2tpcCB0
aGUgVkxBTiB0YWdzIG9yIG5vdC4gV2hlbiBza2lwcGluZyBWTEFOIHRhZ3MsIHdlCj4+IG1ha2Ug
c3VyZSB0byBza2lwIGFsbCBvZiB0aGVtLCBzbyBiZWhhdmlvdXIgaXMgY29uc2lzdGVudCBldmVu
IGluIFFpblEKPj4gbW9kZS4KPj4gCj4+IFRvIG1ha2UgdGhlIGhlbHBlciB1c2FibGUgZnJvbSB0
aGUgRUNOIGNvZGUsIG1vdmUgaXQgdG8gaWZfdmxhbi5oIGluc3RlYWQKPj4gb2YgcGt0X3NjaGVk
LmguCj4+IAo+PiB2MzoKPj4gLSBSZW1vdmUgZW1wdHkgbGluZXMKPj4gLSBNb3ZlIHZsYW4gdmFy
aWFibGUgZGVmaW5pdGlvbnMgaW5zaWRlIGxvb3AgaW4gc2tiX3Byb3RvY29sKCkKPj4gLSBBbHNv
IHVzZSBza2JfcHJvdG9jb2woKSBoZWxwZXIgaW4gSVB7LDZ9X0VDTl9kZWNhcHN1bGF0ZSgpIGFu
ZAo+PiAgICBicGZfc2tiX2Vjbl9zZXRfY2UoKQo+PiAKPj4gdjI6Cj4+IC0gVXNlIGV0aF90eXBl
X3ZsYW4oKSBoZWxwZXIgaW4gc2tiX3Byb3RvY29sKCkKPj4gLSBBbHNvIGZpeCBjb2RlIHRoYXQg
cmVhZHMgc2tiLT5wcm90b2NvbCBkaXJlY3RseQo+PiAtIENoYW5nZSBhIGNvdXBsZSBvZiAnaWYv
ZWxzZSBpZicgc3RhdGVtZW50cyB0byBzd2l0Y2ggY29uc3RydWN0cyB0byBhdm9pZAo+PiAgICBj
YWxsaW5nIHRoZSBoZWxwZXIgdHdpY2UKPj4gCj4+IFJlcG9ydGVkLWJ5OiBJbHlhIFBvbmV0YXll
diA8aS5wb25ldGFldkBuZG1zeXN0ZW1zLmNvbT4KPj4gRml4ZXM6IGQ4Yjk2MDVkMjY5NyAoIm5l
dDogc2NoZWQ6IGZpeCBza2ItPnByb3RvY29sIHVzZSBpbiBjYXNlIG9mIGFjY2VsZXJhdGVkIHZs
YW4gcGF0aCIpCj4+IFNpZ25lZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9r
ZUByZWRoYXQuY29tPgo+PiAtLS0KPj4gICBpbmNsdWRlL2xpbnV4L2lmX3ZsYW4uaCAgfCAyOCAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+ICAgaW5jbHVkZS9uZXQvaW5ldF9lY24uaCAg
IHwgMjUgKysrKysrKysrKysrKysrKystLS0tLS0tLQo+PiAgIGluY2x1ZGUvbmV0L3BrdF9zY2hl
ZC5oICB8IDExIC0tLS0tLS0tLS0tCj4+ICAgbmV0L2NvcmUvZmlsdGVyLmMgICAgICAgIHwgMTAg
KysrKysrKy0tLQo+PiAgIG5ldC9zY2hlZC9hY3RfY29ubm1hcmsuYyB8ICA5ICsrKysrKy0tLQo+
PiAgIG5ldC9zY2hlZC9hY3RfY3N1bS5jICAgICB8ICAyICstCj4+ICAgbmV0L3NjaGVkL2FjdF9j
dC5jICAgICAgIHwgIDkgKysrKy0tLS0tCj4+ICAgbmV0L3NjaGVkL2FjdF9jdGluZm8uYyAgIHwg
IDkgKysrKysrLS0tCj4+ICAgbmV0L3NjaGVkL2FjdF9tcGxzLmMgICAgIHwgIDIgKy0KPj4gICBu
ZXQvc2NoZWQvYWN0X3NrYmVkaXQuYyAgfCAgMiArLQo+PiAgIG5ldC9zY2hlZC9jbHNfYXBpLmMg
ICAgICB8ICAyICstCj4+ICAgbmV0L3NjaGVkL2Nsc19mbG93LmMgICAgIHwgIDggKysrKy0tLS0K
Pj4gICBuZXQvc2NoZWQvY2xzX2Zsb3dlci5jICAgfCAgMiArLQo+PiAgIG5ldC9zY2hlZC9lbV9p
cHNldC5jICAgICB8ICAyICstCj4+ICAgbmV0L3NjaGVkL2VtX2lwdC5jICAgICAgIHwgIDIgKy0K
Pj4gICBuZXQvc2NoZWQvZW1fbWV0YS5jICAgICAgfCAgMiArLQo+PiAgIG5ldC9zY2hlZC9zY2hf
Y2FrZS5jICAgICB8ICA0ICsrLS0KPj4gICBuZXQvc2NoZWQvc2NoX2RzbWFyay5jICAgfCAgNiAr
KystLS0KPj4gICBuZXQvc2NoZWQvc2NoX3RlcWwuYyAgICAgfCAgMiArLQo+PiAgIDE5IGZpbGVz
IGNoYW5nZWQsIDg2IGluc2VydGlvbnMoKyksIDUxIGRlbGV0aW9ucygtKQo+PiAKPj4gZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbGludXgvaWZfdmxhbi5oIGIvaW5jbHVkZS9saW51eC9pZl92bGFuLmgK
Pj4gaW5kZXggYjA1ZTg1NWYxZGRkLi40MjdhNWI4NTk3YzIgMTAwNjQ0Cj4+IC0tLSBhL2luY2x1
ZGUvbGludXgvaWZfdmxhbi5oCj4+ICsrKyBiL2luY2x1ZGUvbGludXgvaWZfdmxhbi5oCj4+IEBA
IC0zMDgsNiArMzA4LDM0IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBldGhfdHlwZV92bGFuKF9fYmUx
NiBldGhlcnR5cGUpCj4+ICAgCX0KPj4gICB9Cj4+ICAgCj4+ICsvKiBBIGdldHRlciBmb3IgdGhl
IFNLQiBwcm90b2NvbCBmaWVsZCB3aGljaCB3aWxsIGhhbmRsZSBWTEFOIHRhZ3MgY29uc2lzdGVu
dGx5Cj4+ICsgKiB3aGV0aGVyIFZMQU4gYWNjZWxlcmF0aW9uIGlzIGVuYWJsZWQgb3Igbm90Lgo+
PiArICovCj4+ICtzdGF0aWMgaW5saW5lIF9fYmUxNiBza2JfcHJvdG9jb2woY29uc3Qgc3RydWN0
IHNrX2J1ZmYgKnNrYiwgYm9vbCBza2lwX3ZsYW4pCj4+ICt7Cj4+ICsJdW5zaWduZWQgaW50IG9m
ZnNldCA9IHNrYl9tYWNfb2Zmc2V0KHNrYikgKyBzaXplb2Yoc3RydWN0IGV0aGhkcik7Cj4+ICsJ
X19iZTE2IHByb3RvID0gc2tiLT5wcm90b2NvbDsKPj4gKwo+PiArCWlmICghc2tpcF92bGFuKQo+
PiArCQkvKiBWTEFOIGFjY2VsZXJhdGlvbiBzdHJpcHMgdGhlIFZMQU4gaGVhZGVyIGZyb20gdGhl
IHNrYiBhbmQKPj4gKwkJICogbW92ZXMgaXQgdG8gc2tiLT52bGFuX3Byb3RvCj4+ICsJCSAqLwo+
PiArCQlyZXR1cm4gc2tiX3ZsYW5fdGFnX3ByZXNlbnQoc2tiKSA/IHNrYi0+dmxhbl9wcm90byA6
IHByb3RvOwo+PiArCj4+ICsJd2hpbGUgKGV0aF90eXBlX3ZsYW4ocHJvdG8pKSB7Cj4+ICsJCXN0
cnVjdCB2bGFuX2hkciB2aGRyLCAqdmg7Cj4+ICsKPj4gKwkJdmggPSBza2JfaGVhZGVyX3BvaW50
ZXIoc2tiLCBvZmZzZXQsIHNpemVvZih2aGRyKSwgJnZoZHIpOwo+PiArCQlpZiAoIXZoKQo+PiAr
CQkJYnJlYWs7Cj4+ICsKPj4gKwkJcHJvdG8gPSB2aC0+aF92bGFuX2VuY2Fwc3VsYXRlZF9wcm90
bzsKPj4gKwkJb2Zmc2V0ICs9IHNpemVvZih2aGRyKTsKPj4gKwl9Cj4KPiBIbSwgd2h5IGlzIHRo
ZSB3aGlsZSBsb29wICd1bmJvdW5kZWQnPyBEb2VzIGl0IGV2ZW4gbWFrZSBzZW5zZSB0byBoYXZl
Cj4gYSBwYWNrZXQgd2l0aCBodW5kcmVkcyBvZiB2bGFuIGhkcnMgaW4gdGhlcmUgd2hhdCB5b3Un
ZCBlbmQgdXAKPiB3YWxraW5nPyBXaGF0IGlmIGFuIGF0dGFja2VyIGNyYWZ0cyBhIG1heCBzaXpl
ZCBwYWNrZXQgd2l0aCBvbmx5Cj4gdmxhbl9oZHIgZm9yY2luZyBleG9yYml0YW50IGxvb3Bpbmcg
aW4gZmFzdC1wYXRoIGhlcmUgKGUuZy4gdmlhCj4gYWZfcGFja2V0KT8KCkhtbSwgSSBndWVzcyB5
b3UncmUgcmlnaHQgdGhhdCBjb3VsZCB0aGVvcmV0aWNhbGx5IGhhcHBlbi4gQnV0IG9uIHRoZQpv
dGhlciBoYW5kLCBhIGxvdCBvZiBkcml2ZXJzIHNlZW0gdG8gYmUgY2hlZXJmdWxseSBjYWxsaW5n
CnZsYW5fZ2V0X3Byb3RvY29sKCkgb24gaW5jb21pbmcgcGFja2V0cywgd2hpY2ggZG9lc24ndCBo
YXZlIGEgbGltaXQgb24KdGhlIGRlcHRoIGVpdGhlci4KCkkgZ3Vlc3MgSSBjb3VsZCBhZGQgYSBk
ZXB0aCBsaW1pdCwgYnV0IGluIHRoYXQgY2FzZSBJIHN1cHBvc2UgdGhhdApzaG91bGQgYWxzbyBi
ZSBhZGRlZCB0byB2bGFuX2dldF9wcm90b2NvbCgpIChvciB0aGUgdHdvIHNob3VsZCBiZQpjb25z
b2xpZGF0ZWQpLiBXRFlUPwoKPiBEaWQgeW91IHZhbGlkYXRlIHRoYXQgc2tiX21hY19vZmZzZXQo
KSBpcyBhbHdheXMgdmFsaWQgZm9yIHRoZQo+IGNhbGwtc2l0ZXMgeW91IGNvbnZlcnRlZD8gKFdl
IGhhdmUgYSBza2JfbWFjX2hlYWRlcl93YXNfc2V0KCkgdGVzdCB0bwo+IHByb2JlIGZvciB3aGV0
aGVyIHNrYi0+bWFjX2hlYWRlciBpcyBzZXQgdG8gfjAuKQoKTm90IGV4dGVuc2l2ZWx5OyBJIGtp
bmRhIGFzc3VtZWQgaXQgd291bGQgYWx3YXlzIGJlIHZhbGlkIGF0IHRob3NlIGNhbGwKc2l0ZXMs
IHNpbmNlIHRoZSBjYWxsZXJzIGdvIG9uIHRvIGNhbGwgaXBfaGRyKCkgb3Igc29tZXRoaW5nIHNp
bWlsYXIKcmlnaHQgYWZ0ZXJ3YXJkcy4KCkkgZ3Vlc3MgVG9zaGlha2kncyBzdWdnZXN0aW9uIHRv
IHVzZSB2bGFuX2dldF9wcm90b2NvbCgpIGNvdWxkIGJlIGEgd2F5CmFyb3VuZCB0aGlzLCBhcyB0
aGF0IHNlZW1zIHRvIGRlYWwgd2l0aCBza2ItPm1hY19sZW4gYmVpbmcgMC4KCi1Ub2tlCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldC9saXN0aW5mby9jYWtlCg==
