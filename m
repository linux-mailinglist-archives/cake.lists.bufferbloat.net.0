Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D260628B77
	for <lists+cake@lfdr.de>; Mon, 14 Nov 2022 22:42:54 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9B5903CB41;
	Mon, 14 Nov 2022 16:42:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1668462172;
	bh=eXH4v4YqMOGXwPBdKdwO/NfttNw/erojwnAMIDxD5es=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=jzlLzSKmN7RywcEmPMqeDlBYw3eH90MuF7EFrcOPompjWnBe4x0BJ6LHlS7jUG/MD
	 c4+3WzHV8dkX5DJPr7tvNaT/zzC1Z9opRVs2IRxl+jpYhWg9hfAMLxwL/WAz82ln3U
	 vXRNHgwFsxHWlO/33KVyE+Q/hzvbg2h2A2ATJH8tnF5q+4pScEt6iT6yW6KaZKc4pp
	 TuuAganagR1+iLwlIaeeZhSBiWscztjOABOuMOrJ3Q022xG2mkaDcu6wj08IZhuAm/
	 66ktcu0CUg1LmKqItoW+YJRd72knJt4Wgv6pte3qg2LEHx80QSussA6GWQxroJ8Ke4
	 k6Ri06PNsheoQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 40B7C3B29D
 for <cake@lists.bufferbloat.net>; Mon, 14 Nov 2022 16:42:51 -0500 (EST)
Received: by mail-wr1-x434.google.com with SMTP id cl5so20814553wrb.9
 for <cake@lists.bufferbloat.net>; Mon, 14 Nov 2022 13:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=pVV3N7+mfbM+swaQALRAeS9/6LVP0WIDakc55yyrT/c=;
 b=aIwAOJJM3MweFzdrdiq0KfESlSaKK9hdCTTMvPu02we0StugzN5PqmpS1r+GhVu5Eb
 yOXRc3hxn3X5cUHv+0hUVYq96l14RfkwM5ozV+sQhnKoL+Qyy8zlJoMruU6ONrNPk+De
 lZL8MHqYet3Ke24uHw9QeMFfqrnx+18gC5kxLnAkaMxFn3c8tpWTdWxul4IIHxV37B41
 BnRjJg+mbaUrNOJcrsY0wiiviUgI6jZVzJJJlMbh5iSPVkzQUCKAtFU3G8jNDW1VW5MS
 KhPFsXjdTqe0kXusGNK8WuPHtvZT3hGdufa6+2jVfDnQ88FW2f3xxSUkYPesDMumriAb
 u1ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=pVV3N7+mfbM+swaQALRAeS9/6LVP0WIDakc55yyrT/c=;
 b=rKtv8SJBxHo9/SgfLFnoTJ9wFRni3bjYkw52awVw9HmjzeQvKv3dgpfLCmGsCvtj+V
 iXBcURqZ/JusWNitE0IAk9vvOj2G781iXLf31ScBLcJpOyxjbVXSRpuYdfbLv1KJrDEu
 h7VZLUXZIp6A0iXhOcvDuzynm9LZDW8dhE6ivdB6frMJLmXu9V/huWxYRrBnUwhXH1ZQ
 +uMvp1dNpRCWgg99Vz+mOZ0TP8TSKepuLOxi+Oq0v0K454u5F1XJZ/LlTzbxCH7FFtYC
 8ZXjDXHJDd+BmdRhJrWr1hwdwXKCnyuAL9+7AZTZjwhspXakRK12YCNpilBEnOYc5Jhx
 kUXw==
X-Gm-Message-State: ANoB5pnl3HkA9cqwIhJ7kdzWdiusEuhZAphy9iFBgUbrc3IvDqlfZ/PY
 6pwsebDloUxb5A7sjA/dpfbRVIcnKrEwq5d8NePUBhoj
X-Google-Smtp-Source: AA0mqf7wvR5/X5ur/3NeHibsAgm1Sp6fRAe8QosNKQr4NIonXbF5UkYht0qjN6nGDC/ZmyGMmPgm2UOwWzUPd6H9P94=
X-Received: by 2002:a5d:4f8a:0:b0:230:55fc:5de1 with SMTP id
 d10-20020a5d4f8a000000b0023055fc5de1mr8714202wru.500.1668462169611; Mon, 14
 Nov 2022 13:42:49 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 14 Nov 2022 13:42:37 -0800
Message-ID: <CAA93jw6Lnh-zjzmNTEnHjz5LwmXRYxLs1=g7hAM9D7RoYcO=zQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] vyos cake
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

YW55b25lIGhlcmUgdXNlIHZ5b3M/IExvb2tzIGxpa2UgdGhlIGNha2UgcG9ydCBpcyBiYWNrIGlu
IHByb2dyZXNzIG92ZXIgdGhlcmUuCgpodHRwczovL3BoYWJyaWNhdG9yLnZ5b3MubmV0L1Q3MjUK
LS0KVGhpcyBzb25nIGdvZXMgb3V0IHRvIGFsbCB0aGUgZm9sayB0aGF0IHRob3VnaHQgU3RhZGlh
IHdvdWxkIHdvcms6Cmh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9wb3N0cy9kdGFodF90aGUtbXVz
aHJvb20tc29uZy1hY3Rpdml0eS02OTgxMzY2NjY1NjA3MzUyMzIwLUZYdHoKRGF2ZSBUw6RodCBD
RU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
