Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A49BE20B1BE
	for <lists+cake@lfdr.de>; Fri, 26 Jun 2020 14:52:43 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 79BD53CB38;
	Fri, 26 Jun 2020 08:52:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593175962;
	bh=dObReR+A5MvP3p7Uhbh6z12ZsnejanzdJuvF4iAgmWI=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JU7i1SZ/OelHEEUbSAQGy4HAdyTB2WKJLvKFtpLlu9j24k6Gnt1GpkrODWqF5+kpZ
	 hQ9J4ZifkVUprBkR1pkUUuEttCnVsdM0rWA5y2jwL3uztN4y+xj9oLf72ddAIhsyFy
	 EJzskwHF71Kuo19QgibqRzEeZLI+vYXTssl/DI2FrTb6i8LqJSNeBoEC2zzHdSiZED
	 v3DvFP4Q8zubN/BOvfT9BAn2DmLwL6t+CEZNWf+n7aUufZQnj+IqGZlj64cLSu7cI2
	 O5Z0Vh33KLrEfJWJV4PlVT7SyG0Ieijsdy6URSp/kqdcTg9rXiG6WXE5wCPWAxPcrU
	 zHBt8W2weHBMw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CD3A43B29E
 for <cake@lists.bufferbloat.net>; Fri, 26 Jun 2020 08:52:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593175960;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hD2c3oEpNKtEub0ENNXKHCIg/QZcL62Hd+GpAUC1+6s=;
 b=K4VHne8TUFZamSCLFy4xCs07lzhZda6sSojeNpuRN+xnl2ACeuaU2c8gJcgCzliRb6pSBK
 xsYDP1LY3kpKYvAlErWwNCSxJsdIZausdRDuk+Shzw6estT3R8elGpy6CRRu20rI4HfJrp
 eqYWQXhZ/V+KifsBC6sQjnlQayeiDzI=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-47-yNxuKqexO1eV0zYM9mNZKw-1; Fri, 26 Jun 2020 08:52:38 -0400
X-MC-Unique: yNxuKqexO1eV0zYM9mNZKw-1
Received: by mail-ej1-f69.google.com with SMTP id cf15so7077474ejb.6
 for <cake@lists.bufferbloat.net>; Fri, 26 Jun 2020 05:52:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=/iHDgfiY8TDh3EPNTgzupA4JBUtTDmY+m7kSnSwNTKo=;
 b=nS827Q0EMfYPIU4oOaLv9Yd3rgn3iipzjuiHlKk/IDoMuyDynUx/DcLPyVxsk+dRdJ
 lhLJK4GB6Sn9LB3OypFkyDkW6xQeBMkj3jM+3drRguQgk+brTGl/94Qg4T/4i7po+AdB
 kf3XCFT5F6k5Y/HTni/SFRlA4EFR6LhRuisWIa4RzuELZDjqGEy7UOSuC4MwjZqALMAt
 x/pyaQ8qmy8x/eXZA6i15sIL3xsP3h7UXfdLibGpWWRvCcmo0SHDcjgsghIcg+bHq4HT
 QrZI53PdvdtycF++aIhnErdRE7noVbrBtkLLxW7LLPkd3jOT57JMYmFyo7yXFr8wCAc7
 iZKw==
X-Gm-Message-State: AOAM530FJAatpe8e4X5O0FQB2T/4PWMMMF/ZNdgec/r6eCuPzZsN/PmA
 VNfbqtmzP2wcLShI9++hARd2nt+xGFqcbvpRD7/wrxC1k7hDFrJlWCYBzkWrh6GOgKfaDl87BeY
 eI4WmZeZbjoMaZup7/B80Tg==
X-Received: by 2002:a17:906:6a4f:: with SMTP id
 n15mr2350261ejs.378.1593175957584; 
 Fri, 26 Jun 2020 05:52:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz3UPQSYD18e7LtAU1xQDYajPQGgJdas4L4X0+hY7qoM0GoqUwJwTAhxcLFtToqZitlTRnD7w==
X-Received: by 2002:a17:906:6a4f:: with SMTP id
 n15mr2350245ejs.378.1593175957307; 
 Fri, 26 Jun 2020 05:52:37 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id o17sm10814176ejb.105.2020.06.26.05.52.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 05:52:36 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 116EC1808CF; Fri, 26 Jun 2020 14:52:36 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Davide Caratti <dcaratti@redhat.com>, David Miller <davem@davemloft.net>
In-Reply-To: <240fc14da96a6212a98dd9ef43b4777a9f28f250.camel@redhat.com>
References: <159308610282.190211.9431406149182757758.stgit@toke.dk>
 <159308610390.190211.17831843954243284203.stgit@toke.dk>
 <20200625.122945.321093402617646704.davem@davemloft.net>
 <87k0zuj50u.fsf@toke.dk>
 <240fc14da96a6212a98dd9ef43b4777a9f28f250.camel@redhat.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 26 Jun 2020 14:52:36 +0200
Message-ID: <87h7uyhtuz.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [PATCH net-next 1/5] sch_cake: fix IP protocol handling
	in the presence of VLAN tags
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org,
 Jiri Pirko <jiri@resnulli.us>, Jamal Hadi Salim <jhs@mojatatu.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2aWRlIENhcmF0dGkgPGRjYXJhdHRpQHJlZGhhdC5jb20+IHdyaXRlczoKCj4gaGVsbG8sCj4K
PiBteSAyIGNlbnRzOgo+Cj4gT24gVGh1LCAyMDIwLTA2LTI1IGF0IDIxOjUzICswMjAwLCBUb2tl
IEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+IEkgdGhpbmsgaXQgZGVwZW5kcyBhIGxpdHRs
ZSBvbiB0aGUgdXNlIGNhc2U7IHNvbWUgY2FsbGVycyBhY3R1YWxseSBjYXJlCj4+IGFib3V0IHRo
ZSBWTEFOIHRhZ3MgdGhlbXNlbHZlcyBhbmQgaGFuZGxlIHRoYXQgc3BlY2lhbGx5IChlLmcuLAo+
PiBhY3RfY3N1bSkuCj4KPiBJIHJlbWVtYmVyIHRhaHQgc29tZXRoaW5nIHNpbWlsYXIgd2FzIGRp
c2N1c3NlZCBhYm91dCAxIHllYXIgYWdvIFsxXS4KCkFoLCB0aGFuayB5b3UgZm9yIHRoZSBwb2lu
dGVyIQoKPj4gV2hlcmVhcyBvdGhlcnMgKGUuZy4sIHNjaF9kc21hcmspIHByb2JhYmx5IHdpbGwg
aGF2ZSB0aGUgc2FtZQo+PiBpc3N1ZS4KPgo+IEknZCBzYXkgdGhhdCB0aGUgaXNzdWUgInByb3Bh
Z2F0ZXMiIHRvIGFsbCBxZGlzY3MgdGhhdCBtYW5nbGUgdGhlIEVDTi1DRQo+IGJpdCAoaS5lLiwg
Y2FsbGluZyBJTkVUX0VDTl9zZXRfY2UoKSBbMl0pLCBtb3N0IG5vdGFibHkgYWxsIHRoZSBSRUQK
PiB2YXJpYW50cyBhbmQgImNvZGVsL2ZxX2NvZGVsIi4KClllYWgsIEkgdGhpbmsgd2Ugc2hvdWxk
IGZpeCBJTkVUX0VDTl9zZXRfY2UoKSBpbnN0ZWFkIG9mIHJlLWltcGxlbWVudGluZwppdCBpbiBD
QUtFLiBTZWUgYmVsb3csIHRob3VnaC4KCj4+ICBJIGd1ZXNzIEkgY2FuIHRyeWluZyBnb2luZyB0
aHJvdWdoIHRoZW0gYWxsIGFuZCBmaWd1cmluZyBvdXQgaWYKPj4gdGhlcmUncyBhIG1vcmUgZ2Vu
ZXJpYyBzb2x1dGlvbi4KPgo+IEZvciBzY2hfY2FrZSwgSSB0aGluayB0aGF0IHRoZSBxZGlzYyBz
aG91bGRuJ3QgbG9vayBhdCB0aGUgSVAgaGVhZGVyIHdoZW4KPiBpdCBzY2hlZHVsZXMgcGFja2V0
cyBoYXZpbmcgYSBWTEFOIHRhZy4KPgo+IFByb2JhYmx5LCB3aGVuIHRjX3NrYl9wcm90b2NvbCgp
IHJldHVybnMgRVRIX1BfODAyMVEgb3IgRVRIX1BfODAyMUFELCB3ZQo+IHNob3VsZCBsb29rIGF0
IHRoZSBWTEFOIHByaW9yaXR5IChQQ1ApIGJpdHMgKGFuZCB0aGF0J3Mgc29tZXRoaW5nIHRoYXQK
PiBjYWtlIGRvZXNuJ3QgZG8gY3VycmVudGx5IC0gYnV0IEkgaGF2ZSBhIHNtYWxsIHBhdGNoIGlu
IG15IHN0YXNoIHRoYXQKPiBpbXBsZW1lbnRzIHRoaXM6IHBsZWFzZSBsZXQgbWUga25vdyBpZiB5
b3UgYXJlIGludGVyZXN0ZWQgaW4gc2VlaW5nIGl0IDopCj4gKS4KPgo+IFRoZW4sIHRvIGVuc3Vy
ZSB0aGF0IHRoZSBJUCBwcmVjZWRlbmNlIGlzIHJlc3BlY3RlZCwgZXZlbiB3aXRoIGRpZmZlcmVu
dAo+IFZMQU4gdGFncywgdXNlcnMgc2hvdWxkIGV4cGxpY2l0bHkgY29uZmlndXJlIFRDIGZpbHRl
cnMgdGhhdCAibWFwIiB0aGUKPiBEU0NQIHZhbHVlIHRvIGEgUENQIHZhbHVlLiBUaGlzIHdvdWxk
IGVuc3VyZSB0aGF0IGNvbmZpZ3VyZWQgcHJpb3JpdHkgaXMKPiByZXNwZWN0ZWQgYnkgdGhlIHNj
aGVkdWxlciwgYW5kIHdvdWxkIGFsc28gYmUgZmxleGlibGUgZW5vdWdoIHRvIGFsbG93Cj4gZGlm
ZmVyZW50ICJtYXBwaW5ncyIuCgpJIHRoaW5rIHlvdSBoYXZlIHRoaXMgdGhlIHdyb25nIHdheSBh
cm91bmQgOikKCkkuZS4sIGNsYXNzaWZ5aW5nIGJhc2VkIG9uIFZMQU4gcHJpb3JpdHkgaXMgZXZl
biBtb3JlIGVzb3RlcmljIHRoYW4KdXNpbmcgZGlmZnNlcnYgbWFya2luZ3MsIHNvIHRoYXQgc2hv
dWxkIG5vdCBiZSB0aGUgZGVmYXVsdC4gTWFraW5nIGl0CnRoZSBkZWZhdWx0IHdvdWxkIGFsc28g
bWFrZSB0aGUgYmVoYXZpb3VyIGNoYW5nZSBmb3IgdGhlIHNhbWUgdHJhZmZpYyBpZgp0aGVyZSdz
IGEgVkxBTiB0YWcgcHJlc2VudCwgd2hpY2ggaXMgYm91bmQgdG8gY29uZnVzZSBwZW9wbGUuIEkg
c3VwcG9zZQppdCBjb3VsZCBiZSBhbiBvcHRpb24sIGJ1dCBub3QgcmVhbGx5IHN1cmUgdGhhdCdz
IG5lZWRlZCwgc2luY2UgYXMgeW91CnNheSB5b3UgY291bGQganVzdCBpbXBsZW1lbnQgaXQgd2l0
aCB5b3VyIG93biBUQyBmaWx0ZXJzLi4uCgo+IFN1cmUsIG15IHByb3Bvc2FsIGRvZXMgbm90IGNv
dmVyIHRoZSBwcm9ibGVtIG9mIG1hbmdsaW5nIHRoZSBDRSBiaXQKPiBpbnNpZGUgVkxBTi10YWdn
ZWQgcGFja2V0cywgaS5lLiBpZiB3ZSBzaG91bGQgdW5kZXJzdGFuZCBpZiBxZGlzY3MKPiBzaG91
bGQgYWxsb3cgaXQgb3Igbm90LgoKSG1tLCB5ZWFoLCB0aGF0J3MgdGhlIHJ1YiwgaXNuJ3QgaXQ/
IEkgdGhpbmsgdGhpcyBpcyByZWxhdGVkIHRvIHRoaXMKY29tbWl0LCB3aGljaCBmaXJzdCBpbnRy
b2R1Y2VkIHRjX3NrYl9wcm90b2NvbCgpOgoKZDhiOTYwNWQyNjk3ICgibmV0OiBzY2hlZDogZml4
IHNrYi0+cHJvdG9jb2wgdXNlIGluIGNhc2Ugb2YgYWNjZWxlcmF0ZWQgdmxhbiBwYXRoIikKClRo
YXQgY29tbWl0IGF0IGxlYXN0IG1hZGUgdGhlIGJlaGF2aW91ciBjb25zaXN0ZW50IGFjcm9zcwph
Y2NlbGVyYXRlZC9ub24tYWNjZWxlcmF0ZWQgVkxBTnMuIEhvd2V2ZXIsIHRoZSBwYXRjaCBkZXNj
cmlwdGlvbgphc3NlcnRzIHRoYXQgJ3RjIGNvZGUgLi4gZXhwZWN0cyB2bGFuIHByb3RvY29sIHR5
cGUgW2luIHNrYi0+cHJvdG9jb2xdJy4KTG9va2luZyBhdCB0aGUgdmFyaW91cyBjYWxsZXJzLCBJ
J20gbm90IGFjdHVhbGx5IHN1cmUgdGhhdCdzIHRydWUsIGluCnRoZSBzZW5zZSB0aGF0IG1vc3Qg
b2YgdGhlIGNhbGxlcnMgZG9uJ3QgaGFuZGxlIFZMQU4gZXRoZXJ0eXBlcyBhdCBhbGwsCmJ1dCBl
eHBlY3RzIHRvIGZpbmQgYW4gSVAgaGVhZGVyLiBUaGlzIGlzIHRoZSBjYXNlIGZvciBhdCBsZWFz
dDoKCi0gYWN0X2N0aW5mbwotIGFjdF9za2JlZGl0Ci0gY2xzX2Zsb3cKLSBlbV9pcHNldAotIGVt
X2lwdAotIHNjaF9jYWtlCi0gc2NoX2RzbWFyawoKSW4gZmFjdCB0aGUgb25seSBjYWxsZXIgdGhh
dCBleHBsaWNpdGx5IGhhbmRsZXMgYSBWTEFOIGV0aGVydHlwZSBzZWVtcwp0byBiZSBhY3RfY3N1
bTsgYW5kIHRoYXQgaGFuZGxlcyBpdCBpbiBhIHdheSB0aGF0IGFsc28ganVzdCBza2lwcyB0aGUK
VkxBTiBoZWFkZXJzLCBhbGJlaXQgYnkgc2tiX3B1bGwoKSdpbmcgdGhlIGhlYWRlci4KCmNsc19h
cGksIGVtX21ldGEgYW5kIHNjaF90ZXFsIGRvbid0IGV4cGxpY2l0bHkgaGFuZGxlIGl0OyBidXQg
cmV0dXJuaW5nCnRoZSBWTEFOIGV0aGVydHlwZXMgdG8gdGhvc2UgZG9lcyBzZWVtIHRvIG1ha2Ug
c2Vuc2UsIHNpbmNlIHRoZXkganVzdApwYXNzIHRoZSB2YWx1ZSBzb21ld2hlcmUgZWxzZS4KClNv
IG15IHN1Z2dlc3Rpb24gd291bGQgYmUgdG8gYWRkIGEgbmV3IGhlbHBlciB0aGF0IHNraXBzIHRo
ZSBWTEFOIHRhZ3MKYW5kIGZpbmRzIHRoZSBMMyBldGhlcnR5cGUgKGkuZS4sIGJhc2ljYWxseSBj
YWtlX3NrYl9wcm90bygpIGFzCmludHJvZHVjZWQgaW4gdGhpcyBwYXRjaCksIHRoZW4gc3dpdGNo
IGFsbCB0aGUgY2FsbGVycyBsaXN0ZWQgYWJvdmUsIGFzCndlbGwgYXMgdGhlIElORVRfRUNOX3Nl
dF9jZSgpIG92ZXIgdG8gdXNpbmcgdGhhdC4gTWF5YmUgc29tZXRoaW5nIGxpa2UKJ3NrYl9sM19w
cm90b2NvbCgpJyB3aGljaCBjb3VsZCBnbyBpbnRvIHNrYnVmZi5oIGl0c2VsZiwgc28gdGhlIEVD
TiBjb2RlCmNhbiBhbHNvIGZpbmQgaXQ/CgpBbnkgb2JqZWN0aW9ucyB0byB0aGlzPyBJdCdzIG5v
dCBhY3R1YWxseSBjbGVhciB0byBtZSBob3cgdGhlIGRpc2N1c3Npb24KeW91IHF1b3RlZCBhYm92
ZSBsYW5kZWQ7IGJ1dCB0aGlzIHdpbGwgYXQgbGVhc3QgbWFrZSB0aGluZ3MgY29uc2lzdGVudAph
Y3Jvc3MgYWxsIHRoZSBkaWZmZXJlbnQgYWN0aW9ucy9ldGMuCgpBZGRpbmcgaW4gSmlyaSBhbmQg
SmFtYWwgYXMgd2VsbCBzaW5jZSB0aGV5IHdlcmUgaW52b2x2ZWQgaW4gdGhlIHBhdGNoIEkKcXVv
dGVkIGFib3ZlLgoKLVRva2UKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0
dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
