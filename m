Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C387C9E07
	for <lists+cake@lfdr.de>; Mon, 16 Oct 2023 05:52:12 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6E0393CB42;
	Sun, 15 Oct 2023 23:52:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1697428330;
	bh=n9+eXm3sY2jkIO5GB799ynxNrl5tXyryArALA/aN9Ag=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=bSHgG62YkxY4HDg40QYPb7b76QtABv/2rBpmniaIWnO78DiSXcjsenK7yefRtKgQW
	 clj0+yqIz5yKDCVmClUyvCtFlNXaNG6CeitJuO1u/p4Tai1Qs7KkmaZSTCl0WM7S4N
	 WAsgvuVMmHoBQEO29yQVyqvyh21qZZ7kvwqclD9ZIADYQJCX4zIbGVn4foCPoYNH6Z
	 gWBNg6VmmHQSKDCzw5Kq2oq5PE53OcsvpSm/VB0UcFHQVPXQJ90P5CqQzHcKAYwpSc
	 IsfHA8WtBf3PbgfgToj5+nKNDa+6/vi1osUi7WYMDdRk2iaPBMc/5yzDz9k6di0tiN
	 YeuB0XOaIfsaw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9E33E3CB39
 for <cake@lists.bufferbloat.net>; Sun, 15 Oct 2023 23:52:09 -0400 (EDT)
Received: by mail-lf1-x130.google.com with SMTP id
 2adb3069b0e04-50435ad51bbso5117967e87.2
 for <cake@lists.bufferbloat.net>; Sun, 15 Oct 2023 20:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697428326; x=1698033126; darn=lists.bufferbloat.net;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lsYl8VHFonU3U9UTGyorUEsNof8azVb7sIq64fT1RSw=;
 b=RUmoujyTDbxouQ5H1z/R9WH3/FGVJZ8dZTNcnr0pBOHb6wIjiH35gM47s+8eEqu2M5
 U3WD0v24fSNUceicFW9tba4SwLOuVqVH1mOJyaKy5QqDDPgTCb7RnjhASxPGEhTmwDTq
 39U/WwOcr6zaB/+GVJFJjEdDKiumoOOIG5S4pUTbS/oGVp63usCcaqCtBSqpCG9wMSx2
 6+2Ddd0xHvRI3RHi1PM5EagsjIt0/oz/7VRVyBOiuqaEh5kmgQd8X1vTQnCBhwYTTMHw
 FcA8Klj48/WJZBEqCQ576fxQnQrF1DgRZe9nBkh0g3Uu4d608SYzD+YIql3yNd15+Hun
 SWgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697428326; x=1698033126;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lsYl8VHFonU3U9UTGyorUEsNof8azVb7sIq64fT1RSw=;
 b=Cdeqvm/67Q5jOD0fLpvshtqxX7pYXZ7cZAS+Tng9W7DU8Ey4uAuwa3FrgAEuSnO6+X
 Hk0Fsyp9f1TkmwluV6lh3cmCWTOFK/ehIG/bPZFqRdCTPSpzmuBYirsnHcnC+MG6aBPU
 1WliogZ5Fgoew5oEdf6LiQdBxJobMt9NAGnpMDzph4kKyiCQ8hXhoMbn5riJpB/XmiUS
 pkFU0HVkdSFfaT9m4uA2pfe491XbfyJ6sTMuWbIGqkPVgkyh8tzEItIn7izuXSeBi3BI
 tWWZdfbE7PB39cvR0W8QxCtvHtbejVEc+rDYbV5VIRFQ1M03gLCdIpDHDv2+yZbXrc32
 bNsw==
X-Gm-Message-State: AOJu0Yxyizthk0A9Mh/4I3XFR6z0BWdOYhVCbVoAnb4FcB3cvbFnwEw/
 7SuluhJ+cecdZliau/W5L/0=
X-Google-Smtp-Source: AGHT+IFeaEvaRdAwi39cFkp0xLm3xX79csNAgL5iATkUb7y670HZxsu4y2Qhd0pqwJbaln1vxjeD9Q==
X-Received: by 2002:a05:6512:ba3:b0:503:264b:efc9 with SMTP id
 b35-20020a0565120ba300b00503264befc9mr31212348lfv.18.1697428325999; 
 Sun, 15 Oct 2023 20:52:05 -0700 (PDT)
Received: from smtpclient.apple (178-55-50-108.bb.dnainternet.fi.
 [178.55.50.108]) by smtp.gmail.com with ESMTPSA id
 k15-20020a0565123d8f00b00500b561285bsm4263853lfv.292.2023.10.15.20.52.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Oct 2023 20:52:05 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
X-Priority: 3 (Normal)
In-Reply-To: <1697401792.32573388@apps.rackspace.com>
Date: Mon, 16 Oct 2023 06:52:04 +0300
Message-Id: <444AAB44-8AE2-4812-BAE7-672A0B5489DC@gmail.com>
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
 <CANypexR5p7Lekzk7+ktfEWjFXJP2zRHC_BgGWRRzKc5QdaxubA@mail.gmail.com>
 <1695068690.78066946@apps.rackspace.com>
 <A1F18F7E-2A27-4F13-87B1-D55594FB69F7@gmail.com>
 <6D098714-69DC-41D9-A7DC-E94FD9C77625@gmail.com>
 <B892D72D-0198-454B-BC15-170B22829351@gmx.de>
 <79EC8CB2-0912-4D66-9FA3-990E9C38C281@gmail.com>
 <FFCCB1ED-3CB4-4F97-9B3B-ADF10F2FE730@gmx.de>
 <r9268rp5-8sr8-262s-7975-q68q6434sp6s@ynat.uz>
 <B1098CE9-AFEA-4B49-94AB-F423BBBC564A@gmx.de>
 <CANypexR9-Cpxup83w9tgcer7Dv48Hsun6+JR=qLPAdhhnRP58w@mail.gmail.com>
 <CANypexS=7eP0eU4xTO62swRp2o+fM0rg4rG0OSMqq6ybKx2omA@mail.gmail.com>
 <CANypexRZaxEDATZbK78NdzWrBSs6nnH_kyP_HA4HT2Ka7N8f5Q@mail.gmail.com>
 <EADF76C6-5C1A-47DB-BDD1-10BC0D7C4522@gmx.de>
 <CANypexT3z0=Avm1pb5wmajZ83HfCswappF2wvOjCiWiW00FJBQ@mail.gmail.com>
 <1697401792.32573388@apps.rackspace.com>
To: "David P. Reed" <dpreed@deepplum.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] some comprehensive arm64 w/cake results
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
From: Jonathan Morton via Cake <cake@lists.bufferbloat.net>
Reply-To: Jonathan Morton <chromatix99@gmail.com>
Cc: dave seddon via Cake <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxNSBPY3QsIDIwMjMsIGF0IDExOjI5IHBtLCBEYXZpZCBQLiBSZWVkIHZpYSBDYWtlIDxj
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cj4gCj4gT2YgY291cnNlLCBJbnRlcm5l
dCBjb25nZXN0aW9uIGNvbnRyb2wsIGluIGdlbmVyYWwsIGlzIHN0aWxsIHN0dWNrIGluIHRoZSBv
cmlnaW5hbCBWYW4gSmFjb2JzZW4gc2F3dG9vdGggZXJhLiBNeSBndWVzcyBpcyBpdCB3b24ndCBn
ZXQgZml4ZWQsIHRob3VnaCBJIGFwcGxhdWQgQ2FrZSwgYW5kIGRlc3BhaXIgdGhlIGhhcmR3YXJl
IGZvbGtzIHdobyBrZWVwIGFkZGluZyBidWZmZXJzLgoKSSBhbSBzdGlsbCB3b3JraW5nIGluIHRo
aXMgYXJlYSwgaW5jbHVkaW5nIG9uIGEgcmV2aXNlZCB2ZXJzaW9uIG9mIFNDRSB3aGljaCBtaWdo
dCByZWdhaW4gdHJhY3Rpb24gaW4gdGhlIElFVEYuCgpPbmUgb2YgdGhlIG1vcmUgaW1tZWRpYXRl
IHJlc3VsdHMgb2YgdGhpcyBpcyBhIG5ldyBBUU0gYWxnb3JpdGhtIHdoaWNoIGJ1aWxkcyBvbiB0
aGUgc3VjY2VzcyBvZiBDb2RlbCwgYW5kIGEgZmFtaWx5IG9mIHFkaXNjcyBJJ20gYnVpbGRpbmcg
YXJvdW5kIGl0LiAgVGhlc2UgcmFuZ2UgZnJvbSBhIHF1ZXVlbGVzcyB0cmFmZmljIHBvbGljZXIg
dG8gYSAiQ2FrZSB2ZXJzaW9uIDIiLCB3aXRoIGFuIGludGVyZXN0aW5nIGFwcHJveGltYXRlLWZh
aXJuZXNzIGFwcHJvYWNoIGZvciB0aGUgbWlkZGxlIGNoaWxkLiAgVGhlIEFRTSBpdHNlbGYgaXMg
YWxyZWFkeSB3b3JraW5nLCB0aG91Z2ggbm90IHlldCBkb2N1bWVudGVkIGluIGEgcHVibGljLWZh
Y2luZyBmb3JtLgoKSSdtIGFsc28gdGFraW5nIGEgbmV3IGFwcHJvYWNoIHRvIG92ZXJsYXlpbmcg
dGhlICJzbWFsbCIgY29uZ2VzdGlvbiByZXNwb25zZSBvZiBTQ0Ugb3ZlciB0aGUgImJpZyIgcmVz
cG9uc2Ugb2YgY29udmVudGlvbmFsIGNvbmdlc3Rpb24gY29udHJvbCwgd2hpY2ggSSB0aGluayBp
cyBjYXBhYmxlIG9mIHNvbHZpbmcgc2V2ZXJhbCBsb25nLXN0YW5kaW5nIHByb2JsZW1zIGluIG9u
ZSBnby4gIEknbGwgc2F5IG1vcmUgd2hlbiB3ZSBoYXZlIGEgd29ya2luZyBwcm90b3R5cGUgLSBi
dXQgdGhpbmsgaW4gdGVybXMgb2YgIm5vIHNhd3Rvb3RoIiBhbmQgIm5hdHVyYWxseSBtYXgtbWlu
IGZhaXIiLiAgVENQIFByYWd1ZSB3aWxsIGxvb2sgcG9zaXRpdmVseSBwcmltaXRpdmUgY29tcGFy
ZWQgdG8gdGhpcyAtIGlmIGl0IHdvcmtzIChhbmQgaXQgc2hvdWxkKS4KCiAtIEpvbmF0aGFuIE1v
cnRvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtl
IG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
