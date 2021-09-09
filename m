Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C728C405B9B
	for <lists+cake@lfdr.de>; Thu,  9 Sep 2021 18:58:57 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 84B473CB43;
	Thu,  9 Sep 2021 12:58:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1631206735;
	bh=L0XtXfvotkXvYMEaJajHyxcAZJfBZX9CEfnxAYZXEiY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S9axroN1zIc8Dk4NgELVp286++OutL1G/iqr2VAvcurKTeI5bF9kLnlDUQJssdLub
	 +ijHwpbjOIs53QySyObb7m5PNO1JeVv1mM+yRsU+bgQM01kWbznyUJMidzrrYp7P1g
	 UP4mTeN+uATv/AQiMBKiAsOnneMrWMO9cyF0NF0Vj14OJSr/XW7Innl0Qm5D7rMfVI
	 rbJ7EQ7c2KB6pgR0x/KOldZQ5sOWy00SC1XifgiqTrvPG2C0y+K+POl4WVU6rbSqhu
	 cD4qnzLlqHThu5ECduTlQQbmqrTbtZ9aKEMyJExwjDmnmTp+FdJcK7kARK8EKhBS9H
	 YV/I8CUz//zgw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 271E03CB35;
 Thu,  9 Sep 2021 12:58:54 -0400 (EDT)
Received: by mail-io1-xd2a.google.com with SMTP id z1so3192048ioh.7;
 Thu, 09 Sep 2021 09:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=SeYteL3e9LtcwC67MmyY6lslzcQMxlYmCpmUEnN8AA0=;
 b=Jj90fwlp/9yzfbu8x8AcaoCqASijrlQUwUBZaTxoNWe3OxAka5uSUarqRQacyZdDSB
 mVf7TTkp4WQzfEaGsDNwIhyrjogIwigGNuiDl2DPSoGGjhF6MyMJMKuhWXnVSG82pFmA
 iqR5s+OqxEU+5eSwax2CuZNzpKI8WpBGXo9OIA57z6GyyBUwe/US7JfQPR2YfmURAUP2
 AeRswlXc7fGS2GLMHyhRGWkQywtXQY5385VWo89ElDc//z//GCTGjMSRstKigPQ5KoYL
 3MS8TNxeplLvXaoVnDqB5stBBZ3+GiUPguIZIfKw35b1cEpAzaP7JwiWjJxlJ0yW57wA
 qDcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=SeYteL3e9LtcwC67MmyY6lslzcQMxlYmCpmUEnN8AA0=;
 b=aKyR8ZwKFh9ZMAKnsZqLs9EJY2Jrhd1U2GP3O/7OaTQmKZfkV3gINiTy1B1eNlh28V
 1mnsyLz2jmOHSeagdS3IklaP/k/qvLxO5CvxWmsuKlvNwWope16mF6Ye/XXML/+8Go7E
 J6PJxDnZImWjEVqDJugi/HzDUSN7zeicn5ZZ7d8hCgDgAujuHSSzFNfm/nMrq5+8MrUP
 Tn/Ucz9IrTtDSTE5EBhwFcRhTObuZ44wKccL1IfoYB/eVHbRmdICJUEY/XQK53qzXdKz
 fWcomXn8/Tuwwb/beWWIKmSwvNJ6J7NJIE43EXZ75VSP2VXkkIRXpSAM9MwpDjK+moZq
 wXzw==
X-Gm-Message-State: AOAM531N7cRIw3LlTO+yFTTQVk0P4vSwJg4RqHI9qLrkQg6r33Ffkvsx
 6MldnKPDu8clgstvnohMRPxYuKnluZ2d02fLPHv+sFMxwW0=
X-Google-Smtp-Source: ABdhPJyaDbdWjXdYctXYFQUPjccZjv0NH+lNqWhS+pRG/kGi8y/+DiMdKay4P0uwI4ea3FkPgIdR+c8i592xcLGurNs=
X-Received: by 2002:a5d:851a:: with SMTP id q26mr3431454ion.163.1631206733058; 
 Thu, 09 Sep 2021 09:58:53 -0700 (PDT)
MIME-Version: 1.0
References: <fccbdadc-a57a-f6fe-68d2-0fbac2fd6b81@labbott.name>
In-Reply-To: <fccbdadc-a57a-f6fe-68d2-0fbac2fd6b81@labbott.name>
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 9 Sep 2021 09:58:39 -0700
Message-ID: <CAA93jw7p-43TrjJMhiB0AkJCQwu6RJ5E3D_a6P4u_x=HHT=86A@mail.gmail.com>
To: cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: [Tech-board-discuss] Reminder: Voting procedures for
 the Linux Foundation Technical Advisory Board
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

Zm9yIDUgcG9zaXRpb25zIHRoZXJlIGFyZSBwcmVzZW50bHkgb25seSAyIG5vbWluZWVzLiBJIHJ1
biBmb3IgdGhlCkxpbnV4IEZvdW5kYXRpb24gVEFCIG9uY2UgaW4gYSB3aGlsZSwganVzdCB0byB0
cnkgYW5kIHNvbWVob3cgaW5zZXJ0Cm15IHdpc2ggdGhhdCB0aGUgTEYgZG8gbW9yZSB0byBpbXBy
b3ZlIGVtYmVkZGVkIGxpbnV4IGRldmVsb3BtZW50CnByb2Nlc3NlcywgIHdpdGggbm8gbHVjay4g
SSdtIHRoaW5raW5nIGFib3V0IHJ1bm5pbmcsCm5vdywgdXNpbmcgbXkgc3Rhcmxpbmsgc3Rvcnkg
YXMgdGhlIGNhbm9uaWNhbCBleGFtcGxlIG9mIHdoYXQncyBiZWVuCmdvaW5nIGluY3JlYXNpbmds
eSB3cm9uZyBpbiB0aGF0IG1hcmtldC4KCkJ1dDogSWYgYW55b25lIGVsc2Ugd291bGQgbGlrZSB0
byBzdGVwIHVwIGFuZCBpbnRvIHRoaXMgcGFydGljdWxhcgpibGVuZGVyIHRob3VnaD8KCkkgbGlr
ZSB2ZXJ5IG11Y2ggdGhpcyBuZXcgc3RyYXRlZ3kgZm9yIHZvdGluZyAoaXQgdHVybmVkIG91dCBJ
IGJhcmVseQpxdWFsaWZpZWQpLCBkZXNjcmliZWQgYmVsb3cuCgotLS0tLS0tLS0tIEZvcndhcmRl
ZCBtZXNzYWdlIC0tLS0tLS0tLQpGcm9tOiBMYXVyYSBBYmJvdHQgPGxhdXJhQGxhYmJvdHQubmFt
ZT4KRGF0ZTogVGh1LCBTZXAgOSwgMjAyMSBhdCA5OjQ5IEFNClN1YmplY3Q6IFtUZWNoLWJvYXJk
LWRpc2N1c3NdIFJlbWluZGVyOiBWb3RpbmcgcHJvY2VkdXJlcyBmb3IgdGhlCkxpbnV4IEZvdW5k
YXRpb24gVGVjaG5pY2FsIEFkdmlzb3J5IEJvYXJkClRvOiA8a3N1bW1pdEBsaXN0cy5saW51eC5k
ZXY+LCBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCjxsaW51eC1rZXJuZWxAdmdlci5rZXJu
ZWwub3JnPiwKdGVjaC1ib2FyZC1kaXNjdXNzQGxpc3RzLmxpbnV4Zm91bmRhdGlvbi5vcmcKPHRl
Y2gtYm9hcmQtZGlzY3Vzc0BsaXN0cy5saW51eGZvdW5kYXRpb24ub3JnPgoKCkhpLAoKUmVtaW5k
ZXIgdGhhdCB0aGUgTGludXggRm91bmRhdGlvbiBUZWNobmljYWwgQWR2aXNvcnkgQm9hcmQgKFRB
QikgYW5udWFsCmVsZWN0aW9uIHdpbGwgYmUgaGVsZCB2aXJ0dWFsbHkgZHVyaW5nIHRoZSAyMDIx
IEtlcm5lbCBTdW1taXQgYW5kIExpbnV4ClBsdW1iZXJzIENvbmZlcmVuY2UuIFZvdGluZyB3aWxs
IHJ1biBmcm9tIFNlcHRlbWJlciAyMHRoIHRvIFNlcHRlbWJlcgoyM3JkIDE2OjAwIEdNVC00IChV
Uy9FYXN0ZXJuKS4gVGhlIHZvdGluZyBjcml0ZXJpYSBmb3IgdGhlIDIwMjEgZWxlY3Rpb24KYXJl
OgoKVGhlcmUgZXhpc3QgdGhyZWUga2VybmVsIGNvbW1pdHMgaW4gYSBtYWlubGluZSBvciBzdGFi
bGUgcmVsZWFzZWQKa2VybmVsIHRoYXQgYm90aAotIEhhdmUgYSBjb21taXQgZGF0ZSBpbiB0aGUg
eWVhciAyMDIwIG9yIDIwMjEKLSBDb250YWluIGFuIGUtbWFpbCBhZGRyZXNzIGluIG9uZSBvZiB0
aGUgZm9sbG93aW5nIHRhZ3Mgb3IgbWVyZ2VkCnRhZ3MgKGUuZy4gUmV2aWV3ZWQtYW5kLXRlc3Rl
ZC1ieSkKLS0gU2lnbmVkLW9mZi1ieQotLSBUZXN0ZWQtYnkKLS0gUmVwb3J0ZWQtYnkKLS0gUmV2
aWV3ZWQtYnkKLS0gQWNrZWQtYnkKCklmIHlvdSBoYXZlIG1vcmUgdGhhbiA1MCBjb21taXRzIHRo
YXQgbWVldCB0aGlzIHJlcXVpcmVtZW50IHlvdSB3aWxsCnJlY2VpdmUgYSBiYWxsb3QgYXV0b21h
dGljYWxseS4KCklmIHlvdSBoYXZlIGJldHdlZW4gMyBhbmQgNDkgY29tbWl0cyB0aGF0IG1lZXQg
dGhpcyByZXF1aXJlbWVudCBwbGVhc2UKZS1tYWlsIHRhYi1lbGVjdGlvbnNAbGlzdHMubGludXhm
b3VuZGF0aW9uLm9yZyB0byByZXF1ZXN0IHlvdXIgYmFsbG90LgpXZSBzdHJvbmdseSBlbmNvdXJh
Z2UgZXZlcnlvbmUgd2hvIG1lZXRzIHRoaXMgY3JpdGVyaWEgdG8gcmVxdWVzdCBhCmJhbGxvdC4K
CldlIHdpbGwgYmUgdXNpbmcgQ29uZG9yY2V0IEludGVybmV0IFZvdGluZwpTZXJ2aWNlIChDSVZT
KSBodHRwczovL2NpdnMxLmNpdnMudXMvIC4gVGhpcyBpcyBhIHZvdGluZyBzZXJ2aWNlCmZvY3Vz
ZWQgb24gc2VjdXJpdHkgYW5kIHByaXZhY3kuIFRoZXJlIGFyZSBzYW1wbGUgcG9sbHMgb24gdGhl
CndlYnNpdGUgaWYgeW91IHdvdWxkIGxpa2UgdG8gc2VlIHdoYXQgYSBiYWxsb3Qgd2lsbCBsb29r
IGxpa2UuCgpJZiB5b3UgaGF2ZSBhbnkgcXVlc3Rpb25zIHBsZWFzZSBlLW1haWwKdGFiLWVsZWN0
aW9uc0BsaXN0cy5saW51eGZvdW5kYXRpb24ub3JnLgoKVGhhbmtzLApMYXVyYQoKUC5TLiBQbGVh
c2UgYWxzbyBjb25zaWRlciB0aGlzIGFub3RoZXIgcmVtaW5kZXIgdG8gY29uc2lkZXIgcnVubmlu
ZyBmb3IKdGhlIFRBQiBhcyB3ZWxsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClRlY2gtYm9hcmQtZGlzY3VzcyBtYWlsaW5nIGxpc3QKVGVjaC1ib2FyZC1k
aXNjdXNzQGxpc3RzLmxpbnV4LWZvdW5kYXRpb24ub3JnCmh0dHBzOi8vbGlzdHMubGludXhmb3Vu
ZGF0aW9uLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3RlY2gtYm9hcmQtZGlzY3VzcwoKCi0tIApGaXhp
bmcgU3RhcmxpbmsncyBMYXRlbmNpZXM6IGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9
YzlnTG82WHJ3Z3cKCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VA
bGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Nha2UK
