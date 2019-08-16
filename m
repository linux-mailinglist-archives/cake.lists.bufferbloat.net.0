Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id D1707901E4
	for <lists+cake@lfdr.de>; Fri, 16 Aug 2019 14:45:21 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F17163CB38;
	Fri, 16 Aug 2019 08:45:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1565959517;
	bh=fc8Y+Se/+LRn7DqqmJEBg9bFdEnsnKU9ow0Vj/RvOmk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PIrWzltoYcNxYvTeNM1SybMpPSLnDcvXXB6PRHdVMBP3JYWvkW1EAJtd06BbYF0nc
	 b4FqCrBb6gdjj1mLEgu8+4cOKiI8ARbDxBpqFifvtlgvGt2oGaAlW5vOWna9iZSoXK
	 cFmGNNn+sPXdVZ2smbSw4aVuQq0jzkFl7LxJeJgeJ6IrHMyXvh0VY+rCqlM1eb96gu
	 zLK+KlmVcz06Xg8YF4exdIfT5pIKWGjXoVgrJd06Qfe+ynvx1bY92kdt8HFXpJo61f
	 47uYqI2d2jx9FsRa3+zvxlbcF9or3Xq8/WwmVCPPyFG1BpKurFL2P4AEmF8qWGBveY
	 qnkZ9Kbq0OPsg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com
 [IPv6:2607:f8b0:4864:20::d35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D989E3B29E
 for <cake@lists.bufferbloat.net>; Fri, 16 Aug 2019 08:45:16 -0400 (EDT)
Received: by mail-io1-xd35.google.com with SMTP id 18so5878377ioe.10
 for <cake@lists.bufferbloat.net>; Fri, 16 Aug 2019 05:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=NtbR+5PGrMNYJqDJ2GZ5Jrgz+E9D00wYouLCv5enaaM=;
 b=KFoDFiRT22UI7xW9Mm4lGiqu9wjQtDdsaHcpaaGnRQCOs64EVG5VEAxauvCPf0D3z3
 hQcB54HIz78K6fT8/P43FxRP4ntJp+yNTIJFht9ERayDfmj79sSqdBjRMstEnGpjyDda
 KlmmNrYOJl+FZx7WWMlNhifETS+zJ9xc1U+/ebKPzJuT285mgUg+GFBvdBxlOC5cfMb9
 X8anj8gZzGLMyP3QQRXWceJz1ExdYjj6aHl53AmiH6+/tDSwdOjzpo5Aa/KlR827fH29
 KpRee0cMTo0F+aC7d+bKZKY6X/ZMIdWT37+McYZmFfhut6whIFA1/GgJckpiWilxCX3W
 umBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=NtbR+5PGrMNYJqDJ2GZ5Jrgz+E9D00wYouLCv5enaaM=;
 b=HAR7tB01eNuHeKL4TXzlGmiNRsqieQm1zG2+SHVI3zJZFo1GCGcbx4n8C5FLaORuyq
 El/dtCIA3LJhjEhSoQFbfwxx7cYb78+1W3jWHMGz9GbQP3hr3fcsj7c0yyCpKr+0Af//
 OkEmnl8SP0IQgU16wy+V0IOG++fLhxVa8IpbWK2zTljcvQc4bodDSB3v1ANRd41NY/gN
 VCgcnqVW7lIYOoCuQ99oLFd/5SCyOX624nAnEU8Tg6Vja6glCcNjx2fjPITPX0XSLWbY
 yfBxNZdguhZ4coyfGEymvmOpyPxwkGC04SaeFPaV2zO+gIqffnBnAdbg2nJAN0ClBINm
 t09A==
X-Gm-Message-State: APjAAAVPKMzjnQqqyTivBvy3oczAD6Witk12m8guQwq/ZqhhJqLfSf2Y
 yD8SjezXLtMCh0G3dbVz8GsmafhbNnaMMgvglQCBdg==
X-Google-Smtp-Source: APXvYqxbCh2hjybbZxHNiepT1p/Xe6lZHaCw/2pPAqlsNWl7Cw5wntvbq5p7/lbwgr8upEWTFwckqb7n97ZlOmViXB4=
X-Received: by 2002:a6b:7a0a:: with SMTP id h10mr3851686iom.45.1565959516065; 
 Fri, 16 Aug 2019 05:45:16 -0700 (PDT)
MIME-Version: 1.0
References: <72898d5b-9424-0bcd-3d8a-fc2e2dd0dbf1@intra2net.com>
In-Reply-To: <72898d5b-9424-0bcd-3d8a-fc2e2dd0dbf1@intra2net.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Fri, 16 Aug 2019 05:45:04 -0700
Message-ID: <CAA93jw7QM+dbc-XWr9m6wERChLVfVG=eGZ28Q6mCg+vriakUTQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: r8169: Performance regression and latency instability
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

LS0tLS0tLS0tLSBGb3J3YXJkZWQgbWVzc2FnZSAtLS0tLS0tLS0KRnJvbTogSnVsaWFuYSBSb2Ry
aWd1ZWlybyA8anVsaWFuYS5yb2RyaWd1ZWlyb0BpbnRyYTJuZXQuY29tPgpEYXRlOiBGcmksIEF1
ZyAxNiwgMjAxOSBhdCA1OjIwIEFNClN1YmplY3Q6IHI4MTY5OiBQZXJmb3JtYW5jZSByZWdyZXNz
aW9uIGFuZCBsYXRlbmN5IGluc3RhYmlsaXR5ClRvOiA8bmV0ZGV2QHZnZXIua2VybmVsLm9yZz4K
Q2M6IDxlZHVtYXpldEBnb29nbGUuY29tPiwgPGhrYWxsd2VpdDFAZ21haWwuY29tPgoKCkdyZWV0
aW5ncyEKCkR1cmluZyBtaWdyYXRpb24gZnJvbSBrZXJuZWwgMy4xNCB0byA0LjE5LCB3ZSBub3Rp
Y2VkIGEgcmVncmVzc2lvbiBvbgp0aGUgbmV0d29yayBwZXJmb3JtYW5jZS4gVW5kZXIgdGhlIGV4
YWN0IHNhbWUgY2lyY3Vtc3RhbmNlcywgdGhlCnN0YW5kYXJkIGRldmlhdGlvbiBvZiB0aGUgbGF0
ZW5jeSBpcyBtb3JlIHRoYW4gZG91YmxlIHRoYW4gYmVmb3JlIG9uIHRoZQpSZWFsdGVrIFJUTDgx
MTEvODE2OEIgKDEwZWM6ODE2OCkgdXNpbmcgdGhlIHI4MTY5IGRyaXZlci4KCktlcm5lbCAzLjE0
OgogICAgICMgbmV0cGVyZiAtdiAyIC1QIDAgLUggPG5ldHNlcnZlci1JUD4sNCAtSSA5OSw1IC10
IG9tbmkgLWwgMSAtLSAtTwpTVERERVZfTEFURU5DWSAtbSA2NEsgLWQgU2VuZAogICAgIDMxMy4z
NwoKS2VybmVsIDQuMTk6CiAgICAgIyBuZXRwZXJmIC12IDIgLVAgMCAtSCA8bmV0c2VydmVyLUlQ
Piw0IC1JIDk5LDUgLXQgb21uaSAtbCAxIC0tIC1PClNURERFVl9MQVRFTkNZIC1tIDY0SyAtZCBT
ZW5kCiAgICAgNjMyLjk2CgpJbiBjb250cmFzdCwgd2Ugbm90aWNlZCBzbWFsbCBpbXByb3ZlbWVu
dHMgaW4gcGVyZm9ybWFuY2Ugd2l0aCBvdGhlcgpub24tUmVhbHRlayBuZXR3b3JrIGNhcmRzIChp
Z2IsIHRnMykuIFdoaWNoIHN1Z2dlc3RlZCBhIHBvc3NpYmxlIGRyaXZlcgpyZWxhdGVkIGJ1Zy4K
Ckhvd2V2ZXIgYWZ0ZXIgYmlzZWN0aW5nIHRoZSBjb2RlLCBJIGVuZGVkIHVwIHdpdGggdGhlIGZv
bGxvd2luZyBwYXRjaCwKd2hpY2ggd2FzIGludHJvZHVjZWQgaW4ga2VybmVsIDQuMTcgYW5kIG1v
ZGlmaWVzIG5ldC9pcHY0OgoKICAgICBjb21taXQgMGE2YjJhMWRjMmEyMTA1ZjE3ODI1NWZlNDk1
ZWI5MTRiMDljYjM3YQogICAgIEF1dGhvcjogRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUu
Y29tPgogICAgIERhdGU6ICAgTW9uIEZlYiAxOSAxMTo1Njo0NyAyMDE4IC0wODAwCgogICAgICAg
ICB0Y3A6IHN3aXRjaCB0byBHU08gYmVpbmcgYWx3YXlzIG9uCgpDb3VsZCB5b3UgcGxlYXNlIGhl
bHAgbWUgdG8gY2xhcmlmeSwgc2hvdWxkIEdTTyBiZSBhbHdheXMgb24gb24gbXkKZGV2aWNlPyBP
ciBkb2VzIGl0IGp1c3QgYWZmZWN0IFRDUD8gQWNjb3JkaW5nIHRvIGV0aHRvb2wgaXQgaXMgYWx3
YXlzCm9mZiwgImV0aHRvb2wgLUsgZXRoMCBnc28gb24iIGhhcyBubyBlZmZlY3QsIHVubGVzcyBJ
IHN3aXRjaCBTRyBvbi4KCiAgICAgIyBldGh0b29sIC1rIGV0aDAKICAgICBPZmZsb2FkIHBhcmFt
ZXRlcnMgZm9yIGV0aDA6CiAgICAgQ2Fubm90IGdldCBkZXZpY2UgdWRwIGxhcmdlIHNlbmQgb2Zm
bG9hZCBzZXR0aW5nczogT3BlcmF0aW9uIG5vdApzdXBwb3J0ZWQKICAgICByeC1jaGVja3N1bW1p
bmc6IG9uCiAgICAgdHgtY2hlY2tzdW1taW5nOiBvZmYKICAgICBzY2F0dGVyLWdhdGhlcjogb2Zm
CiAgICAgdGNwLXNlZ21lbnRhdGlvbi1vZmZsb2FkOiBvZmYKICAgICB1ZHAtZnJhZ21lbnRhdGlv
bi1vZmZsb2FkOiBvZmYKICAgICBnZW5lcmljLXNlZ21lbnRhdGlvbi1vZmZsb2FkOiBvZmYKICAg
ICBnZW5lcmljLXJlY2VpdmUtb2ZmbG9hZDogb24KICAgICBsYXJnZS1yZWNlaXZlLW9mZmxvYWQ6
IG9mZgoKSSB2YWxpZGF0ZWQgdGhhdCByZXZlcnRpbmcgInRjcDogc3dpdGNoIHRvIEdTTyBiZWlu
ZyBhbHdheXMgb24iCnN1Y2Nlc3NmdWxseSBicmluZ3MgYmFjayB0aGUgYmV0dGVyIHBlcmZvcm1h
bmNlIGZvciB0aGUgcjgxNjkgZHJpdmVyLgoKSSdtIHN1cmUgdGhhdCByZXZlcnRpbmcgdGhhdCBj
b21taXQgaXMgbm90IHRoZSBvcHRpbWFsIHNvbHV0aW9uLCBzbyBJCndvdWxkIGxpa2UgdG8ga2lu
ZGx5IGFzayBmb3IgaGVscCB0byBzaGVkIHNvbWUgbGlnaHQgaW4gdGhpcyBpc3N1ZS4KCkJlc3Qg
cmVnYXJkcywKSnVsaWFuYS4KCgotLSAKCkRhdmUgVMOkaHQKQ1RPLCBUZWtMaWJyZSwgTExDCmh0
dHA6Ly93d3cudGVrbGlicmUuY29tClRlbDogMS04MzEtMjA1LTk3NDAKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBs
aXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGlu
Zm8vY2FrZQo=
