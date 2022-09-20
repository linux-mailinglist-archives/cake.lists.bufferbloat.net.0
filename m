Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8905BE774
	for <lists+cake@lfdr.de>; Tue, 20 Sep 2022 15:45:36 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F04A23CB40;
	Tue, 20 Sep 2022 09:45:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1663681533;
	bh=ihF/ftcvNv7xRlIDu0LgYF9t5gxkSHGJE7SWks0HTgI=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=N430JJ3jvSYr1Ao/xf2m5JTeBb3ufA+AN44TlPgbWKcjxtiq3P22Gdf7Jq8d1Bo4c
	 xpuWQiT7NlKCQy6/BZhC0bd9iFS+95uB0T3+R9pyj+Ykso1kymCvnk7dReeD6qY0uv
	 cx+FNVzptnuxOi2Pns4zjEMYZpxBbtttd/wpPjqzj5EbXg4O72TrERnwbZ45ChZOl4
	 xILuZs7oYslmylMv2ohlt0oxlEX+0T5ny+5UNl1Dw09xbrAg56mrvLdJUnx6Bnwn88
	 w8r+62iBA1oM8PcxkGgsbVbxSzj/xPcKkTx2onT1LdVqOVLRdSIWCuorwJVOEi3FdX
	 Iyhhaag69VN5w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6EB243CB37
 for <cake@lists.bufferbloat.net>; Tue, 20 Sep 2022 09:45:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1663681532;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=DxHKjrVMawJTVmFBN2tlPLoDEtk3zoTr+D6pCmrZ1R0=;
 b=H98o82lqESLFvdPQwf6SaepGAe89kzdJvk/PbJQMSrovPloq7fffv4nAmnpwoChuAbR8NE
 gdT2rYExf9Cq7wMG4DcsajqxwjgJmuGW5JG7ostYCjFEvX5Nxa+8XSe73lFThHw/ns4gPr
 OxssKa+CLxLfteCXvR+EW8yQPidICyY=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-203-7RxRYnh5NT2bAXcpuDTmaQ-1; Tue, 20 Sep 2022 09:45:31 -0400
X-MC-Unique: 7RxRYnh5NT2bAXcpuDTmaQ-1
Received: by mail-ed1-f70.google.com with SMTP id
 w20-20020a05640234d400b00450f24c8ca6so1902271edc.13
 for <cake@lists.bufferbloat.net>; Tue, 20 Sep 2022 06:45:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date;
 bh=DxHKjrVMawJTVmFBN2tlPLoDEtk3zoTr+D6pCmrZ1R0=;
 b=FKkNjsAKHHKV5IHM+1usrUAxXYnmpiO+VgMifxtLpK+xgYpBe949Mngc005QYY7DWt
 x3gsvE05a6iStVxknwN41bTg9wSkiir4HDyb73jgPnGvu+SuNqdxz3es7nqp4Sv9PwVS
 ZJs7HyUM6eapsduykOcc8BlIml1bLUGfD2oEjxmAmZ1xLf3H5md7e5jqYEJpikgvtpJh
 fWRUgljosfjeCv9RvkNG/uc/fuzOh+rgKX06T00xJVp96bb8+Iz4ih4Xr7SYALzxpJpZ
 tcNANnCgHoNk+hZmwJbbN15F4M+Cv6Cs/LnMUpTHo7afRlw53JNsSvVT7+qWdETIsXNU
 sKfA==
X-Gm-Message-State: ACrzQf1eDMVVwZqi07IwgVf4g3XALM4Lq7EVMiWM3GPUbiU3/6nrBoDz
 vR+cI6cfwpWknRgZZX4JQUEoW2AZ2yJyYxf9FcOFpTQt2m/8BgoEYkkxhswS+/ZMIrRwlj51qG1
 l/J3qJI9y47xiupY6Q9DUZg==
X-Received: by 2002:a17:906:ef8c:b0:77c:8d9a:9aed with SMTP id
 ze12-20020a170906ef8c00b0077c8d9a9aedmr17889331ejb.704.1663681527155; 
 Tue, 20 Sep 2022 06:45:27 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7E33JWAP3AhjFxcYXywbXSv1ZvnnxSk+uY3JXkypwF5KGToMYJwipqmJ/n7IuetlIHtn+W/Q==
X-Received: by 2002:a17:906:ef8c:b0:77c:8d9a:9aed with SMTP id
 ze12-20020a170906ef8c00b0077c8d9a9aedmr17889281ejb.704.1663681526444; 
 Tue, 20 Sep 2022 06:45:26 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 g13-20020a170906c18d00b0078015cebd8csm905122ejz.117.2022.09.20.06.45.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Sep 2022 06:45:25 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 4842D61C33C; Tue, 20 Sep 2022 15:45:25 +0200 (CEST)
To: Zhengchao Shao <shaozhengchao@huawei.com>, netdev@vger.kernel.org,
 cake@lists.bufferbloat.net, linux-kselftest@vger.kernel.org,
 jhs@mojatatu.com, xiyou.wangcong@gmail.com, jiri@resnulli.us,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, vinicius.gomes@intel.com, stephen@networkplumber.org,
 shuah@kernel.org, victor@mojatatu.com
In-Reply-To: <20220917050217.127342-1-shaozhengchao@huawei.com>
References: <20220917050217.127342-1-shaozhengchao@huawei.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 20 Sep 2022 15:45:25 +0200
Message-ID: <87sfkmw45m.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [PATCH net-next,
 v2 01/18] net/sched: sch_api: add helper for tc qdisc walker stats
 dump
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Cc: yuehaibing@huawei.com, zhijianx.li@intel.com, weiyongjun1@huawei.com,
 shaozhengchao@huawei.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

WmhlbmdjaGFvIFNoYW8gPHNoYW96aGVuZ2NoYW9AaHVhd2VpLmNvbT4gd3JpdGVzOgoKPiBUaGUg
d2FsayBpbXBsZW1lbnRhdGlvbiBvZiBtb3N0IHFkaXNjIGNsYXNzIG1vZHVsZXMgaXMgYmFzaWNh
bGx5IHRoZQo+IHNhbWUuIFRoYXQgaXMsIHRoZSB2YWx1ZXMgb2YgY291bnQgYW5kIHNraXAgYXJl
IGNoZWNrZWQgZmlyc3QuIElmCj4gY291bnQgaXMgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvIHNr
aXAsIHRoZSByZWdpc3RlcmVkIGZuIGZ1bmN0aW9uIGlzCj4gZXhlY3V0ZWQuIE90aGVyd2lzZSwg
aW5jcmVhc2UgdGhlIHZhbHVlIG9mIGNvdW50LiBTbyB3ZSBjYW4gcmVjb25zdHJ1Y3QKPiB0aGVt
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogWmhlbmdjaGFvIFNoYW8gPHNoYW96aGVuZ2NoYW9AaHVhd2Vp
LmNvbT4KPiAtLS0KPiAgaW5jbHVkZS9uZXQvcGt0X3NjaGVkLmggfCAxMyArKysrKysrKysrKysr
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9uZXQvcGt0X3NjaGVkLmggYi9pbmNsdWRlL25ldC9wa3Rfc2NoZWQuaAo+IGluZGV4IDI5
ZjY1NjMyZWJjNS4uMjQzZThiMGNiN2VhIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbmV0L3BrdF9z
Y2hlZC5oCj4gKysrIGIvaW5jbHVkZS9uZXQvcGt0X3NjaGVkLmgKPiBAQCAtMjIyLDQgKzIyMiwx
NyBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCB0Y19za2JfY2IgKnRjX3NrYl9jYihjb25zdCBzdHJ1
Y3Qgc2tfYnVmZiAqc2tiKQo+ICAJcmV0dXJuIGNiOwo+ICB9Cj4gIAo+ICtzdGF0aWMgaW5saW5l
IGJvb2wgdGNfcWRpc2Nfc3RhdHNfZHVtcChzdHJ1Y3QgUWRpc2MgKnNjaCwKPiArCQkJCSAgICAg
ICBzdHJ1Y3QgcWRpc2Nfd2Fsa2VyICphcmcsCj4gKwkJCQkgICAgICAgdW5zaWduZWQgbG9uZyBj
bCkKPiArewo+ICsJaWYgKGFyZy0+Y291bnQgPj0gYXJnLT5za2lwICYmIGFyZy0+Zm4oc2NoLCBj
bCwgYXJnKSA8IDApIHsKClNlZW1zIGEgYml0IGNvbmZ1c2luZyB0aGF0IHRjX3FkaXNjX3N0YXRz
X2R1bXAoKSByZXZlcnNlcyB0aGUgb3JkZXIgb2YKdGhlICdjbCcgYW5kICdhcmcnIHBhcmFtZXRl
cnMgcmVsYXRpdmUgdG8gdGhlIGNhbGxiYWNrPwoKLVRva2UKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UK
