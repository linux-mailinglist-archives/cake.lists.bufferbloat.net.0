Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4553042D7
	for <lists+cake@lfdr.de>; Tue, 26 Jan 2021 16:47:11 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A95453CB38;
	Tue, 26 Jan 2021 10:47:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1611676029;
	bh=cqqD7kWu4h3kHZgK2VaEghmGrin4UFvflbgsJFW6C9Q=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pmK77mvoKekkpHvNcKsYigZWELgwHfRH/LKYNsq4aC02vArTSxrKgmIWp+d6kHW4U
	 mpXbUD305K35pKzRmqd0LET6MGgoaDDmfHTnHaVLat+m1ahjS0gD2L1BThSgkcHt5x
	 iXphk6BZtSrPFh8mrAniHx/738ZC1WY79F33vpsMn2+W/V3TQpEX0hWwIwaUi3SYlT
	 pbVN3uUWENMskmwMBk8bP8AFOh+0D4BKhvboS7oIjzpE+Jf3E39bPhU78av8AKAbI1
	 Pop2md+yhE/AncJcrojtOFIBNxTe9SpzJNlfXyXe3rR3fyp+zcwTCqBkl6fvFtbXs4
	 IBE5QLkGgBA+Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com
 [IPv6:2607:f8b0:4864:20::d36])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6FA9E3B29D
 for <cake@lists.bufferbloat.net>; Tue, 26 Jan 2021 10:47:08 -0500 (EST)
Received: by mail-io1-xd36.google.com with SMTP id h11so34336739ioh.11
 for <cake@lists.bufferbloat.net>; Tue, 26 Jan 2021 07:47:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6LomKClCtEfnuD776XiT36a3aTTFH80m9hFnqOviSAw=;
 b=WLJq0zz+AGk1My7/3nbFiOSxgjvI1qmkZcGNLJIcpVoHV+vua9jXfBYGCnv220YF3u
 12ADxVvkPwu5m0BC5PqGyxhDQ+S/NLCv3Ug2W3+EuIw40judGvJl7P0Yg1gC9/fOzTGQ
 A0fYvEFEwThlpCNKNF+G2zGVnlPpRlM7Nu2WlNyYZHI5dGwJn+4ar+q5KdB36LqGSl/6
 3cs7ogFa7W4gwXEaXuJ1F1i6r4bu3xBtX3ShsyeWOlG6FUo4rsAEunVqwD6jdRQ5j0vR
 ZDMC+EJBjtvX3nlLVwahyq+4vFskTKYtQzGK+vngrufkSp6f7Ypm5f7aVcgG+6tghOOP
 z73A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6LomKClCtEfnuD776XiT36a3aTTFH80m9hFnqOviSAw=;
 b=QyinpZiNdRmnmZZwL+OrbkG/Hkgra3bmZPzLiRazgmCS5/diNU+kAShPTc12eqSdRq
 eNKhZ0Scr1a/XkwSDO0aLCFBbdC/aboE8HP1W9RBINP042Uyr/Wmmv/7+yXC0qrF9YIf
 kNXWKLfh+CTvDxZoVE+wAS5jY9ZdxIrGt81NsHXAxMIDHxyKxTGynFXPxOV7j88vzEcr
 oRF5T6bXYtFrajFA4Rixh6pttQ7DLg2vH+KEyEH4k4JHC0nvxIjctNdRlHErGtAmijj6
 VBnL2WBpkarkU3JbiieTB+mIQ7QTrHxdXXZ5SMjhWH0GWwrOUnQRjEy7g+S8VkiDboER
 6F9w==
X-Gm-Message-State: AOAM532t1hPDyti2SXm4qSw+CxKN1nGy3Mkxgt8wWbjnKYroFDHtUJbX
 sq7okofiJSRoOKzWo9Z91aQTBv02VFGwAPiFh0Q=
X-Google-Smtp-Source: ABdhPJyoOuchJHSkPnndLKGJQXXTPkfChOmTkX3AKa/Snd6gclibji6snWNQ3Xz3iupmhblzKgTskt3834ymDhiZLtQ=
X-Received: by 2002:a02:63cd:: with SMTP id j196mr5252459jac.61.1611676027980; 
 Tue, 26 Jan 2021 07:47:07 -0800 (PST)
MIME-Version: 1.0
References: <CAH8sseTbx=f4EsAw1cF7JiJNWytM+1_DRS98W=fAQtOyPYG1XQ@mail.gmail.com>
 <87lfj95cbq.fsf@toke.dk>
In-Reply-To: <87lfj95cbq.fsf@toke.dk>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 26 Jan 2021 07:46:56 -0800
Message-ID: <CAA93jw4+LjWQfu1C5pZ+7Fp54j9KKawPzwyYejDFrKOoGwnc4w@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
Subject: Re: [Cake] quantum configuration
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBoYXZlIGtpbmQgb2YgdGhvdWdodCB3ZSBjb3VsZCBzY2FsZSB0aGUgcXVhbnR1bSBtdWNoIGhp
Z2hlciBhcyB3ZQpjcmFjayAyMDBtYml0IHRvIHNlZSBpZiB0aGF0IGhlbHBzIG9uIHBlcmZvcm1h
bmNlLgoKT24gRnJpLCBKdWwgMjQsIDIwMjAgYXQgNToyNiBBTSBUb2tlIEjDuGlsYW5kLUrDuHJn
ZW5zZW4gdmlhIENha2UKPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPgo+IEx1
Y2EgTXVzY2FyaWVsbG8gPG11c2NhcmllbGxvQGllZWUub3JnPiB3cml0ZXM6Cj4KPiA+IElzIHRo
ZXJlIGEgcmVhc29uIHdoeSBpbiBjYWtlIHRoZSBxdWFudHVtIGNhbm5vdCBiZSBjb25maWd1cmVk
IHRvIGEKPiA+IGRpZmZlcmVudCB2YWx1ZSBsaWtlIGluIGZxX2NvZGVsPwo+Cj4gSSB0aGluayB0
aGlzIHdhcyBtb3N0bHkgdG8gYmUgYXMgbm8ta25vYiBhcyBwb3NzaWJsZTsgc28gdGhlIHF1YW50
dW0gaXMKPiBhdXRvLXNjYWxlZCB3aXRoIHRoZSB0aW4gYmFuZHdpZHRocywgaW5zdGVhZCBvZiBi
ZWluZyBjb25maWd1cmFibGUuCj4KPiBKb25hdGhhbiBjYW4gcHJvYmFibHkgZXhwYW5kIG9uIHRo
aXMuLi4KPgo+IC1Ub2tlCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQoKCgotLSAKIkZv
ciBhIHN1Y2Nlc3NmdWwgdGVjaG5vbG9neSwgcmVhbGl0eSBtdXN0IHRha2UgcHJlY2VkZW5jZSBv
dmVyIHB1YmxpYwpyZWxhdGlvbnMsIGZvciBNb3RoZXIgTmF0dXJlIGNhbm5vdCBiZSBmb29sZWQi
IC0gUmljaGFyZCBGZXlubWFuCgpkYXZlQHRhaHQubmV0IDxEYXZlIFTDpGh0PiBDVE8sIFRla0xp
YnJlLCBMTEMgVGVsOiAxLTgzMS00MzUtMDcyOQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
