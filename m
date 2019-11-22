Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F06107428
	for <lists+cake@lfdr.de>; Fri, 22 Nov 2019 15:42:31 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 356EF3CB40;
	Fri, 22 Nov 2019 09:42:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1574433750;
	bh=R0aEkuCjFcssoaZK2k73CuZh3SToXoH5ETcjlUMo56U=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bPW6R3QbW2MbvtvKoAddErY8p+2y9PJuaYNk5BHTj/SlCA6hb7HkJAdekNmQeoEw9
	 ExRsWcpPduXmFun77L2zxQ77VkIy6DPZ8lovScVRR3Wl9bQnop/UNusLzuqYBppmZh
	 7kT5IX7CkTvcvh05pOUbIxiyBmIU0XC4lhRcsqoUoPnJk4JXvY9AS6td3w1M0YwIQ/
	 0ucKZqVBoUqpydLMcWhyvI65aroz/zmeFDWFh7g8p1W8V8X3Pt3nIrJCQfcRS4yGLP
	 kzAJi0RYa9JgbtyrSeXe32bvlkxUyiYJMBGx1OcG4DfW3vVWaJxMW1LZEpdxK19S4z
	 VxdESaASmIzGg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 88F5F3B29D
 for <cake@lists.bufferbloat.net>; Fri, 22 Nov 2019 09:33:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574433238;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ub//KWimiFNMi7cK1VCZb8E5H/Bsp7mRtA4Zh3qvZvM=;
 b=cWiYPk85EGHV4yRSqYKxfCiOQ1vc2Ddth+myE4TGnsrnGUmBXYNljgADte104PO8JmOQ0D
 2HaPsTfedWD2PkMESBbYRtoTWiqrFjLHMyaWpIfmDEZUM0TfCh0De6+pojCyqpC4s4lRIZ
 aB7DQ+JVrmPh8MVKszeqF/XTEHxsCBc=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-413-pzY_2RNhNbiZJG1ALiWYAw-1; Fri, 22 Nov 2019 09:33:56 -0500
Received: by mail-lj1-f200.google.com with SMTP id 70so1373237ljf.13
 for <cake@lists.bufferbloat.net>; Fri, 22 Nov 2019 06:33:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=rHani0T8yJAE7ORuopDL/3sKy5oYgZuGJ8AzgOBOuI4=;
 b=Gcq3avuxU5q9qIfj//SR6jAgGjN82ggTmqIGYHx4lRr/KLkGpNf0tUkYnUUJo+Xb0x
 hUFIwFQvY6nU7Opyz3NYu6MGDzznyy6B+wpGiqgdXIltg0rbRXTqmi/lElUW0AklNbBp
 C10P0evdYTAZzty2sJLS0BqAIyy2hME7+wntW4XKzA15W/KYDabmhyAOcOfQ/t9WptS1
 /Tn3J9DPdjqfm9fpiyXCmp5hXXeQ51MuJZr21rFoXRVaz5IGWgZhtYErqbxJ5+7HxtQB
 a/Wx9EWlXrz31IUxTtTwN5R6vXomB+M20C/b0rXkizUTCRRYBkX3ymxqYXtSj1sNji3n
 +cvw==
X-Gm-Message-State: APjAAAX+6xSNWuBn8BHMHrbTGdYQzQd2cKutwU1kr8xF+DncE5Obln5w
 RP+9KHE3v5kq0Ku1+e6z00viGMLNCxt70tmAm2i9iRoLNkOsaGTlKa+VdNxmpDjgaLl0byd29qL
 G+FDNJ+sDT9lbJOYo7nlhdg==
X-Received: by 2002:ac2:484a:: with SMTP id 10mr11800613lfy.80.1574433235248; 
 Fri, 22 Nov 2019 06:33:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqz/jD/ltd4yzhAMOtnrAJGTbGxuSi/ITdbruZ/NiPJNMaan+pWUyUl6kPCLrD/59AsGe+jJYQ==
X-Received: by 2002:ac2:484a:: with SMTP id 10mr11800603lfy.80.1574433235008; 
 Fri, 22 Nov 2019 06:33:55 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id p19sm3140770lji.65.2019.11.22.06.33.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 06:33:54 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 557D81800B9; Fri, 22 Nov 2019 15:33:53 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <thoiland@redhat.com>
To: Adam Moffett <adam@plexicomm.net>, cake@lists.bufferbloat.net
In-Reply-To: <em281f0a9b-a12d-4f64-8eab-6e13f4c7804f@adam-pc>
References: <em287ad38a-b2b3-4e82-9836-99fab879ad14@adam-pc>
 <CAA93jw4N_-5bui532Ad5QwGn=GH2CnqWYm=BRn75Fgo93R6aJw@mail.gmail.com>
 <em348223d0-543c-4b79-ba6b-93f2244326c1@adam-pc> <878so85e2d.fsf@toke.dk>
 <em281f0a9b-a12d-4f64-8eab-6e13f4c7804f@adam-pc>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 22 Nov 2019 15:33:53 +0100
Message-ID: <877e3s3rqm.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: pzY_2RNhNbiZJG1ALiWYAw-1
X-Mimecast-Spam-Score: 0
X-Mailman-Approved-At: Fri, 22 Nov 2019 09:42:28 -0500
Subject: Re: [Cake] Cake implementations
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

IkFkYW0gTW9mZmV0dCIgPGFkYW1AcGxleGljb21tLm5ldD4gd3JpdGVzOgoKPj4KPj4+ICBTZWNv
bmQgY29uY2VybiBpcyB0aGF0IG1hbnkgb2Ygb3VyIGVxdWlwbWVudCB2ZW5kb3JzIGFscmVhZHkg
dXNlCj4+PiAgTGludXguIEV2ZW4gQ2lzY28gbm93IGluIHNvbWUgcHJvZHVjdHMuIE1heWJlIHdl
J2xsIHdhc3RlIG91ciB0aW1lCj4+PiAgdHJ5aW5nIHRvIHJvbGwgb3VyIG93biBzb2x1dGlvbiBh
bmQgdGhlbiBmaW5kIHRoYXQgYSBzb2Z0d2FyZSB1cGRhdGUKPj4+ICBmcm9tIGEgdmVuZG9yIG5l
eHQgeWVhciBnaXZlcyB1cyBldmVyeXRoaW5nIHdlIG5lZWRlZCBhbnl3YXkuCj4+Cj4+VGhpcyB3
b3VsZCBiZSBncmVhdCwgb2YgY291cnNlLCBhbmQgZG8gZ28gYW5kIGJ1ZyB5b3VyIHZlbmRvcnMg
dG8gc29sdmUKPj50aGlzIHByb2JsZW0hIE5vdGUsIGhvd2V2ZXIsIHRoYXQganVzdCBiZWNhdXNl
IGEgc3lzdGVtIGlzIHJ1bm5pbmcKPj5MaW51eCBvbiB0aGUgY29udHJvbCBwbGFuZSwgaXQgbWF5
IGJlIHVzaW5nIGEgaGFyZHdhcmUtb2ZmbG9hZGVkIGRhdGEKPj5wbGFuZSB0aGF0IGRvZXMgbm90
IGhhdmUgYW55IG9mIHRoZSBidWZmZXJibG9hdCBtaXRpZ2F0aW9uIGZlYXR1cmVzCj4+KHVubGVz
cyB0aGUgdmVuZG9yIHNwZWNpZmljYWxseSBpbXBsZW1lbnRlZCB0aGVtKS4gSSdtIGhvcGluZyB0
aGF0Cj4+KmV2ZW50dWFsbHkqIHRoZXNlIHRoaW5ncyB3aWxsIGJlIHViaXF1aXRvdXMgYWNyb3Nz
IHRoZSBpbmR1c3RyeSwgYnV0Cj4+dGh1cyBmYXIgdGhpcyBoYXMgc2VlbWVkIHRvIGJlIGFuICJh
bnkgZGVjYWRlIG5vdyIga2luZCBvZiBwcm9wb3NpdGlvbiA6Lwo+Pgo+Pi1Ub2tlCj4gVGhhdCdz
IGEgZ3JlYXQgcG9pbnQuCj4KPiBJcyB0aGUgc29mdHdhcmUgbW9yZSBvciBsZXNzIENQVSBpbmRl
cGVuZGVudD8gV291bGQgd2UgcnVuIGludG8gYW55IAo+IGtub3duIHByb2JsZW1zIHdpdGggYSA3
Mi1jb3JlIFRpbGVyYSBwbGF0Zm9ybT8KCkhtbSwgd2VsbCwgbWF5YmU/IERlcGVuZHMgb24gdGhl
IG5ldHdvcmtpbmcgaGFyZHdhcmU7IHlvdSBjYW4gcnVuIGEKc2VwYXJhdGUgcWRpc2Mgb24gZWFj
aCBoYXJkd2FyZSBxdWV1ZSBvbiB5b3VyIG5ldHdvcmsgYWRhcHRlci4gU28gaWYgeW91CmNhbiBj
b25maWd1cmUgdGhhdCBmb3IgZW5vdWdoIHF1ZXVlcyB5b3UgY2FuIHNjYWxlIHRvIGFsbCA3MiBj
b3Jlcy4KT3RoZXJ3aXNlLCB5b3UnbGwgZ2V0IGxvY2sgY29udGVudGlvbiBiZXR3ZWVuIGNvcmVz
IHRyeWluZyB0byB0cmFuc21pdApvbiB0aGUgc2FtZSBoYXJkd2FyZSBxdWV1ZSwgaW4gd2hpY2gg
Y2FzZSB0aGUgYmVzdCBzb2x1dGlvbiBtYXkgYmUgdG8KY29uZmlndXJlIHBhY2tldCBzdGVlcmlu
ZyBzbyB5b3UncmUganVzdCBub3QgdXNpbmcgYWxsIGNvcmVzLgoKSmVzcGVyJ3Mgc2NyaXB0IHRo
YXQgSSBsaW5rZWQgcHJldmlvdXNseSBpcyBiYXNpY2FsbHkgYSB3YXkgdG8gcHJvZ3JhbQp0aGlz
IHN0ZWVyaW5nLiBTbyBpdCBzaG91bGQgYmUgZG9hYmxlLCBidXQgc29tZSBjYXJlIGlzIG5lZWRl
ZCBpbgpkZXNpZ25pbmcgdGhlIHN5c3RlbS4KCj4gVGhhbmtzIGZvciBhbGwgeW91ciBoZWxwIGFu
ZCBpbnB1dCBieSB0aGUgd2F5LgoKWW91J3JlIHZlcnkgd2VsY29tZSEgSXQncyBhbHdheXMgZ3Jl
YXQgdG8gaGVhciBmcm9tIHNvbWVvbmUgd2hvIGlzIGF3YXJlCm9mIChhbmQgd2FudHMgdG8gZml4
ISkgYnVmZmVyYmxvYXQgaW4gdGhlaXIgbmV0d29yayA6KQoKLVRva2UKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VA
bGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Nha2UK
