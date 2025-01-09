Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A94AD007E
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:03 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 390EB3CB59;
	Fri,  6 Jun 2025 06:40:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206459;
	bh=uuY7tzVvEo/FSeGIV8d4KDugpaSoeH2/oVY+44GjW+Q=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=eY4Xadholkf9fY+KLE4C7Y6jC1T28xbqaN44nIlo9eWDBkpmMxgSN3sVkVw6WwJp1
	 VT7MyT3a1UwVdLMitQyba33GyjlhWeq0GL6jm/GGJfxqNf8QuOAiYGN26zBcksHRjz
	 oIzpZ18CfFUfr8qHWCqjr36I+LVdR1ac4cVB7/u+5fbygOZCvaX7E3ELOYRdEx4RD9
	 z+rVysbtvIhF5xVkoHnOPMLvkKFHCXW4UpzlEQ5IPTrobCDihUdLiyL/LYzNkppGue
	 MifgIYD/IGLbG8pJBkR1EX/6LMaXSfB2yurh4l25GsliBGQamTKfOxgI/78xpU/CSk
	 ++r6mlCKR+wXw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9540D3B2A4
 for <cake@lists.bufferbloat.net>; Thu,  9 Jan 2025 10:06:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1736435200;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gzcRoRMpLXdkB7rzsc91g4b2b0MisGJnEZzQL6cNwJI=;
 b=i8BpYmIfPPzbz+qrtxrfFmjUGEAdIT2tqBhOeYgFEJvukr5HAFsliSA1WL1+vcD6pqTXGs
 NEbd0H9z+jlhWOEVEAG5re/ib33wTmb5NB/4OVNIc0DaysmUpHdfor7DjBjyHRKUSh4LsQ
 HE/sAUCD7XYykFAp04DY1LozXR6TTRs=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-479-jFgUhjH9OZ6cAEOtizIjdQ-1; Thu, 09 Jan 2025 10:06:39 -0500
X-MC-Unique: jFgUhjH9OZ6cAEOtizIjdQ-1
X-Mimecast-MFC-AGG-ID: jFgUhjH9OZ6cAEOtizIjdQ
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-43628594d34so5722745e9.2
 for <cake@lists.bufferbloat.net>; Thu, 09 Jan 2025 07:06:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736435198; x=1737039998;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gzcRoRMpLXdkB7rzsc91g4b2b0MisGJnEZzQL6cNwJI=;
 b=pId2fcs9Oz8TXD3j9IyiuqsqZvRy9R2+0vo/1koKtdbNrRPlelrgjbchwLcLJLoDE7
 RlKp8DR2EXs9E+KlzhrSZtN/kNZVHcjsY5L2Hxkys7+zH5cuBf7QYwEVUi2RchTdk9hD
 G1A9Bc1KK4Xesp5AsOOOUVteJpNwWIr2VB3j8d0fNIVYlVOd/COvRpQHsnmMmdISjhSK
 +b4zwVJ64rwZXWldCMeNN/pvyz0lcDSE0U2y6Kua7M3TCLgP/9rXm1+kD0wPEjN1v9L8
 uTo2UONTsSSYJW8/3jP6K58kGUSXlviiJd6vjhEffV9/m5Gs5RL7a/gQzxsqWiDUKSTl
 2m7g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVsSFfKu4VtiOU1UyfOkv0rfsZu1PqmbEAJnpnWs9/6tv/Tx+QwHG+q3269IN2/77DlAS3E@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YylZF4J6VJ/wIr5Gs9uAePigzmYiwemSw6dbhND0Fp0d+xrBL88
 eNP+9ajoaQzsz3EMLNJ4A63zO6alIr/9FBAiy+gC5Hr9Frhk8RCtCoS1mpXKcEBo1VAYN+M8SyP
 mw2LCfan4d9Hd1ExgAc8kLEUu7+xarN62fUp46M+MSYlA/p/R/iAppSwaKmo=
X-Gm-Gg: ASbGnctcpFPIKt93AL38CTknie7G81mWaqbaPr1B+xORL6zbm+I8gNYil+NFm+aefVu
 eyxE4bf8zu4Ahm57Q+KdP/ujEVRTxE0PfQ7MIeLutfEWo+FbTp+hEeRuVg9h4qtue3lwZsBXjGg
 6+tAXv83RYFdcI4VdRC6vxDjW2tQysgOEX1tbbuYf4tG5I7vdt5w19GEfjx5OHw269uiNmuCE3g
 JPZThwEcQGws8yZ1xcukqM1VxLgLFLZ0cYDFp0DaG7nUMKHYlNxFqwiXGxCZ0e3/Qo6uKbiu9KM
 mZ2QlZPn
X-Received: by 2002:a05:600c:4f4e:b0:434:a902:97cd with SMTP id
 5b1f17b1804b1-436e26935cbmr44133855e9.12.1736435197648; 
 Thu, 09 Jan 2025 07:06:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFz4fqEltbHoSuDNDTp1SE8zUB62F/bzYqQ5DX0WgJpNw0B1w2i4HNjw+Zz7/wY/VcFCtkUvA==
X-Received: by 2002:a05:600c:4f4e:b0:434:a902:97cd with SMTP id
 5b1f17b1804b1-436e26935cbmr44133285e9.12.1736435197100; 
 Thu, 09 Jan 2025 07:06:37 -0800 (PST)
Received: from [192.168.88.253] (146-241-2-244.dyn.eolo.it. [146.241.2.244])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-436e2e89de4sm57384505e9.34.2025.01.09.07.06.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jan 2025 07:06:36 -0800 (PST)
Message-ID: <11915c70-ec5e-4d94-b890-f07f41094e2c@redhat.com>
Date: Thu, 9 Jan 2025 16:06:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>
References: <20250107120105.70685-1-toke@redhat.com>
 <fb7a1324-41c6-4e10-a6a3-f16d96f44f65@redhat.com> <87plkwi27e.fsf@toke.dk>
In-Reply-To: <87plkwi27e.fsf@toke.dk>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: VQrhDUDa5NStP7fY5A5envbL_YAyv4g45X_PVddBqN0_1736435198
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Approved-At: Fri, 06 Jun 2025 06:40:58 -0400
Subject: Re: [Cake] [PATCH net v2] sched: sch_cake: add bounds checks to
 host bulk flow fairness counts
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
From: Paolo Abeni via Cake <cake@lists.bufferbloat.net>
Reply-To: Paolo Abeni <pabeni@redhat.com>
Cc: netdev@vger.kernel.org, cake@lists.bufferbloat.net,
 Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 syzbot+f63600d288bfb7057424@syzkaller.appspotmail.com,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gMS85LzI1IDE6NDcgUE0sIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPiBQYW9s
byBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+IHdyaXRlczoKPj4gT24gMS83LzI1IDE6MDEgUE0s
IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4+IEV2ZW4gdGhvdWdoIHdlIGZpeGVk
IGEgbG9naWMgZXJyb3IgaW4gdGhlIGNvbW1pdCBjaXRlZCBiZWxvdywgc3l6Ym90Cj4+PiBzdGls
bCBtYW5hZ2VkIHRvIHRyaWdnZXIgYW4gdW5kZXJmbG93IG9mIHRoZSBwZXItaG9zdCBidWxrIGZs
b3cKPj4+IGNvdW50ZXJzLCBsZWFkaW5nIHRvIGFuIG91dCBvZiBib3VuZHMgbWVtb3J5IGFjY2Vz
cy4KPj4+Cj4+PiBUbyBhdm9pZCBhbnkgc3VjaCBsb2dpYyBlcnJvcnMgY2F1c2luZyBvdXQgb2Yg
Ym91bmRzIG1lbW9yeSBhY2Nlc3NlcywKPj4+IHRoaXMgY29tbWl0IGZhY3RvcnMgb3V0IGFsbCBh
Y2Nlc3NlcyB0byB0aGUgcGVyLWhvc3QgYnVsayBmbG93IGNvdW50ZXJzCj4+PiB0byBhIHNlcmll
cyBvZiBoZWxwZXJzIHRoYXQgcGVyZm9ybSBib3VuZHMtY2hlY2tpbmcgYmVmb3JlIGFueQo+Pj4g
aW5jcmVtZW50cyBhbmQgZGVjcmVtZW50cy4gVGhpcyBhbHNvIGhhcyB0aGUgYmVuZWZpdCBvZiBp
bXByb3ZpbmcKPj4+IHJlYWRhYmlsaXR5IGJ5IG1vdmluZyB0aGUgY29uZGl0aW9uYWwgY2hlY2tz
IGZvciB0aGUgZmxvdyBtb2RlIGludG8KPj4+IHRoZXNlIGhlbHBlcnMsIGluc3RlYWQgb2YgaGF2
aW5nIHRoZW0gc3ByZWFkIG91dCB0aHJvdWdob3V0IHRoZQo+Pj4gY29kZSAod2hpY2ggd2FzIHRo
ZSBjYXVzZSBvZiB0aGUgb3JpZ2luYWwgbG9naWMgZXJyb3IpLgo+Pj4KPj4+IHYyOgo+Pj4gLSBS
ZW1vdmUgbm93LXVudXNlZCBzcmNob3N0IGFuZCBkc3Rob3N0IGxvY2FsIHZhcmlhYmxlcyBpbiBj
YWtlX2RlcXVldWUoKQo+Pgo+PiBTbWFsbCBuaXQ6IHRoZSBjaGFuZ2Vsb2cgc2hvdWxkIGNvbWUg
YWZ0ZXIgdGhlICctLS0nIHNlcGFyYXRvci4gTm8gbmVlZAo+PiB0byByZXBvc3QganVzdCBmb3Ig
dGhpcy4KPiAKPiBPaCwgSSB3YXMgdW5kZXIgdGhlIGltcHJlc3Npb24gdGhhdCB3ZSB3YW50ZWQg
dGhlbSBwcmVzZXJ2ZWQgaW4gdGhlIGdpdAo+IGxvZyAoYW5kIGhlbmNlIGFib3ZlIHRoZSAtLS0p
LiBJcyB0aGF0IG5vdCB0aGUgY2FzZSAoYW55bW9yZT8pPwoKSXQgd2FzIHNvbWUgdGltZSBhZ28u
IElzIHRoaXMgd2F5IHNpbmNlIGEgd2hpbGU6CgpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9s
aW51eC92Ni4xMy1yYzMvc291cmNlL0RvY3VtZW50YXRpb24vcHJvY2Vzcy9tYWludGFpbmVyLW5l
dGRldi5yc3QjTDIyOQoKWy4uLl0KPj4gZGl0aGVyaW5nIGlzIG5vdyBhcHBsaWVkIG9uIGJvdGgg
ZW5xdWV1ZSBhbmQgZGVxdWV1ZSwgd2hpbGUgcHJpb3IgdG8KPj4gdGhpcyBwYXRjaCBpdCBvbmx5
IGhhcHBlbmVkIG9uIGRlcXVldWUuIElzIHRoYXQgaW50ZW50aW9uYWw/IGNhbid0IGxlYWQKPj4g
dG8gKHNtYWxsKSBmbG93X2RlZmljaXQgaW5jcmVhc2U/Cj4gCj4gWWVhaCwgdGhhdCB3YXMgZGVs
aWJlcmF0ZS4gVGhlIGZsb3cgcXVhbnR1bSBpcyBvbmx5IHNldCBvbiBlbnF1ZXVlIHdoZW4KPiB0
aGUgZmxvdyBpcyBmaXJzdCBpbml0aWFsaXNlZCBhcyBhIHNwYXJzZSBmbG93LCBub3QgZm9yIGV2
ZXJ5IHBhY2tldC4KPiBUaGUgb25seSB1c2VyLXZpc2libGUgZWZmZWN0IEkgY2FuIHNlZSB0aGlz
IGhhdmluZyBpcyB0aGF0IHRoZSBtYXhpbXVtCj4gcGFja2V0IHNpemUgdGhhdCBjYW4gYmUgc2Vu
dCB3aGlsZSBhIGZsb3cgc3RheXMgc3BhcnNlIHdpbGwgbm93IHZhcnkKPiB3aXRoICsvLSBvbmUg
Ynl0ZSBpbiBzb21lIGNhc2VzLiBJIGFtIHByZXR0eSBzdXJlIHRoaXMgd29uJ3QgaGF2ZSBhbnkK
PiBjb25zZXF1ZW5jZSBpbiBwcmFjdGljZSwgYW5kIEkgZG9uJ3QgdGhpbmsgaXQncyB3b3J0aCBj
b21wbGljYXRpbmcgdGhlCj4gY29kZSAod2l0aCBhICdkaXRoZXInIGFyZ3VtZW50IHRvIGNha2Vf
Zmxvd19nZXRfcXVhbnR1bSgpLCBzYXkpIHRvCj4gcHJlc2VydmUgdGhlIG9sZCBiZWhhdmlvdXIu
CgpVbmRlcnN0b29kLCBhbmQgZmluZSBieSBtZS4KCj4gSSBndWVzcyBJIHNob3VsZCBoYXZlIG1l
bnRpb25lZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgdGhhdCB0aGlzIHdhcwo+IGRlbGliZXJhdGUu
IFNpbmNlIGl0IHNlZW1zIHlvdSdsbCBiZSBlZGl0aW5nIHRoYXQgYW55d2F5IChjZiB0aGUgYWJv
dmUpLAo+IGhvdyBhYm91dCBhZGRpbmcgYSBwYXJhZ3JhcGggbGlrZToKPiAKPiAgQXMgcGFydCBv
ZiB0aGlzIGNoYW5nZSwgdGhlIGZsb3cgcXVhbnR1bSBjYWxjdWxhdGlvbiBpcyBjb25zb2xpZGF0
ZWQKPiAgaW50byBhIGhlbHBlciBmdW5jdGlvbiwgd2hpY2ggbWVhbnMgdGhhdCB0aGUgZGl0aGVy
aW5nIGFwcGxpZWQgdG8gdGhlCj4gIGhvc3QgbG9hZCBzY2FsaW5nIGlzIG5vdyBhcHBsaWVkIGJv
dGggaW4gdGhlIERSUiByb3RhdGlvbiBhbmQgd2hlbiBhCj4gIHNwYXJzZSBmbG93J3MgcXVhbnR1
bSBpcyBmaXJzdCBpbml0aWF0ZWQuIFRoZSBvbmx5IHVzZXItdmlzaWJsZSBlZmZlY3QKPiAgb2Yg
dGhpcyBpcyB0aGF0IHRoZSBtYXhpbXVtIHBhY2tldCBzaXplIHRoYXQgY2FuIGJlIHNlbnQgd2hp
bGUgYSBmbG93Cj4gIHN0YXlzIHNwYXJzZSB3aWxsIG5vdyB2YXJ5IHdpdGggKy8tIG9uZSBieXRl
IGluIHNvbWUgY2FzZXMuIFRoaXMgc2hvdWxkCj4gIG5vdCBtYWtlIGEgbm90aWNlYWJsZSBkaWZm
ZXJlbmNlIGluIHByYWN0aWNlLCBhbmQgdGh1cyBpdCdzIG5vdCB3b3J0aAo+ICBjb21wbGljYXRp
bmcgdGhlIGNvZGUgdG8gcHJlc2VydmUgdGhlIG9sZCBiZWhhdmlvdXIuCgpJdCdzIGluIEpha3Vi
J3MgaGFuZHMgbm93LCBwb3NzaWJseSBoZSBjb3VsZCBwcmVmZXIgYSByZXBvc3QgdG8gcmVkdWNl
CnRoZSBtYWludGFpbmVyJ3Mgb3ZlcmhlYWQuCgpUaGFua3MsCgpQYW9sbwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=
