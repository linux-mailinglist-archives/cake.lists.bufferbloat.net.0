Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 937D02CBB3
	for <lists+cake@lfdr.de>; Tue, 28 May 2019 18:20:34 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2EA0D3CB38;
	Tue, 28 May 2019 12:20:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1559060433;
	bh=0vKLPESj0UUKOHDiSEft75/6jnKQ1qoewDDAWES5qaw=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mA1GDCpmboQEk5l5oOjo4koMTBUl7QRDVdc99PhYJCCTFQjxsZfLwMD6ItMqb3D+p
	 TO9Yz8SB3HANz7lWOOHN28wVE46zo9bhXL6RltT9ofqlb54xzj+b/FrSMfgpDu5LrO
	 d/98yUEiHYkkjwPxzmRoM6HCqVupL84H482me9HRiIM+7h4r/QWc+rPTJ5Yr+wOXwj
	 fEZLtlWc6DjnM6PEdaeF5N3FgYbJo0N1jCOufcJirwdPLhSN2l1/w8rGCR8lL6CY5M
	 JuvRTDB0xdG6m3HquagHczbXzoNG/mEWku5npVtj/JRBQ00dfH8vJNHAzedrtK5K57
	 ff7naSdGKWDOw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E8D903B29E
 for <cake@lists.bufferbloat.net>; Tue, 28 May 2019 12:20:31 -0400 (EDT)
Received: by mail-lj1-f179.google.com with SMTP id q62so18295355ljq.7
 for <cake@lists.bufferbloat.net>; Tue, 28 May 2019 09:20:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=QUBK0smUCEmAkLWUMviQy/y2cmdfwPzjFuxose3v4AE=;
 b=U+gHs7BKZnARN3ppftb/6Ioff49f+Oi6HO+f4JWjJRilxmMfmuGSsvma1oFdV5MaYR
 QKzHnB5mFbHXCcRrFds2Sp7uJvlsGZXH6KgHRlek1GOA6gnmo6up48TLPE7e34sys3KW
 iSekJSllTBbXAaSKOCFFtQXFaB0yprM8Rvw5X/k9A/9wDJ2Y8r9/OMXj8lk5qaF4LbXg
 iDFEm8i0WfYtV0LUv1wcsjtvSWGNSfvaaGrmS+ZcmMrTg4ZrovKoUGqwXKcMD9pTsaAO
 +SJm98d8wTjOwwgpGjTlFRqzaITmExkLVI8J7fLKMdSMa/72APOyX18o4lFZBhoP1zeV
 i0yQ==
X-Gm-Message-State: APjAAAWGs2LTZEvtjPm9l4eqekvwWLvepmG1D7RwwC7Or4EBBlIkGJGG
 pUKHeUZ9w0/rbAim4FGKUVqEHQ==
X-Google-Smtp-Source: APXvYqzVt9C1LB4cbm3+M9Bns2HZLMoJ07zH/TtGTIfCyJBNb8EkZUGWbTwvimZvSCMSIkjZGg8MlA==
X-Received: by 2002:a2e:5c08:: with SMTP id q8mr15090148ljb.113.1559060430904; 
 Tue, 28 May 2019 09:20:30 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.vpn.toke.dk.
 [2a00:7660:6da:10::2])
 by smtp.gmail.com with ESMTPSA id p6sm2994117lfo.55.2019.05.28.09.20.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 May 2019 09:20:30 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 881DE18031E; Tue, 28 May 2019 18:20:29 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Akshat Kakkar <akshat.1984@gmail.com>
In-Reply-To: <CAA5aLPhrDbqJqfVVBWfCZ6TK0ZFMOSsqxK9DS9D1cd4GZJ0ctw@mail.gmail.com>
References: <CAA5aLPgz2Pzi5qNZkHwtN=fEXEwRpCQYFUkEzRWkdT39+YNWFA@mail.gmail.com>
 <875zpvvsar.fsf@toke.dk>
 <CAA5aLPhrDbqJqfVVBWfCZ6TK0ZFMOSsqxK9DS9D1cd4GZJ0ctw@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 28 May 2019 18:20:29 +0200
Message-ID: <87muj6tusy.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] Cake not doing rate limiting in a way it is expected to
	do
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
Cc: cake@lists.bufferbloat.net, netdev <netdev@vger.kernel.org>,
 lartc <lartc@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

QWtzaGF0IEtha2thciA8YWtzaGF0LjE5ODRAZ21haWwuY29tPiB3cml0ZXM6Cgo+IEl0J3MgYSBj
b250cm9sbGVkIGxhYiBzZXR1cC4gVXNlcnMgY29ubmVjdGVkIHRvIGVubzIgYW5kIHNlcnZlciBv
biBlbm8xLgo+IExpbmsgc3BlZWQgMUdicHMuCj4gTm8gaW5ncmVzcyBzaGFwaW5nLgo+IFNpbXBs
ZSBodHRwIGRvd25sb2FkLgo+Cj4gSSBhbSBoYXZpbmcgbXVsdGlwbGUgcmF0ZXMgcmVxdWlyZW1l
bnQgZm9yIG11bHRpcGxlIHVzZXIgZ3JvdXBzLCB3aGljaAo+IEkgYW0gY29udHJvbGxpbmcgdXNp
bmcgdmFyaW91cyBjbGFzc2VzIGFuZCB0aHVzIHVzaW5nIGh0Yi4KCldlbGwsIENBS0UgaGFzIGl0
cyBvd24gYnVpbHQtaW4gc2hhcGVyLCBzbyBpdCBoYXNuJ3Qgc2VlbiBtdWNoIHRlc3RpbmcKd2l0
aCBIVEIgYXMgYSBwYXJlbnQuIFRoZW9yZXRpY2FsbHkgaXQgKnNob3VsZCogd29yaywgdGhvdWdo
LCBhcyBsb25nIGFzCkNBS0UgaXMgcnVubmluZyBpbiB1bmxpbWl0ZWQgbW9kZS4KCkNvdWxkIHlv
dSBwbGVhc2Ugc2hhcmUgeW91ciBmdWxsIGNvbmZpZywgYW5kIHRoZSBvdXRwdXQgb2YgYHRjIC1z
IHFkaXNjYAphZnRlciBhIHJ1bj8KClRoYW5rcywKCi1Ub2tlCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UK
