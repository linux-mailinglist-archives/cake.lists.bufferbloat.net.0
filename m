Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EAD214033
	for <lists+cake@lfdr.de>; Fri,  3 Jul 2020 22:09:48 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1ACD93CB39;
	Fri,  3 Jul 2020 16:09:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593806986;
	bh=n2qAII1gxiSf9hE2qmLJ2pIuEHSp79WOjjSmWShZPNY=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WmMP15gE3ZhLJseoZ4eM7H+2XXuFWzJ9VrkOU3d+kp8IYkhJOnhOuGxlmz8rAtviH
	 EEAvEsu/N9JZWVuuzHUYgpjfeJXcDUudEgLf0zhAsXsA3ihL8zUyjUGQTJFbfXQ+dN
	 3/csBap1Rfe1u+351BFjfarlT3ovf1jUJzYEW7lXIt+pQEmec/0dh9Y9zbU241quAH
	 z+d/oAr1jOyL0Ui/XxrXcsL0ViKQEl36Jf/vpg6xfO7Uc8ehoBy/LpucShraDaihc0
	 D2mVifVAfPTsEJ77SRxXWp48c042P6WOhzAGDNhyhFlG/7KG61/Z+/0Olmnr6RdnkN
	 nAfxB1wmOo3sg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2F9103B2A4
 for <cake@lists.bufferbloat.net>; Fri,  3 Jul 2020 16:09:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593806984;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Y+FWZ5yqiN8FH+sU2SZS0bUemdJq4rNskNBcQ33ENDc=;
 b=diXMLIli6MSwGKNL1+hPF+YF0ZGYmXzku9Mi6L7cRbh3tTP6fljermZ9dabMiYWmXQoZev
 onLoyDBahMDHGtEOgQ0cyDCcHY2CObG0f3cWTQPGTRl7lY972JTacxziZtGcMzQYUPD25Q
 ePDcRiF2XczCo2b41qXP74xez01ZkYE=
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com
 [209.85.210.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-220-ZmFGmuzFOWSdeVglkrNM_Q-1; Fri, 03 Jul 2020 16:09:41 -0400
X-MC-Unique: ZmFGmuzFOWSdeVglkrNM_Q-1
Received: by mail-pf1-f198.google.com with SMTP id d10so15952995pfn.21
 for <cake@lists.bufferbloat.net>; Fri, 03 Jul 2020 13:09:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=Y+FWZ5yqiN8FH+sU2SZS0bUemdJq4rNskNBcQ33ENDc=;
 b=TZgJWPqvAD+byL41PDSx7crIy9YS8NxHRbJ8wSUyTOtBFiZKppQxbIhUbV4OW1LtRp
 /ijbT72hqb/fZEeeukBHgSlHFalWG8VOpRMtnuD3D376MHnoKuEpEwWAia1g/vSUJbYC
 zCArlIUYp/31xsZ8dY4CQMqIEoVGS5lCEgybQ/V91mI+3RR0vsF0cnPqxA9u8G852Pxs
 g7Ojcmp+KWxo5P/l3/aAViZf277LbKOMLRcuxCZ0Zs/+8fh2OaN7XdOO/jzTnnQh+zLN
 c6HLvhrL8Cn7E7AketSs/hzdI0t98v9DxhNY1U4nYqHIJMRW8ZlzLKlm/ek8yCqec6lp
 EM5Q==
X-Gm-Message-State: AOAM533p9+rV585Ptm91Q6u1vSMxknXGwPz0iFvcxEiGg2FBNY/T98cT
 7Q4X1c3Zx9R6GqTkubxbemCokblc1MludUtmp3sYn80luRijk7C2xRvJP0zoYvs8GObMx8uXdkj
 spVNin9nSCwvzmo/f/lfQEQ==
X-Received: by 2002:a63:745:: with SMTP id 66mr31446398pgh.316.1593806980397; 
 Fri, 03 Jul 2020 13:09:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwwLUegMoL/eIhQyxeQ10175pnIsYKZNbM3JXpTa5KqRRhhW5svTW3ecR8gzmcHFdkSZba8Yw==
X-Received: by 2002:a63:745:: with SMTP id 66mr31446372pgh.316.1593806980016; 
 Fri, 03 Jul 2020 13:09:40 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id p10sm6765948pgn.6.2020.07.03.13.09.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jul 2020 13:09:39 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 47BA21804A8; Fri,  3 Jul 2020 22:09:34 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Cong Wang <xiyou.wangcong@gmail.com>
In-Reply-To: <CAM_iQpVbm0DGGjsdtJD0esuyx9Xmjo=3VCg=C5feqDDbFM+6XQ@mail.gmail.com>
References: <20200703152239.471624-1-toke@redhat.com>
 <CAM_iQpVbm0DGGjsdtJD0esuyx9Xmjo=3VCg=C5feqDDbFM+6XQ@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 03 Jul 2020 22:09:34 +0200
Message-ID: <87mu4gmkch.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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

Q29uZyBXYW5nIDx4aXlvdS53YW5nY29uZ0BnbWFpbC5jb20+IHdyaXRlczoKCj4gT24gRnJpLCBK
dWwgMywgMjAyMCBhdCA4OjIyIEFNIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRo
YXQuY29tPiB3cm90ZToKPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvaWZfdmxhbi5oIGIv
aW5jbHVkZS9saW51eC9pZl92bGFuLmgKPj4gaW5kZXggYjA1ZTg1NWYxZGRkLi5kMGMxY2IwZDI2
NGQgMTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUvbGludXgvaWZfdmxhbi5oCj4+ICsrKyBiL2luY2x1
ZGUvbGludXgvaWZfdmxhbi5oCj4+IEBAIC0zMDgsNiArMzA4LDM1IEBAIHN0YXRpYyBpbmxpbmUg
Ym9vbCBldGhfdHlwZV92bGFuKF9fYmUxNiBldGhlcnR5cGUpCj4+ICAgICAgICAgfQo+PiAgfQo+
Pgo+PiArLyogQSBnZXR0ZXIgZm9yIHRoZSBTS0IgcHJvdG9jb2wgZmllbGQgd2hpY2ggd2lsbCBo
YW5kbGUgVkxBTiB0YWdzIGNvbnNpc3RlbnRseQo+PiArICogd2hldGhlciBWTEFOIGFjY2VsZXJh
dGlvbiBpcyBlbmFibGVkIG9yIG5vdC4KPj4gKyAqLwo+PiArc3RhdGljIGlubGluZSBfX2JlMTYg
c2tiX3Byb3RvY29sKGNvbnN0IHN0cnVjdCBza19idWZmICpza2IsIGJvb2wgc2tpcF92bGFuKQo+
PiArewo+PiArICAgICAgIHVuc2lnbmVkIGludCBvZmZzZXQgPSBza2JfbWFjX29mZnNldChza2Ip
ICsgc2l6ZW9mKHN0cnVjdCBldGhoZHIpOwo+PiArICAgICAgIF9fYmUxNiBwcm90byA9IHNrYi0+
cHJvdG9jb2w7Cj4+ICsgICAgICAgc3RydWN0IHZsYW5faGRyIHZoZHIsICp2aDsKPj4gKwo+PiAr
ICAgICAgIGlmICghc2tpcF92bGFuKQo+PiArICAgICAgICAgICAgICAgLyogVkxBTiBhY2NlbGVy
YXRpb24gc3RyaXBzIHRoZSBWTEFOIGhlYWRlciBmcm9tIHRoZSBza2IgYW5kCj4+ICsgICAgICAg
ICAgICAgICAgKiBtb3ZlcyBpdCB0byBza2ItPnZsYW5fcHJvdG8KPj4gKyAgICAgICAgICAgICAg
ICAqLwo+PiArICAgICAgICAgICAgICAgcmV0dXJuIHNrYl92bGFuX3RhZ19wcmVzZW50KHNrYikg
PyBza2ItPnZsYW5fcHJvdG8gOiBwcm90bzsKPj4gKwo+PiArICAgICAgIHdoaWxlIChldGhfdHlw
ZV92bGFuKHByb3RvKSkgewo+PiArICAgICAgICAgICAgICAgdmggPSBza2JfaGVhZGVyX3BvaW50
ZXIoc2tiLCBvZmZzZXQsIHNpemVvZih2aGRyKSwgJnZoZHIpOwo+PiArICAgICAgICAgICAgICAg
aWYgKCF2aCkKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4+ICsKPj4gKyAgICAg
ICAgICAgICAgIHByb3RvID0gdmgtPmhfdmxhbl9lbmNhcHN1bGF0ZWRfcHJvdG87Cj4+ICsgICAg
ICAgICAgICAgICBvZmZzZXQgKz0gc2l6ZW9mKHZoZHIpOwo+PiArICAgICAgIH0KPj4gKwo+PiAr
ICAgICAgIHJldHVybiBwcm90bzsKPj4gK30KPj4gKwo+PiArCj4+ICsKPgo+IEp1c3Qgbml0OiB0
b28gbWFueSBuZXdsaW5lcyBoZXJlLiBQbGVhc2UgcnVuIGNoZWNrcGF0Y2gucGwuCgpIbW0sIEkg
ZGlkIHJ1biBjaGVja3BhdGNoLCBidXQgc2VlbXMgaXQgb25seSBjb21wbGFpbnMgYWJvdXQgbXVs
dGlwbGUKbmV3bGluZXMgd2hlbiBydW4gd2l0aCAtLXN0cmljdC4gV2lsbCBmaXgsIHRoYW5rcyEg
OikKCj4+ICBzdGF0aWMgaW5saW5lIGJvb2wgdmxhbl9od19vZmZsb2FkX2NhcGFibGUobmV0ZGV2
X2ZlYXR1cmVzX3QgZmVhdHVyZXMsCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBfX2JlMTYgcHJvdG8pCj4+ICB7Cj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL25l
dC9pbmV0X2Vjbi5oIGIvaW5jbHVkZS9uZXQvaW5ldF9lY24uaAo+PiBpbmRleCAwZjBkMWVmZTA2
ZGQuLjgyNzYzYmE1OTdmMiAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS9uZXQvaW5ldF9lY24uaAo+
PiArKysgYi9pbmNsdWRlL25ldC9pbmV0X2Vjbi5oCj4+IEBAIC00LDYgKzQsNyBAQAo+Pgo+PiAg
I2luY2x1ZGUgPGxpbnV4L2lwLmg+Cj4+ICAjaW5jbHVkZSA8bGludXgvc2tidWZmLmg+Cj4+ICsj
aW5jbHVkZSA8bGludXgvaWZfdmxhbi5oPgo+Pgo+PiAgI2luY2x1ZGUgPG5ldC9pbmV0X3NvY2su
aD4KPj4gICNpbmNsdWRlIDxuZXQvZHNmaWVsZC5oPgo+PiBAQCAtMTcyLDcgKzE3Myw3IEBAIHN0
YXRpYyBpbmxpbmUgdm9pZCBpcHY2X2NvcHlfZHNjcCh1bnNpZ25lZCBpbnQgZHNjcCwgc3RydWN0
IGlwdjZoZHIgKmlubmVyKQo+Pgo+PiAgc3RhdGljIGlubGluZSBpbnQgSU5FVF9FQ05fc2V0X2Nl
KHN0cnVjdCBza19idWZmICpza2IpCj4+ICB7Cj4+IC0gICAgICAgc3dpdGNoIChza2ItPnByb3Rv
Y29sKSB7Cj4+ICsgICAgICAgc3dpdGNoIChza2JfcHJvdG9jb2woc2tiLCB0cnVlKSkgewo+PiAg
ICAgICAgIGNhc2UgY3B1X3RvX2JlMTYoRVRIX1BfSVApOgo+PiAgICAgICAgICAgICAgICAgaWYg
KHNrYl9uZXR3b3JrX2hlYWRlcihza2IpICsgc2l6ZW9mKHN0cnVjdCBpcGhkcikgPD0KPj4gICAg
ICAgICAgICAgICAgICAgICBza2JfdGFpbF9wb2ludGVyKHNrYikpCj4+IEBAIC0xOTEsNyArMTky
LDcgQEAgc3RhdGljIGlubGluZSBpbnQgSU5FVF9FQ05fc2V0X2NlKHN0cnVjdCBza19idWZmICpz
a2IpCj4+Cj4+ICBzdGF0aWMgaW5saW5lIGludCBJTkVUX0VDTl9zZXRfZWN0MShzdHJ1Y3Qgc2tf
YnVmZiAqc2tiKQo+PiAgewo+PiAtICAgICAgIHN3aXRjaCAoc2tiLT5wcm90b2NvbCkgewo+PiAr
ICAgICAgIHN3aXRjaCAoc2tiX3Byb3RvY29sKHNrYiwgdHJ1ZSkpIHsKPj4gICAgICAgICBjYXNl
IGNwdV90b19iZTE2KEVUSF9QX0lQKToKPj4gICAgICAgICAgICAgICAgIGlmIChza2JfbmV0d29y
a19oZWFkZXIoc2tiKSArIHNpemVvZihzdHJ1Y3QgaXBoZHIpIDw9Cj4+ICAgICAgICAgICAgICAg
ICAgICAgc2tiX3RhaWxfcG9pbnRlcihza2IpKQo+Cj4gVGhlc2UgdHdvIGhlbHBlcnMgYXJlIGNh
bGxlZCBieSBub24tbmV0X3NjaGVkIHRvbywgYXJlIHlvdSBzdXJlCj4geW91ciBjaGFuZ2UgaXMg
Y29ycmVjdCBmb3IgdGhlbSB0b28/Cj4KPiBGb3IgZXhhbXBsZSwgSVA2X0VDTl9kZWNhcHN1bGF0
ZSgpIHVzZXMgc2tiLT5wcm90b2NvbCB0aGVuIGNhbGxzCj4gSU5FVF9FQ05fZGVjYXBzdWxhdGUo
KSB3aGljaCBjYWxscyB0aGUgYWJvdmUsIGFmdGVyIHlvdXIgY2hhbmdlCj4gdGhleSB1c2Ugc2ti
X3Byb3RvY29sKCkuIFRoaXMgbG9va3MgaW5jb25zaXN0ZW50IHRvIG1lLgoKR29vZCBwb2ludC4g
SSdsbCBjaGFuZ2UgSVB7LDZ9X0VDTl9kZWNhcHN1bGF0ZSgpIHRvIGFsc28gdXNlCnNrYl9wcm90
b2NvbCgpLgoKLVRva2UKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
