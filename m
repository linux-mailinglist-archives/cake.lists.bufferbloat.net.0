Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 584F4307C16
	for <lists+cake@lfdr.de>; Thu, 28 Jan 2021 18:19:51 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 06E433CB40;
	Thu, 28 Jan 2021 12:19:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1611854390;
	bh=fFImtr4vCZBcbz64aDKTh55ppMwLItukf1P9py1CiHU=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ow6SE7FnA1k4lBLt9Olajr5gNeRedaNwG++ADgqYMdYD3fHKDvFo73CZFGhhKCJ8S
	 YS63Z9pWm75loI+R3H2G/FzuGph6xkI45SWgxtqGFwERCdPeoiUZAckKQW8EjRpiYe
	 RQ/LN87E9NMBC91lwa4xyrSKMrxZJ04UmpDb9D6ZR5/a9MQ5xqFyZBJOy9ej1bntqh
	 YjugPRZ+eSisMtvxNlJqj7wZREvsyhAe+JyHpb6w0qJwQVrhl8PDafy10ZWePmF088
	 92Vb+fOQlTjiWxYlNnegbVLnsUQK2NPcMw3KBz4uy4CXklNQ/cjTGjlUM8mvqs1iKm
	 0IGg7qz2ddSvg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 937F63B29E
 for <cake@lists.bufferbloat.net>; Thu, 28 Jan 2021 12:19:48 -0500 (EST)
Received: by mail-wm1-x32a.google.com with SMTP id i9so5209979wmq.1
 for <cake@lists.bufferbloat.net>; Thu, 28 Jan 2021 09:19:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:from:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=vEAS3V7u05GxuVgw7rDzmUP3YbSHFZjMBk0craS23Qc=;
 b=A3gcM5jyENEufNQEWx9lp89b+ZRdh7W/8KCZiUtSO4Y6TIAjhx4HNWYZPx+mGGSkrf
 JYy3RWCCfDkf0ZJo26ns+gE+utHiIMbubgdyD9SDtWWwfmBy8O2oETIyJFYdsyy7Dj3j
 dOxkL3lZIr2JyYdAO6lM/x6GXYg/Zpjs4vvRIaSZ1BHIBQDtV9sL+A9EehWEgy9nHYDF
 nDbKy6RkCmTwzcstxGr4LeAnm9+YaHEBiDTVz5ET+kJCCjh6ChAic0nfkJ4HZxscsk35
 ZfF5KKzj56aA9qsNQM+uEqWEpd2YmIPlhLLQhFSzagxU6bQY1dH7m5tXJn6tB4lGpCUM
 x2xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:from:subject:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=vEAS3V7u05GxuVgw7rDzmUP3YbSHFZjMBk0craS23Qc=;
 b=Td+yN+IegiD6P2K4PcioGGgaEnUBgUjSID8YcnnyCiDTz35dEhyOhZ9iLf5t0asD9e
 G+hVQ7syaHfrWubKeYGOwIRIwce+KuNzQUWYZYZQMeOidJylmrGi+uQfICFbPsLrtYu7
 qjSlE6lfv167iUp4nuIBQAZz0RAUfn3bbpCTEgNBw5+O38pt+31KlvT+Bclgo8+wFkQC
 4cJfKbSm120NJzHy5bA9GHkw3hlRP9e7DeJZ/qI11qcSMfobVMB6p4EXvwf24A/WXBGv
 o1yB4JlYPEDLKUeEFeRJCW/FX5oaECaBJH52lCGskQIKPWcdujmkUioNWQw9uWW6RfAb
 RaFw==
X-Gm-Message-State: AOAM531zZCpq/pNUiIgOuVO6ZREGuqgrmvNaObT49RLggdW8uL59htYI
 2kmvkpH/WhEaGyKiEcnen/EpV5Rc6UI=
X-Google-Smtp-Source: ABdhPJwyDXSfUzK2dr9v0k7gmhjl/b/zcKn9318gT3/Be4YEk+fkW6sZcbxn4Iy/hLJuGGvCKh1VZw==
X-Received: by 2002:a05:600c:1457:: with SMTP id
 h23mr316170wmi.30.1611854387654; 
 Thu, 28 Jan 2021 09:19:47 -0800 (PST)
Received: from [192.168.1.116] (cpe90-146-174-71.liwest.at. [90.146.174.71])
 by smtp.gmail.com with ESMTPSA id d16sm7583606wrr.59.2021.01.28.09.19.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 Jan 2021 09:19:47 -0800 (PST)
To: Jeremy Marks <jmarks2@gmail.com>
References: <CAA93jw56nco3tMXAjumXwobwCqXi3udFZ2Rtmo4z_pBirjG-CA@mail.gmail.com>
 <C8807F75-D68B-4B98-BC5F-74A7618C5C0C@gmail.com>
From: xnor <xnoreq@gmail.com>
Message-ID: <556d6202-1719-297e-b950-38f7a66d04dd@gmail.com>
Date: Thu, 28 Jan 2021 18:17:51 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <C8807F75-D68B-4B98-BC5F-74A7618C5C0C@gmail.com>
Subject: Re: [Cake] Trouble getting decent performance with CAKE
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

ID4gSSB0aGluayB0aGUgcmVkaXJlY3QgY29tbWFuZCAoaW4gdGhhdCBhbHRlcm5hdGUgY29kZSBi
bG9jayB0aGF0IEkgCmRpZG4ndCB1c2UpIGlzIGZyb20gb2xkZXIgY29kZSwgc28gaXQncyBubyBs
b25nZXIgbmVlZGVkLgogPj4gMy4gSSBzZXQgdXAgQ0FLRSB3aXRoIHRoZSBmb2xsb3dpbmcgY29t
bWFuZHM6CiA+PsKgwqDCoMKgwqDCoMKgIHN1ZG8gdGMgcWRpc2MgYWRkIGRldiBldGgwIHJvb3Qg
aGFuZGxlIDE6MCBjYWtlIApiYW5kd2lkdGguLi5bc3dpdGNoZXNdCiA+PgogPj7CoMKgwqDCoMKg
wqDCoCBzdWRvIHNldCBpbnRlcmZhY2VzIGlucHV0IGlmYjAKID4+wqDCoMKgwqDCoMKgwqAgc3Vk
byBzZXQgaW50ZXJmYWNlcyBldGhlcm5ldCBldGgwIHJlZGlyZWN0IGlmYjAKID4+wqDCoMKgwqDC
oMKgwqAgc3VkbyB0YyBxZGlzYyBhZGQgZGV2IGlmYjAgcm9vdCBoYW5kbGUgMjowIGNha2UgCmJh
bmR3aWR0aC4uLltzd2l0Y2hlc10KCldoYXQgaXMgdGhhdCBzdXBwb3NlZCB0byBkbz8gV2hhdCBp
cyAic2V0Ij8gV2hpY2ggcGFja2FnZSBkb2VzICJzZXQiIApjb21lIGZyb20/Ckl0IHNlZW1zIHZl
cnkgd2VpcmQgdG8gaGF2ZSBhIGNvbW1hbmQgdGhhdCBpcyBhIHNoZWxsIGJ1aWx0LWluLi4uCgoK
ID4+IDQuIFJlZ2FyZGluZyB5b3VyIHN1Z2dlc3Rpb246ICJ0aGUgZG93bmxvYWQgc2V0dGluZyB1
cCB0YyBtaXJyZWQgSSAKYXNzdW1lIHlvdSBhcmUgZG9pbmcgd2l0aCBzcW0/IERvIHRoYXQuIgog
Pj4KID4+wqDCoMKgwqAgVGhpcyBpcyBvdXRzaWRlIG15IGtub3dsZWRnZSwgYW5kIEkgaGF2ZSBu
b3QgZG9uZSBhbnl0aGluZyBsaWtlIAp0aGF0LgogPj7CoMKgwqDCoCBJIGhhdmUgcmVhZCBhbiBh
bHRlcm5hdGl2ZSAob2xkZXI/KSB3YXkgdG8gc2V0IHVwIENBS0UgZm9yIGluZ3Jlc3M6CiA+PsKg
wqDCoMKgwqDCoMKgIHN1ZG8gaXAgbGluayBhZGQgbmFtZSBpZmI0ZXRoMCB0eXBlIGlmYgogPj7C
oMKgwqDCoMKgwqDCoCBzdWRvIHRjIHFkaXNjIGRlbCBkZXYgZXRoMCBpbmdyZXNzCiA+PsKgwqDC
oMKgwqDCoMKgIHN1ZG8gdGMgcWRpc2MgYWRkIGRldiBldGgwIGhhbmRsZSBmZmZmOiBpbmdyZXNz
CiA+PsKgwqDCoMKgwqDCoMKgIHN1ZG8gdGMgcWRpc2MgZGVsIGRldiBpZmI0ZXRoMCByb290CiA+
PsKgwqDCoMKgwqDCoMKgIHN1ZG8gdGMgcWRpc2MgYWRkIGRldiBpZmI0ZXRoMCByb290IGNha2Ug
YmFuZHdpZHRoLi4uCiA+PsKgwqDCoMKgwqDCoMKgIHN1ZG8gaWZjb25maWcgaWZiNGV0aDEgdXAK
ID4+wqDCoMKgwqDCoMKgwqAgc3VkbyB0YyBmaWx0ZXIgYWRkIGRldiBldGgxIHBhcmVudCBmZmZm
OiBwcm90b2NvbCBhbGwgcHJpbyAxMCAKdTMyIG1hdGNoIHUzMiAwIDAgZmxvd2lkIDE6MSBhY3Rp
b24gbWlycmVkIGVncmVzcyByZWRpcmVjdCBkZXYgaWZiNGV0aDEKCk5vLCB0aGlzIGlzIHRoZSAq
cHJvcGVyKiB3YXksIGJ1dCB0aGVyZSBhcmUgbWlzdGFrZXMgaW4geW91ciBleGFtcGxlLiBJdCAK
YWRkcyB0aGUgdGMgZmlsdGVyIHRvIGV0aDEgaW5zdGVhZCBvZiBldGgwLiBZb3UgcHJvYmFibHkg
YWxzbyBkb24ndCB3YW50IAp0aGUgZmxvd2lkLgoKCiA+IERvIHlvdSB0aGluayBJIGNhbiBzYWZl
bHkgcmVtb3ZlIHRoZSBpbXEwIGludGVyZmFjZT8gVGhlIHN0YXRzICh0aGFuayAKeW91ISkgc3Vn
Z2VzdCB0byBtZSB0aGF0IGl0J3Mgbm90IGJlaW5nIHVzZWQuIFJlbW92aW5nIG1heSBub3QgYmUg
Cm5lY2Vzc2FyeSBhbnl3YXkuCgpBcyBJIHNhaWQgYmVmb3JlLCBpbXEgaGFzIGJlZW4gb2Jzb2xl
dGUgZm9yIGEgY291cGxlIG9mIHllYXJzLiBJaXJjIGl0IApoYXNuJ3QgYmVlbiBzaGlwcGVkIHdp
dGggdGhlIGtlcm5lbCBmb3IgeWVhcnMuCmltcSB3YXMgdXNlZCBmb3IgUW9TIGJhY2sgaW4gdGhl
IGRheS4gSXQgZXh0ZW5kZWQgaXB0YWJsZXMgdG8gZG8gdGhlIApyZWRpcmVjdGlvbi4KaWZiIGlz
IHRoZSAibW9kZXJuIiByZXBsYWNlbWVudCBhbmQgd29ya3MgYXQgYSBsb3dlciBsZXZlbCwgaGVu
Y2UgdGhlIApuZWVkIGZvciB0aGUgdGMtbWlycmVkCgpJdCBsb29rcyB0byBtZSBsaWtlIHRoZSBs
aW51eCBkaXN0cmlidXRpb24gb24geW91ciByb3V0ZXIgaXMgZG9pbmcgc29tZSAKbm9uc3RhbmRh
cmQgdGhpbmdzIGFuZCBwb3NzaWJseSBydW5zIGN1c3RvbSBRb1Mgc2NyaXB0cyB0aGF0IGNvdWxk
IApjb25mbGljdCB3aXRoIHlvdXIgc2V0dXAuIElmIHRoYXQgaXMgdGhlIGNhc2UgeW91IHNob3Vs
ZCBhc2sgdGhlIAptYW51ZmFjdHVyZXIgZm9yIHN1cHBvcnQuCgoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5m
by9jYWtlCg==
