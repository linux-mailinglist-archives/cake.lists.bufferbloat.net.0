Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B7A2E0FE9
	for <lists+cake@lfdr.de>; Tue, 22 Dec 2020 22:45:58 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8C4033CB44;
	Tue, 22 Dec 2020 16:45:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1608673557;
	bh=BVPG7kL8UGO3uZvlOYNIqIKAuTfjOnfBbiQnByjblfk=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HHJ6eQXCu9GDb08efRuU3bRUsPHCvBl4sSKEFyjWDktG5rPFAYTTE/j4uU5oVW4eg
	 oR+tnWqKIQUNb5tkYbVvUiw020kUCBRYy2DH7AZmUgUoVyiZChTIXoCg9iQTODdmcg
	 dDkrilhqnjLu8EljH/rN10TF7IWHhqMfHWjiW93ELKp+2v+B6nf0uVw9rQ57cK18sl
	 7Wj7ar4l/15urFn5m39yJoLKFqVYmUhZdzMFjupKHtbHc+vh1uSXA5GEXu4H8pu4jR
	 npYj5SMGrs+wnaEMY6KbmklJd5B2GEFEx5mjbdOmjr8l4T5pOVeSPh68vJ92mfXugE
	 YOymroRRqxIsg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CC8EB3B2A4
 for <cake@lists.bufferbloat.net>; Tue, 22 Dec 2020 16:45:56 -0500 (EST)
Received: by mail-ed1-x531.google.com with SMTP id cw27so14328755edb.5
 for <cake@lists.bufferbloat.net>; Tue, 22 Dec 2020 13:45:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:from:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=+Gqe3N91gWni1XtzFrCFYcymGLKAEx9tQ8FjrWncZNc=;
 b=H0kUEpRU7oVsP2WDFHNp32Yb0yEnuLv4SiTKlgdlNZGFrZHfw25ECMcVcwnpjCO/a0
 LjqN9zg81hjexYEm/K8ZRor6kBdhnn1tpfJGitCoN+fOUDO50Md7E2ik9NA4AK1hjkvw
 xh3rGJxsctXb+IpnrCDwgnzWlPSqSQeLyN+YtYfAFvWZoiJYC3GE0eDsKguZUCk0+Z6D
 9jwMIeq4eKNsLHg3MLiIacgyvToEHyD2TeH8T5bcug1vDCZ20cCmzLjIv5RV9upg/0P4
 je49kmWvBEU07z3LUSz+1BYBSBPqzpXBgTVviKpxEJasIaCrlxDI5rLiPyQ2l3cZQemv
 CDNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:from:subject:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=+Gqe3N91gWni1XtzFrCFYcymGLKAEx9tQ8FjrWncZNc=;
 b=XuSmZCmsXic2LxRXoIlGH5lT1h/AQXlRs3VH1r7kCvKijeAsKjeCi2jdI7++ATs+lh
 +sT9yq3DySLTarovKt1C0NPndTvTPCbX1fD0FKtseD+IJIqAzoVaFf5wSRkngRrO8R/2
 BCwPK7eexWCw23uO9vzfMIWdQilZa+xb8Eff2j4A1wD5ejxSvm/4u0YkQkfJLS7/pFQ/
 IXJe6QmQzJsB1EQUHz30uTFDxheRM0jtiRvkoRj7MtFHJTHjKbt5TUT5hUxBuNACwflj
 dAcyHSkrNZdDCKEWh3AwOclMwUdqy9xQwlqVmHRRhb4nUXSV7iQZpAvb6hyTmFu0J16N
 /+7Q==
X-Gm-Message-State: AOAM531JPvbIn20sxtU3Y5NZ5NNAvr0XRFAhbCfZSihmd8XU5DQuAHzV
 YO2aVAmIBg4gvzoIPdaqUVGZn8+FFZY=
X-Google-Smtp-Source: ABdhPJx3Z8Fv4OaWktK7IuWFrmfNw1ZdlyEF5gfdTT5SjyrNTjzogrL5TDuL0p5po23P1bTzcubwug==
X-Received: by 2002:a05:6402:8d5:: with SMTP id
 d21mr12074257edz.57.1608673555765; 
 Tue, 22 Dec 2020 13:45:55 -0800 (PST)
Received: from [192.168.1.116] (cpe90-146-174-71.liwest.at. [90.146.174.71])
 by smtp.gmail.com with ESMTPSA id qp16sm10840822ejb.74.2020.12.22.13.45.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Dec 2020 13:45:55 -0800 (PST)
To: Jonathan Morton <chromatix99@gmail.com>
References: <421ffd89-0c2c-1187-380c-03a0968f4095@gmail.com>
 <DDC33147-4B1D-45A0-B73B-0641A4050A68@gmail.com>
From: xnor <xnoreq@gmail.com>
Message-ID: <8c4e1bbf-7e3f-388a-ee60-e1d517029a9c@gmail.com>
Date: Tue, 22 Dec 2020 22:44:43 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <DDC33147-4B1D-45A0-B73B-0641A4050A68@gmail.com>
Subject: Re: [Cake] ECN not working?
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
Cc: cake@lists.bufferbloat.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Cj4gTm90IGFsbCBzZXJ2ZXJzIGhhdmUgRUNOIHN1cHBvcnQgZW5hYmxlZC4gIEEgU1lOLUFDSyB3
aXRob3V0IHRoZSBFQ0UgYml0IHNldCBpbmRpY2F0ZXMgaXQgZG9lcyBub3QuICBUaGUgY29ubmVj
dGlvbiB0aGVuIHByb2NlZWRzIGFzIE5vdC1FQ1QuCj4KPiBJJ20gcmVhc29uYWJseSBzdXJlIEFr
YW1haSBoYXMgc3BlY2lmaWNhbGx5IGVuYWJsZWQgRUNOIHN1cHBvcnQuICBBIGxvdCBvZiBzbWFs
bGVyIHdlYnNlcnZlcnMgYXJlIHByb2JhYmx5IHJ1bm5pbmcgd2l0aCB0aGUgZGVmYXVsdCBwYXNz
aXZlLW1vZGUgRUNOIHN1cHBvcnQgYXMgd2VsbCAoaWUuIHdpbGwgbmVnb3RpYXRlIGluYm91bmQg
YnV0IG5vdCBpbml0aWF0ZSBvdXRib3VuZCkuCj4KPiAgIC0gSm9uYXRoYW4gTW9ydG9uCgpXaHkg
d291bGQgbXkgc2VydmVyIG5vdCBzdXBwb3J0IEVDTj8gSSBoYXZlIGZ1bGwgY29udHJvbCBvdmVy
IGJvdGggdGhlIApjbGllbnQgYW5kIHNlcnZlciwgbXkgcHJldmlvdXMgbWFpbCBjb250YWluZWQg
dGhlIEVDTiBrZXJuZWwgcGFyYW1ldGVyIApjb25maWd1cmF0aW9uLCBhbmQgSSBhbHNvIGRpZCB0
aGUgcGFja2V0IGNhcHR1cmUgZGlyZWN0bHkgb24gdGhlIHNlcnZlci4KClRoZSBzZXJ2ZXIgaXMg
dXNpbmcgZnFfY29kZWwgd2l0aCBlY24gZW5hYmxlZCwgYW5kIGFsc28gaGFzIGEgYmFzaWMgCm5m
dGFibGVzIGZpcmV3YWxsIGJ1dCBpdCBkb2Vzbid0IG1lc3Mgd2l0aCBwYWNrZXQgaGVhZGVycyBv
ciBkbyBhbnl0aGluZyAKZmFuY3kuClRoZSBvbmx5IHRoaW5nIEkgY2FuIHRoaW5rIG9mIGNvdWxk
IGJlIGEgaGlkZGVuIHJlcXVpcmVtZW50IG9uIApjb25udHJhY2ssIHdoaWNoIG9uIHRoZSBzZXJ2
ZXIgaXMgZGlzYWJsZWQgZm9yIHNvbWUgcG9ydHMsIHRob3VnaCBJIApjb3VsZG4ndCBmaW5kIGFu
eSBtZW50aW9uIG9mIHRoaXMgYW55d2hlcmUuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
