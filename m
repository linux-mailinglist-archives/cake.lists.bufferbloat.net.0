Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D379C433490
	for <lists+cake@lfdr.de>; Tue, 19 Oct 2021 13:19:35 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 468F53CB48;
	Tue, 19 Oct 2021 07:19:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634642374;
	bh=0Et8+9UUyrnTH48e6csY3MZ3SQroHuPAqrnGZqejdes=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=JxOLA+hCwHFOpyTwSJUGZFF+3o/BmqV+qnBYgFwz+M/p1xKGbZ6VVeqvldSybc497
	 cCN3+zJdsJxf1nlb/XtvxTAzNXgMsxzndPhRn+rKzh26zqpxvEF4nOgSt42kpKL8AT
	 IKtuCiVQMzxhknBJaymB3j9Gmjn3OMO66tm+F9XpQgkIJAO/1TaKTUfPWFQV2ozSoT
	 JjZfQOyu9fb+lFRi+Nqv4AtBkNsMoulIZXGSyJsopafrNcr4w5JKNmhJ446aucwxIc
	 hHboD8NNDfB6x6D5CRix8g2pJCTaciSLO5kZEo+Y7b2IXwjizBrWsVfcEy+1ECsTCD
	 GMsy7rs3rxicg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6F38F3B29D;
 Tue, 19 Oct 2021 07:19:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1634642367; bh=VSYMZywIdTh6XQ/zMIPz9Hh69JxN5kKZIYbBRt+C0z4=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=kNVjcc7vyQCVE3dTeYu+iLICfpLXmYJJ5GhzAmvg80qNJGlYhVVV0k+1CUwhJyo1h
 iR69wpMFTvWoRyF54ABcNlmF/8zrTpzSZ/49B7hAHtuVWg5feNKotCc3KQ/0qrlU3K
 oIa3+tVNXHWofkfelDB8vV3A5oGZ3VVoHQNr6I5aijVVxF4ck7VYAPKT6n4TQS1Ym7
 jMvdBPzydpFvNQFA5QPaPskMZux0IHxrgYkjuTnADUKSWayJfSzGr/F7LR+2dhLPsw
 IA5Rk1TITbPMHiaraoO4V+u5U59v1VmC8REA4tmLR/EIs3n4GKB4do6lhGZWJqjemy
 3i641bvJ12Erw==
To: Dave Taht <dave.taht@gmail.com>
In-Reply-To: <CAA93jw52-6oaOgDCS7m8+zF0VDFDEgADat=So7zWPTwNrR988w@mail.gmail.com>
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
 <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
 <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
 <87sfx31dt5.fsf@toke.dk>
 <CAA93jw43kC8a4_8YL3dobgvpkLO5UPbOm8yeFvwhh0dgV9eiuw@mail.gmail.com>
 <87pms71cmr.fsf@toke.dk>
 <CAA93jw7VVX_6UxyqczSZ3YoDRo9QvRZTqWqY9+0PC=rOB7FjeQ@mail.gmail.com>
 <CAA93jw7kwCc9HmfA7X4BzSCS+9UgngXj31d3gb7Aw=XQtQHZMA@mail.gmail.com>
 <878ryqjxke.fsf@toke.dk>
 <CAA93jw52-6oaOgDCS7m8+zF0VDFDEgADat=So7zWPTwNrR988w@mail.gmail.com>
Date: Tue, 19 Oct 2021 13:19:26 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87tuhdgt35.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [Ecn-sane]  l4s kernel submission
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
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Cc: Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cml0ZXM6Cgo+IG15IG1vcmUgc3BlY2lm
aWMgcXVlc3Rpb24gd2FzIGdyby4gT24gZ3JvIGFzc2VtYmx5IGlzIHRoZSBkc2NwL2Vjbgo+IGhl
YWRlciBleGFtaW5lZD8KClllcywgYW5kIG9ubHkgcGFja2V0cyB3aXRoIHRoZSBzYW1lIHZhbHVl
IGdldCBhZ2dyZWdhdGVkOgpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC9sYXRlc3Qv
c291cmNlL25ldC9pcHY2L2lwNl9vZmZsb2FkLmMjTDI2MwoKLVRva2UKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBs
aXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGlu
Zm8vY2FrZQo=
