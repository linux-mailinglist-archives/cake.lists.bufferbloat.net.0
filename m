Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A7EC95437
	for <lists+cake@lfdr.de>; Sun, 30 Nov 2025 20:49:47 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 4DF709E88B1;
	Sun, 30 Nov 2025 20:49:46 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=kcB6HfIm
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764532186;
 b=j04evPkj2+0+vHTsgC/8jm9l57VPB7YzBCzaaUL6SjfmDYvRX6Vo44CuavZe+kiit+PvH
 WfercAog34pFA7dsepgbqqvGySEYq6YUE75mF6dZItBRg2GP5/VXdmBBVKA58tpH4Z7N+Cg
 103MrdNSe5ayHQHjYWymMhsCE9kou3c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764532186; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=pEAtm3J9mlp/iPAFc2LDL4d72WJ7LxCdpnowLSGdCWQ=;
 b=h9XJ5RCtGPJkzjI4NSPvb7+9UIh+PCW/adFprTAR5taAzroFwZf3IGMBkBGATZPTCDDcn
 Augl+hiTQ/eJahJR2NdAWflXHqei/RLldBZ/rTl6tPyBsax2rOQkU7DE7FcOhch6acIA9JC
 cv1xyYxiCsdUaWjEAyDgbIPWQA+wiVI=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com
 [IPv6:2607:f8b0:4864:20::112d])
	by mail.toke.dk (Postfix) with ESMTPS id 9DEDB9E798E
	for <cake@lists.bufferbloat.net>; Sun, 30 Nov 2025 17:58:08 +0100 (CET)
Received: by mail-yw1-x112d.google.com with SMTP id
 00721157ae682-78a712cfbc0so33443047b3.1
        for <cake@lists.bufferbloat.net>;
 Sun, 30 Nov 2025 08:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764521886; x=1765126686;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U0pM2tOIKARyUScLUv8P7Syt5GLsdtd8jm51t8qeyVE=;
        b=kcB6HfImbXN86KBNKM533jlulXn+1DyiPXJwBGilv81nuICRCdA7frZKaDLRUyajn+
         IECMQjwYiiFZpg18mnRk4blVbIYyounNxjwXSnOs5CyGOCGRQgb3EX6+pTN+cjL82ZpX
         KTfM4a7QR7oNHhHP9FS+qXInd77IJMJEB1JRtu/rossN+MoJV2jHGDyLzbw7GIDxkfpG
         0L3Yrpwhmsva1HGEL/qXJvpCw9R6cHKsv4gzMSEz6gKs0KREPOUozKLg7rLN/VQKgVsA
         YSW9Lq+0tdSPmzuF+pqyIQ0zrGTlYBhHB0fI8hvqJxgaaQyCskwVkiDwVb6c6RqCGzeM
         KDrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764521886; x=1765126686;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U0pM2tOIKARyUScLUv8P7Syt5GLsdtd8jm51t8qeyVE=;
        b=nIZ9rSclnauTy+9H8W6VlAzxUvTIlYYPzLWHkIi1MwEVOx9x5++sbDphyV9K50BCRV
         cJWeEmRJ2q/s50RtaUFTGt2wtyukplLbMdSSQkEnb7OOogiPtYOANpbSjRnVevc+w0Av
         7B0XTgoX0z0dT54jidRaRi/F7svIrqMPDAS/j6kkyUOAzXCJUmwBNz5eKA52z/7w4rJh
         mDw98opjP/VWq4IiFvkcGFgT4tURrldXOsAQavPWDuHmfymZtlolF6Q85pbwEgX4U1An
         Eopn7Vd75w+YkFD3pyafBmYu0GNfPr1P7JrJ3UMisC9ycT7Nzr8Z4/ycO3Ig//49ePXT
         Nv8g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVhyAE7s7PehvajPGTpJQ4OzOnr9aarmCLU0D8f6qsRAj7IcHePSvfSlqDhnRtaDtg6mxiM@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yzmce+Q8An2FTrNyqNU2PmHHKcKLHSYZgHvE3bqZC2azThHBT00
	jvv9iLaMQuaRA+6VVe4nvjDz8Hc+UCurqEnRuE5T7QQZGP9CkIu813yJ
X-Gm-Gg: ASbGncvEOYll9bnzAltucfi7H4okNH5r0EhBFmXvbhGfzXNV3PbeaYWSmQtqYgDyJIH
	7Z+eNEn9Ovj7zIB5iPktlh/i3wJZ8yGbPorcbW34kMlquveDslk1sIDaxcqAjyZZxrt1b3v9rqW
	3tUGosc5pXUbeqsgFTOjjyTYRLOZiHfuUDt7F9MKdKYT+yP+NrEaYRmm4DcYiT2nwXIhnH9J1W5
	HgV3jL5Wfxm8ZG0QCj0m5r6O37ogipe3qNgDbJY6yeqxuKRaZrNneCiFnpQmWWBFLYxKIZVrzY6
	osbp6ivxRDzwirTiYaRHpPSjHYWagX05j/w9GtA71iWVtOTuxCVcYH2fezIadxNOmz2g+6JJTvd
	i/iFHZ8fbxjCKATSxOpUy0tx3LxLwX+RbEgXMpUQjCajoEhWpcOUQwQv8tAfUDvghHjgxjTxWHV
	ffxZvy6U7up4Ww8/9LYx2ZRw93XdcAcunVhl4xdASEyLgUo6OszFLPJBmopRuvwgU+l/U=
X-Google-Smtp-Source: 
 AGHT+IF3rgBa1ZcQ/kU4IUpA3oBhV19YeCk8Jh6DRPERGlRUlXwMw433U6ZZLF9efabXoGwSWtpkKw==
X-Received: by 2002:a05:690c:3510:b0:781:4b2d:7261 with SMTP id
 00721157ae682-78a8b52932cmr257020527b3.41.1764521886147;
        Sun, 30 Nov 2025 08:58:06 -0800 (PST)
Received: from gmail.com (116.235.236.35.bc.googleusercontent.com.
 [35.236.235.116])
        by smtp.gmail.com with UTF8SMTPSA id
 00721157ae682-78ad0d3f5bbsm38926397b3.7.2025.11.30.08.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Nov 2025 08:58:05 -0800 (PST)
Date: Sun, 30 Nov 2025 11:58:05 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>,
 Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: =?UTF-8?B?Sm9uYXMgS8O2cHBlbGVy?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
Message-ID: <willemdebruijn.kernel.69fe80979368@gmail.com>
In-Reply-To: <87tsyba3wx.fsf@toke.dk>
References: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
 <20251127-mq-cake-sub-qdisc-v2-2-24d9ead047b9@redhat.com>
 <willemdebruijn.kernel.2e44851dd8b26@gmail.com>
 <87a505b3dt.fsf@toke.dk>
 <willemdebruijn.kernel.352b3243bf88@gmail.com>
 <87zf84ab2d.fsf@toke.dk>
 <willemdebruijn.kernel.12cce168f29d0@gmail.com>
 <87tsyba3wx.fsf@toke.dk>
Mime-Version: 1.0
X-MailFrom: willemdebruijn.kernel@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: VMRWKKJV2QDAVFVZU6M4TGPIAB5A57LN
X-Message-ID-Hash: VMRWKKJV2QDAVFVZU6M4TGPIAB5A57LN
X-Mailman-Approved-At: Sun, 30 Nov 2025 20:49:44 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v2 2/4] net/sched: sch_cake: Add cake_mq qdisc for
 using cake on mq devices
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/willemdebruijn.kernel.69fe80979368@gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOg0KPiBXaWxsZW0gZGUgQnJ1aWpuIDx3aWxs
ZW1kZWJydWlqbi5rZXJuZWxAZ21haWwuY29tPiB3cml0ZXM6DQo+IA0KPiA+IFRva2UgSMO4aWxh
bmQtSsO4cmdlbnNlbiB3cm90ZToNCj4gPj4gV2lsbGVtIGRlIEJydWlqbiA8d2lsbGVtZGVicnVp
am4ua2VybmVsQGdtYWlsLmNvbT4gd3JpdGVzOg0KPiA+PiANCj4gPj4gPiBUb2tlIEjDuGlsYW5k
LUrDuHJnZW5zZW4gd3JvdGU6DQo+ID4+ID4+IFdpbGxlbSBkZSBCcnVpam4gPHdpbGxlbWRlYnJ1
aWpuLmtlcm5lbEBnbWFpbC5jb20+IHdyaXRlczoNCj4gPj4gPj4gDQo+ID4+ID4+ID4gVG9rZSBI
w7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOg0KPiA+PiA+PiA+PiBBZGQgYSBjYWtlX21xIHFkaXNj
IHdoaWNoIGluc3RhbGxzIGNha2UgaW5zdGFuY2VzIG9uIGVhY2ggaGFyZHdhcmUNCj4gPj4gPj4g
Pj4gcXVldWUgb24gYSBtdWx0aS1xdWV1ZSBkZXZpY2UuDQo+ID4+ID4+ID4+IA0KPiA+PiA+PiA+
PiBUaGlzIGlzIGp1c3QgYSBjb3B5IG9mIHNjaF9tcSB0aGF0IGluc3RhbGxzIGNha2UgaW5zdGVh
ZCBvZiB0aGUgZGVmYXVsdA0KPiA+PiA+PiA+PiBxZGlzYyBvbiBlYWNoIHF1ZXVlLiBTdWJzZXF1
ZW50IGNvbW1pdHMgd2lsbCBhZGQgc2hhcmluZyBvZiB0aGUgY29uZmlnDQo+ID4+ID4+ID4+IGJl
dHdlZW4gY2FrZSBpbnN0YW5jZXMsIGFzIHdlbGwgYXMgYSBtdWx0aS1xdWV1ZSBhd2FyZSBzaGFw
ZXIgYWxnb3JpdGhtLg0KPiA+PiA+PiA+PiANCj4gPj4gPj4gPj4gUmV2aWV3ZWQtYnk6IEphbWFs
IEhhZGkgU2FsaW0gPGpoc0Btb2phdGF0dS5jb20+DQo+ID4+ID4+ID4+IFNpZ25lZC1vZmYtYnk6
IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPg0KPiA+PiA+PiA+PiAt
LS0NCj4gPj4gPj4gPj4gIG5ldC9zY2hlZC9zY2hfY2FrZS5jIHwgMjE0ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQ0KPiA+PiA+PiA+PiAgMSBmaWxl
IGNoYW5nZWQsIDIxMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4+ID4+ID4NCj4g
Pj4gPj4gPiBJcyB0aGlzIGNvZGUgZHVwbGljYXRpb24gdW5hdm9pZGFibGU/DQo+ID4+ID4+ID4N
Cj4gPj4gPj4gPiBDb3VsZCB0aGUgc2FtZSBiZSBhY2hpZXZlZCBieSBlaXRoZXINCj4gPj4gPj4g
Pg0KPiA+PiA+PiA+IGV4dGVuZGluZyB0aGUgb3JpZ2luYWwgc2NoX21xIHRvIGhhdmUgYSB2YXJp
YW50IHRoYXQgY2FsbHMgdGhlDQo+ID4+ID4+ID4gY3VzdG9tIGNha2VfbXFfY2hhbmdlLg0KPiA+
PiA+PiA+DQo+ID4+ID4+ID4gT3IgYXZvaWQgaGFuZ2luZyB0aGUgc2hhcmVkIHN0YXRlIG9mZiBv
ZiBwYXJlbnQgbXEgZW50aXJlbHkuIEhhdmUgdGhlDQo+ID4+ID4+ID4gY2FrZSBpbnN0YW5jZXMg
c2hhcmUgaXQgZGlyZWN0bHkuIEUuZy4sIHdoZXJlIGFsbCBidXQgdGhlIGluc3RhbmNlIG9uDQo+
ID4+ID4+ID4gbmV0ZGV2X2dldF90eF9xdWV1ZShkZXYsIDApIGFyZSBvcGVuZWQgaW4gYSBzcGVj
aWFsICJzaGFyZWQiIG1vZGUgKGENCj4gPj4gPj4gPiBiaXQgbGlrZSBTT19SRVVTRVBPUlQgc29j
a2V0cykgYW5kIGxvb2t1cCB0aGUgc3RhdGUgZnJvbSB0aGF0DQo+ID4+ID4+ID4gaW5zdGFuY2Uu
DQo+ID4+ID4+IA0KPiA+PiA+PiBXZSBhY3R1YWxseSBzdGFydGVkIG91dCB3aXRoIHNvbWV0aGlu
ZyBsaWtlIHRoYXQsIGJ1dCBlbmRlZCB1cCB3aXRoIHRoZQ0KPiA+PiA+PiBjdXJyZW50IHZhcmlh
bnQgZm9yIHByaW1hcmlseSBVQVBJIHJlYXNvbnM6IEhhdmluZyB0aGUgbXEgdmFyaWFudCBiZSBh
DQo+ID4+ID4+IHNlcGFyYXRlIG5hbWVkIHFkaXNjIGlzIHNpbXBsZSBhbmQgZWFzeSB0byB1bmRl
cnN0YW5kICgnY2FrZScgZ2V0cyB5b3UNCj4gPj4gPj4gc2luZ2xlLXF1ZXVlLCAnY2FrZV9tcScg
Z2V0cyB5b3UgbXVsdGktcXVldWUpLg0KPiA+PiA+PiANCj4gPj4gPj4gSSB0aGluayBoYXZpbmcg
dGhhdCB2YXJpYW50IGxpdmUgd2l0aCB0aGUgY2FrZSBjb2RlIG1ha2VzIHNlbnNlLiBJDQo+ID4+
ID4+IHN1cHBvc2Ugd2UgY291bGQgcmV1c2UgYSBjb3VwbGUgb2YgdGhlIG1xIGNhbGxiYWNrcyBi
eSBleHBvcnRpbmcgdGhlbQ0KPiA+PiA+PiBhbmQgY2FsbGluZyB0aGVtIGZyb20gdGhlIGNha2Ug
Y29kZSBhbmQgYXZvaWQgc29tZSBkdXBsaWNhdGlvbiB0aGF0IHdheS4NCj4gPj4gPj4gSSBjYW4g
Zm9sbG93IHVwIHdpdGggYSBwYXRjaCB0byBjb25zb2xpZGF0ZSB0aG9zZSBpZiB5b3UgdGhpbmsg
aXQgaXMNCj4gPj4gPj4gd29ydGggaXQgdG8gZG8gc28/DQo+ID4+ID4NCj4gPj4gPiBTaW5jZSBt
b3N0IGZ1bmN0aW9ucyBhcmUgaWRlbnRpY2FsLCBJIGRvIHRoaW5rIHJldXNpbmcgdGhlbSBpcw0K
PiA+PiA+IHByZWZlcmFibGUgb3ZlciBkdXBsaWNhdGluZyB0aGVtLg0KPiA+PiANCj4gPj4gU3Vy
ZSwgdGhhdCdzIGZhaXIuIFNlZW1zIHJlbGF0aXZlbHkgc3RyYWlnaHQgZm9yd2FyZCB0b286DQo+
ID4+IA0KPiA+PiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dp
dC90b2tlL2xpbnV4LmdpdC9jb21taXQvP2g9bXEtY2FrZS1zdWItcWRpc2MmaWQ9ZmRiNjg5MWNj
NTg0YTIyZDQ4MjNkNzcxYTYwMmY5ZjFlZTU2ZWVhZQ0KPiA+DQo+ID4gR3JlYXQuIFRoYXQncyBn
b29kIGVub3VnaCBmb3IgbWUuDQo+IA0KPiBDb29sLiBJIGZvbGRlZCBpdCBpbnRvIHRoZSBzZXJp
ZXMsIGFuZCBpdCBkb2VzIG1ha2UgdGhlIHBhdGNoIGEgbG90DQo+IHNpbXBsZXIsIHNvIHRoYW5r
IHlvdSBmb3IgdGhlIHN1Z2dlc3Rpb24hDQo+IA0KPiA+PiA+IEknbSBub3QgZnVsbHkgY29udmlu
Y2VkIHRoYXQgbXFfY2FrZSArIGNha2UgaXMgcHJlZmVyYWJsZSBvdmVyDQo+ID4+ID4gbXEgKyBj
YWtlIChteSBzZWNvbmQgc3VnZ2VzdGlvbikuIFdlIGFsc28gZG8gbm90IGhhdmUgYSBzZXBhcmF0
ZQ0KPiA+PiA+IG1xX2ZxLCBzYXkuIEJ1dCBtaW5lIGlzIGp1c3Qgb25lIG9waW5pb24gZnJvbSB0
aGUgcGVhbnV0IGdhbGxlcnkuDQo+ID4+IA0KPiA+PiBSaWdodCwgSSBkbyBzZWUgd2hhdCB5b3Ug
bWVhbjsgYXMgSSBzYWlkIHdlIGRpZCBjb25zaWRlciB0aGlzIGluaXRpYWxseSwNCj4gPj4gYnV0
IHdlbnQgd2l0aCB0aGlzIGltcGxlbWVudGF0aW9uIGZyb20gYSBjb25maWd1cmF0aW9uIHNpbXBs
aWNpdHkNCj4gPj4gY29uc2lkZXJhdGlvbi4gDQo+ID4NCj4gPiBUaGVuIGFkbWlucyBoYXZlIG9u
bHkgdG8gaW5zdGFsbCBvbmUgcWRpc2MsIHJhdGhlciB0aGFuIHdoYXQgd2UgZG8gZm9yDQo+ID4g
RlEgdG9kYXkgd2hpY2ggaXMgb25lIE1RICsgYSBsb29wIG92ZXIgdGhlIEZRcy4NCj4gPg0KPiA+
IEkgZG9uJ3Qga25vdyBpZiB3ZSBoYXZlIHRvIGNvZGRsZSBhZG1pbnMgbGlrZSB0aGF0Lg0KPiAN
Cj4gSSBkb24ndCByZWFsbHkgdmlldyBpdCBhcyBjb2RkbGluZywgYnV0IGFzIG1ha2luZyBpdCBh
cyBlYXN5IGFzIHBvc3NpYmxlDQo+IHRvIHRha2UgYWR2YW50YWdlIG9mIHRoZSBtcSB2YXJpYW50
IGluIHRoZSBtb3N0IGNvbW1vbiBjb25maWd1cmF0aW9uLg0KPiBUaGUgcHJpbWFyeSB1c2UgY2Fz
ZSBmb3IgY2FrZSBpcyBzaGFwaW5nIG9uIHRoZSB3aG9sZSBsaW5rIChvbiBob21lDQo+IHJvdXRl
cnMsIGluIHBhcnRpY3VsYXIpLCBhbmQgdGhlIG1xIGV4dGVuc2lvbiBjYW1lIGFib3V0IHRvIGFk
ZHJlc3MgdGhlDQo+IGNvbW1vbiBib3R0bGVuZWNrIGhlcmUgd2hlcmUgdGhlIGNha2Ugc2hhcGVy
IGNhbid0IGtlZXAgdXAgd2l0aCBsaW5rDQo+IHNwZWVkcyBvbiBhIHNpbmdsZSBDUFUuIFNvIEkg
dGhpbmsgaXQncyB3b3J0aHdoaWxlIHRvIG1ha2UgaXQgYXMgZWFzeSBhcw0KPiBwb3NzaWJsZSB0
byBjb25zdW1lIHRoYXQgc2VlbXMgd29ydGh3aGlsZSwgaW4gYSB3YXkgdGhhdCByZXRhaW5zDQo+
IGNvbXBhdGliaWxpdHkgd2l0aCB0aGUgZXhpc3RpbmcgdG9vbHMgdGhhdCB3b3JrIG9uIHRvcCBv
ZiBjYWtlLCBzdWNoIGFzDQo+IHRoZSBhdXRvcmF0ZSBzY3JpcHRzOg0KPiANCj4gaHR0cHM6Ly9n
aXRodWIuY29tL3NxbS1hdXRvcmF0ZS9zcW0tYXV0b3JhdGUNCj4gDQo+ID4+IElmIHdlIHdlcmUg
dG8gaW1wbGVtZW50IHRoaXMgYXMgYW4gb3B0aW9uIHdoZW4gcnVubmluZw0KPiA+PiB1bmRlciB0
aGUgZXhpc3RpbmcgbXEsIHdlJ2QgaGF2ZSB0byBhZGQgYW4gb3B0aW9uIHRvIGNha2UgaXRzZWxm
IHRvIG9wdA0KPiA+PiBpbiB0byB0aGlzIGJlaGF2aW91ciwgYW5kIHRoZW4gZGVhbCB3aXRoIHRo
ZSB2YXJpb3VzIGNvbWJpbmF0aW9ucyBvZg0KPiA+PiBzdWItcWRpc2NzIGJlaW5nIGFkZGVkIGFu
ZCByZW1vdmVkIChpbmNsdWRpbmcgbWl4aW5nIGNha2UgYW5kIG5vbi1jYWtlDQo+ID4+IHN1Yi1x
ZGlzY3Mgb2YgdGhlIHNhbWUgbXEpLiBBbmQgdXNlcnNwYWNlIHdvdWxkIGhhdmUgdG8gc2V0dXAg
dGhlIG1xLA0KPiA+PiB0aGVuIG1hbnVhbGx5IGFkZCB0aGUgY2FrZSBpbnN0YW5jZXMgd2l0aCB0
aGUgc2hhcmVkIGZsYWcgdW5kZXJuZWF0aCBpdC4NCj4gPg0KPiA+IE9uZSBxdWVzdGlvbiBpcyB3
aGV0aGVyIHRoZSBrZXJuZWwgbmVlZHMgdG8gcHJvdGVjdCBhZG1pbnMgZnJvbSBkb2luZw0KPiA+
IHRoZSB1bmV4cGVjdGVkIHRoaW5nLCB3aGljaCB3b3VsZCBiZSBtaXhpbmcgbXEgY2hpbGRyZW4g
b2YgZGlmZmVyZW50DQo+ID4gdHlwZSB3aGVuIHVzaW5nIHNoYXJlZCBjYWtlIHN0YXRlIGJldHdl
ZW4gY2hpbGRyZW4uDQo+ID4NCj4gPiBIb25lc3RseSwgSSBkb24ndCB0aGluayBzby4gQnV0IGl0
IGNvdWxkIGJlIGRvbmUuIEZvciBpbnN0YW5jZSBieQ0KPiA+IGFkZGluZyBhbiBtcSBvcHRpb24g
dGhhdCByZXF1aXJlcyBhbGwgY2hpbGRyZW4gdG8gYmUgb2YgdGhlIHNhbWUga2luZCwNCj4gPiBv
ciBldmVuIGJ5IHNpbGVudGx5IHNldHRpbmcgdGhpcyBpZiB0aGUgZmlyc3QgY2hpbGQgYWRkZWQg
aXMgYSBjYWtlDQo+ID4gaW5zdGFuY2Ugd2l0aCBzaGFyZWQgb3B0aW9uIHNldC4NCj4gPg0KPiA+
IEFzIGZvciBzaGFyZWQgc3RhdGUsIGluIGNha2VfaW5pdCB0aGUgcWRpc2MgY291bGQgY2hlY2sg
dGhhdCB0aGUgZGV2DQo+ID4gcm9vdCBpcyBtcSBhbmQgaXQgaXMgYSBkaXJlY3QgY2hpbGQgb2Yg
dGhpcyBxZGlzYywgYW5kIHRoZW4gc2NhbiB0aGUNCj4gPiBtcSBjaGlsZHJlbiBmb3IgdGhlIGV4
aXN0ZW5jZSBvZiBhIGNha2UgY2hpbGQuIElmIG9uZSBleGlzdHMsIHRha2UgYQ0KPiA+IHJlZiBv
biBhIHNoYXJlZCBzdGF0ZSBzdHJ1Y3QuIElmIG5vdCwgY3JlYXRlIHRoZSBzdHJ1Y3QuIEFnYWlu
LCBsaWtlDQo+ID4gU09fUkVVU0VQT1JULg0KPiA+DQo+ID4gQWxsIGVhc2llciBzYWlkIHRoYW4g
aW1wbGVtZW50ZWQsIG9mIGNvdXJzZSwgYnV0IHNlZW1zIGRvYWJsZT8NCj4gDQo+IFllYWgsIEkg
ZG8gdGhpbmsgaXQncyBkb2FibGU7IGp1c3QgbmVlZHMgYSBiaXQgb2YgdGhvdWdodCBhcm91bmQg
dGhlDQo+IGxpZmV0aW1lIG1hbmFnZW1lbnQgb2YgdGhlIHNoYXJlZCBjb25maWcgc3RydWN0IGFz
IHN1Yi1xZGlzY3MgY29tZSBhbmQNCj4gZ28uDQo+IA0KPiBJIGFtIG5vdCBuZWNlc3NhcmlseSBv
cHBvc2VkIHRvIHN1cHBvcnRpbmcgdGhpcyBtb2RlLCBpbmNsdWRpbmcgdGhlIGNhc2UNCj4gd2hl
cmUgdGhlcmUncyBhIG1peCBvZiBxZGlzY3Mgb24gZGlmZmVyZW50IEhXIHF1ZXVlcy4gSG93ZXZl
ciwgSSB2aWV3IGl0DQo+IGFzIGFuIGV4dGVuc2lvbiBvZiB0aGUgYmFzZSB1c2UgY2FzZSwgYXMg
ZGVzY3JpYmVkIGFib3ZlLiBOb3cgdGhhdCB3ZSdyZQ0KPiByZXVzaW5nIHRoZSBtcSBjb2RlLCBj
YWtlX21xIGJlY29tZXMgcXVpdGUgYSBsaWdodHdlaWdodCBhZGRpdGlvbiwgc28gd2UNCj4gY291
bGQgcG90ZW50aWFsbHkgc3VwcG9ydCBib3RoPyBJLmUuLCB0aGUgY2FrZV9tcSBxZGlzYyB3b3Vs
ZCBiZSB0aGUNCj4gc3RyYWlnaHQtZm9yd2FyZCB3YXkgdG8gbG9hZCBjYWtlIGFjcm9zcyBhIGRl
dmljZSwgYnV0IHdlIGNvdWxkIGFkZA0KPiBzdXBwb3J0IGZvciBzaGFyaW5nIGNha2Ugc3RhdGUg
YWNyb3NzIChhIHN1YnNldCBvZikgcmVndWxhciBtcSBhcyB3ZWxsPw0KPiBXRFlUPw0KDQpJJ2Qg
b25seSBwbGFuIHRvIGRvIGl0IG9uY2UsIGRvIGl0IHJpZ2h0Lg0KDQptcV9jYWtlIGhhcyB0aGUg
YWR2YW50YWdlIG9mIGJlaW5nIHNpbXBsZXIgdG8gY29uZmlndXJlLg0KDQpUaGUgYWx0ZXJuYXRp
dmUgdGhhdCBpdCBhbGxvd3MgbW9yZSBjb25maWd1cmF0aW9ucy4gQnV0IHdlIGRvbid0DQppbW1l
ZGlhdGVseSBzZWUgcmVhbCB1c2UgY2FzZXMgZm9yIHRob3NlLg0KDQpZb3VyIGNhbGwsIGFzc3Vt
aW5nIG5vIG9uZSBlbHNlIGNoaW1lcyBpbi4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVy
YmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQK
