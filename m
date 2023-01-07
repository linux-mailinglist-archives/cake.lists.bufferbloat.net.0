Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 133AC660C2B
	for <lists+cake@lfdr.de>; Sat,  7 Jan 2023 04:31:24 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BF4483CB4B;
	Fri,  6 Jan 2023 22:31:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1673062281;
	bh=964yqTjq4Ep8zi2NyEot1d/9rWuucqodafhX9cpYwtY=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=fIWQvwn3+94GGtlRo9rJzskAt2sjLE7HESzQUOo+rYYNr8wMm7OL/iSjjSN6aq+R7
	 BLqp2dxnND+Hh0PG/VossdQMhUUCHHVhO15sDKM2J1VtMrUS+n91sUTQVWgJhAc03o
	 4bxI9l1ivcQBOCHtiTQEl7aeJbuaxr8lU3fYAWfgGFLbQU8Lsf9M7AHUmpge7hkjb7
	 GnL3g5vi43CRCeKqROKBgdi90mjXrkpWkWNPbYaztBFPtKVs7LKLX+E12EtYyNwcPx
	 7s+HsRch/FgDcxlRUeuPQVaTQYlf2fR1T4yBtHQ0hy0y9E8TLcaxax2BeDJgRLd7je
	 PqYeypIA+us5g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AB9E23B2A4
 for <cake@lists.bufferbloat.net>; Fri,  6 Jan 2023 22:31:19 -0500 (EST)
Received: by mail-wr1-x42f.google.com with SMTP id z5so1878461wrt.6
 for <cake@lists.bufferbloat.net>; Fri, 06 Jan 2023 19:31:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=6B8EFZzb6SE61k8ifjm8k3paPOu3rFE/1vWBeeiAeyc=;
 b=oAdqaCp8d+hq1gWXEuOawglqLHIrT4l/+WYhv3rS3Wx5IFM9EGDU+hoM0HO/FXc1M+
 Pubrc7f91JMPRE3xqBIywp+sVWIpE9RiQg2N5IJSJZPLPp8sN6Irz6lRi09qs7X7OFP4
 7QzL0MfHomOblnKqLREh18c4c1v5zsbAgOsUf+/VHbrUmp8WwWA+xyb7R1XA85GAG5X7
 fX6zu+vPYRQPLxF6fzLdo1lmMZq53V4SA5aDjIVAWKrNCdYgvKx60ekOFIqhNBfgnP71
 kynaFu4AdtX2Gr8fNVN5bX9ZP64j6UW9/SgkA4F5UdXK+YuDeVQUVa+vxidh0U7CNU8c
 LZ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6B8EFZzb6SE61k8ifjm8k3paPOu3rFE/1vWBeeiAeyc=;
 b=GBMy+hhiET/pFh5qfLjJeoIIvatcWoIK7gUCOl/L/x1x5RWCkM7gYMw+DMMBlEhhkJ
 1VYWKQxjZaxL0C8KpyHj8RoMiJ7Sx4eMbaG4xnebxTrpB1cXr9vc2uj4SRRLgUnG/H32
 B4dK/1eG7YAQccOPcsgfJB9Ul1KAAFs+yryZ2MGbswQFbmWmpKxyms8O3KLE5/BUBV1e
 Fq22U5A8bZ69QHi7/5mkA8UBTUoIc4kXg9OfIzmVuyb/TPDQkkPCxoFqkj5NxWFk8TIz
 Y4alYtfqHui6yTmMgoCA5KrlPJ6Bs8s1vWoBrxhEuQbhe4KQcamjq5k3pqC5HtAVN4ok
 PR9A==
X-Gm-Message-State: AFqh2kqg7Pg9Bno0dNP22BzzTMKJu1hqF69BdhPGtnqlf8tAv7kX1qkV
 yR4sbhyl5I4B9vS1KbRutThuaNqVzjUhl/7XrROYu2pjg8o=
X-Google-Smtp-Source: AMrXdXusbiOcTbJnoMY12+WKBE1DftSsZa6jz7mrOZhkVfy0Z0zeQHBmmHLjZ8BQceHR7fiP2tGdgoT1cQ8APnz61tM=
X-Received: by 2002:adf:f706:0:b0:274:bb42:e461 with SMTP id
 r6-20020adff706000000b00274bb42e461mr1082171wrp.430.1673062277590; Fri, 06
 Jan 2023 19:31:17 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 6 Jan 2023 19:31:05 -0800
Message-ID: <CAA93jw7CpLKXA+=G8tEu3LujGXGU0KUe61Q_1LZ_ZEnrcK85Fg@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] libreqos test of cake and ebpf pping in realtime
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

ZmlyZSBvZmYgYSBiYW5kd2lkdGggdGVzdCBvdmVyIGhlcmUgKHdlIGRvIDUgZGlmZmVyZW50IGZs
ZW50IHRlc3RzIGluIGEgcm93KQoKaHR0cHM6Ly9wYXluZS50YWh0Lm5ldC8KClRoZW4gcGljayBh
ICJwbGFuIiwgaGVyZSwgMjUvMy4uLiB0aGVuIHNob3cgdGlucy4uLgoKaHR0cHM6Ly9wYXluZS50
YWh0Lm5ldC9jaXJjdWl0X3F1ZXVlP2lkPTIKClNvIG5pY2UgdG8gc2VlIGRyb3BzIGFuZCBtYXJr
cyBpbiByZWFsIHRpbWUsIGFzIHdlbGwgYXMgc2xvdyBzdGFydC4uLgoKLS0gClRoaXMgc29uZyBn
b2VzIG91dCB0byBhbGwgdGhlIGZvbGsgdGhhdCB0aG91Z2h0IFN0YWRpYSB3b3VsZCB3b3JrOgpo
dHRwczovL3d3dy5saW5rZWRpbi5jb20vcG9zdHMvZHRhaHRfdGhlLW11c2hyb29tLXNvbmctYWN0
aXZpdHktNjk4MTM2NjY2NTYwNzM1MjMyMC1GWHR6CkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwg
TExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2Ug
bWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVm
ZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
