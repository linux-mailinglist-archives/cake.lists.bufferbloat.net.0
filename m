Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D84D542E2D0
	for <lists+cake@lfdr.de>; Thu, 14 Oct 2021 22:31:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2C9DE3CB4B;
	Thu, 14 Oct 2021 16:31:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634243474;
	bh=6CV8GF1PWTqj2PmhWabg8oObsatn4OK5U5bJzZgU2to=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LFdcnATWHAyFpWgSpjEL4CO3ten2n8bGVfvPa+4tGtbyo5s09rx2DV4l6h+UpSod+
	 MH+uS0XQrDVN1t8r23IUBRec8/us014rwmoxj7epuWu9XntqXlNN1CrGm7oGm3bsXN
	 GleG+cBSnpjoUUhKwwMH0y/b9xWBduQzsLqfduU8Lo0TVOuA7eUuQeg443YwuD92I0
	 bmK6cl8ji70gkhnCLn8DpNFdY3QfvHfiCtEhSYxL2wgsMbJgndld3XoI7mNP5+yPqw
	 Jgrf+yPIndoCirA8WnnaHnY/FdXfOBIcxPDa5e6VhLCwKV0Z58LIBohW8VDmWdEeeN
	 2eVEF1UQToLhA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 694F13B29E;
 Thu, 14 Oct 2021 16:31:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1634243470;
 bh=oquFSMFm4/J7t7wLfcu2pvIDKT8HCEfCY2Cr3zqF3IY=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=bD/CYsJtVo6q4q7XbGKcZn8DBFcMRHdChv2o4dmVqh0ls9BRXFmCIiASHHeUneBDB
 wdI5cafbOiUNAp1va3ymf2HRIkqbnjIAlE4a0j2bijb+cHmL5spq6tvIVHHtlxWwax
 eT602/v4yT/A5ivUwZJRfwaugpIUK9M4kPgG/y6k=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.42.229] ([95.112.224.231]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mqs0X-1n64MR1rn7-00ms84; Thu, 14
 Oct 2021 22:31:10 +0200
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
Date: Thu, 14 Oct 2021 22:31:09 +0200
Message-Id: <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
To: =?utf-8?Q?Dave_T=C3=A4ht?= <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3608.120.23.2.7)
X-Provags-ID: V03:K1:wZZUYILkQrRXmF1UyD6DTKwngHhCK1mjohFWS9TWsnlIFDig+a8
 gQDn02G6g1PALA44uo/qynxS+QVQKuXEMTkKYV4JnxePHRGfV+IRlr13eQG5EFnQaQ65cwt
 kYV1+ymJmEpcx0/kjgwp+e8Iafu4BSlKoilKGlcVUROHG7zWrgmUIoO0kWx2L3rsLkeGo0j
 97SKwpN9LYeQhSpaa/N1w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:O7G+OMc/Leo=:2AzWbQ/4z53YpXrYrj2xky
 1l8OxFXW7sJmCdzwZo0CsswoA+A0I9NrD3ifuiLQgb/+Fo5xRFytjRrnXw+Ygrr7oNSbWcvBR
 mDxFup39soRpzIN/Rj7CYsSqHd24o0vhljQxtIS1OZHZtCzKhkCBNktyAs3sqrO05BKGOXCxU
 RG2GaesqXuXiIindewegY5BQdvYqUEX/72tDZ5+Oqd/4i4QJ8RLXZiLrjhn0pHzz7lUuQleF+
 6UElJM/hYhOHx1wN4hjD8YXFAddjFYErZAnIcIm4Wd25EhGzlkZh98nEJRgCec3CCuBZOcUG5
 cLyiSZ2I/UhjwyAJRyG3wq+DMGatgLxU/NFffwnawGkx3Kd+TQ5Cz28igVfAFuYy49F8ZBHF+
 6CVW2KzntqkGjjaHbm6YZ7FztwpDa5QzcaenB+t7khvkeklRBlSWDgMVOgSLnd4adYN9vTEoG
 zdN6GlIkxUm2ptZut/oNAaFok8aU1+o1zplpvNlfI5enyLBfQxnIv2KLct/mEzo+114IUmZ9k
 zTu21ek6wg8g/FJCiy/7Si0G7XfAt7MvxKC2kKeUev3AytBuHLnIoOphMplXlDiR9AFqBsyVI
 YJyX0zc6y22iIWZUd95kPoZvjX4lf5H38R9iwz1czfeBi9MEgJWAG7FBUcFs+x3yZxsz3L8Xx
 c+aQZnub59R7h7iQVHMH+KnCfbbnO6+NhoYGX3vB1ZEBqmZf0Cq+0CLDPa5SWLPSzyi8MXrH0
 ZPh+efYhnASqidZJ9kDfG5fPXEKEzpC0o7EyvVDN+nzha8S6YvvLKLAgq5uKT+BYxGQ8Ms4wT
 IsKNt9fMuTwVjZmwU6ruyb9ddav9bX5B4SIQ+dBdufpRVb4BjRo4SYqIeClvlS3DpeuJZmC1E
 XEHj51k8bPynff5AULBvnXY9ta6oiNadKyGBPxLWPVHwq3LnL3Co1LuuSOdtjHUHbew5eWrEk
 6+i0guCHpbFvx454Dubc6w7dww7hY1mJpA9dbb7lV73dtuLTVim1cyRoVP4qjJaC1qQ/rk9jB
 6zJvl9WMp27wCHzGwPYylL16HWOkTp01Dr9anX+yY1gIqltrg4bOzIxjqq1Kwfx8W8Rr+j6Co
 iruUnMkttSANgs=
Subject: Re: [Cake] l4s kernel submission
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

V2hpY2ggZG9lcyBub3QgY2hhbmdlIHRoZSBpbmNvbnZlbmllbnQgZmFjdCB0aGF0IEw0UyBkb2Vz
IG5vdCB3b3JrIG92ZXIgdGhlIG9wZW4gaW50ZXJuZXQuIEJ1dCBJIGJldCB0aGF0IGZxX2NvZGVs
IHdpdGggYSBzaGFwZXIgaXMgZ29pbmcgdG8gYmUgaGFuZHMgZG93biB0aGUgYmV0dGVyIEw0UyBB
UU0gY29tcGFyZWQgdG8gRHVhbFEuLi4gKHRoYW5rcyB0byBpdHMgZnEgbmF0dXJlIGl0IGNhbiBm
b3JlZ28gdGhlIHdob2xlICJjb3VwbGluZyIgaGV1cmlzdGljIG1lc3MgYW5kIHNpZGUtc3RlcCB0
aGUgd2hvbGUgbWFzc2l2ZSB1bmZhaXJuZXNzIGlzc3VlcywgYW5kIGtlZXBpbmcgdGhlIGtub3du
IHdvcmtpbmcgY29kZWwgbGF3IGZvciBub24tRUNUKDEpIHRyYWZmaWMgYWxzbyBjb21wYXJlZCB0
byBkdWFscSdzIGJ1cnRzIGludG9sZXJhYnQgUElFIHZhcmlhbnQgYWxzbyBzZWVtcyBsaWtlIGEg
c3RlcCBpbiB0aGUgcmlnaHQgZGlyZWN0aW9uKS4KVGhlbiBhZ2FpbiBpdCBzZWVtcyBjb25zZXF1
ZW50IGdpdmVuIHRoYXQgdGhlIEJCUnYyIHRlYW0gc2VlbSB0byBiZSBvbi1ib2FyZCB0aGUgTDRT
IHRyYWluOyB0byBwdXQgYSBzb21ld2hhdCBwb3NpdGl2ZSBzcGluIChsaXBzdGljaz8pIG9uIHRo
aXMsIEkgYXNzdW1lIHRoYXQgdGhlIHF1YWxpdHkgb2YgdGhlIEw0UyBlbmdpbmVlcmluZyBtaWdo
dCBpbXByb3ZlLi4uIAoKUmVnYXJkcwoJU2ViYXN0aWFuCgpQLlMuOiBXaXRuZXNzaW5nIHRoZSBM
NFMgZHJhbWEgaW4gdGhlIElFVEYgbWFrZXMgbWUgYXBwcmVjaWF0ZSBob3cgY29tcGFyYXRpdmVs
eSBjbGVhbiBhbmQgZWxlZ2FudCBzYXVzYWdlcyBhcmUgbWFkZS4uLgoKCgo+IE9uIE9jdCAxNCwg
MjAyMSwgYXQgMjI6MDYsIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4g
Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjExMDE0MTc1OTE4LjYwMTg4LTMtZXJp
Yy5kdW1hemV0QGdtYWlsLmNvbS8KPiAKPiAtLSAKPiBGaXhpbmcgU3RhcmxpbmsncyBMYXRlbmNp
ZXM6IGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9YzlnTG82WHJ3Z3cKPiAKPiBEYXZl
IFTDpGh0IENFTywgVGVrTGlicmUsIExMQwo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQ2FrZSBtYWlsaW5nIGxpc3QKPiBDYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
