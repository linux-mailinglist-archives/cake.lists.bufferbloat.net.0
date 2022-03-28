Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8B64F016D
	for <lists+cake@lfdr.de>; Sat,  2 Apr 2022 14:28:45 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4D2D63CB38;
	Sat,  2 Apr 2022 08:28:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1648902523;
	bh=ADqqst2KdAtH6qriIZljCzDmFW0J98h2521yH/1j4v0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Rem8Pr7XSbZLGMgg7QDOTIEECri5xfuZOa8YV6SpwSGWa37GwCfuLC18uqqns5ykY
	 hHvysaObdCEQqwXf9ls9NJJr8TyTbo7EJ/tfbLXENXJJAJziRy94/1gxjdubv4tHTR
	 Zj7Q0L/t2JCgwCG1vXW3wpV57Awu0wNMArb4L6mHvJbFr+fV/1crE0Ux2MQ/psGeFn
	 ka1wjrUMJ0oi0aq+rrswn2zJbnIpEP+g9lm34dE2f2Y26TuuWfG6J9fZyRZtffvWHa
	 wvMBn1cpDBk8+BifdBs2w8A3nodfXC8ZG8yvWu/pzarR2yhmOk6qqD5O9ByDOo43U+
	 9cyiQmUEmChfw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from pegase2.c-s.fr (pegase2.c-s.fr [93.17.235.10])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 523803B2A4
 for <cake@lists.bufferbloat.net>; Mon, 28 Mar 2022 08:03:51 -0400 (EDT)
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
 by localhost (Postfix) with ESMTP id 4KRrvV0xw9z9sSS;
 Mon, 28 Mar 2022 14:03:50 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
 by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mfpM4CKHYgi1; Mon, 28 Mar 2022 14:03:50 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase2.c-s.fr (Postfix) with ESMTP id 4KRrvV02fJz9sS2;
 Mon, 28 Mar 2022 14:03:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id E1AE78B774;
 Mon, 28 Mar 2022 14:03:49 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id MgrrJHZN3a_P; Mon, 28 Mar 2022 14:03:49 +0200 (CEST)
Received: from PO20335.IDSI0.si.c-s.fr (unknown [172.25.230.108])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id B6F0F8B763;
 Mon, 28 Mar 2022 14:03:49 +0200 (CEST)
Received: from PO20335.IDSI0.si.c-s.fr (localhost [127.0.0.1])
 by PO20335.IDSI0.si.c-s.fr (8.17.1/8.16.1) with ESMTPS id 22SC3Zcv101576
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Mon, 28 Mar 2022 14:03:35 +0200
Received: (from chleroy@localhost)
 by PO20335.IDSI0.si.c-s.fr (8.17.1/8.17.1/Submit) id 22SC3Zt6101574;
 Mon, 28 Mar 2022 14:03:35 +0200
X-Authentication-Warning: PO20335.IDSI0.si.c-s.fr: chleroy set sender to
 christophe.leroy@csgroup.eu using -f
From: Christophe Leroy <christophe.leroy@csgroup.eu>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Jamal Hadi Salim <jhs@mojatatu.com>,
 Cong Wang <xiyou.wangcong@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Paolo Abeni <pabeni@redhat.com>, "Toke Hoiland-Jorgensen" <toke@toke.dk>
Date: Mon, 28 Mar 2022 14:03:24 +0200
Message-Id: <356a242a964fabbdf876a18c7640eb6ead6d0e6b.1648468695.git.christophe.leroy@csgroup.eu>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1648469002; l=3970; s=20211009;
 h=from:subject:message-id; bh=75ZCbmpZ80bUhHxXSdf4GpKIzWiERVR/QGymj1/HGQo=;
 b=Fs903hJX2Cs+qgU3qX+Py8DrjakQWxDT+D60UGyUYwRrYfyRDj6afp/qaD/70uRZ0cKSYgmx1xjq
 A93LoYRrC5XR7J3/rP/1hI5OaB7/kpadZQBoW5pbBonw7UUV37nW
X-Developer-Key: i=christophe.leroy@csgroup.eu; a=ed25519;
 pk=HIzTzUj91asvincQGOFx6+ZF5AoUuP9GdOtQChs7Mm0=
X-Mailman-Approved-At: Sat, 02 Apr 2022 08:28:42 -0400
Subject: [Cake] [PATCH net-next] sch_cake: Take into account guideline
	DEF/DGSIC/36 from French Administration
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christophe Leroy <christophe.leroy@csgroup.eu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJlbmNoIEFkbWluaXN0cmF0aW9uIGhhcyB3cml0dGVuIGEgZ3VpZGVsaW5lIHRoYXQgZGVmaW5l
cyBhZGRpdGlvbmFsCkRTQ1AgdmFsdWVzIGZvciB1c2UgaW4gaXRzIG5ldHdvcmtzLgoKQWRkIG5l
dyBDQUtFIGRpZmZzZXJ2IHRhYmxlcyB0byB0YWtlIHRob3NlIG5ldyB2YWx1ZXMgaW50byBhY2Nv
dW50CmFuZCBhZGQgQ09ORklHX05FVF9TQ0hfQ0FLRV9ER1NJQyB0byBzZWxlY3QgdGhvc2UgdGFi
bGVzIGluc3RlYWQgb2YKdGhlIGRlZmF1bHQgb25lcy4KClRoZSBkb2N1bWVudCBpcyBhdmFpbGFi
bGUgYXQKaHR0cHM6Ly93d3cuYm8uc2dhLmRlZmVuc2UuZ291di5mci90ZXh0ZS9zaWduZS8yNjQy
MTkvTiVDMiVCMCUyMDM2L0RFRi9ER1NJQy5wZGYKb3IgaHR0cHM6Ly93d3cuYm8uc2dhLmRlZmVu
c2UuZ291di5mci90ZXh0ZS8yNjQyMTkvTiVDMiVCMCUyMDM2L0RFRi9ER1NJQy5odG1sCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpc3RvcGhlIExlcm95IDxjaHJpc3RvcGhlLmxlcm95QGNzZ3JvdXAuZXU+
Ci0tLQogbmV0L3NjaGVkL0tjb25maWcgICAgfCAxMSArKysrKysrKysrKwogbmV0L3NjaGVkL3Nj
aF9jYWtlLmMgfCA0MiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0K
IDIgZmlsZXMgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9uZXQvc2NoZWQvS2NvbmZpZyBiL25ldC9zY2hlZC9LY29uZmlnCmluZGV4IDFlOGFi
NDc0OWM2Yy4uYjk5ZjI0NzQwNGUwIDEwMDY0NAotLS0gYS9uZXQvc2NoZWQvS2NvbmZpZworKysg
Yi9uZXQvc2NoZWQvS2NvbmZpZwpAQCAtMzMxLDYgKzMzMSwxNyBAQCBjb25maWcgTkVUX1NDSF9D
QUtFCiAKIAkgIElmIHVuc3VyZSwgc2F5IE4uCiAKK2NvbmZpZyBORVRfU0NIX0NBS0VfREdTSUMK
Kwlib29sICJDQUtFOiBGb2xsb3cgRnJlbmNoIEFkbWluaXN0cmF0aW9uJ3MgZ3VpZGVsaW5lIERF
Ri9ER1NJQy8zNiIKKwlkZXBlbmRzIG9uIE5FVF9TQ0hfQ0FLRQorCWhlbHAKKwkgIFNheSBZIGhl
cmUgaWYgeW91IHdhbnQgdG8gdXNlIHRoZSBDb21tb24gQXBwbGljYXRpb25zIEtlcHQgRW5oYW5j
ZWQKKwkgIChDQUtFKSBxdWV1ZSBtYW5hZ2VtZW50IGFsZ29yaXRobSBpbiBhbiBlbnZpcm9ubWVu
dCB0aGF0IHJlcXVpcmVzIHRvCisJICB0YWtlIGludG8gYWNjb3VudCBhZGRpdGlvbmFsIERTQ1Ag
dmFsdWVzIGRlZmluZWQgYnkgdGhlIEZyZW5jaAorCSAgQWRtaW5pc3RyYXRpb24gaW4gdGhlIGd1
aWRlbGluZSBkb2N1bWVudCBpZGVudGlmaWVkIERFRi9ER1NJQy8zNiwKKwkgIGF2YWlsYWJsZSBh
dAorCSAgaHR0cHM6Ly93d3cuYm8uc2dhLmRlZmVuc2UuZ291di5mci90ZXh0ZS9zaWduZS8yNjQy
MTkvTiVDMiVCMCUyMDM2L0RFRi9ER1NJQy5wZGYKKwogY29uZmlnIE5FVF9TQ0hfRlEKIAl0cmlz
dGF0ZSAiRmFpciBRdWV1ZSIKIAloZWxwCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2NoX2Nha2Uu
YyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCmluZGV4IGE0M2E1OGE3M2QwOS4uM2Q5YWYzYTY4YzA1
IDEwMDY0NAotLS0gYS9uZXQvc2NoZWQvc2NoX2Nha2UuYworKysgYi9uZXQvc2NoZWQvc2NoX2Nh
a2UuYwpAQCAtMzIyLDYgKzMyMiwxNyBAQCBzdGF0aWMgY29uc3QgdTggZGlmZnNlcnY4W10gPSB7
CiAJNywgMiwgMiwgMiwgMiwgMiwgMiwgMiwKIH07CiAKK3N0YXRpYyBjb25zdCB1OCBkaWZmc2Vy
djhfZGdzaWNbXSA9IHsKKwkyLCAwLCAxLCAyLCA0LCAyLCAyLCAyLAorCTEsIDEsIDEsIDIsIDEs
IDEsIDEsIDIsCisJNSwgNCwgNCwgMiwgNCwgNCwgNCwgMiwKKwkzLCAzLCAzLCAyLCAzLCAzLCAz
LCAyLAorCTYsIDMsIDMsIDIsIDMsIDMsIDMsIDIsCisJNiwgNiwgNiwgMiwgNiwgNiwgNiwgMiwK
Kwk3LCAyLCAyLCAyLCAyLCAyLCAyLCAyLAorCTcsIDIsIDIsIDIsIDIsIDIsIDIsIDIsCit9Owor
CiBzdGF0aWMgY29uc3QgdTggZGlmZnNlcnY0W10gPSB7CiAJMCwgMSwgMCwgMCwgMiwgMCwgMCwg
MCwKIAkxLCAwLCAwLCAwLCAwLCAwLCAwLCAwLApAQCAtMzMzLDYgKzM0NCwxNyBAQCBzdGF0aWMg
Y29uc3QgdTggZGlmZnNlcnY0W10gPSB7CiAJMywgMCwgMCwgMCwgMCwgMCwgMCwgMCwKIH07CiAK
K3N0YXRpYyBjb25zdCB1OCBkaWZmc2VydjRfZGdzaWNbXSA9IHsKKwkwLCAxLCAwLCAwLCAyLCAw
LCAwLCAwLAorCTEsIDAsIDAsIDAsIDAsIDAsIDAsIDAsCisJMiwgMiwgMiwgMCwgMiwgMiwgMiwg
MCwKKwkyLCAyLCAyLCAwLCAyLCAyLCAyLCAwLAorCTMsIDIsIDIsIDAsIDIsIDIsIDIsIDAsCisJ
MywgMywgMywgMCwgMywgMywgMywgMCwKKwkzLCAwLCAwLCAwLCAwLCAwLCAwLCAwLAorCTMsIDAs
IDAsIDAsIDAsIDAsIDAsIDAsCit9OworCiBzdGF0aWMgY29uc3QgdTggZGlmZnNlcnYzW10gPSB7
CiAJMCwgMSwgMCwgMCwgMiwgMCwgMCwgMCwKIAkxLCAwLCAwLCAwLCAwLCAwLCAwLCAwLApAQCAt
MzQ0LDYgKzM2NiwxNyBAQCBzdGF0aWMgY29uc3QgdTggZGlmZnNlcnYzW10gPSB7CiAJMiwgMCwg
MCwgMCwgMCwgMCwgMCwgMCwKIH07CiAKK3N0YXRpYyBjb25zdCB1OCBkaWZmc2VydjNfZGdzaWNb
XSA9IHsKKwkwLCAxLCAwLCAwLCAyLCAwLCAwLCAwLAorCTEsIDAsIDAsIDAsIDAsIDAsIDAsIDAs
CisJMCwgMCwgMCwgMCwgMCwgMCwgMCwgMCwKKwkwLCAwLCAwLCAwLCAwLCAwLCAwLCAwLAorCTAs
IDAsIDAsIDAsIDAsIDAsIDAsIDAsCisJMCwgMiwgMiwgMCwgMiwgMiwgMiwgMCwKKwkyLCAwLCAw
LCAwLCAwLCAwLCAwLCAwLAorCTIsIDAsIDAsIDAsIDAsIDAsIDAsIDAsCit9OworCiBzdGF0aWMg
Y29uc3QgdTggYmVzdGVmZm9ydFtdID0gewogCTAsIDAsIDAsIDAsIDAsIDAsIDAsIDAsCiAJMCwg
MCwgMCwgMCwgMCwgMCwgMCwgMCwKQEAgLTI0MDksNyArMjQ0Miw4IEBAIHN0YXRpYyBpbnQgY2Fr
ZV9jb25maWdfZGlmZnNlcnY4KHN0cnVjdCBRZGlzYyAqc2NoKQogCXEtPnRpbl9jbnQgPSA4Owog
CiAJLyogY29kZXBvaW50IHRvIGNsYXNzIG1hcHBpbmcgKi8KLQlxLT50aW5faW5kZXggPSBkaWZm
c2Vydjg7CisJcS0+dGluX2luZGV4ID0gSVNfRU5BQkxFRChDT05GSUdfTkVUX1NDSF9DQUtFX0RH
U0lDKSA/IGRpZmZzZXJ2OF9kZ3NpYyA6CisJCQkJCQkJICAgICAgIGRpZmZzZXJ2ODsKIAlxLT50
aW5fb3JkZXIgPSBub3JtYWxfb3JkZXI7CiAKIAkvKiBjbGFzcyBjaGFyYWN0ZXJpc3RpY3MgKi8K
QEAgLTI0NTIsNyArMjQ4Niw4IEBAIHN0YXRpYyBpbnQgY2FrZV9jb25maWdfZGlmZnNlcnY0KHN0
cnVjdCBRZGlzYyAqc2NoKQogCXEtPnRpbl9jbnQgPSA0OwogCiAJLyogY29kZXBvaW50IHRvIGNs
YXNzIG1hcHBpbmcgKi8KLQlxLT50aW5faW5kZXggPSBkaWZmc2VydjQ7CisJcS0+dGluX2luZGV4
ID0gSVNfRU5BQkxFRChDT05GSUdfTkVUX1NDSF9DQUtFX0RHU0lDKSA/IGRpZmZzZXJ2NF9kZ3Np
YyA6CisJCQkJCQkJICAgICAgIGRpZmZzZXJ2NDsKIAlxLT50aW5fb3JkZXIgPSBidWxrX29yZGVy
OwogCiAJLyogY2xhc3MgY2hhcmFjdGVyaXN0aWNzICovCkBAIC0yNDg5LDcgKzI1MjQsOCBAQCBz
dGF0aWMgaW50IGNha2VfY29uZmlnX2RpZmZzZXJ2MyhzdHJ1Y3QgUWRpc2MgKnNjaCkKIAlxLT50
aW5fY250ID0gMzsKIAogCS8qIGNvZGVwb2ludCB0byBjbGFzcyBtYXBwaW5nICovCi0JcS0+dGlu
X2luZGV4ID0gZGlmZnNlcnYzOworCXEtPnRpbl9pbmRleCA9IElTX0VOQUJMRUQoQ09ORklHX05F
VF9TQ0hfQ0FLRV9ER1NJQykgPyBkaWZmc2VydjNfZGdzaWMgOgorCQkJCQkJCSAgICAgICBkaWZm
c2VydjM7CiAJcS0+dGluX29yZGVyID0gYnVsa19vcmRlcjsKIAogCS8qIGNsYXNzIGNoYXJhY3Rl
cmlzdGljcyAqLwotLSAKMi4zNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
