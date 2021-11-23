Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF63459C96
	for <lists+cake@lfdr.de>; Tue, 23 Nov 2021 08:07:37 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 50FC23CB39;
	Tue, 23 Nov 2021 02:07:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1637651256;
	bh=4SmrmO94T+wQRgrJbn3gwrXj3FuUbvKIKIxKzobULLI=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PH29x10BEK+RjlKR8aPx+CNx35o5FoVrk1I+O6zOYvsL5W4pX5I37ilIJLUrQaOUN
	 eifvYIDMORvVwm7h4ptu3dHwqijJBjuqEAE9WjXeSaTTGJ5OvpsGsfjDP2ZO6+/YgN
	 tv+9y0A7XuDiia0jTmshXCasravIkpLAL8itYV4BRe28N1JLfyDkdgbsW53C9pGqqZ
	 4UB6sWFWEMFHKrkkdU+zTY4Rje1WozMOa87NxlbBM5hHxC4C6cfq6BRkcbyf7gc2Uz
	 OPyAKMAk+nO+S301CbLCZ6EGnJc/we9BO1xIN7pcLotuQVi+QdLq0IsWPS4k6dB/hS
	 MSVmmiofK6Yzw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4C5FF3CB35
 for <cake@lists.bufferbloat.net>; Tue, 23 Nov 2021 02:07:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1637651252;
 bh=a3lTYTghzSRBNEDtPu3QqhA6PnUEXMj/eU0oZCnnLE4=;
 h=X-UI-Sender-Class:Date:From:To:Subject:In-Reply-To:References;
 b=D+b3i5iqCkIPhFvD1ffzKZcl/DpMBNilbnGrHG7MqMfTlYyx/ORFE8l+Cz24jV18c
 sRgB/a26PE51SzuOc88B7OJpTYDa31dqkKTRhA1jnT4r16aK1poRHnq4vq/XLOAnh0
 aGFyEaETP1w0z0Vieh+G2wsvHTHD7czmw4ioTOXM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [127.0.0.1] ([80.187.108.241]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MhU9Z-1mCUFD1j7r-00eh1c; Tue, 23
 Nov 2021 08:07:32 +0100
Date: Tue, 23 Nov 2021 08:07:34 +0100
From: Sebastian Moeller <moeller0@gmx.de>
To: cake@lists.bufferbloat.net, Dave Taht <dave.taht@gmail.com>,
 Cake List <cake@lists.bufferbloat.net>
User-Agent: K-9 Mail for Android
In-Reply-To: <CAA93jw4hrZmUma-xE6stRQZkyo84m4wYV+mbK6AoPeAJ1y0nqg@mail.gmail.com>
References: <CAA93jw4hrZmUma-xE6stRQZkyo84m4wYV+mbK6AoPeAJ1y0nqg@mail.gmail.com>
Message-ID: <67BC6CC2-F088-4C0D-8433-A09F4AC452FE@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:YnNWdYOQn42U4JEck/gz4uQGNL6Q2SDzDmtGvYF/G2OIBfEBSQQ
 p/fy7UvXKAph4QMT3QXbMqZ2oyGZWeZfMmbnlcjcAIhgilBngpNL4u13F8YZmAp/9doezE8
 oREmvqVrpDg3KXOCjS2yo5XfUU/NwyZM0Bdj8YDKmcy/L6CY6ihEZ5PBALd4oPd/y/wrSwC
 ISJhfGRs5Y3oLkMpwyVOQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yukjQkthVaA=:Wkdg8C1M+uvHJJ9mcXkkMx
 RC7yqO0UPaAE0EnTXUnXNV3EPIos58M36NCaxOlANY15nbzNC0npj9hCei9AG0fY9ZZpvqVCB
 ykDOftBjUWBDNy8XDDwwEL0aRcxqCgbSojuNLakRrxGUuc56sau9ywwJG+R8AnaIeN6A9sTqB
 z6u7DmzJO2oL+gYraV93q/9KughTLUFn5i1DqTNSq+3view8zfuAzluLJsSjn4bn8AZTW5shw
 BkiLJXnMdDU6LSkfyOMdg41UPkhNsWOttnDDbBOxERpNMIvt8rSSvAM3YMlrUUHrsEXtiZ5aT
 VYtoaIm2TC6GeHXm4zbq2hT3tKyNOZ7edWfbU06YGD1fDLOti7wcwBFcQz/EdNrcQX9wrSQYK
 L71hMPhGEfvO1DykJisfE2ka1LieyxrJ7LLm/95GgK0DvhYtSJihiURTV8Q3MPOALTDPZs6RL
 QcF3Mm3zFxVp1VEvjD1KSEBLw9i6RPQGdCqp33eUypF40stkA38ZknjWIdxmVnjFZmYkfZ6oi
 4EIQ4oMuRWsEny+cAJdSnCLMO7WCfB1fEDUZKGNyWZbzBOoh5+axDkipsrdFgCUsdn7C4x7TB
 hQ38DyMqSE/NSdof2dSOcWZt+kga0eAL0hZTkWiisnCsvhTp2bF2TNJUhtGzySiUtz7NvB+QV
 7BBn/eUZjILPEnw8CRdUv4MOxwTv4F5b9xwBw1Vqm3Xy8hUVcYfSqOeeh6hPIFC4LzQYXfd2t
 GjcipRtPe3RoJ9QlSnsIv8v2NyMgsOE7HLSolrYv4oGPmEEhHJ4ApBs8lRJMCHb3MoVBOhcJD
 LXvvXDq4Na593wsTyTu7NfNPPL7TU+gPpF08jLemkMlpmkXkQf71GPCSqJYFG00F0NFYYNZkz
 KAqbyTBQdvrkaB/L9/t5DfNPwN5CpqG2jGy33Pzsvo5HuVGFcPn2MffA9ral1zbeWdpBsIopm
 wdPzMo/7hvgpL3JqioFMe5+okRC8ENWs5gWdldoJP03aSBps4kmL1NptEMaNiNhsFNXm2H74b
 CCARv6oIoO2Tt2DSXHf4nbLzHIf3wd2o2NLlhWzP1XH6Hi2b1XCTKHCkE+lpVGHWawdtj5Zed
 B4iycPddzZ4dcA=
Subject: Re: [Cake] tossing acks into the background queue
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

SGkgRGF2ZSwKCgpPbiAyMyBOb3ZlbWJlciAyMDIxIDA2OjAzOjAzIENFVCwgRGF2ZSBUYWh0IDxk
YXZlLnRhaHRAZ21haWwuY29tPiB3cm90ZToKPmFnZXMgYWdvIEknZCAod2UnZD8gSSByZWFsbHkg
ZG9uJ3QgcmVtZW1iZXIgLSBmb3JnaXZlIG1lIGlmIEkndmUKPmZvcmdvdHRlbiB3aG8gYWN0dWFs
bHkgbGVhbmVkIGluIG9uIGl0KSB3cml0dGVuIGEgYmFzaWMgYWNrLWZpbHRlciBpbgo+ZWJwZi4g
dGhpcyB3YXMgYmVmb3JlIGNha2UgZ2FpbmVkIHRjIGFjdGlvbnMgYW5kIG15IHByaW1hcnkgdXNl
IGZvcgo+dGhlIHRlY2ggd2FzIGZvciBhc3ltbWV0cmljIGNvbm5lY3Rpb25zLCBhbmQgYmVmb3Jl
IHRoZSBnb29kCj5hY2stZmlsdGVyIGFycml2ZWQsIGFuZCBJIHdhcyAoYW5kIHJlbWFpbikgdW5m
cmllbmRseSB0byB0aGlzIGxldmVsIG9mCj5kcGkuCj4KPlRoYXQgc2FpZCwgb24gYSBzeW1tZXRy
aWMgY29ubmVjdGlvbiwgZGVwcmlvcml0aXppbmcgcHVyZSBhY2tzIHRvIHRoZQo+NSUgYmFja2dy
b3VuZCBxdWV1ZSBuZCB0aGVuIHR1cm5pbmcgdGhlIGNha2UgYWNrLWZpbHRlciBsb29zZSBvbiBp
dAo+bWlnaHQgYWN0dWFsbHkgd29yay4KPgo+QW0gSSBvbiBkcnVncy9pcyB0aGVyZSBhbnkgcG9p
bnQ/CgpJIHRoaW5rIGF0IGxlYXQgd2hlbiB1c2luZyBtdWx0aXBsZSBwcmlvcml0eSB0aW5zIGZv
cndhcmQgYW5kIHJldmVyc2UgdHJhZmZpYyBzaG91bGQgYnkgZGVmYXVsdCB1c2UgdGhlIHNhbWUg
dGluIChJIGNhbiBzZWUgbm9uLXN0YW5kYXJkIHNpdHVhdGlvbnMgdGhhdCB3YW50IGRpZmZlcmVu
dGlhbCB0cmVhdG1lbnQpLiBUaGUgYXJndW1lbnQgaXMgdGhhdCB1bmxpa2UgZWFybGllciBhdHRl
bXB0cyBhdCBpbmdyZXNzIHNoYXBpbmcgdGhhdCB0cmllZCB0byB0aHJvdHRsZSByZXZlcnNlIEFD
S3M/IGNha2UvY29kZWwgZG8gcHJvcGVyICdoaXQgdGhlIGJyYWtlcycgc2lnbmFsbGluZyB2aWEg
bWFya2luZy9kcm9wcGluZyBhbmQgd2Ugd2FudCB0aGF0IHNpZ25hbCB0byByZWFjaCB0aGUgb3Ro
ZXIgZW5kIGFzIHF1aWNrbHkgYXMgcG9zc2libGUsIG5vPwoKUmVnYXJkcwogICAgICAgIFNlYmFz
dGlhbgoKCj4KPgo+Cj4tLSAKPkkgdHJpZWQgdG8gYnVpbGQgYSBiZXR0ZXIgZnV0dXJlLCBhIGZl
dyB0aW1lczoKPmh0dHBzOi8vd2F5Zm9yd2FyZC5hcmNoaXZlLm9yZy8/c2l0ZT1odHRwcyUzQSUy
RiUyRnd3dy5pY2VpLm9yZwo+Cj5EYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwo+X19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPkNha2UgbWFpbGluZyBs
aXN0Cj5DYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+aHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQoKLS0gClNlbnQgZnJvbSBteSBBbmRyb2lkIGRldmljZSB3aXRo
IEstOSBNYWlsLiBQbGVhc2UgZXhjdXNlIG15IGJyZXZpdHkuCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UK
