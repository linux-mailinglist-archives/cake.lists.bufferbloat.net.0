Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id AA10D96909
	for <lists+cake@lfdr.de>; Tue, 20 Aug 2019 21:07:58 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 926A83CB38;
	Tue, 20 Aug 2019 15:07:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566328077;
	bh=feQvq+27B2ACYkPU8xd0kXzzcaWQUaABitCWAUbzZns=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mOuEQktar3QEo3CfxGq0h9s3u9N8bsGvoKW7g1twqn57vmAsk+NFkUzju3yseY5RF
	 XZaOLeOLh8ncpQ2gOAMG1WFgr/LE1BO6yifYWDxiBJWcL/gJTuC+7TDkgMjR8x8lGz
	 igwqP/cpms3ITiUIttSbsyeL3EDCs/k7eZc/rWJ4sCc5zc+A188PZcDVFUJVeNOJ8j
	 8ByWnkIzOn0PCH+vbhR7MmQwMh+3Bl7EVM7p5CHpb3r2EO1LkTpzcZdkZJEBT4zDK1
	 DxZZuzeWA9RJ/JD+CQAW3m6x3QctdWeXR1H+N5HA6EQUZF5UigbbeM/7ocw7vjSLcG
	 CBCaSKXoSP9xg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B7B303B2A4
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 15:07:56 -0400 (EDT)
Received: by mail-lf1-x133.google.com with SMTP id a30so4951830lfk.12
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 12:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=BCKutBkUNH+9aAEPOtDStgJoYqP+CsH1Q6IrzTkdfnw=;
 b=ZRX2z/gncT9mdcj5iBKEAZ3/jhtp1AgAPFYjHMa+914Z/7tec6BFIWXsFYcSiyslFL
 Z1RbMPfE+q7Gf3r0G4Oq+xgD29mRmJf+es07rQ9kla/Lq5G55lf0aoNGdvXOMQm2jBMN
 LTX6foGVCTLuabqT/DzKsjLELiRIaVSXb5tdXz873KXSJvW1x2oQlmVcogEzeE0HLIXB
 dI23y5rZcjsFi4L2RKvNe0B9GPDfXU/vO3oFnl0bmHBUd8Pp0kl7EdxJ43Vs5ASDrUw1
 H9rPGILmDL3NxtkFzJIF6krQ3SOQ+KYXV/ICzz0UcJs6fzFzcknKskntOAcwfPm1Spk/
 Dr9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=BCKutBkUNH+9aAEPOtDStgJoYqP+CsH1Q6IrzTkdfnw=;
 b=DF6OmgnyBosBE42FbV/6iN5pAnrLAADubbMaZpP6lJFvg3EDJD5Q40voIdGD5AjttG
 bFCPYTTSXo6+fBmmew5LMZaMxXttubDoSej7fkge9t2Om0GfFNiskQkXltZm5rG2GTYB
 f4CGW1DiU4HuQeI91C2tb5nyfuqbnBJA0Sx0bdjlUr4oRsH/BWgjZo9yqfRkWI6oTEnI
 /T5Kv7/xKvKHZ5b19lita9rKTroK8xzvC+2SHQeIeJXwidNjTEdjzcGRyb3aSNLcXmFy
 +1ensJmtOcBj/x2kmyXskIZVSpJBdB5g8KuioFmtIb4br3RzSAxoiYqHzRzNfwVqhz4H
 QrjQ==
X-Gm-Message-State: APjAAAXmXM3PeRE9d3lxPinQXwS2MhtvVsxdGfUubauIqBGDLmFt056g
 049ZePqX1zhdvuWzQIKoQ/g=
X-Google-Smtp-Source: APXvYqylp3ZOEUcknUU2cbz9Ar/doBQlI3aiLn8bKRmYhrlaoTNYx4a/L2HqYs9KcjGaaReQBwiz5A==
X-Received: by 2002:a19:ac41:: with SMTP id r1mr11340469lfc.100.1566328075667; 
 Tue, 20 Aug 2019 12:07:55 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-237-193-nat-p.elisa-mobile.fi.
 [83.245.237.193])
 by smtp.gmail.com with ESMTPSA id r21sm2993624lfi.32.2019.08.20.12.07.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 12:07:54 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
Date: Tue, 20 Aug 2019 22:07:53 +0300
Message-Id: <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
 <87tvabsp99.fsf@toke.dk>
 <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
 <87r25fsn70.fsf@toke.dk>
 <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] cake in dd-wrt
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
Cc: "cake@lists.bufferbloat.net >> Cake List" <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAyMCBBdWcsIDIwMTksIGF0IDk6MzkgcG0sIFNlYmFzdGlhbiBHb3R0c2NoYWxsIDxzLmdv
dHRzY2hhbGxAbmV3bWVkaWEtbmV0LmRlPiB3cm90ZToKPiAKPiDigKZhIGhlYXZ5IGJpdHRvcnJl
bnQgZG93bmxvYWRlciB3aWxsIHN0aWxsIHN0ZWFsIHRoZSBiYW5kd2lkdGggb2YgbXkgc2NwIHNl
c3Npb24uCgpJZiB5b3UgY2FuIGlkZW50aWZ5IHRoZSBCaXR0b3JyZW50IHBhY2tldHMsIHlvdSBj
YW4gbWFyayB0aGVtIENTMSwgYW5kIHN3aXRjaCBvbiBDYWtlJ3MgImRpZmZzZXJ2MyIgbW9kZSAo
YXMgaXQgaXMgYnkgZGVmYXVsdCkuICBUaGVuIHRoZSBCaXR0b3JyZW50IHBhY2tldHMgd2lsbCBz
dGlsbCBiZSBhYmxlIHRvIHVzZSBmdWxsIGJhbmR3aWR0aCBpZiBpdCdzIGF2YWlsYWJsZSwgYnV0
IHdpbGwgYmUgbGltaXRlZCB0byAxLzE2dGggb2YgdGhlIHRvdGFsIGlmIHRoZXJlIGlzIGNvbnRl
bnRpb24uCgogLSBKb25hdGhhbiBNb3J0b24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
